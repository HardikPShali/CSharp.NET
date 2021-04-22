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
    public partial class hibankdetails : System.Web.UI.Page
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
                //fillrpt();


                if (Session["user"] == null)
                {

                    Response.Redirect("Login.aspx");
                }
            }
            double t = Convert.ToDouble(Session["price"].ToString());
            double total = t * 18 / 100;
            double tt = t + total;
            string g = tt.ToString();
            Session["bamount"] = g.ToString();
            amt.Text = Session["bamount"].ToString();
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {

            if (chkno.Text != "" && chkdate.Text != "" && bname.Text != "" && accno.Text != "" && accname.Text != "")
            {

                con.Open();
                string qry = "insert into hibankdetails(hid,cheque_no,date,branchname,accno,accname,amount,paymethod)  values(@Id,@chkno,@chkdate,@bname,@accno,@accname,@amt,@paymethod)";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"]);
                cmd.Parameters.AddWithValue("@chkno", chkno.Text);
                cmd.Parameters.AddWithValue("@chkdate", chkdate.Text);
                cmd.Parameters.AddWithValue("@bname", bname.Text);
                cmd.Parameters.AddWithValue("@accno", accno.Text);
                cmd.Parameters.AddWithValue("@accname", accname.Text);
                cmd.Parameters.AddWithValue("@amt", amt.Text);
                cmd.Parameters.AddWithValue("@paymethod","Via Cheque");
                int i;
                i = cmd.ExecuteNonQuery();

                con.Close();
              
            }
        
        else
         {
             if (chkno.Text == "")
             {
                 Label1.Text = "Cheque Number Required!";
                 Label1.ForeColor = System.Drawing.Color.Red;
             }
             else
             {
                 Label1.Text = "";
             }
             if (chkdate.Text == "")
             {
                 Label2.Text = "Date Required!";
                 Label2.ForeColor = System.Drawing.Color.Red;
             }
             else
             {
                 Label2.Text = "";
             }
             if (bname.Text == "")
             {
                 Label3.Text = "Branch Name Required!";
                 Label3.ForeColor = System.Drawing.Color.Red;
             }
             else
             {
                 Label3.Text = "";
             }
             if (accno.Text == "")
             {
                 Label4.Text = "Account Number Required!";
                 Label4.ForeColor = System.Drawing.Color.Red;
             }
             else
             {
                 Label4.Text = "";
             }
             if (accname.Text == "")
             {
                 Label5.Text = "Name Required!";
                 Label5.ForeColor = System.Drawing.Color.Red;
             }
             else
             {
                 Label5.Text = "";
             }
         }
}


        protected void invoice_Click(object sender, EventArgs e)
        {




            con.Open();
            string q1 = "select * from health_insu order by hid desc";
            cmd = new SqlCommand(q1, con);
            dr = cmd.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                Session["healthinsuid"] = dr["hid"];
                string s = "Individual Sum Insured";

                if (dr["plantype"].Equals(s))
                {
                    Response.Redirect("invoice-healthinsu.aspx");
                }
                else
                {
                    Response.Redirect("hifloter.aspx");
                }


                dr.Close();
            }

            con.Close(); 

        }
    
    }
}