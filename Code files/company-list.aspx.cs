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
using System.IO;

namespace InsuranceHub
{
    public partial class company_list : System.Web.UI.Page
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
                if(Session["user"]==null)
                {
                    Response.Redirect("Login.aspx");
                }

                fillrpt();
            }
           
        }
        public void fillrpt()
        {
            String qry = "select * from comp_reg";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }
        protected void edit_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "select * from comp_reg where comp_id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Read();
                    txtcname.Text = dr["name"].ToString();
                    txtcadd.Text = dr["address"].ToString();
                    txtcemail.Text = dr["email"].ToString();
                    txtcwebsite.Text = dr["website"].ToString();
                    txtcity.Text = dr["city"].ToString();
                    txtcpincode.Text = dr["pincode"].ToString();
                    Image2.ImageUrl = dr["image"].ToString();

                    txtconatct.Text = dr["contactno"].ToString();



                    Session["id"] = lnk.CommandArgument.ToString();

                    dr.Close();

                }



                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
            }
        }





        protected void del_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "delete from comp_reg where comp_id=@id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                cmd.ExecuteNonQuery();
                fillrpt();
                con.Close();

            }
        }


        protected void update_Click(object sender, EventArgs e)
        {

            if (cimg.HasFile)
            {
                string ext = Path.GetExtension(cimg.FileName);
                string path1 = "~/Upload/company/" + txtcname.Text + ext;
                cimg.SaveAs(Server.MapPath(path1).ToString());

                con.Open();
                string qry = "update comp_reg set name=@Name,address=@Address,email=@Emailid,website=@Website,city=@City,pincode=@Pincode,image=@Image,contactno=@Contact  where comp_id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Name", txtcname.Text);
                cmd.Parameters.AddWithValue("@Address", txtcadd.Text);
                cmd.Parameters.AddWithValue("@Emailid", txtcemail.Text);
                cmd.Parameters.AddWithValue("@Website", txtcwebsite.Text);
                cmd.Parameters.AddWithValue("@City", txtcity.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtcpincode.Text);
                cmd.Parameters.AddWithValue("@Image", path1);
                cmd.Parameters.AddWithValue("@Contact", txtconatct.Text);
                cmd.Parameters.AddWithValue("@Id", Session["id"]);
                cmd.ExecuteNonQuery();
                fillrpt();
                con.Close();
            }
            else
            {
               

                con.Open();
                string qry = "update comp_reg set name=@Name,address=@Address,email=@Emailid,website=@Website,city=@City,pincode=@Pincode,contactno=@Contact  where comp_id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Name", txtcname.Text);
                cmd.Parameters.AddWithValue("@Address", txtcadd.Text);
                cmd.Parameters.AddWithValue("@Emailid", txtcemail.Text);
                cmd.Parameters.AddWithValue("@Website", txtcwebsite.Text);
                cmd.Parameters.AddWithValue("@City", txtcity.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtcpincode.Text);
              
                cmd.Parameters.AddWithValue("@Contact", txtconatct.Text);
                cmd.Parameters.AddWithValue("@Id", Session["id"]);
                cmd.ExecuteNonQuery();
                fillrpt();
                con.Close();
            }

        }


    }
}