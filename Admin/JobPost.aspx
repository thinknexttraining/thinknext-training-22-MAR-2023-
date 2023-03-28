<%@ Page Title="Post Job" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="JobPost.aspx.cs" Inherits="Admin_JobPost" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tb10 {
	
	background-repeat:repeat-x;
	border:1px solid #d1c7ac;
	width: 230px;
	color:#333333;
	padding:3px;
	margin-right:4px;
	margin-bottom:8px;
	font-family:tahoma, arial, sans-serif;
}
        .style1
        {
        }
        .style2
        {
        }
        .style3
        {
            width: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table width="100%">
<tr><td><font style="font-weight:bold;font-size:x-large;">Post Jobs</font></td></tr>
</table>
<br />
<div>
<table width="100%">
<tr><td class="style1" align="right"><asp:Label ID="lbltitle" runat="server" Text="Job Title :"></asp:Label></td>
    <td align="left" class="style2"><asp:TextBox ID="txttitle" runat="server" CssClass="tb10"></asp:TextBox></td>
    <td align="right" class="style3">
        <asp:Label ID="lbljbcat" runat="server" Text="Job Category :"></asp:Label>
    </td><td align="left">
       <asp:DropDownList ID="ddlcate" runat="server" CssClass="tb10"><asp:ListItem Value="-1">Select</asp:ListItem></asp:DropDownList>
    </td></tr>
<tr><td class="style1" align="right">&nbsp;</td><td align="left" class="style2">&nbsp;</td>
    <td align="left" class="style3">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="right">
        <asp:Label ID="lblEx" runat="server" Text="Experience :"></asp:Label>
    </td><td align="left" class="style2">
    <asp:DropDownList id="ddlxp" runat="server" CssClass="tb10">
     <asp:ListItem Value="-1">Select</asp:ListItem>
     <asp:ListItem>Less than one year</asp:ListItem>
     <asp:ListItem>1-2 years</asp:ListItem>
     <asp:ListItem>2-3 years</asp:ListItem>
     <asp:ListItem>3-4 years</asp:ListItem>
     <asp:ListItem>4-5 years</asp:ListItem>
     <asp:ListItem>5-6 years</asp:ListItem>
     <asp:ListItem>6-7 years</asp:ListItem>
     <asp:ListItem>Over 7 years</asp:ListItem>

     </asp:DropDownList>
    </td>
    <td align="right" class="style3">
        <asp:Label ID="lblLoc" runat="server" Text="Location :"></asp:Label>
    </td><td align="left">
    <asp:TextBox ID="txtLoc" runat="server" CssClass="tb10"></asp:TextBox>
    </td></tr>
<tr><td class="style1" align="right">&nbsp;</td><td align="left" class="style2">&nbsp;</td>
    <td align="left" class="style3">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="right">
        <asp:Label ID="lblsum" runat="server" Text="Job Summary :"></asp:Label>
    </td><td align="left" class="style2">
    <asp:TextBox ID="txtsum" runat="server" CssClass="tb10"></asp:TextBox>
    </td>
    <td align="right" class="style3">
        <asp:Label ID="lblQualific" runat="server" Text="Qualification :"></asp:Label>
    </td><td align="left">
    <asp:TextBox ID="txtQualific" runat="server" CssClass="tb10"></asp:TextBox>
    </td></tr>
<tr><td class="style1" align="right">&nbsp;</td><td align="left" class="style2">&nbsp;</td>
    <td align="left" class="style3">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="right">
    <asp:Label ID="lblSal" runat="server" Text="Salary :"></asp:Label>
    </td><td align="left" class="style2">
        <asp:TextBox ID="txtsal" runat="server" CssClass="tb10"></asp:TextBox>
    </td>
    <td align="left" class="style3">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="right">&nbsp;</td><td align="left" class="style2">&nbsp;</td>
    <td align="left" class="style3">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="left" colspan="4">&nbsp;&nbsp;&nbsp; <asp:Label ID="lblskill" runat="server" Text="Skills Required :"></asp:Label>&nbsp;
<asp:Label ID="lblerrors" runat="server" Visible="false" ForeColor="Red" style="float:right;margin-right:20%;"></asp:Label>
</td></tr>
<tr><td class="style1" align="left" colspan="4" ><cc2:Editor ID="Editor1" runat="server" Height="400px" NoScript="True" 
                                NoUnicode="True" Width="700px"  style="margin-left:10%;"/>&nbsp;</td></tr>
<tr><td class="style1" align="left" colspan="4">
    <asp:Button ID="BtnPost" runat="server" Text="Post" CssClass="tb10" 
        style="margin-left:10%;" onclick="BtnPost_Click"/>
    </td></tr>
</table>

</div>
</div>
</asp:Content>

