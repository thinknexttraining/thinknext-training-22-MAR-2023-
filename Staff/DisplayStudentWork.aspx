<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="DisplayStudentWork.aspx.cs" Inherits="Admin_DisplayStudentWork" Title="DisplayStudentWork.aspx" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript" language="javascript">
        function ConfirmOnDelete()
        {
          if (confirm("Are you sure to delete ? ")==true)
            return true;
          else
            return false;
        }
    </script>
    
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/images/logo111.png" 
                Width="320px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="gvdisplay" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" Height="16px"  onrowdeleting="GridView1_RowDeleting" 
                onrowediting="gvdisplay_RowEditing" 
                onrowcancelingedit="gvdisplay_RowCancelingEdit" 
                onrowupdating="gvdisplay_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Sr. No">
                    <ItemTemplate>
            <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Entry">
                        <ItemTemplate>
                            <asp:Label ID="lblid" Visible="false" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        
                            <asp:Label ID="lblDateEntry" runat="server" Text='<%# Eval("DateEntry") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDateEntry" Width="50px" runat="server" Text='<%# Eval("DateEntry") %>'></asp:TextBox>
                                  <asp:CalendarExtender ID="txtDateEntry_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDateEntry">
                    </asp:CalendarExtender>
                            <asp:TextBox ID="txtid" Visible="false" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                            
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="College Name">
                     <ItemTemplate>
                            <asp:Label ID="lblCollegeName" runat="server" Text='<%# Eval("CollegeName") %>'></asp:Label>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txtCollegeName" runat="server" Text='<%# Eval("CollegeName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student Name">
                     <ItemTemplate>
                            <asp:Label ID="lblStudentName" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txtStudentName" runat="server" Text='<%# Eval("StudentName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Id">
                     <ItemTemplate>
                            <asp:Label ID="lblEmailId" runat="server" Text='<%# Eval("EmailId") %>'></asp:Label>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txtEmailId" Width="40px" runat="server" Text='<%# Eval("EmailId") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Project Name">
                     <ItemTemplate>
                     <a href='<%# Eval("PageURL") %>' runat="server" target="_blank" style="color:Blue;">
                     <asp:Label ID="lnkprojectname" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label></a>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txtProjectName" Width="30px" runat="server" Text='<%# Eval("ProjectName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Page Url">
                     <ItemTemplate>
                            <asp:Label ID="lblPageURL" runat="server" Text='<%# Eval("PageURL") %>'></asp:Label>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txtPageURL" Width="40px" runat="server" Text='<%# Eval("PageURL") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Edit">
                     <ItemTemplate>
                            <asp:ImageButton  ID="imgbtnedit" CommandName="Edit" ImageUrl="~/Admin/Images/edit.jpg" Height="20px" Width="20px" runat="server"></asp:ImageButton>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:ImageButton  ID="imgbtnupdate"  CommandName="Update" ImageUrl="~/Admin/Images/update.png" Height="20px" Width="20px" runat="server"></asp:ImageButton>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Delete">
                     <ItemTemplate>
                            <asp:ImageButton  ID="imgbtndelete" OnClientClick="return ConfirmOnDelete()" CommandName="Delete" ImageUrl="~/Admin/Images/delete.png" Height="20px" Width="20px" runat="server"></asp:ImageButton>
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:ImageButton  ID="imgbtncancel" CommandName="Cancel" ImageUrl="~/Admin/Images/cancel.png" Height="20px" Width="20px" runat="server"></asp:ImageButton>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

