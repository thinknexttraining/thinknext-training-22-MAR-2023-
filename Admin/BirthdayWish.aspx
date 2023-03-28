<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="BirthdayWish.aspx.cs" Inherits="Admin_BirthdayWish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 249px;
        }
        .style2
        {
            width: 51px;
        }
        .style3
        {
            width: 45px;
        }
        .style4
        {
            width: 204px;
        }
        .style5
        {
            width: 239px;
        }
        .style6
        {
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#F5F5DC;height:450px;">

    <div>
<table width="100%" style="background-color:#FFB6C1;">
<tr>
<td class="style4">
</td>
<td class="style5">
    <img src="../images/21ff62f7213de5f68879e718912023d2.jpg" 
        style="height: 68px; width: 250px" />
</td>
<td class="style6">
    &nbsp;</td>
<td>
</td>
</tr>
</table>
</div>
<br />

<asp:Label ID="lblmsg" runat="server" Visible="false" ForeColor="Red" 
    style="font-weight: 700"></asp:Label>
<br />
<br />
<div style="width:100%;">
<asp:Label ID="lblWish" runat="server" Text="Birthday for Today: " 
        style="font-weight: 700; color: #993333"></asp:Label>
</div>
<br />
<div style="width:100%;background-color:#FFB6C1;">
    
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="width:100%;">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <br />
    <table width="100%">
    <tr>
    <td class="style1">
    </td>
    <td class="style2">
        <asp:Button ID="btnmail" runat="server" Text="Send mail" CssClass="Allbuttons" 
            style="margin-left:65px;" onclick="btnmail_Click" />
    </td>
    <td class="style3">
        <asp:Button ID="btnsndmsg" runat="server" Text="Send Message" 
            CssClass="Allbuttons" Width="105px" onclick="btnsndmsg_Click"/>
        </td>
    <td></td>
    </tr>
    
    </table>
    <br />
</div>
</div>
</asp:Content>

