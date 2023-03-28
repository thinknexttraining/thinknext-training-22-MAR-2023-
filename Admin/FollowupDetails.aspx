<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FollowupDetails.aspx.cs" Inherits="Admin_FollowupDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 166px;
        }
        .auto-style4
        {
            width: 188px;
        }
        .auto-style5
        {
            width: 165px;
        }
        .auto-style6
        {
            width: 141px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
          <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager> 
    <div>
       <div id="tab2" runat="server" style="z-index:100; display:block  ;" class="popupfreetraining">
            <%--<p id="P1" style="height:19px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
            &nbsp;<img alt="Close" src="../images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </p>--%>
          
            <div class="popu" style="height: 74%; border:solid 1px #aaa7a7;border-radius:10px; margin-left: -8px; margin-top: 3px;padding-bottom:8px !important" 
                                                    align="left">

<table class="tab1" border="1" id="Table1" style="width:100%; table-layout: fixed; height: 271px;">
  <tbody>
       <p id="P2" style="width: 284px !important; margin:2% auto;" align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="Small" Font-Bold="True"  Style="color:#FFF; background-color: #f83c3c;font-size: 19px; padding:2%; "
                ForeColor="Red" Text="Followup Details"></asp:Label></p>
      <tr>
          <td class="auto-style6">Enquiry No. </td>
          <td class="auto-style4">
        <asp:TextBox ID="txtEnquiryno" runat="server" Height="22px" Width="202px" style="text-transform: capitalize;" Enabled="False"></asp:TextBox>        &nbsp;</td>
    <td class="auto-style5" >Name</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtnamename" runat="server" Height="22px" Width="177px" style="text-transform: capitalize;" required=""></asp:TextBox>        &nbsp;</td>
   
   
   
  </tr>
  <tr>
    <td class="auto-style6" >Mobile No</td>
    <td class="auto-style4">
        <asp:TextBox ID="txtmobilenono" runat="server"  style=" Height:22px; Width:202px; " Enabled="False"></asp:TextBox>
&nbsp;</td>
      <td class="auto-style5" >E-mail ID</td>
    <td>
        <asp:TextBox ID="txtemailidid" runat="server" style=" Height:22px; Width:177px;" Enabled="False"></asp:TextBox>
&nbsp;</td>
  
  
  </tr>
  <tr>
    <td class="auto-style6" >College Name</td>
    <td class="auto-style4">
        <asp:TextBox ID="txtcollegenamename" runat="server" style=" Height:22px; Width:202px;text-transform: capitalize;" required=""></asp:TextBox>
      </td>
     <td class="auto-style5" > Course </td>
    <td style="padding-left:0px;">
         
          <asp:TextBox ID="txtCourse" runat="server" style=" Height:22px; Width:177px;  text-transform: capitalize;" required=""></asp:TextBox>
 </td>
   </tr>
 <tr>
    <td class="auto-style6">Visited</td>
    <td colspan="3" style="padding-left:0px;">
   
          <asp:TextBox ID="txtVisited" runat="server" style=" text-transform: capitalize;" Width="98%" ></asp:TextBox>
 </td>
      </tr>
      <tr>
    <td class="auto-style6" > Followup Date </td>
    <td colspan="3" style="padding-left:0px;">
        
          <asp:TextBox ID="txtfollowupdate" runat="server" style=" Height:22px; Width:98%; text-transform: capitalize;" required="" Enabled ="false" ></asp:TextBox>
        <asp:CalendarExtender ID="cal" TargetControlID ="txtfollowupdate" runat ="server" ></asp:CalendarExtender>
 </td>
  </tr>
<tr>
    <td class="auto-style6">Comments</td>
    <td colspan="3" style="padding-left:0px;">
   
          <asp:TextBox ID="txtComments" runat="server" style=" text-transform: capitalize;" TextMode="MultiLine" Width="98%" required=""></asp:TextBox>
 </td>
      </tr>
        <tr>
             <td class="auto-style6">New Followup Date </td>
    <td colspan="3" style="padding-left:0px;">
       
          <asp:TextBox ID="txtnewfollowupdate" runat="server" style=" Height:22px; width:98%; text-transform: capitalize;" required=""></asp:TextBox>
         <asp:CalendarExtender ID="CalendarExtender1" TargetControlID ="txtnewfollowupdate" runat ="server" ></asp:CalendarExtender>
 </td>
      </tr>

<%--<tr>
    <td style="float:left; margin-top:17%";> Description </td>
    <td colspan="2" style="padding-left:0px;">
        &nbsp; &nbsp;  &nbsp;
          <asp:TextBox ID="txtdiscription" runat="server" MaxLength="100" style=" Height:50px; Width:142px; margin-top:12%;" TextMode="MultiLine"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[\s\S]{0,100}$" Text="100 characters max" ControlToValidate="txtdiscription" ForeColor="Red"></asp:RegularExpressionValidator>
 </td>
  </tr>--%>
</tbody>
</table>
                <br />
<table style="border:none; margin:auto;">
<tbody>
<tr>
        <td style="float:right; margin-left: 29%;border:none; margin-top:-5%;">
        <asp:Button ID="Button1" runat="server" EnableTheming="False" Text="Submit" OnClientClick="javascript:validate12()"  OnClick="Button1_Click" />
            
        </td>
    <td><asp:Label ID="Label2" runat="server" ></asp:Label></td>
  </tr>
</tbody>
</table>
 </div>  
   


<p style="padding-top: 6px">  <span id="Span1" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>
    </div>
    </form>
</body>
</html>
