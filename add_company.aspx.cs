using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
namespace InsuranceHub
{
    public partial class add_company : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                


                if (Session["user"] == null)
                {

                    Response.Redirect("login.aspx");
                }
            }
        }


        protected void save_Click(object sender, EventArgs e)
        {
            if (cimg.HasFile)
            {
                if (txtcname.Text != "" && txtcadd.Text != "" && txtcemail.Text != "" && txtcwebsite.Text != "" && txtcity.Text != "" && txtcpincode.Text != "" && cimg.FileName != "" && txtconatct.Text != "")
                {
                    string path = "~/Upload/company/" + cimg.FileName;
                    cimg.SaveAs(Server.MapPath(path).ToString());


                    con.Open();
                    string qry = "insert into comp_reg  values('" + txtcname.Text + "','" + txtcadd.Text + "','" + txtcemail.Text + "','" + txtcwebsite.Text + "','" + txtcity.Text + "','" + txtcpincode.Text + "','" + path + "','" + txtconatct.Text + "')";
                    cmd = new SqlCommand(qry, con);

                    int i;
                    i = cmd.ExecuteNonQuery();

                    con.Close();
                    if (i > 0)
                    {
                        Response.Redirect("company-list.aspx");

                    }
                }
            }
            else
            {
                if (txtcname.Text == "")
                {

                    Label1.Text = "Company Name Required !";
                    Label1.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label1.Text = "";
                }
                if (txtcadd.Text == "")
                {

                    //Label2.Text = "Company Name Required !";
                    Label2.Text = "Company Address Required !";
                    Label2.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label2.Text = "";
                }
                if (txtcemail.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label3.Text = "Email Address Required !";
                    Label3.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label3.Text = "";
                }
                if (txtcwebsite.Text == "")
                {


                    Label4.Text = "Website Required !";
                    Label4.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label4.Text = "";
                }
                if (txtcity.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label5.Text = "City Name Required !";
                    Label5.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label5.Text = "";
                }
                if (txtcpincode.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label6.Text = "Pincode Name Required !";
                    Label6.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label6.Text = "";
                }
                //if (cimg.FileName == "")
                //{


                //    Label7.Text = "Company Image Required !";
                //    Label7.ForeColor = System.Drawing.Color.Red;


                //}
                //else
                //{
                //    Label7.Text = "";
                //}
                if (txtconatct.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label8.Text = "Contact Number Required !";
                    Label8.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label8.Text = "";
                }
            }

        }
        protected void close_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Pop", "$('#myModal').modal('hide');", true);
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            txtcname.Text = string.Empty;
            txtcadd.Text = string.Empty;
            txtcemail.Text = string.Empty;
            txtcwebsite.Text = string.Empty;
                txtcity.Text = string.Empty;
                    txtcpincode.Text = string.Empty;
                
                    txtconatct.Text = string.Empty;


        }

   
    }
}