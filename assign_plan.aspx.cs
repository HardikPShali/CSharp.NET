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
    public partial class assign_plan : System.Web.UI.Page
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

                dropme();
                d1();
            }
            //DropDownList1.Visible = false;

            if (panel1.Visible == true)
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
            if (Panel2.Visible == true)
            {
                panel1.Visible = false;
                Panel3.Visible = false;

            }
        }
        //    DropDownList2.Visible = false;
        //    DropDownList3.Visible = false;
        //    DropDownList4.Visible = false;

        //    ddlself.Visible = false;
        //    ddlspouse.Visible = false;
        //    DropDownList5.Visible = false;
        //    DropDownList6.Visible = false;
        //    DropDownList7.Visible = false;
        //    DropDownList8.Visible = false;
        //    DropDownList9.Visible = false;
        //    DropDownList10.Visible = false;
        //    DropDownList11.Visible = false;
        //    DropDownList12.Visible = false;


           
        //}
        public void dropme()
        {
            DropDownList1.Items.Insert(0, new ListItem("Select Age", "-1"));
            DropDownList2.Items.Insert(0, new ListItem("Age of the Eldest Member", "-1"));
            DropDownList3.Items.Insert(0, new ListItem("Age of Child ", "-1"));
            DropDownList4.Items.Insert(0, new ListItem("Age of the Eldest Member", "-1"));
            DropDownList5.Items.Insert(0, new ListItem("Age of the Eldest Member", "-1"));
            DropDownList6.Items.Insert(0, new ListItem("Age of the Eldest Child", "-1"));
            DropDownList7.Items.Insert(0, new ListItem("Age of the Eldest Member", "-1"));
            
         

        }
        protected void d1()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from policy", con);
            cmd.CommandType = CommandType.Text;
            insuplan.DataSource = cmd.ExecuteReader();
            insuplan.DataTextField = "name";
            insuplan.DataValueField = "policy_id";
            insuplan.DataBind();
            insuplan.Items.Insert(0, new ListItem("--- Select Insurance ---", "0"));
            con.Close();

        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
        }
       



        //protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if(RadioButtonList1.SelectedValue=="1")
        //    {
        //        DropDownList1.Visible = true;
        //    }
        //    if (RadioButtonList1.SelectedValue == "2")
        //    {
        //        DropDownList2.Visible = true;
        //    }
        //    if (RadioButtonList1.SelectedValue == "3")
        //    {
        //        DropDownList2.Visible = true;
        //        DropDownList3.Visible = true;
        //    }
        //    if (RadioButtonList1.SelectedValue == "4")
        //    {
        //        DropDownList2.Visible = true;
        //        DropDownList4.Visible = true;
        //    }
        //    if (RadioButtonList1.SelectedValue == "5")
        //    {
        //        DropDownList2.Visible = true;
        //    }
        //}




//        protected void selfrad_CheckedChanged(object sender, EventArgs e)
//        {
//            if(selfrad.Checked)
//            {
//                ddlself.Visible = false;
//            }
//        }

        protected void save_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
            panel1.Visible = false;

        }
        protected void insubtn_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel2.Visible = true;
            panel1.Visible = false;

        }

        //protected void merad_CheckedChanged(object sender, EventArgs e)
        //{
        //     if (merad.Checked)
        //     {
        //         DropDownList1.Visible = true;
        //     }
        //}

//        protected void merad_CheckedChanged(object sender, EventArgs e)
//        {
//            if (merad.Checked)
//            {
//                DropDownList1.Visible = true;
//            }
//        }

//        protected void mewiferad_CheckedChanged(object sender, EventArgs e)
//        {
//            if (mewiferad.Checked)
//            {
//                DropDownList2.Visible = true;
//            }
//        }

//        protected void mewife1_CheckedChanged(object sender, EventArgs e)
//        {
//            if (mewife1.Checked)
//            {
//                DropDownList2.Visible = true;
//                DropDownList3.Visible = true;
//            }
//        }

//        protected void mewife2_CheckedChanged(object sender, EventArgs e)
//        {
//            if (mewife2.Checked)
//            {
//                DropDownList2.Visible = true;
//                DropDownList4.Visible = true;
//            }
//        }

//        protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
//        {
//            if (RadioButton9.Checked)
//            {
//                DropDownList2.Visible = true;
               
//            }
//        }

      
      

      

        //protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (RadioButton1.Checked == true)
        //    {
        //        DropDownList1.Visible = true;
        //    }

        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    panel1.Visible = true;
          
           
        //}

        //protected void ddlson_SelectedIndexChanged(object sender, EventArgs e)
        //{
            

        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    ddlson1.Enabled = true;
        //}
     
     
    }
}