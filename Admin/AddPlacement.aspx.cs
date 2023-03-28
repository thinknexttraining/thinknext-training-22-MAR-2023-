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

public partial class Admin_AddPlacement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        lblerror.Visible = false;
        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");
        //}
        Session.Timeout = 300;
        if (Session["myck"] == "")
        {
            Response.Redirect("~/default.aspx");
        }

        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
      
        if (!IsPostBack)
        {
            show();
            type();
            DropSubCategory();
            //ddlCategory.Items.Insert(0, "--Select Category-- ");
            ddlSubCategory.Items.Insert(0, "--Select SubCategory-- ");
            if (rdinter.Checked == false && rdplace.Checked == false)
            {
                GridPlacement.Visible = false;
                Panel2.Visible = false;
                lblRecords.Visible = false;
 
            }

        }
        
        //DropCategory();
        
       



    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtcandidate.Text == "")
        {
            lblMessage.Text = "Please Enter Candidate Name..";
            return;
        }
        else if (txtCollegeName.Text == "")
        {
            lblMessage.Text = "Please  Enter College Name..";
            return;
        }
        else if (txtCompanyName.Text == "")
        {
            lblMessage.Text = "please Enter Company name..";
            return;
        }
        else if (txtDesig.Text == "")
        {
            lblMessage.Text = "please Enter Designation..";
            return;
        }
        else if (txtsalaryPackage.Text == "")
        {
            lblMessage.Text = "please Enter Salary Package..";
            return;
        }
        else if (ddlCategory.SelectedIndex == 0)
        {
            lblMessage.Text = "please select Category..";
            return;
        }
        else if (ddlSubCategory.SelectedIndex == 0)
        {
            lblMessage.Text = "please select Subcategory..";
            return;
        }
        int result = 0;
        if (ddljobtype.Text == "Awaited" || ddljobtype.Text == "Part Time")
        {
            result = 1;
        }

        else if (ddljobtype.Text == "InterView")
        {

            result = 3;
        }
        else { result = 2; }
        string query = "";
        if (fupllogo.HasFile)
        {
           
		string path = null;
		string path1 = null;
		path = Server.MapPath("~/images");
		fupllogo.SaveAs(path + fupllogo.FileName);
        path1 = "~/images/"+ fupllogo.FileName;
		

            //string filename = Path.GetFileName(fupllogo.FileName);
            //fupllogo.SaveAs(Server.MapPath("~/") + filename);
            //string filename = fupllogo.SaveAs(Server.MapPath("~/") + filename);


        query = "insert into AddPlace(Designation, Salary, Category, SubCategory, Description, Companyname, candidatename, CollegeName,JobType,Result,AddDate,Value,CompanyLogo,City,Status,CompanyType)values('" + txtDesig.Text + "', '" + txtsalaryPackage.Text + "','" + ddlCategory.SelectedValue + "', '" + ddlSubCategory.SelectedValue + "','" + txtDescriptions.Text + "', '" + txtCompanyName.Text + "', '" + txtcandidate.Text + "', '" + txtCollegeName.Text + "','" + ddljobtype.Text + "','" + ddlresult.Text + "','" + txtDate.Text + "','" + result + "','" + path1 + "','" + txtcity.Text + "','" + ddlStatus.Text + "','" + ddltype.Text + "')";
        }
        else
        {
            query = "insert into AddPlace(Designation, Salary, Category, SubCategory, Description, Companyname, candidatename, CollegeName,JobType,Result,AddDate,Value,City,Status,CompanyType)values('" + txtDesig.Text + "', '" + txtsalaryPackage.Text + "','" + ddlCategory.SelectedValue + "', '" + ddlSubCategory.SelectedValue + "','" + txtDescriptions.Text + "', '" + txtCompanyName.Text + "', '" + txtcandidate.Text + "', '" + txtCollegeName.Text + "','" + ddljobtype.Text + "','" + ddlresult.Text + "','" + txtDate.Text + "','" + result + "','" + txtcity.Text + "','" + ddlStatus.Text + "','" + ddltype.Text + "')";
        }
        SqlCommand cmd = new SqlCommand(query, con);

       
       
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        txtDesig.Text = "";
        txtsalaryPackage.Text = "";
        txtDescriptions.Text = "";
        txtCompanyName.Text = "";
        txtcandidate.Text = "";
        txtCollegeName.Text = "";
        txtDate.Text = "";
        txtcity.Text = "";
        ddlStatus.SelectedIndex = -1;
        ddltype.SelectedIndex = -1;
        //ddlCategory.SelectedValue = "";
        //ddlSubCategory.SelectedValue = "";
        //lblMsg.Visible = true;
        lblMessage.Text = "Data has been Saved Sucessfully .";
        txtcandidate.Focus();
        show();
    }


    //===================================



    protected void show()
    {



        string query2 = "select CandidateName , CollegeName, CompanyName ,Designation, Salary, Category, SubCategory, Description,JobType,Result from AddPlace;select count(*) from AddPlace";
        SqlDataAdapter adp = new SqlDataAdapter(query2, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridPlacement.DataSource = ds;
            GridPlacement.DataBind();


        }
        
        lblRecords.Text = "Total Records : " + GridPlacement.Rows.Count;

    }
    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        SubCtegory(ddlCategory.Text);
        lblMessage.Text = "";
    }
    protected void GridPlacement_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridPlacement.EditIndex = e.NewEditIndex;
        show();

    }
    protected void GridPlacement_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lblCname = (Label)GridPlacement.Rows[e.RowIndex].FindControl("lblCollegeName");
        Label lblCandiName = (Label)GridPlacement.Rows[e.RowIndex].FindControl("lblCandiName");
        Label lblCompName = (Label)GridPlacement.Rows[e.RowIndex].FindControl("lblCompanyname");
        string Sql = null;
        Sql = "delete from AddPlace where  CandidateName=" + "'" + lblCandiName.Text + "'" + "And CollegeName=" + "'" + lblCname.Text + "'" + " And CompanyName=" + "'" + lblCompName.Text + "'";
        SqlCommand cmd = new SqlCommand(Sql, con);

        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        show();
    }
    protected void GridPlacement_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridPlacement.EditIndex = -1;
        show();
    }

    protected void GridPlacement_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtCandiName = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtCandiName");
        TextBox txtCName = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtCollegeName");
        TextBox txtCompName = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtCompanyName");
        TextBox txtDesig = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtDesignation");
        TextBox txtSalary = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtSalary");
        TextBox txtCategory = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtCategory");
        TextBox txtSubCategory = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtSubCategory");
        //TextBox txtDescription = (TextBox)GridPlacement.Rows[e.RowIndex].FindControl("txtDescription");
        DropDownList ddljobtype = (DropDownList)GridPlacement.Rows[e.RowIndex].FindControl("ddljobtype");
        DropDownList ddlresult = (DropDownList)GridPlacement.Rows[e.RowIndex].FindControl("ddlresult");

        Label lblCname = (Label)GridPlacement.Rows[e.RowIndex].FindControl("lblCollegeName1");//lblCompanyname,lblCollegeName,
        Label lblCandiName = (Label)GridPlacement.Rows[e.RowIndex].FindControl("lblCandidatename1");
        Label lblCompName = (Label)GridPlacement.Rows[e.RowIndex].FindControl("lblCompanyname1");
        if (ddljobtype.Text == "Select Type" || ddlresult.Text == "Select Result")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please select JobType and Result";
            return;
        }
        int result = 0;
        if (ddljobtype.Text == "Part Time" || ddlresult.Text == "Awaited")
        {
            result = 1;
        }
        else 
        {
            result = 2;
        }

        string Sql = null;
        //Sql = "update AddPlace set Designation=" + "'" + txtDesig.Text + "'" + "," + "Salary=" + "'" + txtSalary.Text + "'" + "," + "Category=" + "'" + txtCategory.Text + "'" + "," + "SubCategory=" + "'" + txtSubCategory.Text + "'" + "," + "CompanyName=" + "'" + txtCompName.Text + "'" + "," + "CandidateName=" + "'" + txtCandiName.Text + "'" + "," + "CollegeName= " + "'" + txtCName.Text + "'" +","+"JobType="+"'"++"'"+","+ " where CollegeName=" + "'" + lblCname.Text + "'" + "And CandidateName=" + "'" + lblCandiName.Text + "'" + "And CompanyName=" + "'" + lblCompName.Text + "'";
        Sql="update addplace set Designation='"+txtDesig.Text +"',Salary='"+txtSalary.Text+"',Category='"+txtCategory.Text +"',SubCategory='"+txtSubCategory.Text+"',CompanyName='"+txtCompName.Text+"',CandidateName='"+txtCandiName.Text+"',CollegeName='"+txtCName.Text+"', Value="+result+",JobType='"+ddljobtype.Text+"',Result='"+ddlresult.Text+"' where CollegeName='"+lblCname.Text+"' And CandidateName='"+lblCandiName.Text+"' And CompanyName='"+lblCompName.Text+"'";
        SqlCommand cmd = new SqlCommand(Sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        GridPlacement.EditIndex = -1;
        show();

    }
    protected void GridPlacement_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //e.Row.Cells[0].CssClass = "locked";
    }

    //========select distinct Category======
    protected void DropSubCategory()
    {
        //if (!Page.IsPostBack)
        //{


            string selectSQL = "select distinct Category from MasterPlacementCategory ";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            try
            {
                //ListItem newItem = new ListItem();
                //newItem.Text = "Select";
                //newItem.Value = "0";
                //ddlCategory.Items.Add(newItem);
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListItem newItem1 = new ListItem();
                    newItem1.Text = reader["Category"].ToString();
                    newItem1.Value = reader["Category"].ToString();
                    ddlCategory.Items.Add(newItem1);
                    
                }
                ddlCategory.Items.Insert(0, "--Select Category-- ");
                reader.Close();
                reader.Dispose();
                cmd.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        //}
    }



    //========select DISTINCT SubCategory======
    protected void DropCategory()
    {
        //if (!Page.IsPostBack)
        //{
        string selectSQL = "select DISTINCT SubCategory from MasterPlacementCategory where Category='" + ddlCategory.SelectedValue + "' and SubCategory!='NULL'; ";
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            try
            {

                //ListItem newItem = new ListItem();
                //newItem.Text = "Select";
                //newItem.Value = "0";
                //ddlSubCategory.Items.Add(newItem);
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListItem newItem1 = new ListItem();
                    newItem1.Text = reader["SubCategory"].ToString();
                    newItem1.Value = reader["SubCategory"].ToString();
                    ddlSubCategory.Items.Add(newItem1);
                }
                ddlCategory.Items.Insert(0, "--Select Category-- ");
                reader.Close();
                reader.Dispose();
                cmd.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        //}
    }


    //======== select DISTINCT SubCategory  ======
    public void SubCtegory(string Category)
    {

        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "select DISTINCT SubCategory from MasterPlacementCategory where Category='" + ddlCategory.SelectedValue + "'and SubCategory is not null";
        SqlCommand cmd = new SqlCommand(Sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory ");
        ddlSubCategory.Items.Clear();
        ddlSubCategory.Items.Insert(0, "--Select SubCategory-- ");
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

    //========Insert Category======
    public void InsertCategory(string Category)
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        con.Open();
        DataSet ds = new DataSet();
        string sql = null;
        sql = "Insert Into MasterPlacementCategory (Category,FranchiseCode) values (@Category,@FranchiseCode) ";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@Category", Category);
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }


    //======== Insert  SubCategory ======
    public void InsertSubCategory(string Category, string SubCategory)
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        con.Open();
        DataSet ds = new DataSet();
        string sql = null;
        sql = "insert into   MasterPlacementCategory (SubCategory,Category,FranchiseCode)values(@SubCategory,@Category,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@SubCategory", SubCategory);
        cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);

        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }


    //======== CheckCategory======
    public bool CheckCategory(string Category)
    {
        bool Bool = false;
        SqlConnection con = new SqlConnection();
        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        con.Open();
        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "Select  Category  from MasterPlacementCategory where Category=@Category and FranchiseCode='" + txtfranchise.Text + "'  ";
        SqlCommand cmd = new SqlCommand(Sql, con);
        cmd.Parameters.AddWithValue("@Category", Category);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory");
        ddlCategory.Items.Clear();
        //ddlCategory.Items.Add("Select");
        if (ds.Tables["MasterPlacementCategory"].Rows.Count > 0)
        {
            Bool = true;

        }
        else
        {
            Bool = false;
        }
        con.Close();
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
        return Bool;
    }


    //======== CheckSubCtegory======
    public bool CheckSubCtegory(string SubCategory)
    {
        bool @bool = false;
        SqlConnection con = new SqlConnection();
        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        con.Open();
        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "Select  SubCategory from MasterPlacementCategory where  SubCategory=@SubCategory ";
        SqlCommand cmd = new SqlCommand(Sql, con);
        cmd.Parameters.AddWithValue("@SubCategory", SubCategory);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "MasterPlacementCategory");
        if (ds.Tables["MasterPlacementCategory"].Rows.Count > 0)
        {
            @bool = true;
        }
        else
        {
            @bool = false;
        }
        con.Close();
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
        return @bool;
    }



    //============Buton to save data==============
    //If IsNumeric(TextBoxInsert.Text) = True Then
    //            lblMsg.Text = "Invalid " & lblinsert.Text
    protected void ButtonInsSave_Click(object sender, System.EventArgs e)
    {
        

            if (!string.IsNullOrEmpty(TextBoxInsert.Text))
            {
                //(Int32.Parse(TextBoxInsert.Text.Trim())== true) 
                int b;
                if (Int32.TryParse(TextBoxInsert.Text, out b))
                {
                    lblMessage.Text = "Invalid " + lblinsert.Text;
                }
                else
                {

                    if (hiddentext.Value == "Enter Category")
                    {
                        if (CheckCategory(TextBoxInsert.Text) == true)
                        {
                            lblMessage.Text = "Category already exists";
                            DropSubCategory();
                            return;
                        }
                        InsertCategory(TextBoxInsert.Text);
                        lblMessage.Text = "Category Saved Successfully";
                        DropSubCategory();
                    }
                    else if (hiddentext.Value == "Enter Sub Category")
                    {
                        if (ddlCategory.Text == "Select")
                        {
                            lblMessage.Text = "Select Category for Sub Category";
                            return;
                        }
                        if (CheckSubCtegory(TextBoxInsert.Text) == true)
                        {
                            lblMessage.Text = "Sub Category already exists";
                            DropCategory();
                            return;
                        }
                        InsertSubCategory(ddlSubCategory.Text, TextBoxInsert.Text);
                        lblMessage.Text = "Sub Category Saved Successfully";
                        SubCtegory(ddlSubCategory.Text);
                        //DropCategory();
                    }
                   
               
                   
                }

            }


        
    }

    protected void rdplace_CheckedChanged(object sender, EventArgs e)
    {
        GridPlacement.Visible = true;
        Panel2.Visible = true;
        lblRecords.Visible = true;

    }
    protected void rdinter_CheckedChanged(object sender, EventArgs e)
    {
        GridPlacement.Visible = true;
        Panel2.Visible = true;
        lblRecords.Visible = true;
        
    }
    protected void btnsubmit_Click(object sender, System.EventArgs e)
    {
        if (txtInserting.Text == "")
        {
            lblMessage.Visible = true;
            lblMessage.Text = "please enter company type";
            return;

        }
        SqlConnection con = new SqlConnection();
        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        con.Open();
        DataSet ds = new DataSet();
        string Sql = null;
        Sql = "insert into tbCompany values('" + txtInserting.Text + "','"+"THINKNEXT TRAINING"+ "','" + "TNK101" + "')";
        SqlCommand cmd = new SqlCommand(Sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        type();
    }
    public void type()
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        con.Open();
        string Sql = null;
        Sql = "select distinct CompanyType from tbCompany where BrandName='THINKNEXT TRAINING' and FranchiesCode='TNK101'";
        SqlDataAdapter adp = new SqlDataAdapter(Sql,con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddltype.DataSource = ds;
            ddltype.DataTextField = "CompanyType";
            ddltype.DataValueField = "CompanyType";
            ddltype.DataBind();
            ddltype.Items.Insert(0, "Select");
        }
    }
}



