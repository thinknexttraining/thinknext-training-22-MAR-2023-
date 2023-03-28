<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateUserLogin.aspx.cs" Inherits="Admin_CreateUserLogin" Title="Create UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #changepassword
        {
            height: 380px;
        }
        
        .para
        {
        	text-align:left;
        	}
        	
        	
        	.text3
{
background: #FFFFFF;
color: #000000;
width: 150px;
padding: 6px 15px 6px 35px;
transition: 500ms all ease;
border: 1px solid #333;
}
.text3:hover
{

box-shadow: 12px 13px 0px rgba(204, 211, 51, 0.38),
-11px -14px 0px rgba(241, 96, 0, 0.28),
18px -24px 0px rgba(0, 0, 0, 0.34),
33px -6px 0px rgba(39, 74, 214, 0.28);
}

.buttonLogin {
    background: #428BCA;
    color: #fff;
    font-family: Sans-serif;
    font-size: 50px;
    height: 28px;
    width: 100px;
    line-height:10px;
    margin: 25px 25px;
    margin-left: 67px;
    text-align: center;
    border: 0;
    transition: all 0.3s ease 0s;
}

.buttonLogin:hover {
  background: #CF4647;
}
        	
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!----PANEL FOR STUDENT----->
    <asp:Button ID="btnCreateStudent" runat="server" 
        Text="Create Username And Password For Student" Visible="false" 
        onclick="btnCreateStudent_Click" height="50px"/>
    <asp:Button ID="btnCreateAdmin" runat="server" 
        Text="Create Username And Password For Admin" Visible="false" 
        onclick="btnCreateAdmin_Click"  height="50px" />
       
<asp:Panel ID="Studentpnl" runat="server" >
<div id="StudentLog" style="padding: 100px; width: 75%; height: 246px">
   <div id="CreateStudent" 
            style="padding: 5px 5px 21px 35px; border: 6px solid rgb(204, 204, 204); width: 570px; height: 265px; margin-top: 0px;">
   <p  style="margin:0px; height: 33px;">
   Please enter correct detail to Create User (Student)
   <br />
   <asp:Label ID="lblStudent" runat='server' ForeColor="Red" Visible="false"  ></asp:Label>
   </p>
       <p class="para" style="margin:0px; height: 33px;">
       
         <strong> Mobile No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:TextBox 
               ID="txtStudentMobileno" runat="server" 
               style="height:20px;width:231px;" MaxLength="10" class="text3"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator 
               ID="RegularExpressionValidator1" runat="server" 
               ControlToValidate="txtStudentMobileno" ErrorMessage="Please Enter Correct No." 
               ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></p>
       <p class="para" style="margin:0px; height: 33px;">
         <strong> ID NO.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong><asp:TextBox 
               ID="txtStuIdNO" runat="server" style="height: 20px; width: 231px; border-left-width: 1px; margin-left: 2px; padding-top: 6px; border-top-width: 1px; margin-top: 11px;" MaxLength="10" class="text3"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator 
               ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStuIdNO" 
               ErrorMessage="Enter Only Digits" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator></p>
       <p class="para" style="margin:0px; height: 33px;">
           <strong> Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>  
           <asp:TextBox ID="txtStudentPwd" runat="server" 
              style="height: 20px; width: 231px; margin-left: 1px; margin-top: 23px;" TextMode="Password" class="text3"></asp:TextBox>
           &nbsp;</p>
       <p class="para" style="margin:0px; height: 33px;">
         <strong> Confirm Password&nbsp; </strong>  
           <asp:TextBox ID="txtStudentPwd2" runat="server" style=" height: 20px; width: 231px; margin-left: -1px; margin-top: 38px;" TextMode="Password" class="text3"> </asp:TextBox>
           &nbsp;<asp:CompareValidator ID="CompareValidator11" runat="server" 
               ErrorMessage="Password not matched" ControlToCompare="txtStudentPwd" 
               ControlToValidate="txtStudentPwd2"></asp:CompareValidator></p>
       <p class="para" style="margin:0px; height: 15px;"></p>
       <p style="margin:0px; height: 33px;">
           <asp:Button ID="btnSubmit" runat="server" CssClass="Allbuttons"  
               Text="Submit" onclick="btnSubmit_Click" style="height: 28px; width: 139px; margin-top: 39px;margin-left:-52px"/>
       </p>
       
           <asp:UpdateProgress ID="UpdateProgress1" runat="server">
           <ProgressTemplate>
              Please wit....... <img src="../images/progressbar.gif" 
                   style="width: 158px; height: 12px" /></ProgressTemplate>
           </asp:UpdateProgress>
       </p __designer:mapid="314">
   <p  style="margin:0px; height: 33px;">
       <%--<asp:Label ID="lblStumessage" runat="server" Font-Bold="True" Font-Size="Small" 
           ForeColor="Red" style="margin-top:60px;"></asp:Label>--%>
   </p>
   </div>
   
   
   </div>

