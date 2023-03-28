<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="jobfairdetail.aspx.cs" Inherits="Admin_jobfairdetail" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    From: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
     <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox1">
    </asp:CalendarExtender>
     To : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox1" Text="All" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Display" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox2">
    </asp:CalendarExtender>


    

    <br />
    <br />

    <asp:Label ID="Label1" runat="server"   Text="Label" Visible="False" ForeColor="#CC0000" style="font-size: x-large"></asp:Label>

    <asp:Label ID="Label2" runat="server" Text="Total Records:" Visible="False"></asp:Label><asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    <div style="margin-left: 95px">
    <asp:GridView ID="GridView1" runat="server" Height="167px"  Width="226px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        &nbsp;</div>
</asp:Content>

