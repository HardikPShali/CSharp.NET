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
    public partial class termeligibitycheck : System.Web.UI.Page
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
            fillrpt();
        }
        public void fillrpt()
        {

            String qry = "select * from terminsu_pi where id=(select max(id) from terminsu_pi)";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }
        protected void Edit_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "select * from terminsu_pi where id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Read();

                    name.Text = dr["clientname"].ToString();
                   
                    bday.Text = dr["bday"].ToString();
                    mno.Text = dr["mobile"].ToString();




                    Session["id"] = lnk.CommandArgument.ToString();

                    dr.Close();

                }



                con.Close();
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#modal-4').modal();", true);
            }
        }
        protected void close_Click(object sender, EventArgs e)
        {
            Response.Redirect("termeligibitycheck.aspx");
        }
        protected void save_Click(object sender, EventArgs e)
        {
            if (occ.Text != "" && Weight.Text != "" && hf.Text != "" && hi.Text != "" && Mother.Text != "" && Father.Text != "" && address.Text != "")
            {
                con.Open();
                string qry = "insert into terminsu_ai(tid,occupation,Weight,heightf,heighti,mother,father,address,isdelete,loginid,insu_cust_id,isexpire)  values(@tid,@occupation,@Weight,@heightf,@heighti,@mother,@father,@add,@isdelete,@loginid,@insu_cust_id,@isexpire)";

                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@tid", Session["termid"].ToString());
                cmd.Parameters.AddWithValue("@occupation", occ.Text.ToString());
                cmd.Parameters.AddWithValue("@Weight", Weight.Text.ToString());
                cmd.Parameters.AddWithValue("@heightf", hf.Text.ToString());
                cmd.Parameters.AddWithValue("@heighti", hi.Text.ToString());
                cmd.Parameters.AddWithValue("@mother", Mother.Text.ToString());
                cmd.Parameters.AddWithValue("@father", Father.Text.ToString());
                cmd.Parameters.AddWithValue("@add", address.Text.ToString());
                cmd.Parameters.AddWithValue("@isdelete", '0');
                cmd.Parameters.AddWithValue("@loginid", Session["login"].ToString());
                cmd.Parameters.AddWithValue("@insu_cust_id", Session["insucustid"].ToString());
                cmd.Parameters.AddWithValue("@isexpire", '0');



                int i;
                i = cmd.ExecuteNonQuery();

                con.Close();
                if (i > 0)
                {
                    con.Open();
                    string q1 = "select * from terminsu_ai order by aid desc";
                    cmd = new SqlCommand(q1, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["termaid"] = dr["aid"];
                        Session["termaddress"] = dr["address"];
                        dr.Close();
                    }
                    Response.Redirect("termpremiumcalc.aspx");
                    con.Close();

                }
            }
            else
            {
                if (Weight.Text == "")
                {

                    Label1.Text = "Weight Required !";
                    Label1.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label1.Text = "";
                }
                if (Mother.Text == "")
                {

                    Label2.Text = "Enter Your Mother Name";
                    Label2.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label2.Text = "";
                }
                if (Father.Text == "")
                {

                    Label3.Text = "Enter Your Father Name";
                    Label3.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label3.Text = "";
                }
                if (address.Text == "")
                {

                    Label4.Text = "Enter Your Address";
                    Label4.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label4.Text = "";
                }
            }
          
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (smokey.Checked == true)
            {
                con.Open();
                string qry = "update terminsu_pi set clientname=@Name,gender=@gender,lifestage=@lifestage,bday=@bday,mobile=@mobile,education=@education,smoke=@smoke,income=@income  where id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@gender", gender.Text);
                cmd.Parameters.AddWithValue("@lifestage", ls.Text);
                cmd.Parameters.AddWithValue("@bday", bday.Text);
                cmd.Parameters.AddWithValue("@mobile", mno.Text);
                cmd.Parameters.AddWithValue("@education", edu.Text);


                cmd.Parameters.AddWithValue("@smoke", smokey.Text);



                cmd.Parameters.AddWithValue("@income", annualincome.Text);
                cmd.Parameters.AddWithValue("@Id", Session["id"]);
                cmd.ExecuteNonQuery();
                fillrpt();
                con.Close();
                
            }
            else
            {
               
                    con.Open();
                    string qry1 = "update terminsu_pi set clientname=@Name,gender=@gender,lifestage=@lifestage,bday=@bday,mobile=@mobile,education=@education,smoke=@smoke,income=@income  where id=@Id";
                    cmd = new SqlCommand(qry1, con);
                    cmd.Parameters.AddWithValue("@Name", name.Text);
                    cmd.Parameters.AddWithValue("@gender", gender.Text);
                    cmd.Parameters.AddWithValue("@lifestage", ls.Text);
                    cmd.Parameters.AddWithValue("@bday", bday.Text);
                    cmd.Parameters.AddWithValue("@mobile", mno.Text);
                    cmd.Parameters.AddWithValue("@education", edu.Text);


                    cmd.Parameters.AddWithValue("@smoke", smokeyn.Text);



                    cmd.Parameters.AddWithValue("@income", annualincome.Text);
                    cmd.Parameters.AddWithValue("@Id", Session["id"]);
                    cmd.ExecuteNonQuery();
                    fillrpt();
                    con.Close();
                   
                }
            }
        }
    }