</asp:Panel>

<!--PANEL FOR ADMIN------->
<asp:Panel ID="Adminpnl" runat="server" Visible="false" >
<div id="AdminLog" style="padding: 100px; width: 75%; height: 246px">
   <div id="CreateAdmin" style="padding: 5px 5px 21px 35px; border: 6px solid rgb(204, 204, 204); width: 570px; height: 265px;">
   <p  style="margin:0px; height: 33px;">
   Please enter correct detail to Create User
   <asp:Label ID="lblAdimn" runat='server' ForeColor="Red" Visible="false"  ></asp:Label>
   </p __designer:mapid="7e8">
       <p class="para" style="margin:0px; height: 33px;">
         <strong> Mobile No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:TextBox 
               ID="txtAdminMobNo" runat="server" 
               style="height:20px;width:231px;" MaxLength="10" class="text3"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator 
               ID="RegularExpressionValidator3" runat="server" 
               ControlToValidate="txtAdminMobNo" ErrorMessage="Please Enter Correct No." 
               ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></p>
       <p class="para" style="margin:0px; height: 33px;">
         <strong> ID NO.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong><asp:TextBox 
               ID="txtAdminIdNo" runat="server" 
               style="height: 20px; width: 231px; border-left-width: 1px; margin-left: 2px; padding-top: 6px; border-top-width: 1px; margin-top: 11px;" MaxLength="10" class="text3"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator 
               ID="RegularExpressionValidator4" runat="server" 
               ControlToValidate="txtAdminIdNo" ErrorMessage="Enter Only Digit" 
               ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator></p>
       <p class="para" style="margin:0px; height: 33px;">
           <strong> Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>  
           <asp:TextBox ID="txtAdminPwa" runat="server" 
                 style="height: 20px; width: 231px; margin-left: 1px; margin-top: 23px;" TextMode="Password" class="text3"></asp:TextBox>
           &nbsp;</p>
       <p class="para" style="margin:0px; height: 33px;">
         <strong> Confirm Password&nbsp; </strong>  
           <asp:TextBox ID="txtAdminConPwd" runat="server" style=" height: 20px; width: 231px; margin-left: -1px; margin-top: 38px;" TextMode="Password" class="text3"></asp:TextBox>
           &nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" 
               ErrorMessage="Password not matched" ControlToCompare="txtAdminPwa" 
               ControlToValidate="txtAdminConPwd"></asp:CompareValidator></p>
       <p class="para" style="margin:0px; height: 15px;"></p>
       <p style="margin:0px; height: 33px;">
           <asp:Button ID="btnSubmit2" runat="server" CssClass="Allbuttons" 
               Text="Submit" onclick="btnSubmit2_Click"  style="height: 28px; width: 139px; margin-top: 39px;margin-left:-52px" />
       </p>
       
           <asp:UpdateProgress ID="UpdateProgress2" runat="server">
           <ProgressTemplate>
              Please wit....... <img src="../images/progressbar.gif" 
                   style="width: 158px; height: 12px" /></ProgressTemplate>
           </asp:UpdateProgress>
           
       </p __designer:mapid="317">
   
   </div>
   
   
   </div>

</asp:Panel>
</asp:Content>

