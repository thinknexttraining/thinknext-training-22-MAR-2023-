using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Collections;
using System.Configuration;
using System.Drawing;

public partial class Show_result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    string VarIP = "";
    protected void Page_Load(object sender, EventArgs e)
    {



         if (Session["myck"]==null) 
        {
            Response.Redirect("~/default.aspx");
        }
        
        con.ConnectionString = varclass.GetConnectionString(VarIP);
        if (Page.IsPostBack == false)
        {
            DisplayResult();
            GiveAnswerColor();
        }
    }
    private void DisplayResult()
    {
        string query = "Select * from StudentData Where FranchiseCode='" + txtfranchiseCode.Text + "' And IdNo='" + Session["myck"].ToString() + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "StudentData");
        if (ds.Tables["StudentData"].Rows.Count > 0)
        {

            pnldoen.Visible = true;
            lblmsg.Text = "";
            pnlscore.Visible = true;
            gdresult.DataSource = ds;
            gdresult.DataBind();
        }
        else
        {
            pnlscore.Visible = false;
            pnldoen.Visible = false ;
            gdresult.DataSource = ds;
            gdresult.DataBind();
            lblmsg.Text = "No Record Found";
        }
    }
    int Score = 0;
    private void GiveAnswerColor()
    {
        foreach (GridViewRow gv in gdresult.Rows)
        {
            Label Question, YourAnswer, RightAnswer;
            Question = (Label)gv.FindControl("lblQuestion");
            YourAnswer = (Label)gv.FindControl("lblYourAnswer");
            RightAnswer = (Label)gv.FindControl("lblRightAnswer");
            if (YourAnswer.Text == RightAnswer.Text)
            {
                Score++;
                YourAnswer.ForeColor = Color.Green;
            }
            else
            {
                YourAnswer.ForeColor = Color.Red;
            }
        }
       
        lblscore.Text = Score.ToString();
    }


    protected void btnshow_Click(object sender, EventArgs e)
    {
        if (Session["myck"]!= null)
        {
            string query = "SELECT  * FROM StudentData Where FranchiseCode='" + txtfranchiseCode.Text + "'And TestType='" + dlltestype.Text + "' and IdNo='" + Session["myck"].ToString() + "'";
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "StudentData");
            if (ds.Tables["StudentData"].Rows.Count > 0)
            {
                pnlscore.Visible = true;
                lblmsg.Text = "";
                gdresult.DataSource = ds;
                gdresult.DataBind();
                GiveAnswerColor();
            }
            else
            {
                pnlscore.Visible = false;
                lblmsg.Text = "No Record Found !";
                gdresult.DataSource = ds;
                gdresult.DataBind();
            }
        }

    }
}