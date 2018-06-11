using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBProj
{
    public partial class View : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Tomek\Source\Repos\DBProj\DBProj\App_Data\Employees.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Insert into Employees values('" + textEmployee.Text + "','" + textFirstName.Text + "','" + textLastName.Text + "','" + textEmail.Text + "','" + textPhone.Text + "','" + textHireDate.Text + "','" +
                 textJobID.Text + "','" + textSalary.Text + "','" + textCommisionPct.Text + "')";
            cmd.ExecuteNonQuery();
            GridEmployees.DataBind();
            con.Close();
        }
    }
}