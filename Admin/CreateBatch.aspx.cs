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

public partial class Admin_CreateBatch : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            bindSession();
        }
    }

    public void bindSession()
    {
        string sql = "select Distinct Session from mastersession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";

        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddlSession.Items.Clear();
        ddlSession.Items.Insert(0, "Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddlSession.Items.Add(ds.Tables["masterSession "].Rows[i]["Session"].ToString());

            }

        }
        else
        {
          
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        
        if (ddlSession.Text == "Select" || txtBName.Text == " " || txtBTiming.Text == "" || txtSTID.Text == "" || ddlisactive.Text == "Select")
        {
            //this.Controls.Add(new LiteralControl("<div style='color: gray; height: 20px; width: 300px;'>please enter correct data</div>"));
            lblAddMessage.Visible = true;
            lblAddMessage.Text = "please fill data correctlly.. ";
            return;
        }
        string query = "insert into MasterBatches values('THINKNEXT TRAINING','TNK101','" + ddlSession.Text + "','" + txtBName.Text + "','" + txtBTiming.Text + "','" + txtSTID.Text + "','" + ddlisactive.Text + "')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblAddMessage.Visible = true;
        lblAddMessage.Text = "Batch Create Successfully.....";
        ddlSession.SelectedIndex =0;
        txtBName.Text = "";
        txtSTID.Text = "";
        ddlisactive.Text = "";
        txtBTiming.Text = "";
        ddlisactive.SelectedIndex = 0;
    }
    protected void ButtonInsSave_Click(object sender, EventArgs e)//Sess,batchid,batchname,bachtimeing,staffid,isacti
    {
          System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex("[A-Za-z]{3}-[A-Za-z]{3}-[0-9]{4}");


        bool matchResult = reg.IsMatch(TextBoxInsert.Text);

        if (matchResult == false)
        {
            lblError.Visible = true;
            lblError.Text = "Please enter correct format...";
            ScriptManager.RegisterStartupScript(this, GetType(), "togglSession", "togglSession();", true);
            return;
        }
        else
        {



            string query = "insert into mastersession values('THINKNEXT TRAINING','TNK101','" + TextBoxInsert.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblError.Visible = true;
            lblError.Text = "Session create Successfully....";
        }
    }
}
