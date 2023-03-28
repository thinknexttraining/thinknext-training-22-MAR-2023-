<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManagementStudentDetail.aspx.cs" Inherits="Admin_ManagementStudentDetail" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 44px;
        }
        .style3
        {
            height: 44px;
            width: 39px;
        }
        .style5
        {
            height: 44px;
            width: 269px;
        }
        .style7
        {
            height: 44px;
            width: 162px;
        }
        .style10
        {
            width: 134px;
        }
        .style13
        {
            width: 68px;
        }
        .style14
        {
        }
        .style15
        {
            width: 173px;
        }
        .style16
        {
            width: 162px;
        }
        .style17
        {
            width: 17px;
        }
        .style18
        {
            height: 30px;
        }
        .style19
        {
            height: 30px;
        }
        .style20
        {
            width: 134px;
            height: 30px;
        }
        .style21
        {
            width: 17px;
            height: 30px;
        }
        .style23
        {
            width: 68px;
            height: 30px;
        }
        .style24
        {
            width: 153px;
        }
        .style25
        {
            width: 153px;
            height: 30px;
        }
        .style26
        {
            width: 162px;
            height: 26px;
        }
        .style27
        {
            height: 26px;
        }
        .style28
        {
            width: 134px;
            height: 26px;
        }
        .style29
        {
            width: 17px;
            height: 26px;
        }
        .style30
        {
            width: 153px;
            height: 26px;
        }
        .style31
        {
            width: 68px;
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="background-color:#00BDFD">
<table width="100%">
<tr>
<td class="style5"></td>
<td class="style3">
    &nbsp;</td>
<td class="style7"><asp:Label ID="lblHading" runat="server" Text="Student Detail" 
        
        
        style="float:left; font-weight: 700; font-size: x-large; color: #FFFFFF; text-decoration: underline;"></asp:Label></td>
<td class="style2"></td>
</tr>
<tr>
<td colspan="4">
    <asp:Label ID="Subtitel" runat="server" 
        Text="Management And Intership Student Detail" 
        style="font-weight: 700; text-decoration: underline; color: #FFFFFF"></asp:Label>&nbsp;</td>
</tr>
</table>
</div>
<div style="background-color:#00BDFD">
<table  width="100%" >
<tr>
<td class="style14" rowspan="10">&nbsp;</td>
<td class="style16">&nbsp;</td>
<td class="style15">&nbsp;</td>
<td class="style10">&nbsp;</td>
<td class="style17">&nbsp;</td>
<td class="style24">&nbsp;</td>
<td class="style13">&nbsp;</td>

<td>&nbsp;</td>

</tr>
<tr>
<td class="style16">&nbsp;</td>
<td class="style15">&nbsp;</td>
<td class="style10">&nbsp;</td>
<td class="style17">&nbsp;</td>
<td class="style24">&nbsp;</td>
<td class="style13">&nbsp;</td>

<td>&nbsp;</td>

</tr>
<tr>
<td class="style26" >
    <asp:Label ID="lblstatus" runat="server" Text="Status" 
        style="float:right; font-weight: 700;"></asp:Label>
    </td>
<td class="style27"  >
    <asp:DropDownList ID="ddlstatus" runat="server" Height="20px" Width="139px" 
        style="font-weight: 700;float:left;">
    </asp:DropDownList>
    </td>
<td class="style28">
    <asp:Label ID="lblTraining" runat="server" Text="Training" 
        style="float:right; font-weight: 700;"></asp:Label>
    </td>
<td class="style29" >
    </td>
<td class="style30" >
    <asp:DropDownList ID="ddlTraining" runat="server" Height="20px" Width="139px" 
        style="font-weight: 700;float:left;">
        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>6 Months</asp:ListItem>
                                        <asp:ListItem>3 Months</asp:ListItem>
                                        <asp:ListItem>2 Months</asp:ListItem>
                                        <asp:ListItem>1 Month</asp:ListItem>
                                        <asp:ListItem>6 Weeks</asp:ListItem>
                                        <asp:ListItem>4 Weeks</asp:ListItem>
    </asp:DropDownList>
    </td>
<td class="style31">
    </td>

<td class="style27">
    </td>

</tr>
<tr>
<td class="style16"></td>
<td class="style15">&nbsp;</td>
<td class="style10">&nbsp;</td>
<td class="style17"></td>
<td class="style24">&nbsp;</td>
<td class="style13"></td>
<td>&nbsp;</td>
</tr>

<tr>
<td class="style16">
    <asp:Label ID="Label4" runat="server" Text="Session" 
        style="float:right; font-weight: 700;"></asp:Label>
    </td>
<td class="style15">
    <asp:DropDownList ID="ddlSession" runat="server" Height="20px" Width="139px" 
        style="font-weight: 700;float:left;">
    </asp:DropDownList>
    </td>
<td class="style10" >
    &nbsp;</td>
<td class="style17">
    &nbsp;</td>
<td class="style24">
    &nbsp;</td>
<td class="style13">
    &nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td class="style16">&nbsp;</td>
<td class="style15">&nbsp;</td>
<td class="style10">&nbsp;</td>
<td class="style17">&nbsp;</td>
<td class="style24">&nbsp;</td>
<td class="style13">&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td align="right">
    <asp:CheckBox ID="chkbetweendate" runat="server" 
        AutoPostBack="True" style="font-weight: 700" Text="Date Between" 
        TextAlign="Left" oncheckedchanged="chkbetweendate_CheckedChanged" />
    </td >
<td align="left" valign="middle">
    <asp:Label ID="lblFrom" runat="server" Text="From :" 
        style=" font-weight: 700;" Visible="false"></asp:Label>
    <asp:TextBox ID="txtFrom" runat="server" Height="17px" style="font-weight: 700" Visible="false"></asp:TextBox>
    <asp:CalendarExtender ID="cndex" runat="server" TargetControlID="txtFrom" Format="dd/MM/yyyy"></asp:CalendarExtender>
    </td>
<td  align="left" valign="middle">
    <asp:Label ID="lblTo" runat="server" Text="To :" 
        style="font-weight: 700;" Visible="false"></asp:Label>
    <asp:TextBox ID="txtto" runat="server" Height="17px" style="font-weight: 700" Visible="false"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtto" Format="dd/MM/yyyy"></asp:CalendarExtender>
    </td>
<td class="style17">&nbsp;</td>
<td class="style24">&nbsp;</td>
<td class="style13">&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td class="style16">&nbsp;</td>
<td class="style15">&nbsp;</td>
<td class="style10">&nbsp;</td>
<td class="style17">&nbsp;</td>
<td class="style24">&nbsp;</td>
<td class="style13">&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td class="style18"></td>
<td class="style19">
<asp:Button ID="btndpl" runat="server" Text="Display" CssClass="Allbuttons" 
        Width="94px" style="float:left;" onclick="btndpl_Click"/>
    </td>
<td class="style20">
    <asp:Button ID="btnEXL" runat="server" Text="Export To Excel" Width="121px" 
        CssClass="Allbuttons" onclick="btnEXL_Click" />
    </td>
<td class="style21"></td>
<td class="style25"></td>
<td class="style23"></td>
<td class="style19"></td>
</tr>

<tr>
<td class="style18" colspan="7">
    <asp:Label ID="lblmsg" runat="server" 
        style="font-weight: 700; font-size: medium" Visible="False" ForeColor="Red"></asp:Label>
    </td>
</tr>

</table>
</div>
<div style="overflow:auto;height:600px">
    <asp:GridView ID="GridView1" runat="server"  style="width:100%;" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4">
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
</div>
</asp:Content>

