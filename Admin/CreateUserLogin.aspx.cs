using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_CreateUserLogin : System.Web.UI.Page
{
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
            btnCreateAdmin.Visible = true;
            btnCreateStudent.Visible = true;
            Studentpnl.Visible = false;
            Adminpnl.Visible = false;
        
        

    }

   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtStuIdNO.Text == "" || txtStudentMobileno.Text == "" || txtStudentPwd.Text == "" || txtStudentPwd2.Text == "")
        {
            lblStudent.Visible = true;
            lblStudent.Text = "Please fill compleate Detail here";
        }
        else 
        {
        string msg = "";
        Session["Studentname"] = txtStuIdNO.Text;
        Session["studentpwd"] = txtStudentPwd.Text;
        
      
            varclass.CreateUserLogin(txtStuIdNO.Text, txtStudentPwd.Text, "Student");
            msg = "Welcome to ThinkNext Technologies Pvt. Ltd. Your ThinkNext CloudCampus UserName And Password Is Created: Your UserName=" + Session["Studentname"].ToString() + "And Password=" + Session["studentpwd"].ToString();
            //varclass.SendSMS(txtStudentMobileno.Text, msg, "Route9");
            //lblStumessage.Text = "UserName And PAssword Created successfully....";
            lblStudent.Visible = true;
            lblStudent.Text = "User Create Successully..";
            txtStudentMobileno.Text = "";
            txtStuIdNO.Text = "";
            ShowStudent();
        }

    }
    protected void btnSubmit2_Click(object sender, EventArgs e)
    {
        if (txtAdminIdNo.Text == "" || txtAdminMobNo.Text == "" || txtAdminPwa.Text == "" || txtAdminConPwd.Text == "")
        {
            lblAdimn.Visible = true;
            lblAdimn.Text = "Please fill compleate Detail here";
        }
        else
        {
            string msg = "";
            Session["Adminname"] = txtAdminIdNo.Text;
            Session["Adminpwd"] = txtAdminPwa.Text;

            varclass.CreateUserLogin(txtAdminIdNo.Text, txtAdminPwa.Text, "Staff");
            msg = "Welcome to ThinkNext Technologies Pvt. Ltd. Your ThinkNext CloudCampus UserName And Password Is Created: Your UserName=" + Session["Adminname"].ToString() + "And Password=" + Session["Adminpwd"].ToString();
            varclass.SendSMS(txtAdminMobNo.Text, msg, "Route9");
            lblAdimn.Visible = true;
            lblAdimn.Text = "User Create Successully..";
            txtAdminMobNo.Text = "";
            txtAdminIdNo.Text = "";
            ShowAdmin();
        }
    }
    protected void btnCreateStudent_Click(object sender, EventArgs e)
    {
        ShowStudent();
       
    }

    private void ShowStudent()
    {
        lblStudent.Visible = false;
        lblAdimn.Visible = false;
        Studentpnl.Visible = true;
        Adminpnl.Visible = false;
        if (Studentpnl.Visible == true)
        {
            btnCreateStudent.Visible = false;
        }
    }
    protected void btnCreateAdmin_Click(object sender, EventArgs e)
    {
        ShowAdmin();
    }

    private void ShowAdmin()
    {
        lblStudent.Visible = false;
        lblAdimn.Visible = false;
        Studentpnl.Visible = false;
        Adminpnl.Visible = true;
        if (Adminpnl.Visible == true)
        {
            btnCreateAdmin.Visible = false;
        }
    }
}
