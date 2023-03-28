using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class DisplaySchlorship : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");
        //}
        Session.Timeout = 300;
        if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = varclass.GetConnectionString("");
        if (Page.IsPostBack == false)
        {
            DisplayAllSchlorship();
        }
    }
    private void DisplayAllSchlorship()
    {
        string query = "Select * from MasterSchlorship order by TestDate Desc";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmessage.Text = "";
        }
        else
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmessage.Text = "No Match Found !";
        }
    }

    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{

    //    try
    //    {
    //        if (e.NewPageIndex != -1)
    //        {
    //            GridView1.PageIndex = e.NewPageIndex;

    //            GridView1.DataBind();
                
    //        }
    //        else
    //        {

    //        }
    //    }
    //    catch
    //    {
    //    }
        
    //}
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;

        //DisplayAllSchlorship();
    }

    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {



            string  a = e.Row.RowIndex.ToString();
            e.Row.Attributes.Add("OnMouseOver", "this.style.cursor = 'hand';");
            Button btn = (Button)e.Row.FindControl("Button21");


            e.Row.Attributes["OnClick"] = ClientScript.GetPostBackClientHyperlink(btn, "");




        }




    }
    //protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{


    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {


    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        Label27.Text = e.CommandArgument.ToString();

        

    }
    protected void show(object sender, EventArgs e)
    {




    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewRow gv = GridView1.SelectedRow;





        //Label srno = (Label)gv.FindControl("lblSRNO");
        //Label DateEntry = (Label)gv.FindControl("Label26");
        //Label TestDate = (Label)gv.FindControl("Label25");
        //Label CollegeName = (Label)gv.FindControl("Label24");
        //Label StudentName = (Label)gv.FindControl("Label23");
        //Label Qualification = (Label)gv.FindControl("Label22");
        //Label PercantageOff = (Label)gv.FindControl("Label21");
        





       



    }




    protected void ButtonInsSave_Click(object sender, System.EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update masterschlorship set studentname='" + StudentName1.Text + "',collegename='" + CollegeName1.Text + "',qualification='" + Qualification1.Text + "',percantageoff='" + PercantageOff1.Text + "' where scholarshipid='"+TextBoxInsert.Text+"'" ;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();


        string query1 = "Select * from MasterSchlorship order by TestDate Desc";
        SqlDataAdapter adp1 = new SqlDataAdapter(query1, con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);


        {
            GridView1.DataSource = ds1;
            GridView1.DataBind();
            lblmessage.Text = "";
            lblmsg.Visible = true;
            lblmsg.Text = "Record Successfully Updated";
        }











    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        GridViewRow gv = (GridViewRow)(sender as Button ).Parent.Parent;





        Label srno = (Label)gv.FindControl("lblSRNO");
        Label DateEntry = (Label)gv.FindControl("Label26");
        Label TestDate = (Label)gv.FindControl("Label25");
        Label CollegeName = (Label)gv.FindControl("Label24");
        Label StudentName = (Label)gv.FindControl("Label23");
        Label Qualification = (Label)gv.FindControl("Label22");
        Label PercantageOff = (Label)gv.FindControl("Label21");
        Label ID = (Label)gv.FindControl("scholar");

        srno1.Text = srno.Text ;
        DateEntry1.Text = DateEntry.Text;
        TestDate1.Text = TestDate.Text;
        CollegeName1.Text = CollegeName.Text;
        StudentName1.Text = StudentName.Text;
        Qualification1.Text = Qualification.Text;
        PercantageOff1.Text = PercantageOff.Text;
        TextBoxInsert.Text = ID.Text;
        ScriptManager.RegisterStartupScript(this, GetType(), "togglCategory()", "togglCategory()();", true);
    }
    protected void image_Click(object sender, ImageClickEventArgs e)
    {

        TextBox text = (TextBox)GridView1.HeaderRow.Cells[4].FindControl("TextBox1");

        string query1 = "";
        con.Open();

        if (text.Text == "")
        {
             query1 = "Select * from MasterSchlorship  order by TestDate Desc";
        }
        else
        {

           query1 = "Select * from MasterSchlorship where  StudentName like '" + text.Text + "%'  order by TestDate Desc";
        }
        SqlDataAdapter adp1 = new SqlDataAdapter(query1, con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);

         
        {
            GridView1.DataSource = ds1;
            GridView1.DataBind();
            lblmessage.Text = "";
            //lblmsg.Visible = true;
            //lblmsg.Text = "Record Successfully Updated";
        }



    }
}