using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBProj
{
    public partial class View : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < GridEmployees.Rows.Count; i++)
            {
                HyperLink link = new HyperLink();
                link.NavigateUrl = "Details.aspx?field=" + GridEmployees.Rows[i].Cells[0].Text;
                link.Text = "Edit";
                GridEmployees.Rows[i].Cells[9].Controls.Add(link);

            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM Employees e WHERE " +
                "e.First_name LIKE @FNAME + '%' AND " +
                "e.Last_name LIKE '%' + @LNAME + '%' AND " +
                "e.Salary >= @MINSALARY AND e.Salary <= @MAXSALARY AND " +
                "e.Job_id = @JOBID";
            try
            {
                using (connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    command.Parameters.AddWithValue("@FNAME", TextSearchFname.Text);
                    command.Parameters.AddWithValue("@LNAME", TextSearchLname.Text);
                    
                    if(TextSearchMinSal.Text.Length == 0)
                        command.Parameters.AddWithValue("@MINSALARY", "0");
                    else
                        command.Parameters.AddWithValue("@MINSALARY", TextSearchMinSal.Text);

                    if(TextSearchMaxSal.Text.Length == 0)
                        command.Parameters.AddWithValue("@MAXSALARY", System.String.Format("{0}", Int16.MaxValue));
                    else
                        command.Parameters.AddWithValue("@MAXSALARY", TextSearchMaxSal.Text);

                    command.Parameters.AddWithValue("@JOBID", TextSearchJobID.Text);

                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);


                    GridEmployees.DataSourceID = null;
                    GridEmployees.DataSource = dataTable;
                    GridEmployees.DataBind();

                    
                    for (int i = 0; i < GridEmployees.Rows.Count; i++)
                    {
                        HyperLink link = new HyperLink();
                        link.NavigateUrl = "Details.aspx?field=" + GridEmployees.Rows[i].Cells[0].Text;
                        link.Text = "Edit";
                        GridEmployees.Rows[i].Cells[9].Controls.Add(link);

                    }

                }
            }
            catch (SqlException) {  }
            

        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            try
            {
                using (connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "Insert into Employees values('" + textEmployee.Text + "','" + textFirstName.Text + "','" + textLastName.Text + "','" + textEmail.Text + "','" + textPhone.Text + "','" + textHireDate.Text + "','" +
                         textJobID.Text + "','" + textSalary.Text + "','" + textCommisionPct.Text + "')";
                    cmd.ExecuteNonQuery();
                    GridEmployees.DataBind();
                }

            }
            catch (SqlException)
            {
            }
        }
        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            //could've used parameters here as well
            string query = "UPDATE Employees SET First_name = '"+ textFirstName.Text + "', Last_name = '" + textLastName.Text +
                "', Email = '" + textEmail.Text + "', Phone_number = '" +textPhone.Text +
                "', Hire_date = '" + textHireDate.Text + "', Job_id = '" + textJobID.Text +
                "', Salary = " + textSalary.Text + ", Commission_pct = " + textCommisionPct.Text + 
                " WHERE Employee_id = " + textEmployee.Text + ";";
            try
            {
                using (connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))

                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    GridEmployees.DataBind();
                }
            }
            catch (SqlException) { }
        }
    }
}