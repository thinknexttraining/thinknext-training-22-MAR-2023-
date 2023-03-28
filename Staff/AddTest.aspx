<%@ Page Title="Add New Question" Language="C#" MasterPageFile="~/Staff/MasterAdmin.master"  AutoEventWireup="true" CodeFile="AddTest.aspx.cs" Inherits="AddTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 138px;
        }
        .style3
        {
            width: 138px;
            height: 22px;
        }
        .style4
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="margin-left:20px;" >
        <tr>
            <td colspan="2">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
       <tr>
            <td align="left" class="style2">
                Session</td>
            <td align="left">
                <asp:DropDownList ID="ddlsession" runat="server"  Height="20px" Width="327px" 
                    AutoPostBack="True" onselectedindexchanged="ddlsession_SelectedIndexChanged">
                <asp:ListItem>Select Session</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Batch</td>
            <td align="left">
                <asp:DropDownList ID="dllcourse" AppendDataBoundItems="true" runat="server" 
                    Height="20px" Width="327px" 
                    onselectedindexchanged="dllcourse_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                 
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Question</td>
            <td align="left">
                <asp:TextBox ID="txtquestion" runat="server" Height="16px" Width="320px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtquestion" ErrorMessage="Please Enter The Question"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" class="style2">
                First Option</td>
            <td align="left">
                <asp:TextBox ID="txtfirstoption" runat="server" Height="16px" Width="320px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtfirstoption" ErrorMessage="Please Enter the First Option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Second Option</td>
            <td align="left">
                <asp:TextBox ID="txtsecondoption" runat="server" Height="16px" Width="320px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtsecondoption" 
                    ErrorMessage="Please Enter the Second Option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Third Option</td>
            <td align="left">
                <asp:TextBox ID="txtthirdoption" runat="server" Height="16px" Width="320px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtthirdoption" ErrorMessage="Please Enter the Third Option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Fourth Option</td>
            <td align="left">
                <asp:TextBox ID="txtfourthoption" runat="server" Height="16px" Width="320px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtfourthoption" 
                    ErrorMessage="Please Enter the Fourth Option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Answer</td>
            <td align="left">
                <asp:TextBox ID="dllanswer" runat="server" Height="16px" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                Test Type</td>
            <td align="left">
                <asp:DropDownList ID="dlltesttype" runat="server" Height="23px" Width="327px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Second</asp:ListItem>
                    <asp:ListItem>Third</asp:ListItem>
                    <asp:ListItem>Fourth</asp:ListItem>
                    <asp:ListItem>Fifth</asp:ListItem>
                    <asp:ListItem>Sixth</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="btnaddtest" runat="server" CssClass="Allbuttons" style="font-size: small; font-weight: 700" Text="Add" Width="322px" 
                    onclick="btnaddtest_Click" />
                    
                    
                     
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left">
                <asp:Label ID="lblerrormsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

