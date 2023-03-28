using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_jobfairdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("constr");
        if(con.State==ConnectionState.Closed)
        { 
        con.Open();
        }
      
        if (!IsPostBack)
        { grdbind(); }

    }



    public void grdbind()
    {


        SqlDataAdapter adp = new SqlDataAdapter("select Name,MobileNo,EmailID,Qualification,convert(varchar(50),Registration_date,103) as Registration_date from tb_jobfair order by Registration_date asc", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            Label2.Visible = true;
            Label3.Visible = true;
            Label1.Visible = false;
            Label3.Text = ds.Tables[0].Rows.Count.ToString();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        }
        else
        {
            Label2.Visible = false;
            Label3.Visible = false;
            GridView1.DataSource = null;
            GridView1.DataBind();
            Label1.Visible = true;
            Label1.Text = "NO Record Found";

        }

    }

    //public void drpbind()
    //{
    //    SqlDataAdapter adp1 = new SqlDataAdapter("select distinct convert(varchar(50),Registration_date,103) as Registration_date from tb_jobfair", con);
    //    DataSet ds = new DataSet();
    //    adp1.Fill(ds);
    //    DropDownList1.DataSource = ds;
    //    DropDownList1.DataTextField = "Registration_date";
    //    DropDownList1.DataBind();
    //    DropDownList1.Items.Insert(0, "Select");
    //    DropDownList1.Items.Insert(1, "All");


    //}




    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    string sql = "select * from tb_jobfair";
    //    if (DropDownList1.SelectedItem.Text == "All")
    //    {

    //    }
    //    else if (DropDownList1.SelectedItem.Text == "Select" || DropDownList1.SelectedItem.Text == "")
    //    {
    //        Response.Write("select date first");

    //    }
    //    else 
    //    {



    //        DateTime dtt = DateTime.ParseExact(DropDownList1.SelectedItem.Text, "dd/MM/yyyy", null);
    //        int year = dtt.Year;
    //        int month = dtt.Month;
    //        int date = dtt.Day;

    //        DateTime dtonly = new DateTime(year, month, date);
    //        sql = sql + " where Registration_date = '" + dtonly + "'";
    //    }

    //    SqlDataAdapter da = new SqlDataAdapter(sql,con);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    GridView1.DataSource = ds;
    //    GridView1.DataBind();
         
        
    //}

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(CheckBox1.Checked==true)
        {
            SqlDataAdapter adp = new SqlDataAdapter("select Name,MobileNo,EmailID,Qualification,convert(varchar(50),Registration_date,103) as Registration_date from tb_jobfair order by Registration_date asc", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Visible = true;
                Label3.Visible = true;
                Label3.Text = ds.Tables[0].Rows.Count.ToString();
                Label1.Visible = false;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Label2.Visible = false;
                Label3.Visible = false;
                GridView1.DataSource = null;
                GridView1.DataBind();
                Label1.Visible = true;
                Label1.Text = "NO Record Found";

            }
        }
        else
        { 
        SqlDataAdapter adp = new SqlDataAdapter("select * from  tb_jobfair where Registration_date between convert(varchar (50),'" + TextBox1.Text + "',120) and convert(varchar (50),'" + TextBox2.Text + "',120) ", con);
        DataSet ds = new DataSet();
        adp.Fill(ds,"data");
            if (ds.Tables["data"].Rows.Count > 0)
            {
                Label1.Visible = false;
                Label2.Visible = true;
                Label3.Visible = true;
                Label3.Text = ds.Tables["data"].Rows.Count.ToString();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Label2.Visible = false;
                Label3.Visible = false;
                GridView1.DataSource = null;
                GridView1.DataBind();
                Label1.Visible = true;
                Label1.Text = "NO Record Found";
            }

        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;

        }
        else if (CheckBox1.Checked == false)
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;

        }

    }
}