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

public partial class Admin_SqlBulkCopy : System.Web.UI.Page
{
    string inner = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldes.Visible = false;
        //ddlgetid.Text = "";
    }

    //public void Main()
    //{
    //    if (txtsorceIP.Text == "" || txtsourceDB.Text == "" || txtSourceUN.Text == "" || txtsourcePwd.Text == "" || txtDestIP.Text == "" || txtDestDB.Text == "" || txtDestUN.Text == "" || txtDestPwd.Text == "")
    //    {
           

    //       lblMsg.Text = "plz fill Details...............";
           
    //    }
    //    else
    //    {
    //    string Sourceing = "Data Source="+txtsorceIP.Text+"; Initial Catalog=UGI; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;";
    //    SqlConnection source = new SqlConnection("Data Source=" + txtsorceIP.Text + "; Initial Catalog="+txtsourceDB.Text+"; Persist Security Info=True; User ID="+txtSourceUN.Text+"; Password="+txtsourcePwd.Text+"; Max Pool Size=10000;");
    //    SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
    //    source.Open();
    //    dest.Open();
    //    SqlCommand sourceCommand = new SqlCommand("select * from "+txtSourtblname.Text+"", source);
    //    SqlDataAdapter adp = new SqlDataAdapter(sourceCommand);
    //    DataSet ds = new DataSet();
    //    adp.Fill(ds);
    //    using (SqlDataReader dr = sourceCommand.ExecuteReader())
    //    {
    //        using (SqlBulkCopy s = new SqlBulkCopy(dest))
    //        {
             
    //            s.DestinationTableName = txtDestblname.Text;
    //            s.ColumnMappings.Add("id","id");
    //            s.ColumnMappings.Add("ADD1", "ADD1");
    //            s.ColumnMappings.Add("Chk", "Chk");
    //            s.ColumnMappings.Add("Link", "Link");
    //            s.ColumnMappings.Add("College", "College");
    //            s.WriteToServer(ds.Tables[0]);
    //            s.Close();
    //        }
    //    }
    //    source.Close();
    //    dest.Close();
    //    lblMsg.Text = "Data Hasben successfully attached.....";
    //    Empty();
    //    }
    //}
    public void Empty()
    {
        txtsorceIP.Text = "";
        txtsourceDB.Text = "";
        txtSourceUN.Text = "";
        txtsourcePwd.Text = "";
        txtSourtblname.Text = "";
        txtDestIP.Text = "";
        txtDestDB.Text = "";
        txtDestUN.Text = "";
        txtDestPwd.Text = "";
        txtDestblname.Text = "";

    }

    
    protected void btnAttached_Click(object sender, EventArgs e)
    {
        columns1();
        //columns();
        Empty();
       
       
    }
   

    //public void MergeData()
    //{
    //    if (txtDestIP.Text == "" || txtDestDB.Text == "" || txtDestUN.Text == "" || txtDestPwd.Text == "")
    //    {
    //        lbldes.Visible = true;

    //        //lbldes.Text = "Please Enter Destination Details.....";

    //        //System.Web.HttpContext.Current.Response.Write("<script language=\"JavaScript\">alert(\"write here what you want\").fadeOut(3000)</script>");

    //    }
    //    else 
    //    {
    //        string Sourceing = "Data Source=" + txtsorceIP.Text + "; Initial Catalog=UGI; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;";
    //        SqlConnection source = new SqlConnection("Data Source=" + txtsorceIP.Text + "; Initial Catalog=" + txtsourceDB.Text + "; Persist Security Info=True; User ID=" + txtSourceUN.Text + "; Password=" + txtsourcePwd.Text + "; Max Pool Size=10000;");
    //        SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
    //        source.Open();
    //        dest.Open();
    //        SqlCommand sourceCommand = new SqlCommand("select * from " + txtSourtblname.Text + "" + " " + "where" + "" + " " + txtClmnname.Text + ">" + txtid.Text + "", source);
    //        SqlDataAdapter adp = new SqlDataAdapter(sourceCommand);
    //        DataSet ds = new DataSet();
    //        adp.Fill(ds);
    //        using (SqlDataReader dr = sourceCommand.ExecuteReader())
    //        {
    //            using (SqlBulkCopy s = new SqlBulkCopy(dest))
    //            {

    //                s.DestinationTableName = txtDestblname.Text;
    //                s.ColumnMappings.Add("id", "id");
    //                s.ColumnMappings.Add("ADD1", "ADD1");
    //                s.ColumnMappings.Add("Chk", "Chk");
    //                s.ColumnMappings.Add("Link", "Link");
    //                s.ColumnMappings.Add("College", "College");
    //                s.WriteToServer(ds.Tables[0]);
    //                s.Close();
    //            }
    //        }
    //        source.Close();
    //        dest.Close();
    //        lblMsg.Text = "Data Hasben successfully attached.....";
    //        Empty();
    //        txtClmnname.Text = "";
    //        txtid.Text = "";

 
    //    }
        
        
    //}
    protected void btntruncate_Click(object sender, EventArgs e)
    {
        if (txtDestIP.Text == "" || txtDestDB.Text == "" || txtDestUN.Text == "" || txtDestPwd.Text == "")
        {
            lbldes.Visible = true;
            lbldes.Text = "Please Enter Destination Details...";
        }
        else
        {
            SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
            dest.Open();
            SqlCommand sourceCommand = new SqlCommand("Delete From " + txtDestblname.Text + "", dest);
            
            dest.Close();
            lblMsg.Text = "Delete Records Successfully...";
        }
        Empty();
       

    }
    protected void btnCreateTbl_Click(object sender, EventArgs e)
    {
        if (txtDestIP.Text == "" || txtDestDB.Text == "" || txtDestUN.Text == "" || txtDestPwd.Text == "")
        {
            lbldes.Visible = true;
            lbldes.Text = "Please Enter Destination Details...";
        }
        else
        {
            txtDestblname.Text = "";
            SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
            dest.Open();
            SqlCommand sourceCommand = new SqlCommand(txtCreateTable.Text , dest);
            sourceCommand.ExecuteNonQuery();
            dest.Close();
            lblMsg.Text = "Delete Records Successfully...";
        }
        Empty();
    }
    //public DataSet Fetch()
    //{
       
    //    int a = 0;
    //    SqlConnection source = new SqlConnection("Data Source=" + txtsorceIP.Text + "; Initial Catalog=" + txtsourceDB.Text + "; Persist Security Info=True; User ID=" + txtSourceUN.Text + "; Password=" + txtsourcePwd.Text + "; Max Pool Size=10000;");
    //    SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
    //    source.Open();
    //    dest.Open();
    //    SqlCommand sourceCommand = new SqlCommand("select id from " + txtDestblname.Text + "", dest);
    //    SqlDataAdapter adp = new SqlDataAdapter(sourceCommand);
    //    DataSet ds = new DataSet();
    //    adp.Fill(ds);
    //    ddlid.DataTextField ="id";
       
    //    ddlid.DataSource = ds;
    //    ddlid.DataBind();
    //    foreach(ListItem i in ddlid.Items)
    //    {
    //        if (a == 0)
    //        {
    //            inner = inner + i.Text;
    //        }
    //        else
    //        {
    //            inner = inner + "," + i.Text;
    //        }
    //        a = 1;
    //    }


    //    SqlCommand sourceCommand1 = new SqlCommand("select * from " + txtDestblname.Text + " where id not in ("+inner+")", source);
    //    SqlDataAdapter adp1 = new SqlDataAdapter(sourceCommand1);
    //    DataSet ds1 = new DataSet();
    //    adp1.Fill(ds1);
    //    using (SqlDataReader dr = sourceCommand.ExecuteReader())
    //    {
    //        using (SqlBulkCopy s = new SqlBulkCopy(dest))
    //        {

    //            s.DestinationTableName = txtDestblname.Text;

    //            s.ColumnMappings.Add("id", "id");
    //            s.ColumnMappings.Add("ADD1", "ADD1");
    //            s.ColumnMappings.Add("Chk", "Chk");
    //            s.ColumnMappings.Add("Link", "Link");
    //            s.ColumnMappings.Add("College", "College");

    //            dr.Close();
    //            s.WriteToServer(ds1.Tables[0]);
    //            s.Close();
    //        }
    //    }

    //    dest.Close();



    //    return ds;

    //}

