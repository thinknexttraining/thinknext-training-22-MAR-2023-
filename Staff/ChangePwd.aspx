<%@ Page Title="Change Password" Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/ChangePwd.aspx.vb" Inherits="ChangePwd" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="changepassword" style="padding: 100px; width: 75%; height: 246px">
   <div id="mainpwd" 
            style="padding:5px 5px 5px 35px; border: 6px solid #CCCCCC; width: 80%; height: 220px">
   <p  style="margin:0px; height: 33px;">
   Please enter correct detail to change password
   </p>
       <p class="para" style="margin:0px; height: 33px;">
         <strong> Mobile No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:TextBox 
               ID="txtmobno" runat="server" 
               Height="20px" Width="231px" MaxLength="10"></asp:TextBox>
           &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ErrorMessage="Enter Mobile No." ControlToValidate="txtmobno"></asp:RequiredFieldValidator>
       </p>
       <p class="para" style="margin:0px; height: 33px;">
           <strong> Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>  
           <asp:TextBox ID="txtpwd" runat="server" 
               Height="20px" Width="231px" TextMode="Password"></asp:TextBox>
           &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ErrorMessage="Password Required" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
       </p>
       <p class="para" style="margin:0px; height: 33px;">
         <strong> Confirm Password&nbsp; </strong>  
           <asp:TextBox ID="txtpwd2" style=" margin-left: -1px;" runat="server" 
               Height="20px" Width="231px" TextMode="Password"></asp:TextBox>
           &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
               ErrorMessage="Password not matched" ControlToCompare="txtpwd" 
               ControlToValidate="txtpwd2"></asp:CompareValidator>
       </p>
       <p class="para" style="margin:0px; height: 15px;"></p>
       <p style="margin:0px; height: 33px;">
           <asp:Button ID="Button1" runat="server" CssClass="Allbuttons" Height="28px" 
               Text="Change Password" Width="139px" />
       </p>
       
           <asp:UpdateProgress ID="UpdateProgress1" runat="server">
           <ProgressTemplate>
              Please wit....... <img src="../images/progressbar.gif" 
                   style="width: 158px; height: 12px" />
           </ProgressTemplate>
           </asp:UpdateProgress>
           <asp:Label ID="lblmessage" runat="server" Font-Bold="True" Font-Size="Small" 
               ForeColor="Red"></asp:Label>
       </p>
   
   </div>
   
   
   </div>
</asp:Content>

