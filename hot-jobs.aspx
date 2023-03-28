<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hot-jobs.aspx.cs" Inherits="hot_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <title>Hot Jobs - ThinkNEXT</title>
    <style>
           body * {
    border-color: #b7b7b7;
}
        .main-div{
                background: white;
  
    box-shadow: 0px 0px 4px 0px;
   margin:15px auto;
    width:90%;
        }

        .head1 {
    background: url(images/White-Background-9B1.jpg);
    font-family: 'Times New Roman';
    font-size: 18px;
    font-weight: 300;
    overflow: hidden;
    padding: 20px 0 0px 23px;
    position: relative;
    width: 98%;
    box-shadow: 7px 7px 5px #d7d0d0;
}
        .ryt {
    float: right;
    background-color: #DE1904;
    padding: 7px;
    color: #FFF;
}

       .hotjobs td{
           padding:10px;
       }
       .hotjobs th{
          padding: 15px;
       }
       tr th, tr td {
    padding-left: 0px; 
}
      table#ContentPlaceHolder1_grd_hotJobs{width:100.1%;}
      
    </style>

    
     <div class="head1">
    <h1 style="color:#000;" > Upcomming Drives &nbsp; </h1>
       <div class="ryt">

You are here &nbsp; Home / Hot Jobs
       </div>


   </div>


    <br />
   <br /> 

    <div class="main-div">

                <asp:GridView ID="grd_hotJobs" runat="server" AutoGenerateColumns="false" ShowHeader="False">
         <Columns>
             <asp:TemplateField>
               <ItemTemplate>
 <table class="hotjobs" border="0" style="text-align:center;font-weight:bold;width:100%;margin:auto;">
  
      <tr>
          <th colspan="2" style="background-color:#f83c3c; color:#fff;font-size:16px">
               Drive Details
          </th>
      </tr>
     <tr>
      
    <td style="text-align:justify;width:200px" >Job Title :</td>
    <td style="text-align:left;"><asp:Label ID="lbl_job_title" runat="server" Text='<% #Eval("Job_Title") %>'></asp:Label></td>
  </tr>
  <tr>
    <td style="text-align:justify;">Company :</td>
    <td style="text-align:left;"><asp:Label ID="lbl_company" runat="server" Text='<% #Eval("Company_name") %>'></asp:Label></td>
  </tr>
  <tr>
    <td style="text-align:justify;">Date Posted :</td>
    <td style="text-align:left;"><asp:Label ID="lbl_date" runat="server" Text='<% #Eval("Date_Posted") %>'></asp:Label></td>
  </tr>
  <tr>
    <td style="text-align:justify;">Address :</td>
    <td style="text-align:left;"><asp:Label ID="lbl_address" runat="server" Text='<% #Eval("Job_Type") %>'></asp:Label></td>
  </tr>
  
  <tr>
    <td style="text-align:justify;">Job Description :</td>
    <td style="text-align:left;"><asp:Label ID="lbl_description" runat="server" Text='<% #Eval("Job_Description") %>'></asp:Label></td>
  </tr>
    <tr>
        <td colspan="2">
            <hr />
        </td>

    </tr>
  
</table>  
               </ItemTemplate> 
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
    </div>
</asp:Content>

