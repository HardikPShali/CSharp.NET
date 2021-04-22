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
    public partial class termpremiumcalc : System.Web.UI.Page
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
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            //Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;

            con.Open();
            string q1 = "select id from terminsu_pi order by id desc";
            cmd = new SqlCommand(q1, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["terminsupiID"] = dr["id"];
                dr.Close();
            }
            con.Close();

        }

         protected void cal_Click(object sender, EventArgs e)
        {
            double c = Convert.ToDouble(cover.Text);
            double ca = Convert.ToDouble(age.Text);


           double a1=((int)(c * 2/100));
           double a2 = c + a1;
           double a3 = a2 / ca;
           double a4 = a3 / 12;
            double a5 = a4 / 12;
         
           
           double a6 = Math.Floor(a5);
           double a7 = Math.Floor(a4);


           Panel1.Visible = true;
           Label1.Text = a7.ToString();
           Session["total"] = Label1.Text;
           Session["covera"] = cover.Text;
            
        }
         protected void save_Click(object sender, EventArgs e)
         {
             Panel1.Visible = true;
             double cc = Convert.ToDouble(cover.Text);
             double cca = Convert.ToDouble(age.Text);
        

             double a11 = ((int)(cc * 2 / 100));
             double a21 = cc + a11;
             double a31 = a21 / cca;
             double a41 = a31 / 12;
             double a51 = a41 / 12;
          
             double a61 = Math.Floor(a51);
             double a71 = Math.Floor(a41);
             double a81 = a41 / 4;
             double a91 = a41 / 2;
             double a101 = Math.Floor(a81);
             double a111 = Math.Floor(a91);

             if (CheckBox1.Checked)
             {

                 Panel3.Visible = true;
                 Label5.Text = a71.ToString();


             }
             else
             {
                 Panel2.Visible = true;

                 Label2.Text = a61.ToString();
                 

             }

             if (CheckBox2.Checked)
             {
                 Panel5.Visible = true;
                 Label7.Text = a101.ToString();
                


             }
             else
             {

                 Panel6.Visible = true;

                 Label9.Text = a111.ToString();

             }

          
         }

         protected void save1_Click(object sender, EventArgs e)
         {
             con.Open();
             string qry = "insert into termbankdetails(terminsu_ai_id,cheque_no,branchname,accno,accname,amount,partpay)  values(@terminsu_ai_id,@cheque_no,@branchname,@accno,@accname,@amount,@partpay)";

             cmd = new SqlCommand(qry, con);
             cmd.Parameters.AddWithValue("@terminsu_ai_id", Session["termaid"].ToString());
             cmd.Parameters.AddWithValue("@cheque_no", "0");
             //cmd.Parameters.AddWithValue("@date", "0");
             cmd.Parameters.AddWithValue("@branchname", "0");
             cmd.Parameters.AddWithValue("@accno", "0");
             cmd.Parameters.AddWithValue("@accname", "0");
             cmd.Parameters.AddWithValue("@amount", Label2.Text.ToString());
             cmd.Parameters.AddWithValue("@partpay","1");
             int i;
             i = cmd.ExecuteNonQuery();

             con.Close();
             if (i > 0)
             {
                 con.Open();
                 string q1 = "select id from termbankdetails order by id desc";
                 cmd = new SqlCommand(q1, con);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                     Session["termbankid"] = dr["id"];
                     dr.Close();
                 }
                 Panel1.Visible = false;
                 Panel2.Visible = false;
                 Panel3.Visible = false;
                 Response.Redirect("termbankdetails.aspx");
                 con.Close();

             }
             //con.Open();
             //string qryi = "select * from termbankdetails where id=@Id";
             //cmd = new SqlCommand(qryi, con);
             //cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
             //dr = cmd.ExecuteReader();

             //if (dr.HasRows)
             //{

             //    dr.Read();

             //    amount.Text = dr["amount"].ToString();



             //    dr.Close();

             //}



             //con.Close();
         }


         protected void save2_Click(object sender, EventArgs e)
         {
             con.Open();
             string qry = "insert into termbankdetails(terminsu_ai_id,cheque_no,branchname,accno,accname,amount,partpay)  values(@terminsu_ai_id,@cheque_no,@branchname,@accno,@accname,@amount,@partpay)";

             cmd = new SqlCommand(qry, con);
             cmd.Parameters.AddWithValue("@terminsu_ai_id", Session["termaid"].ToString());
             cmd.Parameters.AddWithValue("@cheque_no", "0");
             //cmd.Parameters.AddWithValue("@date", "0");
             cmd.Parameters.AddWithValue("@branchname", "0");
             cmd.Parameters.AddWithValue("@accno", "0");
             cmd.Parameters.AddWithValue("@accname", "0");
             cmd.Parameters.AddWithValue("@amount", Label5.Text.ToString());
             cmd.Parameters.AddWithValue("@partpay", "0");
             int i;
             i = cmd.ExecuteNonQuery();

             con.Close();
             if (i > 0)
             {
                 con.Open();
                 string q1 = "select id from termbankdetails order by id desc";
                 cmd = new SqlCommand(q1, con);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                     Session["termbankid"] = dr["id"];
                     dr.Close();
                 }
                 Panel1.Visible = false;
                 Panel2.Visible = false;
                 Panel3.Visible = false;
                 Response.Redirect("termbankdetails.aspx");
                 con.Close();

             }
             //con.Open();
             //string qryi = "select * from termbankdetails where id=@Id";
             //cmd = new SqlCommand(qryi, con);
             //cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
             //dr = cmd.ExecuteReader();

             //if (dr.HasRows)
             //{

             //    dr.Read();

             //    amount.Text = dr["amount"].ToString();



             //    dr.Close();

             //}



             //con.Close();
         }


         protected void save4_Click(object sender, EventArgs e)
         {
             con.Open();
             string qry = "insert into termbankdetails(terminsu_ai_id,cheque_no,branchname,accno,accname,amount,partpay)  values(@terminsu_ai_id,@cheque_no,@branchname,@accno,@accname,@amount,@partpay)";

             cmd = new SqlCommand(qry, con);
             cmd.Parameters.AddWithValue("@terminsu_ai_id", Session["termaid"].ToString());
             cmd.Parameters.AddWithValue("@cheque_no", "0");
             //cmd.Parameters.AddWithValue("@date", "0");
             cmd.Parameters.AddWithValue("@branchname", "0");
             cmd.Parameters.AddWithValue("@accno", "0");
             cmd.Parameters.AddWithValue("@accname", "0");
             cmd.Parameters.AddWithValue("@amount", Label7.Text.ToString());
             cmd.Parameters.AddWithValue("@partpay", "1");
             int i;
             i = cmd.ExecuteNonQuery();

             con.Close();
             if (i > 0)
             {
                 con.Open();
                 string q1 = "select id from termbankdetails order by id desc";
                 cmd = new SqlCommand(q1, con);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                     Session["termbankid"] = dr["id"];
                     dr.Close();
                 }
                 Panel1.Visible = false;
                 Panel2.Visible = false;
                 Panel3.Visible = false;
                 Response.Redirect("termbankdetails.aspx");
                 con.Close();

             }
             //con.Open();
             //string qryi = "select * from termbankdetails where id=@Id";
             //cmd = new SqlCommand(qryi, con);
             //cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
             //dr = cmd.ExecuteReader();

             //if (dr.HasRows)
             //{

             //    dr.Read();

             //    amount.Text = dr["amount"].ToString();



             //    dr.Close();

             //}



             //con.Close();
         }


         protected void save5_Click(object sender, EventArgs e)
         {
             con.Open();
             string qry = "insert into termbankdetails(terminsu_ai_id,cheque_no,branchname,accno,accname,amount,partpay)  values(@terminsu_ai_id,@cheque_no,@branchname,@accno,@accname,@amount,@partpay)";

             cmd = new SqlCommand(qry, con);
             cmd.Parameters.AddWithValue("@terminsu_ai_id", Session["termaid"].ToString());
             cmd.Parameters.AddWithValue("@cheque_no", "0");
             //cmd.Parameters.AddWithValue("@date", "0");
             cmd.Parameters.AddWithValue("@branchname", "0");
             cmd.Parameters.AddWithValue("@accno", "0");
             cmd.Parameters.AddWithValue("@accname", "0");
             cmd.Parameters.AddWithValue("@amount", Label9.Text.ToString());
             cmd.Parameters.AddWithValue("@partpay", "1");

             int i;
             i = cmd.ExecuteNonQuery();

             con.Close();
             if (i > 0)
             {
                 con.Open();
                 string q1 = "select id from termbankdetails order by id desc";
                 cmd = new SqlCommand(q1, con);
                 dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     dr.Read();
                     Session["termbankid"] = dr["id"];
                     dr.Close();
                 }
                 Panel1.Visible = false;
                 Panel2.Visible = false;
                 Panel3.Visible = false;
                 //Panel4.Visible = true;
                 Response.Redirect("termbankdetails.aspx");
                 con.Close();

             }
             //con.Open();
             //string qryi = "select * from termbankdetails where id=@Id";
             //cmd = new SqlCommand(qryi, con);
             //cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
             //dr = cmd.ExecuteReader();

             //if (dr.HasRows)
             //{

             //    dr.Read();

             //    amount.Text = dr["amount"].ToString();



             //    dr.Close();

             //}



             //con.Close();
         }

         //protected void save3_Click(object sender, EventArgs e)
         //{
         //    if (cno.Text != "" && date.Text != "" && bname.Text != "" && accno.Text != "" && accname.Text != "")
         //    {
         //        con.Open();
         //        string qry = "update termbankdetails set terminsu_ai_id=@terminsu_ai_id,cheque_no=@cheque_no,date=@date,branchname=@branchname,accno=@accno,accname=@accname,amount=@amount where id=@ID";

         //        cmd = new SqlCommand(qry, con);
         //        cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());
         //        cmd.Parameters.AddWithValue("@terminsu_ai_id", Session["termaid"].ToString());
         //        cmd.Parameters.AddWithValue("@cheque_no", cno.Text.ToString());
         //        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
         //        cmd.Parameters.AddWithValue("@branchname", bname.Text.ToString());
         //        cmd.Parameters.AddWithValue("@accno", accno.Text.ToString());
         //        cmd.Parameters.AddWithValue("@accname", accname.Text.ToString());
         //        cmd.Parameters.AddWithValue("@amount", amount.Text.ToString());
         //        int i;
         //        i = cmd.ExecuteNonQuery();
         //        Session["paid"] = amount.Text.ToString();
         //        con.Close();
         //        if (i > 0)
         //        {
         //            Session["sumi"] = cover.Text;
         //            con.Open();
         //            string q1 = "select * from termbankdetails order by id desc";
         //            cmd = new SqlCommand(q1, con);
         //            dr = cmd.ExecuteReader();
         //            if (dr.HasRows)
         //            {
         //                dr.Read();
         //                Session["cost"] = dr["amount"];
         //                var datetime = Convert.ToDateTime(dr["date"]);
         //                Session["paydate"] = datetime;
         //                dr.Close();
         //            }
         //            con.Close();
         //            double a = Convert.ToDouble(Session["cost"].ToString());
         //            double b = Convert.ToDouble(Session["total"].ToString());
         //            double d = Convert.ToDouble(Session["paid"].ToString());

         //            double c = b - a;
         //            if (d == b)
         //            {
         //                con.Open();
         //                string qryyy = "insert into termbankdpart(tbankid,tpid,totalamnt,paidamnt,remainamnt,partpay)  values(@tbankid,@tpid,@totalamnt,@paidamnt,@remainamnt,@partpay)";

         //                cmd = new SqlCommand(qryyy, con);
         //                cmd.Parameters.AddWithValue("@tbankid", Session["termbankid"].ToString());
         //                cmd.Parameters.AddWithValue("@tpid", Session["terminsupiID"].ToString());
         //                cmd.Parameters.AddWithValue("@totalamnt", Session["total"].ToString());
         //                cmd.Parameters.AddWithValue("@paidamnt", Session["paid"].ToString());
         //                cmd.Parameters.AddWithValue("@remainamnt", c.ToString());
         //                cmd.Parameters.AddWithValue("@partpay", "0");
         //                cmd.ExecuteNonQuery();
         //                con.Close();
         //            }
         //            else
         //            {
         //                con.Open();
         //                string qryyy = "insert into termbankdpart(tbankid,tpid,totalamnt,paidamnt,remainamnt,partpay)  values(@tbankid,@tpid,@totalamnt,@paidamnt,@remainamnt,@partpay)";

         //                cmd = new SqlCommand(qryyy, con);
         //                cmd.Parameters.AddWithValue("@tbankid", Session["termbankid"].ToString());
         //                cmd.Parameters.AddWithValue("@tpid", Session["terminsupiID"].ToString());
         //                cmd.Parameters.AddWithValue("@totalamnt", Session["total"].ToString());
         //                cmd.Parameters.AddWithValue("@paidamnt", Session["paid"].ToString());
         //                cmd.Parameters.AddWithValue("@remainamnt", c.ToString());
         //                cmd.Parameters.AddWithValue("@partpay", "1");
         //                cmd.ExecuteNonQuery();
         //                con.Close();
         //            }
         //            Response.Redirect("invoice-term.aspx");
         //        }
         //    }
         //    else
         //    {
         //        if (cno.Text == "")
         //        {
         //            Label1.Text = "Cheque Number Required!";
         //            Label1.ForeColor = System.Drawing.Color.Red;
         //        }
         //        else
         //        {
         //            Label1.Text = "";
         //        }
         //        if (date.Text == "")
         //        {
         //            Label2.Text = "Date Required!";
         //            Label2.ForeColor = System.Drawing.Color.Red;
         //        }
         //        else
         //        {
         //            Label2.Text = "";
         //        }
         //        if (bname.Text == "")
         //        {
         //            Label3.Text = "Branch Name Required!";
         //            Label3.ForeColor = System.Drawing.Color.Red;
         //        }
         //        else
         //        {
         //            Label3.Text = "";
         //        }
         //        if (accno.Text == "")
         //        {
         //            Label4.Text = "Account Number Required!";
         //            Label4.ForeColor = System.Drawing.Color.Red;
         //        }
         //        else
         //        {
         //            Label4.Text = "";
         //        }
         //        if (accname.Text == "")
         //        {
         //            Label5.Text = "Name Required!";
         //            Label5.ForeColor = System.Drawing.Color.Red;
         //        }
         //        else
         //        {
         //            Label5.Text = "";
         //        }
         //    }
         //}


        }

   




       
    

       
    }
