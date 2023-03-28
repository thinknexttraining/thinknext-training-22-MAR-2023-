<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="AddStudentWork.aspx.cs" Inherits="Admin_AddStudentWork" Title="Add Student Work" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        body
        {
            font-size: 9pt;
            font-family: Arial;
        }
    </style>
    <table class="style1" style="margin-left:20px;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
               <h2> Add Student Work</h2></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Size="10pt" ForeColor="Red"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td align="left" >
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="368px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" >
                College Name</td>
            <td>
                <asp:TextBox ID="txtcollegename" Width="368px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" >
                Email Id</td>
            <td>
                <asp:TextBox ID="txtcourse" Width="368px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" >
                Project Name</td>
            <td>
                <asp:TextBox ID="txtprojectname" Width="368px"  runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td align="left" >
                Page Url</td>
            <td>
                <asp:TextBox ID="txtpageurl" Width="368px"  runat="server"></asp:TextBox>
                   
            </td>
        </tr>
        <tr>
            <td align="left" >
                Date Entry</td>
            <td>
                <asp:TextBox ID="txtdateentry" Width="368px" runat="server"></asp:TextBox>
                   
                <asp:CalendarExtender ID="txtdateentry_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdateentry">
                </asp:CalendarExtender>
                   
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnaddschloership" runat="server" Text="Add Student Work" 
                     Width="191px" onclick="btnaddschloership_Click" CssClass="Allbuttons" />
                <asp:CheckBox ID="chkexcel" runat="server" Text="Click here for upload excel" 
                    AutoPostBack="True" oncheckedchanged="chkexcel_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblfirstmessage" Visible="false" runat="server" Font-Size="10pt" ForeColor="Red" 
                    Text="Before upload excel file you have to create the below mention coloumn in excel file"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblsecondmsg" Visible="False" runat="server" Font-Size="10pt" ForeColor="Red" 
                    Text="Student Name,CollegeName,EmailId,Project Name, Page URL,Date Entry"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblthirdmsg" Visible="false" runat="server" Font-Size="10pt" ForeColor="Red" 
                    Text="Fill the data into all column"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="lblselect" runat="server" Text="Select File" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUploadExcelFile" Visible="false" runat="server" />
&nbsp;<asp:Button ID="btnimport" runat="server" Visible="false" Text="Import Excel" 
                    onclick="btnimport_Click" />
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

