using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;
using System.Net.NetworkInformation;

public partial class PlacementRecords : System.Web.UI.Page
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
        con.Open();
        gdbind();
    }

    public void gdbind()
    {

        string sql = null;
        DataSet ds = default(DataSet);
        SqlDataAdapter da = default(SqlDataAdapter);
        sql = "select CandidateName,CompanyName,CollegeName from AddPlace ";
        SqlCommand cmd = default(SqlCommand);
        cmd = new SqlCommand(sql, con);
        //  cmd.Parameters.AddWithValue("@ComplainerIDNo", txtIDNo.Text);

        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        // ds = new DataSet();
        da.Fill(ds, "AddPlace");
        if (ds.Tables["AddPlace"].Rows.Count == 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ("No records found");
            gdShow.Visible = false;
            lblTotal.Text = "";
            return;
        }
        lblMsg.Visible = false;
        gdShow.Visible = true;
        gdShow.DataSource = ds.Tables["AddPlace"];
        gdShow.DataBind();
        lblTotal.Text = "Total Records : " + ds.Tables["AddPlace"].Rows.Count;

        con.Close();

    }


}
