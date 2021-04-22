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
    public partial class hifd : System.Web.UI.Page
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
                if (pa1.Visible == true)
                {
                    pa2.Visible = false;
                }



            }

            filltext();

            
        }
        public void filltext()
        {
            con.Open();
            string qry = "select * from health_insu where hid=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"].ToString());
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                full_name.Text = dr["clientname"].ToString();
                txtmobileno.Text = dr["mobileno"].ToString();
                txtemailid.Text = dr["emailid"].ToString();


                dr.Close();

            }
            con.Close();


        }

       public void idetails()
        {
            String qry = "select * from health_insu where hid=@Id";

            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"].ToString());
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt1.DataSource = dt;
            rpt1.DataBind();

           
        }

        
        protected void save1_Click(object sender, EventArgs e)
        {
            

            if ((malerad.Checked || femalerad.Checked) && txtdob.Text != "" && txtiw.Text != "" && txtaddress.Text != "")
            {
                pa2.Visible = true;
                pa1.Visible = false;
                string t = ddltitle.Text;
            con.Open();
            string qry = "update health_insu set clientname=@Title,gender=@Gender,dobi=@DOB,address=@Address,height=@Height,weight=@Weight where hid=@Id";

            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Title", t + "." + " " + full_name.Text);
            cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
            if (malerad.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", malerad.Text);
            }
            else if (femalerad.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", femalerad.Text);
            }


            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Height", ddlih.Text);
            cmd.Parameters.AddWithValue("@Weight", txtiw.Text);
              cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"]);
            int i;
            i = cmd.ExecuteNonQuery();

            con.Close();
            idetails();
            }
            else
            {
                

                    Label1.Text = " Please Select Gender.. !";
                    Label1.ForeColor = System.Drawing.Color.Red;




                if(txtdob.Text == "")
                {

                    Label2.Text = "Date of Birth Required !";
                    Label2.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label2.Text = "";
                }

                if (txtiw.Text == "")
                {

                    Label3.Text = " Weight Required !";
                    Label3.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label3.Text = "";
                }
                if (txtaddress.Text == "")
                {

                    Label4.Text = " Address Required !";
                    Label4.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label4.Text = "";
                }
            }
        }

        //protected void tmember_Click(object sender, EventArgs e)
        //{
        //    int count = Convert.ToInt32(totalmember.Text);
        //    for (int i = 1; i <= count; i++)
        //    {
        //        TextBox txt = new TextBox();
        //        txt.ID = "txt" + i.ToString();
        //        txt.Text = i.ToString();
        //        txt.CssClass = "form-control";
        //        membername.Controls.Add(txt);
        //        //pnlmember.Controls.Add(txt);
        //    }
        //    for (int i = 1; i <= count; i++)
        //    {
        //        TextBox txt = new TextBox();
        //        txt.ID = ID;
        //        txt.Text = i.ToString();
        //        txt.CssClass = "form-control";
        //        memberdob.Controls.Add(txt);
        //        //pnlmember.Controls.Add(txt);
        //    }
        //    for (int i = 1; i <= count; i++)
        //    {
        //        DropDownList ddl = new DropDownList();
        //        ddl.ID = ID;
        //        ddl.CssClass = "form-control";
        //        ddl.Items.Add(new ListItem("self", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("Wife", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("Husband", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("Son", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("Daughter", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("Mother", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("Father", Convert.ToString("0")));
        //        memberrelation.Controls.Add(ddl);
        //        //pnlmember.Controls.Add(txt);
        //    }

        //    for (int i = 1; i <= count; i++)
        //    {
        //        DropDownList ddl = new DropDownList();
        //        ddl.ID = ID;
        //        ddl.CssClass = "form-control";
        //        ddl.Items.Add(new ListItem("2 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("2 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("4 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("5 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("6 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("7 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("8 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 1 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 2 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 3 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 4 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 5 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 6 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 7 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 8 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("9 feet 9 inch", Convert.ToString("0")));
        //        ddl.Items.Add(new ListItem("10 feet", Convert.ToString("0")));
        //        memberheight.Controls.Add(ddl);
        //        //pnlmember.Controls.Add(txt);
        //    }

        //    for (int i = 1; i <= count; i++)
        //    {
        //        TextBox txt = new TextBox();
        //        txt.ID = "txsst" + i.ToString();
        //        txt.Text = i.ToString();
        //        txt.CssClass = "form-control";
        //        memberweight.Controls.Add(txt);
        //        //pnlmember.Controls.Add(txt);
        //    }
        //    Session["icount"] = count;
        //}

        //protected void addmember_Click(object sender, EventArgs e)
        //{

        //    int count = Convert.ToInt32(Session["icount"]);
        //    for (int j = 1; j <= count; j++)
        //    {

        //        TextBox aa = (TextBox)membername.FindControl("txt" + j);
        //        Response.Write(aa.Text);

        //        TextBox bb = (TextBox)membername.FindControl("TextBoxE" + j);
        //        Response.Write(bb.Text);

        //    }


        //    foreach (TextBox txtname in membername.Controls.OfType<TextBox>())
        //    {
        //        TextBox txtmname = (TextBox)membername.FindControl("txt");
        //        con.Open();
        //        string qry = "insert into himember(membername) values(@membername)";
        //        cmd = new SqlCommand(qry, con);
        //        cmd.Parameters.AddWithValue("@membername", txtmname.Text);

        //        int i;
        //        i = cmd.ExecuteNonQuery();

        //        con.Close();
        //        if (i > 0)
        //        {
        //            Response.Redirect("hlist.aspx");

        //        }
        //    }
        //}


        protected void nextbtn_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("hibankdetails.aspx");
           
            
 
        }
        //protected void edit_Click(object sender, EventArgs e)
        //{

        //    LinkButton lnk = (LinkButton)sender;
        //    if (lnk != null)
        //    {
        //        con.Open();
        //        string qry = "select * from himember where memberid=@Id";
        //        cmd = new SqlCommand(qry, con);
        //        cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
        //        dr = cmd.ExecuteReader();

        //        if (dr.HasRows)
        //        {

        //            dr.Read();
        //            mname.Text = dr["membername"].ToString();
        //            mdob.Text = dr["dobm"].ToString();
        //            mddlr.Text = dr["rtop"].ToString();
        //            mddlh.Text = dr["height"].ToString();
        //            mweight.Text = dr["weight"].ToString();

        //            Session["mid"] = lnk.CommandArgument.ToString();


                    

        //            dr.Close();

        //        }



        //        con.Close();
        //        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
        //    }
        //}
        protected void del_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "delete from himember where memberid=@id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                cmd.ExecuteNonQuery();

                fillrpt();
                con.Close();

            }
        }

        //protected void update_Click(object sender, EventArgs e)
        //{


             
        //         con.Open();
        //         string qry = "update himember set membername=@Name,dobm=@DOB,height=@Height,weight=@Weight where memberid=@Id";
        //         cmd = new SqlCommand(qry, con);
                 
        //         cmd.Parameters.AddWithValue("@Name", mname.Text);
        //         cmd.Parameters.AddWithValue("@DOB", mdob.Text);
        //         cmd.Parameters.AddWithValue("@Height", mddlh.Text);
        //         cmd.Parameters.AddWithValue("@Weight", mweight.Text);
        //         cmd.Parameters.AddWithValue("@Id", Session["mid"]);
        //         cmd.ExecuteNonQuery();
        //         fillrpt();
        //         con.Close();
             
        //}

        protected void addbtn_Click(object sender, EventArgs e)
        {
            if (txtmembername.Text != "" && txtidob.Text != "" && ddlrelation.Text != "Relation" && ddlheight.Text != "Height" && txtweight.Text != "")
            {
                LinkButton lnk = (LinkButton)sender;
                con.Open();
                string qry = "insert into himember(membername,hid,dobm,rtop,height,weight,loginid,isdelete,insu_cust_id) values('" + txtmembername.Text + "',@Id,'" + txtidob.Text + "','" + ddlrelation.Text + "','" + ddlheight.Text + "','" + txtweight.Text + "',@lid,@isd,@icid)";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"].ToString());

                cmd.Parameters.AddWithValue("@isd", "0");
                cmd.Parameters.AddWithValue("@lid", Session["login"].ToString());
                cmd.Parameters.AddWithValue("@icid", DateTime.Now.ToString("ddMMyyyyhhmmss"));


                int i;
                i = cmd.ExecuteNonQuery();

                con.Close();
                if (i > 0)
                {
                    txtmembername.Text = "";
                    txtidob.Text = "";
                    ddlrelation.Text = "";
                    ddlheight.Text = "";
                    txtweight.Text = "";
                    fillrpt();
                }
            }
            else
            {
                Label5.Text = "All Details Required !";
                Label5.ForeColor = System.Drawing.Color.Red;
            }


            
            
        }
        public void fillrpt()
        {
            String qry = "select * from himember where hid=@Id";

            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"].ToString());
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }
        protected void ipopup_Click(object sender, EventArgs e)
        {

            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "select * from health_insu where hid=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Read();
                    piname.Text = dr["clientname"].ToString();
                    pidob.Text = dr["dobi"].ToString();
                    piaddress.Text = dr["address"].ToString();
                    pimobileno.Text = dr["mobileno"].ToString();




                    dr.Close();

                }



                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#imodal').modal();", true);
                
            }
        }

        protected void iupdate_Click(object sender, EventArgs e)
        {
           

            con.Open();
            string qry = "update health_insu set clientname=@Title,dobi=@DOB,address=@Address,mobileno=@Mobile,gender=@Gender where hid=@Id";

            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Title", piname.Text);
            cmd.Parameters.AddWithValue("@DOB", pidob.Text);
            if (pimalerad.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", pimalerad.Text);
            }
            else if (pifemalerad.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", pifemalerad.Text);
            }


            cmd.Parameters.AddWithValue("@Address", piaddress.Text);
            cmd.Parameters.AddWithValue("@Mobile", pimobileno.Text);
            
            cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"]);
            int i;
            i = cmd.ExecuteNonQuery();

            con.Close();
            idetails();
            
        }
    }
}