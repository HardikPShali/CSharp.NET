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
    public partial class add_insutype : System.Web.UI.Page
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

                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            if (type.Text != "")
            {
                con.Open();
                string qry = "insert into insu_type  values('" + type.Text + "')";
                cmd = new SqlCommand(qry, con);

                int i;
                i = cmd.ExecuteNonQuery();

                con.Close();
                if (i > 0)
                {
                    Response.Redirect("insutype-list.aspx");

                }
            }
            else
            {
                if (type.Text == "")
                {

                    Label1.Text = "Insurance Type Name Required !";
                    Label1.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label1.Text = "";
                }
            }
  
        }
        protected void cancel_Click(object sender, EventArgs e)
        {
            type.Text = string.Empty;



        }

    


      

        
    }
}