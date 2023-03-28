<%@ Page Title="ManageCareers" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageCareers.aspx.cs" Inherits="Admin_ManageCareers" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>ManageCareers</title>
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
<td style="margin-left:50%;background-color:Black;"><font style="font-weight:bold;font-size:x-large;color:White;background-color:Black;">Manage Careers</font></td>
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
        ForeColor="Black" onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowediting="GridView1_RowEditing" AutoGenerateEditButton="false" 
        onrowdeleting="GridView1_RowDeleting" 
        onrowupdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="JobID" Visible="False">
                <EditItemTemplate>
                    <asp:Label ID="lblJobIDs" runat="server" Text='<%# Eval("JobID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblJobID" runat="server" Text='<%# Eval("JobID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="JobTitle">
                <EditItemTemplate>
                    <asp:TextBox ID="txtJobTitle" runat="server" Text='<%# Bind("JobTitle") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblJBtitle" runat="server" Text='<%# Eval("JobTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="JobCategory">
                <EditItemTemplate>
                    <asp:TextBox  ID="txtJobCategory" runat="server" Text='<%# Bind("JobCategory") %>' ></asp:TextBox>


                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblJobCategory" runat="server" Text='<%# Eval("JobCategory") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Experience">
                <EditItemTemplate>
                    <asp:DropDownList ID="txtExperience" runat="server" Text='<%# Bind("Experience") %>'>
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
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblExperience" runat="server" Text='<%# Eval("Experience") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLocation" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLocation" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="JobSummary">
                <EditItemTemplate>
                    <asp:TextBox ID="txtJobSummary" runat="server" Text='<%# Bind("JobSummary") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblJobSummary" runat="server" Text='<%# Eval("JobSummary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Qualification">
                <EditItemTemplate>
                    <asp:TextBox ID="txtQualification" runat="server" 
                        Text='<%# Bind("Qualification") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblQualification" runat="server" 
                        Text='<%# Eval("Qualification") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="PostDate">
                <EditItemTemplate>
                    
                    <asp:Label ID="txtPostDate" runat="server" Text='<%# Eval("PostDate") %>' Enabled="false"></asp:Label>
                       

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPostDate" runat="server" Text='<%# Eval("PostDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Salary">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
                <EditItemTemplate>
                    <asp:Button ID="lbUpdate" runat="server" CommandName="Update" Text="Update" CssClass="Allbuttons"/>
                   <asp:Button ID="lbCancel" runat="server" CommandName="Cancel" Text="Cancel" CssClass="Allbuttons"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="lblEdit" runat="server" CommandName="Edit" Text="Edit" CssClass="Allbuttons"/>
                    <asp:Button ID="lbDelete" runat="server" CommandName="Delete" Text="Delete" CssClass="Allbuttons"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
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

