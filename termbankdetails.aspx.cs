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
    public partial class termbankdetails : System.Web.UI.Page
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


            con.Open();
            string qry = "select * from termbankdetails where id=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                amount.Text = dr["amount"].ToString();



                dr.Close();

            }



            con.Close();
        }

        protected void save_Click(object sender, EventArgs e)
     {
         if (cno.Text != "" && date.Text != "" && bname.Text != "" && accno.Text != "" && accname.Text != "")
         {
             con.Open();
             string qry = "update termbankdetails set terminsu_ai_id=@terminsu_ai_id,cheque_no=@cheque_no,date=@date,branchname=@branchname,accno=@accno,accname=@accname,amount=@amount,paymethod=@paymethod where id=@ID";

             cmd = new SqlCommand(qry, con);
             cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
             cmd.Parameters.AddWithValue("@terminsu_ai_id", Session["termaid"].ToString());
             cmd.Parameters.AddWithValue("@cheque_no", cno.Text.ToString());
             cmd.Parameters.AddWithValue("@date", date.Text.ToString());
             cmd.Parameters.AddWithValue("@branchname", bname.Text.ToString());
             cmd.Parameters.AddWithValue("@accno", accno.Text.ToString());
             cmd.Parameters.AddWithValue("@accname", accname.Text.ToString());
             cmd.Parameters.AddWithValue("@amount", amount.Text.ToString());
             cmd.Parameters.AddWithValue("@paymethod", "Via Cheque");
             int i;
             i = cmd.ExecuteNonQuery();
             Session["paid"] = amount.Text.ToString();
             con.Close();
             if (i > 0)
             {
                 Session["sumi"] = Session["covera"].ToString();
                 con.Open();
                 string q1 = "select * from termbankdetails order by id desc";
                 cmd = new SqlCommand(q1, con);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                     Session["cost"] = dr["amount"];
                     var datetime = Convert.ToDateTime(dr["date"]);
                     Session["paydate"] = datetime;
                     dr.Close();
                 }
                 con.Close();
                 double a = Convert.ToDouble(Session["cost"].ToString());
                 double b = Convert.ToDouble(Session["total"].ToString());
                 double d = Convert.ToDouble(Session["paid"].ToString());

                 double c = b - a;
                 if (d == b)
                 {
                     con.Open();
                     string qryyy = "insert into termbankdpart(tbankid,tpid,totalamnt,paidamnt,remainamnt,partpay)  values(@tbankid,@tpid,@totalamnt,@paidamnt,@remainamnt,@partpay)";

                     cmd = new SqlCommand(qryyy, con);
                     cmd.Parameters.AddWithValue("@tbankid", Session["termbankid"].ToString());
                     cmd.Parameters.AddWithValue("@tpid", Session["terminsupiID"].ToString());
                     cmd.Parameters.AddWithValue("@totalamnt", Session["total"].ToString());
                     cmd.Parameters.AddWithValue("@paidamnt", Session["paid"].ToString());
                     cmd.Parameters.AddWithValue("@remainamnt", c.ToString());
                     cmd.Parameters.AddWithValue("@partpay", "0");
                     cmd.ExecuteNonQuery();
                     con.Close();
                 }
                 else
                 {
                     con.Open();
                     string qryyy = "insert into termbankdpart(tbankid,tpid,totalamnt,paidamnt,remainamnt,partpay)  values(@tbankid,@tpid,@totalamnt,@paidamnt,@remainamnt,@partpay)";

                     cmd = new SqlCommand(qryyy, con);
                     cmd.Parameters.AddWithValue("@tbankid", Session["termbankid"].ToString());
                     cmd.Parameters.AddWithValue("@tpid", Session["terminsupiID"].ToString());
                     cmd.Parameters.AddWithValue("@totalamnt", Session["total"].ToString());
                     cmd.Parameters.AddWithValue("@paidamnt", Session["paid"].ToString());
                     cmd.Parameters.AddWithValue("@remainamnt", c.ToString());
                     cmd.Parameters.AddWithValue("@partpay", "1");
                     cmd.ExecuteNonQuery();
                     con.Close();
                 }
                 Response.Redirect("invoice-term.aspx");
             }
         }
         else
         {
             if (cno.Text == "")
             {
                 Label1.Text = "Cheque Number Required!";
                 Label1.ForeColor = System.Drawing.Color.Red;
             }
             else
             {
                 Label1.Text = "";
             }
             if (date.Text == "")
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
    }
}