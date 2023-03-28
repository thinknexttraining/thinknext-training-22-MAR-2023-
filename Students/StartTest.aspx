<%@ Page Title="Start Test" Language="C#" MasterPageFile="~/Students/MasterPageStudent.master"   AutoEventWireup="true" CodeFile="StartTest.aspx.cs" Inherits="StartTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 65%;
            height: 91px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 298px;
        }
        .style5
        {
            width: 298px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
    </style>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <table class="style3" align="right">
                        <tr>
                            <td colspan="2">
                                <asp:Panel ID="Panel3" runat="server">
                                    <table class="style3">
                                        <tr>
                                            <td align="right" class="style4">
                                                <asp:TextBox ID="txtfranchiseCode" runat="server" BackColor="#FFFFCC" 
                                                    Font-Bold="True" ForeColor="#0066FF" Height="20px" ReadOnly="True" 
                                                    style="font-size: small" Visible="False" Width="180px">TNK101</asp:TextBox>
                                            </td>
                                            <td align="left">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style4">
                                                Id Number</td>
                                            <td align="left">
                                                <asp:Label ID="lblid" runat="server" style="margin-left:16px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style4">
                                                Course</td>
                                            <td align="left">
                                                <asp:Label ID="dllcourse" runat="server" style="margin-left:16px;margin-top:6px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style5">
                                                Test Type</td>
                                            <td align="left" class="style6">
                                                <asp:DropDownList ID="dlltesttype" AppendDataBoundItems="true" runat="server" style="margin-left:16px;width:150px;margin-top:6px">
                                                <asp:ListItem>Select</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style5">
                                                Batch</td>
                                            <td align="left" class="style6">
                                                <asp:DropDownList ID="ddlBatchname" runat="server" style="margin-left:16px;width:150px;margin-top:6px">
                                                <asp:ListItem>Select</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Button ID="btnstarttest" runat="server" Height="23px" 
                                                    onclick="btnstarttest_Click1" Text="Go" Width="76px"  CssClass="Allbuttons" style="font-size: small; font-weight: 700;margin-left:16px;width:150px;margin-top:6px"  />
                                                    
                                                    
                                                  
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lblerrormsg" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel4" runat="server" Visible="False">
                    <table class="style3">
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Best Of Luck.</td>
                        </tr>
                        <tr>
                            <td>
                                You Have 30 Minute to complete your test after 30 minute test automatic will 
                                finish.</td>
                        </tr>
                        <tr>
                            <td>
                                Please do not Refresh&nbsp; or Back the Page</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnstart" runat="server" onclick="btnstart_Click" 
                                    Text="Click here to Start Test"  CssClass="Allbuttons" 
                                    style="font-size: small; font-weight: 700" Height="25px" Width="206px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
           
    </table>
     
</asp:Content>

