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



public partial class StartExam : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    string VarIP = "";
    static int GetQNo = 0;
    DataTable dtTemp = new DataTable();
    int totalSeconds = 0;
    static  int seconds = 0;
    int minutes = 0;
    string time = "";

    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["myck"]==null)
        {
            Response.Redirect("~/default.aspx");
        }
    
    
        con.ConnectionString = varclass.GetConnectionString(VarIP);
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();

        if (!IsPostBack)
        {
            Session["time"] = 1800;

            Session["counter"] = "1";
            getQuestion();
           
            GetTotalQuestion();
            Session["dt"] = null;


            int Get = Convert.ToInt32(Session["Question"]);

            Session["timeout"] = DateTime.Now.AddMinutes(Get).ToString();

        }
        if (Session["dt"] == null)
        {
            dtTemp = new DataTable();
            dtTemp.Columns.Add("IDNO");
            dtTemp.Columns.Add("Course");
            dtTemp.Columns.Add("TestType");
            dtTemp.Columns.Add("Question");
            dtTemp.Columns.Add("Option1");
            dtTemp.Columns.Add("Option2");
            dtTemp.Columns.Add("Option3");
            dtTemp.Columns.Add("Option4");
            dtTemp.Columns.Add("YourAnswer");
            dtTemp.Columns.Add("RightAnswer");

            Session["dt"] = dtTemp;
        }
        else
        {
            dtTemp = (DataTable)Session["dt"];
        }
     
    }
    private void GetTotalQuestion()
    {
        string query = "Select Count(Qno) from OnlineExam where Course='" + Session["batchName"].ToString() + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        lblTotal.Text = "Total Question";
        lblconvert.Text = "/";
        lbltotalquestion.Text = ds.Tables[0].Rows[0][0].ToString();
        lbloutof.Text = ds.Tables[0].Rows[0][0].ToString();

    }
    private void MinusTotalQuestion()
    {
        string query = "Select Count(Qno) from OnlineExam where Course='" + Session["batchName"].ToString() + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        lbloutof.Text = (Convert.ToInt16(lbloutof.Text) - Convert.ToInt16(1)).ToString();
        if (lbloutof.Text == "1")
        {
            lblmessage.Visible = true;
            lblmessage.Text = "Attention Please This is your last quetion";
        }
        if (lbloutof.Text == "0")
        {
            lblmessage.Visible = true;
            lblmessage.Text = "Please Click on Finish Button to Submit Your Answer";
        }


    }
    public void getQuestion()
    {
        if (Session["course"] != null)
        {
            string GetQuestionNumber = "Select Qno from Onlineexam where Course='" + Session["batchName"].ToString() + "' and testtype='" + Session["testtype"].ToString() + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
            SqlDataAdapter adp3 = new SqlDataAdapter(GetQuestionNumber, con);
            DataSet ds3 = new DataSet();
            adp3.Fill(ds3, "Onlineexam");
            if (ds3.Tables["Onlineexam"].Rows.Count > 0)
            {
                GetQNo = Convert.ToInt16(ds3.Tables["Onlineexam"].Rows[0][0].ToString());
            }
            string str = "select * from Onlineexam where Qno=" + GetQNo + " and Course='" + Session["batchName"].ToString() + "' and testtype='" + Session["testtype"].ToString() + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
            SqlDataAdapter da2 = new SqlDataAdapter(str, con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2, "Onlineexam");
            if (ds2.Tables["Onlineexam"].Rows.Count > 0)
            {
                DataRow dtr;
                int i = 0;
                while (i < ds2.Tables["Onlineexam"].Rows.Count)
                {
                    dtr = ds2.Tables["Onlineexam"].Rows[i];
                    lblquestion.Text = dtr["Question"].ToString();
                    chklistans.ClearSelection();
                    chklistans.Items.Clear();
                    chklistans.Items.Add(dtr["Option1"].ToString());
                    chklistans.Items.Add(dtr["Option2"].ToString());
                    chklistans.Items.Add(dtr["Option3"].ToString());
                    chklistans.Items.Add(dtr["Option4"].ToString());
                    i++;
                }
            }
            else
            {

                btnsubmit.Visible = true;
                Panel1.Visible = false;

            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    private void GetAllAnswer()
    {
        string str = "select * from Onlineexam where Qno=" + GetQNo + " and Course='" + Session["batchName"].ToString() + "' and testtype='" + Session["testtype"].ToString() + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlDataAdapter da2 = new SqlDataAdapter(str, con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "Onlineexam");
        if (ds2.Tables["Onlineexam"].Rows.Count > 0)
        {
            DataRow dtr;
            int i = 0;
            while (i < ds2.Tables["Onlineexam"].Rows.Count)
            {
                dtr = ds2.Tables[0].Rows[i];
                lblquestion.Text = dtr["Question"].ToString();
                chklistans.ClearSelection();
                chklistans.Items.Clear();
                chklistans.Items.Add(dtr["Option1"].ToString());
                chklistans.Items.Add(dtr["Option2"].ToString());
                chklistans.Items.Add(dtr["Option3"].ToString());
                chklistans.Items.Add(dtr["Option4"].ToString());

                string FirstAnswer = dtr["Option1"].ToString();
                string SecondAnswer = dtr["Option2"].ToString();
                string ThirdAnswer = dtr["Option3"].ToString();
                string FourthAnswer = dtr["Option4"].ToString();

                ViewState["first"] = FirstAnswer;
                ViewState["second"] = SecondAnswer;
                ViewState["third"] = ThirdAnswer;
                ViewState["fourth"] = FourthAnswer;
                i++;
            }
        }
    }
    private void GetNextQuestion()
    {
        GetQNo++;
        MinusTotalQuestion();
        string str = "select * from Onlineexam where Qno=" + GetQNo + " and Course='" + Session["batchName"].ToString() + "' and testtype='" + Session["testtype"].ToString() + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlDataAdapter da2 = new SqlDataAdapter(str, con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "Onlineexam");
        if (ds2.Tables["Onlineexam"].Rows.Count > 0)
        {
            DataRow dtr;
            int i = 0;
            while (i < ds2.Tables["Onlineexam"].Rows.Count)
            {
                dtr = ds2.Tables[0].Rows[i];
                lblquestion.Text = dtr["Question"].ToString();
                chklistans.ClearSelection();
                chklistans.Items.Clear();
                chklistans.Items.Add(dtr["Option1"].ToString());
                chklistans.Items.Add(dtr["Option2"].ToString());
                chklistans.Items.Add(dtr["Option3"].ToString());
                chklistans.Items.Add(dtr["Option4"].ToString());

                i++;
            }
        }
        else
        {

            btnsubmit.Visible = true;
            Panel1.Visible = false;


        }

    }
    protected void btnnextquestion_Click(object sender, EventArgs e)
    {
        GetAllAnswer();

        string RightAnswer = "";

        string query = "Select Answer from onlineexam where question='" + lblquestion.Text + "' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "onlineexam");
        if (ds.Tables["onlineexam"].Rows.Count > 0)
        {
            RightAnswer = ds.Tables["onlineexam"].Rows[0]["Answer"].ToString();
        }

        if (Session["id"] != null && Session["id"] != null && Session["id"] != null)
        {
            if (ViewState["first"] != null && ViewState["second"] != null && ViewState["third"] != null && ViewState["fourth"] != null && ViewState["YourAnswer"]!=null )
            {

                string IdNo = Session["id"].ToString();
                string Course = Session["course"].ToString();
                string TestType = Session["testtype"].ToString();


                dtTemp.Rows.Add(IdNo, Course, TestType, lblquestion.Text, ViewState["first"].ToString(), ViewState["second"].ToString(), ViewState["third"].ToString(), ViewState["fourth"].ToString(), ViewState["YourAnswer"].ToString(), RightAnswer);
                GridView1.DataSource = dtTemp;
                GridView1.DataBind();
                GetNextQuestion();
            }
            else
            {
                lblmessage.Text = "Please Select an answer";
            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        AddResult();
        DeallocateTest();
        Response.Redirect("Show_result.aspx");
    }
    private void DeallocateTest()
    {
        string query = "Update AssignTest set Status=@Status Where TestType=@TestType and IDNo=@IDNo and Course=@Course and FranchiseCode='"+txtfranchiseCode.Text+"'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        con.Open();
        cmd.Parameters.AddWithValue("@Status","No");
        cmd.Parameters.AddWithValue("@TestType", Session["testtype"].ToString());
        cmd.Parameters.AddWithValue("@IDNo", Session["myck"].ToString());
        cmd.Parameters.AddWithValue("@Course", Session["course"].ToString());
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
    private void AddResult()
    {
        int r = 0, l = dtTemp.Rows.Count;
       
            for (r = 0; r < l; r++)
            {
                try
                {
                    string q = "insert into StudentData values('" + dtTemp.Rows[r][0].ToString() + "', '" + dtTemp.Rows[r][1].ToString() + "', '" + dtTemp.Rows[r][2].ToString() + "', '" + dtTemp.Rows[r][3].ToString() + "', '" + dtTemp.Rows[r][4].ToString() + "', '" + dtTemp.Rows[r][5].ToString() + "', '" + dtTemp.Rows[r][6].ToString() + "', '" + dtTemp.Rows[r][7].ToString() + "', '" + dtTemp.Rows[r][8].ToString() + "', '" + dtTemp.Rows[r][9].ToString() + "','TNK101','THINKNEXT TRAINING')";
                    SqlCommand cmd = new SqlCommand(q, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {
                    lblmessage.Text = err.ToString();
                }
                finally
                {
                    con.Close();
                }
            }
     
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //Session["time"] = Convert.ToInt16(Session["time"]) - 1;
        //if (Convert.ToInt16(Session["time"]) <= 0)
        //{
        //    Timer1.Enabled = false; 
        //    lblTimerCount .Text = "Time Out!";
        //    AddResult();
        //   Response.Redirect("Show_result.aspx");
        //}

        //else
        //{
        //    totalSeconds = Convert.ToInt16(Session["time"]);
        //    seconds = totalSeconds % 60;
        //    minutes = totalSeconds / 60;
        //    time = minutes + ":" + seconds;
        //    lblTimerCount.Text = time;
        //}

        //Session["Question"]
             //Session["time"] = Convert.ToInt16(Session["time"]) - 1;
        //int cs = Convert.ToInt32(Session["time"]);
        

       // if (Convert.ToInt32(Session["Question"]) <= 0)
       // {
       //    Timer1.Enabled = false; 
       //    lblTimerCount .Text = "Time Out!";
       //    AddResult();
       //   Response.Redirect("Show_result.aspx");
       //}
       //else
       // {
       //     totalSeconds = Convert.ToInt32(Session["Question"]);
          
       //     seconds = totalSeconds % 60;
       //     minutes = ((totalSeconds / 60)%60);
       //     time = minutes + ":" + seconds;
       //     lblTimerCount.Text = minutes + ":" + seconds;
       //     minutes = minutes -1;
       //     seconds = seconds - 1;
       //     //seconds.ToString();
       // }

        if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
        {
            lblTimerCount.Text = string.Format("Time Left: 00:{0}:{1}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
        }
        else
        {
            Timer1.Enabled = true;
            Response.Redirect("ShowMarks.aspx");

        }

    }
    protected void chklistans_SelectedIndexChanged(object sender, EventArgs e)
    {
        string YourAnswer = "";
        YourAnswer = chklistans.SelectedItem.Text;
        ViewState["YourAnswer"] = YourAnswer;
    }

    public void GetBatch()
    {
        string query = "select BatchName from batchmember where idno='"+Session["myck"].ToString()+"' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        con.Open();
        cmd.Parameters.AddWithValue("@Status", "No");
        cmd.Parameters.AddWithValue("@TestType", Session["testtype"].ToString());
        cmd.Parameters.AddWithValue("@IDNo", Session["myck"].ToString());
        cmd.Parameters.AddWithValue("@Course", Session["course"].ToString());
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
   
}