//    public void columns()
//    {

//        DropDownList ddllist = new DropDownList();
//        int a = 0;

//        //====Declare Connectin string (source And Destination)===============
//        SqlConnection source = new SqlConnection("Data Source=" + txtsorceIP.Text + "; Initial Catalog=" + txtsourceDB.Text + "; Persist Security Info=True; User ID=" + txtSourceUN.Text + "; Password=" + txtsourcePwd.Text + "; Max Pool Size=10000;");
//        SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
//        source.Open();
//        dest.Open();

//        //=======Sql Command Select All Columns from Selected Table from source Table=================
//        SqlCommand sourceCommand = new SqlCommand("select COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='" + txtDestblname.Text + "'", source);
   
//        SqlDataAdapter adp = new SqlDataAdapter(sourceCommand);
//        DataSet ds = new DataSet();
//        adp.Fill(ds);
//        ddllist.DataTextField = "COLUMN_NAME";
//        ddllist.DataSource = ds;
//        ddllist.DataBind();

//        //======sql command to Select All data From Source Table=============
//        SqlCommand sourceCommand1 = new SqlCommand("select * from " + txtSourtblname.Text + "", source);
//        SqlDataAdapter adp1 = new SqlDataAdapter(sourceCommand1);
//        DataSet ds1 = new DataSet();
//        adp1.Fill(ds1);
       

