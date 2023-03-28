<%@ Page Title="Careers" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Careeers.aspx.cs" Inherits="Admin_Careeers" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .style1
        {
            width: 155px;
        }
        .style2
        {
            width: 183px;
        }
        .style3
        {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>

<table width="100%">
<tr>
<td style="margin-left:50%;background-color:Black;"><font style="font-weight:bold;font-size:x-large;color:White;background-color:Black;">Careers</font></td>
</tr>
</table>
</div>
<br />
<div>
<asp:Panel runat="server" ID="pnl" GroupingText="Filter">
<table width="100%">
<tr><td class="style1"><asp:CheckBox ID="btdate" runat="server" 
        Text="Between Dates:" TextAlign="Right" AutoPostBack="True" 
        oncheckedchanged="btdate_CheckedChanged"/></td>
    <td align="left" class="style2"><asp:Label ID="lblfrom" runat="server" Text="From :" Visible="false"></asp:Label><asp:TextBox ID="txtfrom" runat="server" Visible="false"></asp:TextBox></td>
    <asp:CalendarExtender ID="froms" runat="server" TargetControlID="txtfrom" Format="dd/MM/yyyy"></asp:CalendarExtender>
    <td align="left" class="style3"><asp:Label ID="lblto" runat="server" Text="To :" Visible="false"></asp:Label><asp:TextBox ID="txtto" runat="server" Visible="false"></asp:TextBox> </td>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtto" Format="dd/MM/yyyy"></asp:CalendarExtender>
    <td align="left"><asp:Button ID="btnsearch" Text="Search" runat="server" 
            BackColor="Black" ForeColor="White" Visible="false" onclick="btnsearch_Click"/></td></tr>
</table>

</asp:Panel>
</div>
<br />
<asp:Label ID="lblmsg" runat="server" ForeColor="Red" Visible="false"></asp:Label>
<br />
<div style="width:100%;overflow:auto;">
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="CandidateIDNO" HeaderText="IDNo" Visible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="ApplyedFor" HeaderText="Apply For" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" />
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No	" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID	" />
            <asp:BoundField DataField="Experience" HeaderText="Experience	" />
            <asp:TemplateField HeaderText="Resume">
                <ItemTemplate>
                    <asp:LinkButton ID="lbResume" runat="server" Text='<%# Eval("Resume") %>' CommandName="Download" CommandArgument='<%# Eval("CandidateIDNO") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Date" HeaderText="Date	" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</div>
</asp:Content>

