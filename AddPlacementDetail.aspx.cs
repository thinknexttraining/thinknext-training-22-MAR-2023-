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
using System.IO;

public partial class AddPlacementDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        DropSubCategory();
        DropCategory();

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //if (txtcandidate.Text == "")
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.Text = "Please Enter the Name of Candidate";
        //    return;
        //}
        //if (txtCollegeName.Text == "")
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.Text = "Please Enter the name of College";
        //    return;
        //}
        //if (txtCompanyName.Text == "")
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.Text = "Please Enter the name of Company";
        //    return;
        //}
        //if (txtDesig.Text == "")
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.Text = "Please Enter the Designation";
        //    return;
        //}

        //if (ddlCategory.SelectedValue == "0")
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.Text = "Please Select the Category";
        //    return;
        //}

        string query = "insert into AddPlace(Designation, Salary, Category, SubCategory, Description, Companyname, candidatename, CollegeName )values('" + txtDesig.Text + "', '" + txtsalaryPackage.Text + "','" + ddlCategory.SelectedValue + "', '" + ddlSubCategory.SelectedValue + "','" + txtDescriptions.Text + "', '" + txtCompanyName.Text + "', '" + txtcandidate.Text + "', '"+txtCollegeName.Text +"')";
        SqlCommand cmd = new SqlCommand(query, con);
      
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        txtDesig.Text = "";
        txtsalaryPackage.Text = "";
        txtDescriptions.Text = "";
        txtCompanyName.Text = "";
        txtcandidate.Text = "";
        txtCollegeName.Text = "";
        //ddlCategory.SelectedValue = "";
        //ddlSubCategory.SelectedValue = "";
        lblMsg.Visible = true;
        lblMsg.Text = "Data has been Saved Sucessfully .";
        txtcandidate.Focus();
    }

    protected void DropCategory()
    {
        if (!Page.IsPostBack)
        {
            string selectSQL = "select DISTINCT SubCategory from MasterPlacementCategory ";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            try
            {

                ListItem newItem = new ListItem();
                newItem.Text = "Select";
                newItem.Value = "0";
                ddlSubCategory.Items.Add(newItem);
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListItem newItem1 = new ListItem();
                    newItem1.Text = reader["SubCategory"].ToString();
                    newItem1.Value = reader["SubCategory"].ToString();
                    ddlSubCategory.Items.Add(newItem1);
                }
                reader.Close();
                reader.Dispose();
                cmd.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        //ShowPlacements();
        show();
    }


    /*  public void ShowPlacements()
      {
        
          string sql = null;
          SqlDataAdapter da = new SqlDataAdapter();
          DataSet ds = new DataSet();
          lblMsg.Visible = false;
          sql = "select distinct * from AddPlace ";
          da = new SqlDataAdapter(sql, con);
    
          da.Fill(ds, "AddPlace");
          if (ds.Tables["AddPlace"].Rows.Count == 0)
          {
              lblMsg.Visible = true;
              lblMsg.Text = "No records found";
              GridView1.Visible = false;
              lblRecords.Text = "";

          }
          lblMsg.Visible = false;
          GridView1.Visible = true;
          GridView1.DataSource = ds.Tables["AddPlace"];
          GridView1.DataBind();
          lblRecords.Text = "Total Records : " + GridView1.Rows.Count;

        
      }*/



    protected void show()
    {


        lblMsg.Visible = false;
        string query2 = "select CandidateName , CollegeName, CompanyName ,Designation, Salary, Category, SubCategory, Description from AddPlace;select count(*) from AddPlace";
        SqlDataAdapter adp = new SqlDataAdapter(query2, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }
        lblRecords.Visible = true;
        lblRecords.Text = "Total Records : " + GridView1.Rows.Count;

    }


    protected void DropSubCategory()
    {
        if (!Page.IsPostBack)
        {


            string selectSQL = "select distinct Category from MasterPlacementCategory ";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            try
            {
                ListItem newItem = new ListItem();
                newItem.Text = "Select";
                newItem.Value = "0";
                ddlCategory.Items.Add(newItem);
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListItem newItem1 = new ListItem();
                    newItem1.Text = reader["Category"].ToString();
                    newItem1.Value = reader["Category"].ToString();
                    ddlCategory.Items.Add(newItem1);
                }
                reader.Close();
                reader.Dispose();
                cmd.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }


    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ButtonInsSave_Click(object sender, EventArgs e)
    {

        if (!string.IsNullOrEmpty(TextBoxInsert.Text))
        {

            {
                if (TextBoxInsert.Text != "" & hiddentext.Value == "Enter Category")
                {
                    if (CheckCategory(TextBoxInsert.Text) == true)
                    {
                        lblMsg.Text = "Category already exists";
                        return;
                    }
                    InsertCategory(TextBoxInsert.Text);
                    lblMsg.Text = "Category Saved Successfully";
                    Category();
                    ddlCategory.SelectedValue = TextBoxInsert.Text;
                }
                else if (TextBoxInsert.Text != "" & hiddentext.Value == "Enter Sub Category")
                {

                    if (ddlCategory.Text == "Select")
                    {
                        lblMsg.Text = "Select Category for Sub Category";
                        return;
                    }
                    if (CheckSubCtegory(TextBoxInsert.Text) == true)
                    {
                        lblMsg.Text = "Sub Category already exists";
                        return;
                    }
                    InsertSubCategory(ddlCategory.Text, TextBoxInsert.Text);
                    lblMsg.Text = "Sub Category Saved Successfully";
                    SubCtegory(ddlCategory.Text);
                    ddlCategory.ClearSelection();
                }
            }

        }
    }

    public void InsertCategory(string Category)
    {

        DataSet ds = new DataSet();
        string sql = null;
        sql = "Insert Into MasterPlacementCategory  (Category) values (@Category) ";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@Category", Category);
        cmd.ExecuteNonQuery();
        cmd.Dispose();

    }

    public void InsertSubCategory(string Category, string SubCategory)
    {

        DataSet ds = new DataSet();
        string sql = null;
        sql = "Insert Into MasterPlacementCategory (Category,SubCategory) values (@Category,@SubCategory) ";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@Category", Category);
        cmd.Parameters.AddWithValue("@SubCategory", SubCategory);
        cmd.ExecuteNonQuery();
        cmd.Dispose();

    }

    public bool CheckCategory(string Category)
    {
        bool Bool = false;
        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "Select  Category  from MasterPlacementCategory  where category=@Category";
        SqlCommand cmd = new SqlCommand(Sql, con);
        cmd.Parameters.AddWithValue("@Category", Category);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory ");
        ddlCategory.Items.Clear();
        ddlCategory.Items.Add("Select");
        if (ds.Tables["MasterPlacementCategory "].Rows.Count > 0)
        {
            Bool = true;

        }
        else
        {
            Bool = false;
        }

        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
        return Bool;

    }
    public bool CheckSubCtegory(string SubCategory)
    {
        bool @bool = false;

        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "Select  SubCategory from MasterPlacementCategory  where SubCategory=@SubCategory ";
        SqlCommand cmd = new SqlCommand(Sql, con);
        cmd.Parameters.AddWithValue("@SubCategory", SubCategory);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory ");
        ddlSubCategory.Items.Clear();
        ddlSubCategory.Items.Add("Select");
        if (ds.Tables["MasterPlacementCategory "].Rows.Count > 0)
        {
            @bool = true;
        }
        else
        {
            @bool = false;
        }

        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
        return @bool;
    }

    public void Category()
    {

        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "Select Distinct Category  from MasterPlacementCategory  ";
        SqlCommand cmd = new SqlCommand(Sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory ");
        ddlCategory.Items.Clear();
        ddlCategory.Items.Add("Select");
        if (ds.Tables["MasterPlacementCategory "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["MasterPlacementCategory "].Rows.Count - 1; i++)
            {
                ddlCategory.Items.Add(ds.Tables["MasterPlacementCategory "].Rows[i]["Category"].ToString());
            }
        }
        else
        {
        }

        cmd.Dispose();
        da.Dispose();
        ds.Dispose();

    }

    public void SubCtegory(string Category)
    {

        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "Select Distinct SubCategory from MasterPlacementCategory  where Category='" + ddlCategory.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(Sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory ");
        ddlSubCategory.Items.Clear();
        ddlSubCategory.Items.Add("Select");
        if (ds.Tables["MasterPlacementCategory "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["MasterPlacementCategory "].Rows.Count - 1; i++)
            {
                ddlSubCategory.Items.Add(ds.Tables["MasterPlacementCategory "].Rows[i]["SubCategory"].ToString());

            }

        }
        else
        {
        }

        cmd.Dispose();
        da.Dispose();
        ds.Dispose();

    }

    protected void ddlCategory_SelectedIndexChanged(object sender, System.EventArgs e)
    {


        SubCtegory(ddlCategory.Text);

    }

    protected void gdshow_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnExcel_Click(object sender, EventArgs e)
    {

   Response.ClearContent();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ManagementIntership.xls"));
        Response.ContentType = "application/ms-excel";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GridView1.AllowPaging = false;
        //Change the Header Row back to white color
        GridView1.HeaderRow.Style.Add("background-color", "Red");
        //Applying stlye to gridview header cells
        for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
        {
            GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
        }
        int j = 1;
        //Set alternate row color
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            gvrow.BackColor = System.Drawing.Color.White;
            if (j <= GridView1.Rows.Count)
            {
                if (j % 2 != 0)
                {
                    for (int k = 0; k < gvrow.Cells.Count; k++)
                    {
                        gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                    }
                }
            }
            j++;
        }
        GridView1.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();
    } 
    
    public override void VerifyRenderingInServerForm(Control control)
    {
        //base.VerifyRenderingInServerForm(control);
    }
    }