//        //Loop For Select All Columns From Source Table====
//        foreach (ListItem i in ddllist.Items)
//        {
//            if (a == 0)
//            {
//                inner = inner + i.Text;
//            }
//            else
//            {
//                inner = inner + "," + i.Text;
//            }
//            a = 1;
//        }

////===========================================================================================================================================
//        if (txtClmnname.Text != "")
//        {
//            int a1 = 0;
     
//            string inners = "";

//            //select Matched Id From Destination
//            SqlCommand sourceCommand2 = new SqlCommand("select id from " + txtDestblname.Text + "", dest);
//            SqlDataAdapter adp2 = new SqlDataAdapter(sourceCommand2);
//            DataSet ds2 = new DataSet();
//            adp2.Fill(ds2);
//            string id = txtClmnname.Text;
//            ddlid.DataTextField ="id";
//            ddlid.DataSource = ds2;
//            ddlid.DataBind();
//            foreach (ListItem i in ddlid.Items)
//            {
//                if (a1 == 0)
//                {
//                    inners = inners + i.Text;
//                }
//                else
//                {
//                    inners = inners + "," + i.Text;
//                }
//                a1 = 1;
//            }

//            //Fetch Data Which Is Not Match With Destination=======
//            SqlCommand sourceCommand5 = new SqlCommand("select * from " + txtDestblname.Text + " where id not in (" + inners + ")", source);
//            SqlDataAdapter adp5 = new SqlDataAdapter(sourceCommand5);
//            DataSet ds5 = new DataSet();
//            adp5.Fill(ds5);
//            using (SqlDataReader dr = sourceCommand.ExecuteReader())
//            {
//                using (SqlBulkCopy s = new SqlBulkCopy(dest))
//                {

//                    s.DestinationTableName = txtDestblname.Text;

//                    foreach (ListItem i in ddllist.Items)
//                    {
//                        s.ColumnMappings.Add(i.Text, i.Text);
//                    }
//                    dr.Close();
//                    s.WriteToServer(ds5.Tables[0]);
//                    s.Close();
//                }
//            }
//        }
//        else
//        {




//            //================================================================================================================================================
//            //Use SqlBulkCopy to Attached Data in Destination====
//            using (SqlDataReader dr = sourceCommand.ExecuteReader())
//            {
//                using (SqlBulkCopy s = new SqlBulkCopy(dest))
//                {
//                    s.DestinationTableName = txtDestblname.Text;
//                    foreach (ListItem i in ddllist.Items)
//                    {
//                        s.ColumnMappings.Add(i.Text, i.Text);
//                    }
//                    dr.Close();
//                    s.WriteToServer(ds1.Tables[0]);
//                    s.Close();
//                }
//            }
//            source.Close();
//            dest.Close();
//        }
//    }
    protected void btnfetchid_Click(object sender, EventArgs e)
    {
  
        GetPrimaryKey();
        Empty();
    }

    public void GetPrimaryKey()
    {
        SqlConnection source = new SqlConnection("Data Source=" + txtsorceIP.Text + "; Initial Catalog=" + txtsourceDB.Text + "; Persist Security Info=True; User ID=" + txtSourceUN.Text + "; Password=" + txtsourcePwd.Text + "; Max Pool Size=10000;");

        source.Open();

        SqlCommand sourceCommand = new SqlCommand("select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='" + txtSourtblname.Text + "'and Is_Nullable='No' and Numeric_Precision is not null and (Data_Type='int' or Data_type='BigInt')", source);
        //select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='add1' and Is_Nullable='No' and Numeric_Precision is not null and (Data_Type='int' or Data_type='BigInt')

        SqlDataAdapter adp = new SqlDataAdapter(sourceCommand);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddlgetid.DataTextField = "COLUMN_NAME";
        ddlgetid.DataSource = ds;
        ddlgetid.DataBind();
        source.Close();
    }



