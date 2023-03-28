<%@ Page Title="Show Result " Language="C#" MasterPageFile="~/Students/MasterPageStudent.master"   AutoEventWireup="true" CodeFile="Show_result.aspx.cs" Inherits="Show_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="color: #008080" class="style2">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="color: #008080" class="style2">
                Your Result</td>
        </tr>
        <tr>
            <td style="color: #008080" class="style2">
                Select Test Type
                <asp:DropDownList ID="dlltestype" runat="server" Height="20px" Width="105px">
                 <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Second</asp:ListItem>
                    <asp:ListItem>Third</asp:ListItem>
                    <asp:ListItem>Fourth</asp:ListItem>
                    <asp:ListItem>Fifth</asp:ListItem>
                    <asp:ListItem>Sixth</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:Button ID="btnshow" runat="server" Text="Show" CssClass="Allbuttons" 
                    style="font-size: small; font-weight: 700" onclick="btnshow_Click" 
                    Width="57px" />
                            </td>
        </tr>
        <tr>
            <td style="color: #008080" class="style2">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td align="center" style="background-color: #008000; color: #FFFFFF;">
                <asp:Panel ID="pnlscore" runat="server" Visible="false">
                Score:&nbsp;&nbsp;  <asp:Label ID="lblscore" runat="server"></asp:Label>
                /30 
                </asp:Panel>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnldoen" runat="server" Height="562px" Width="827px" 
                    ScrollBars="Both">
                <asp:GridView ID="gdresult" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Height="16px" AutoGenerateColumns="False">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id No">
                            <ItemTemplate>
                                <asp:Label ID="lblidno" runat="server" Text='<%# Eval("IDno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course">
                            <ItemTemplate>
                                <asp:Label ID="lblCourse" runat="server" Text='<%# Eval("Course") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Test Type">
                            <ItemTemplate>
                                <asp:Label ID="lblTestType" runat="server" Text='<%# Eval("TestType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Question">
                            <ItemTemplate>
                                <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Answer">
                         <ItemTemplate>
                                <asp:Label ID="lblOption1" runat="server" Text='<%# Eval("Option1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Second Answer">
                         <ItemTemplate>
                                <asp:Label ID="lblOption2" runat="server" Text='<%# Eval("Option2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Third Answer">
                         <ItemTemplate>
                                <asp:Label ID="lblOption3" runat="server" Text='<%# Eval("Option3") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fourth Answer">
                         <ItemTemplate>
                                <asp:Label ID="lblOption4" runat="server" Text='<%# Eval("Option4") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Your Answer">
                         <ItemTemplate>
                                <asp:Label ID="lblYourAnswer" runat="server" Text='<%# Eval("YourAnswer") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Right Answer">
                         <ItemTemplate>
                                <asp:Label ID="lblRightAnswer" runat="server" Text='<%# Eval("RightAnswer") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                </asp:Panel>
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
    </table>
</asp:Content>

