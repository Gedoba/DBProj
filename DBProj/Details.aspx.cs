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
    public partial class Details : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection connection;
        protected int UserToEdit { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int field = -1;

                if (Request.Params["field"] != null && int.TryParse(Request.Params["field"], out field))
                {
                    UserToEdit = field;
                }
                //textEmployee.Text = UserToEdit.ToString();
                //textEmployee.Enabled = false;
                populateTextFields();
            }

        }

        private void populateTextFields()
        {
            string query = "SELECT * FROM Employees e WHERE e.Employee_Id = " + UserToEdit;
            try
            {
                using (connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    List<string> fields = new List<string>();
                    for (int i = 0; i < dataTable.Columns.Count; i++)
                    {
                        object field = dataTable.Rows[0][i];
                        fields.Add(field.ToString());
                    }
                    textEmployee.Text = fields[0];
                    textFirstName.Text = fields[1];
                    textLastName.Text = fields[2];
                    textEmail.Text = fields[3];
                    textPhone.Text = fields[4];
                    textHireDate.Text = fields[5];
                    textJobID.Text = fields[6];
                    textSalary.Text = fields[7];
                    textCommisionPct.Text = fields[8];
                }
            }
            catch (SqlException) { }
        }
        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {


            //could've used parameters here as well
            string query = "UPDATE Employees SET First_name = '" + textFirstName.Text + "', Last_name = '" + textLastName.Text +
                "', Email = '" + textEmail.Text + "', Phone_number = '" + textPhone.Text +
                "', Hire_date = '" + textHireDate.Text + "', Job_id = '" + textJobID.Text +
                "', Salary = " + textSalary.Text + ", Commission_pct = " + textCommisionPct.Text +
                " WHERE Employee_id = " + UserToEdit + ";";
            try
            {
                using (connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))

                {
                    connection.Open();
                    command.ExecuteNonQuery();

                }
            }
            catch (SqlException) { }



        }
    }
}