//=================Attached Data====================

    public void columns1()
    {

        DropDownList ddllist = new DropDownList();
        int a = 0;

        //====Declare Connectin string (source And Destination)===============
        SqlConnection source = new SqlConnection("Data Source=" + txtsorceIP.Text + "; Initial Catalog=" + txtsourceDB.Text + "; Persist Security Info=True; User ID=" + txtSourceUN.Text + "; Password=" + txtsourcePwd.Text + "; Max Pool Size=10000;");
        SqlConnection dest = new SqlConnection(" Data Source=" + txtDestIP.Text + ";Initial Catalog=" + txtDestDB.Text + ";Persist Security Info=True;User ID=" + txtDestUN.Text + ";Password=" + txtDestPwd.Text + "; Max Pool Size=10000;");
        source.Open();
        dest.Open();

        //=======Sql Command Select All Columns from Selected Table from source Table=================
        SqlCommand sourceCommand = new SqlCommand("select COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='" + txtDestblname.Text + "'", source);

        SqlDataAdapter adp = new SqlDataAdapter(sourceCommand);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddllist.DataTextField = "COLUMN_NAME";
        ddllist.DataSource = ds;
        ddllist.DataBind();

        //======sql command to Select All data From Source Table=============
        SqlCommand sourceCommand1 = new SqlCommand("select * from " + txtSourtblname.Text + "", source);
        SqlDataAdapter adp1 = new SqlDataAdapter(sourceCommand1);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);


        //Loop For Select All Columns From Source Table====
        foreach (ListItem i in ddllist.Items)
        {
            if (a == 0)
            {
                inner = inner + i.Text;
            }
            else
            {
                inner = inner + "," + i.Text;
            }
            a = 1;
        }

        //===========================================================================================================================================
        if (ddlgetid.Text != "--Select Primery Key--")
        {
            int a1 = 0;

            string inners = "";

            //select Matched Id From Destination
            SqlCommand sourceCommand2 = new SqlCommand("select id from " + txtDestblname.Text + "", dest);
            SqlDataAdapter adp2 = new SqlDataAdapter(sourceCommand2);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            string id = ddlgetid.Text;
            ddlid.DataTextField = "id";
            ddlid.DataSource = ds2;
            ddlid.DataBind();
            foreach (ListItem i in ddlid.Items)
            {
                if (a1 == 0)
                {
                    inners = inners + i.Text;
                }
                else
                {
                    inners = inners + "," + i.Text;
                }
                a1 = 1;
            }

            //Fetch Data Which Is Not Match With Destination=======
            SqlCommand sourceCommand5 = new SqlCommand("select * from " + txtDestblname.Text + " where id not in (" + inners + ")", source);
            SqlDataAdapter adp5 = new SqlDataAdapter(sourceCommand5);
            DataSet ds5 = new DataSet();
            adp5.Fill(ds5);
            using (SqlDataReader dr = sourceCommand.ExecuteReader())
            {
                using (SqlBulkCopy s = new SqlBulkCopy(dest))
                {

                    s.DestinationTableName = txtDestblname.Text;

                    foreach (ListItem i in ddllist.Items)
                    {
                        s.ColumnMappings.Add(i.Text, i.Text);
                    }
                    dr.Close();
                    s.WriteToServer(ds5.Tables[0]);
                    s.Close();
                }
            }
        }
        else
        {




            //================================================================================================================================================
            //Use SqlBulkCopy to Attached Data in Destination====
            using (SqlDataReader dr = sourceCommand.ExecuteReader())
            {
                using (SqlBulkCopy s = new SqlBulkCopy(dest))
                {
                    s.DestinationTableName = txtDestblname.Text;
                    foreach (ListItem i in ddllist.Items)
                    {
                        s.ColumnMappings.Add(i.Text, i.Text);
                    }
                    dr.Close();
                    s.WriteToServer(ds1.Tables[0]);
                    s.Close();
                }
            }
            source.Close();
            dest.Close();
        }
    }






}









