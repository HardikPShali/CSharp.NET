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
    public partial class partpayment : System.Web.UI.Page
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
            Panel4.Visible = false;
        }
        protected void save_Click(object sender, EventArgs e)
        {
            if (mno.Text == "")
            {
                Label1.Text = "Enter Your Mobile Number";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Text = "";

                Panel4.Visible = true;
                string s = mno.Text;
                con.Open();
                string q = "select * from terminsu_pi p,terminsu_ai ta,termbankdpart tb,termbankdetails b where b.terminsu_ai_id=ta.aid and p.id=ta.tid and b.id=tb.tbankid and  p.id=tb.tpid and p.mobile='" + s + "'";
                cmd = new SqlCommand(q, con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["pid"] = dr["id"];
                    Session["taid"] = dr["aid"];
                    Session["partid"] = dr["tbtid"];
                    Session["paidamnount"] = dr["paidamnt"];
                    Session["ttlamnt"] = dr["totalamnt"];
                    Session["bankid"] = dr["tbankid"];
                    Session["remain"] = dr["remainamnt"];
                    dr.Close();
                }

                amount.Text = Session["remain"].ToString();
                con.Close();
            }
          
        }
        protected void save3_Click(object sender, EventArgs e)
        {
            if (cno.Text != "" && date.Text != "" && bname.Text != "" && accno.Text != "" && accname.Text != "")
            {
                con.Open();
                string qry = "update termbankdetails set cheque_no=@cheque_no,date=@date,branchname=@branchname,accno=@accno,accname=@accname,amount=@amount where id=@ID";

                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Session["bankid"].ToString());

                cmd.Parameters.AddWithValue("@cheque_no", cno.Text.ToString());
                cmd.Parameters.AddWithValue("@date", date.Text.ToString());
                cmd.Parameters.AddWithValue("@branchname", bname.Text.ToString());
                cmd.Parameters.AddWithValue("@accno", accno.Text.ToString());
                cmd.Parameters.AddWithValue("@accname", accname.Text.ToString());
                cmd.Parameters.AddWithValue("@amount", amount.Text.ToString());

                cmd.ExecuteNonQuery();


                string q3 = "update terminsu_pi set isexpire=@isexpire where id=@IDD";

                cmd = new SqlCommand(q3, con);
                cmd.Parameters.AddWithValue("@IDD", Session["pid"].ToString());
                cmd.Parameters.AddWithValue("@isexpire", "1");

                cmd.ExecuteNonQuery();

                string q4 = "update terminsu_ai set isexpire=@isexpire where aid=@IDDD";

                cmd = new SqlCommand(q4, con);
                cmd.Parameters.AddWithValue("@IDDD", Session["taid"].ToString());
                cmd.Parameters.AddWithValue("@isexpire", "1");

                cmd.ExecuteNonQuery();
                con.Close();


                double a = Convert.ToDouble(amount.Text.ToString());
                double b = Convert.ToDouble(Session["paidamnount"].ToString());
                double c = a + b;
                double d = Convert.ToDouble(Session["ttlamnt"].ToString());
                double gg = Convert.ToDouble(Session["remain"].ToString());
                double f = gg - a;
                if (d == c)
                {
                    con.Open();
                    string qry1 = "update termbankdpart set paidamnt=@paidamnt,remainamnt=@remainamnt,partpay=@partpay where tbtid=@ID";

                    cmd = new SqlCommand(qry1, con);
                    cmd.Parameters.AddWithValue("@Id", Session["partid"].ToString());

                    cmd.Parameters.AddWithValue("@paidamnt", c);
                    cmd.Parameters.AddWithValue("@remainamnt", f);
                    cmd.Parameters.AddWithValue("@partpay", "0");


                    cmd.ExecuteNonQuery();

                    con.Close();
                }
                else
                {
                    con.Open();
                    string qry1 = "update termbankdpart set paidamnt=@paidamnt,remainamnt=@remainamnt,partpay=@partpay where tbtid=@ID";

                    cmd = new SqlCommand(qry1, con);
                    cmd.Parameters.AddWithValue("@Id", Session["partid"].ToString());

                    cmd.Parameters.AddWithValue("@paidamnt", c);
                    cmd.Parameters.AddWithValue("@remainamnt", f);
                    cmd.Parameters.AddWithValue("@partpay", "1");


                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                if (cno.Text == "")
                {
                    Label2.Text = "Cheque Number Required!";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label2.Text = "";
                }
                if (date.Text == "")
                {
                    Label3.Text = "Date Required!";
                    Label3.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label3.Text = "";
                }
                if (bname.Text == "")
                {
                    Label4.Text = "Branch Name Required!";
                    Label4.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label4.Text = "";
                }
                if (accno.Text == "")
                {
                    Label5.Text = "Account Number Required!";
                    Label5.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label5.Text = "";
                }
                if (accname.Text == "")
                {
                    Label6.Text = "Name Required!";
                    Label6.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label6.Text = "";
                }
            }

        }
    }
}