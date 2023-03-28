using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class project_list : System.Web.UI.Page
{
    string varIP;
    Class1 varClass1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            
            SqlConnection con = new SqlConnection(varClass1.GetConnectionString(varIP));
            SqlCommand cmd = new SqlCommand("select distinct technology from tbl_projects order by technology", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddl_technology.DataTextField = "technology";
            ddl_technology.DataValueField = "technology";
            ddl_technology.DataSource = dr;
            ddl_technology.DataBind();
            dr.Close();

            SqlCommand cmd_fillgrd = new SqlCommand("select title as Title,technology_used,technology as Technology from tbl_projects where technology = (select top(1) technology from tbl_projects order by technology)", con);
            SqlDataReader dr_fillgrd = cmd_fillgrd.ExecuteReader();
            grd_projects.DataSource = dr_fillgrd;
            grd_projects.DataBind();

            con.Close();
        }

    }

    protected void ddl_technology_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(varClass1.GetConnectionString(varIP));
        SqlCommand cmd_fillgrd = new SqlCommand("select title as Title,technology_used,technology as Technology from tbl_projects where technology = '"+ddl_technology.Text+"'", con);
        con.Open();
        SqlDataReader dr_fillgrd = cmd_fillgrd.ExecuteReader();
        grd_projects.DataSource = dr_fillgrd;
        grd_projects.DataBind();
    }

    protected void lb_request_Command(object sender, CommandEventArgs e)
    {
        var lb = (LinkButton)sender;
        var row = (GridViewRow)lb.NamingContainer;
        if (row != null)
        {
            var lbl_title = row.FindControl("lbl_title") as Label;
            var lbl_technology = row.FindControl("lbl_technology") as Label;
            
            if (lbl_title != null && lbl_technology != null)
            {
                //Get values
                string title = lbl_title.Text;
                string technology = lbl_technology.Text;

                Response.Redirect("project_request.aspx?title="+title+ "&tech=" + technology);
                
            }

        }
    }
}