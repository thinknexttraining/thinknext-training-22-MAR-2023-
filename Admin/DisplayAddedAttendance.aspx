<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="DisplayAddedAttendance.aspx.cs" Inherits="Admin_DisplayAddedAttendance" Title="DisplayAddedAttendance" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<table width ="100%" >
<tr>
<th colspan ="4">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </th>
</tr>
<tr>
<th colspan ="4"><center><h2>Display Daily Attendance</h2></center></th>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    <asp:Label ID="Label1" runat="server" Text="Date:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtdate" runat="server" Width="200px"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server"
        TargetControlID="txtdate" Format="yyyy/MM/dd" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Display" BackColor="#A8A8FF" 
        onclick="Button1_Click" />
</td>
<td> &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    &nbsp;</td>
<td> &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td>
    <asp:Label ID="lblmessage" runat="server" ForeColor="#FF3300"></asp:Label>
</td>
<td> &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
</table>

<div>
<asp:GridView ID="gvDisplay" runat="server" Width="100%" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:TemplateField HeaderText="ID">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("UserID ") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name ") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
</div>
</div>

</asp:Content>

