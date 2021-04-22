using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace InsuranceHub
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        //DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

               
            }
        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            if (txtusername.Text != "" && txtemailid.Text != "" && txtpass.Text != "" && txtcpass.Text != "")
            {
                con.Open();
                if (txtpass.Text == txtcpass.Text)
                {
                    string qry = "insert into admin_login  values('" + txtusername.Text + "','" + txtemailid.Text + "','" + txtpass.Text + "')";
                    cmd = new SqlCommand(qry, con);
                    // Session["username"] = txtusername.Text;

                    int i;
                    i = cmd.ExecuteNonQuery();

                    con.Close();

                    if (i > 0)
                    {
                        Response.Redirect("Login.aspx");

                    }
                }
                else
                {
                    errormsg.Text = "Password does not match";
                    errormsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                if (txtusername.Text == "")
                {
                    Label1.Text = "UserName Required !";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label1.Text = "";
                }
                if (txtemailid.Text == "")
                {
                    Label2.Text = "Email Required !";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label2.Text = "";
                }
                if (txtpass.Text == "")
                {
                    Label3.Text = "Password Required !";
                    Label3.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label3.Text = "";
                }
                if (txtcpass.Text == "")
                {
                    Label4.Text = "Enter Confirm Password";
                    Label4.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label4.Text = "";
                }
            }
        }   
    }
}