<%@ Page Title="" Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="DownloadQuestionPaper.aspx.vb" Inherits="DownloadQuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width: 100%;">
     <table ><tr><td style ="height :400px ; width :800px" 
            align="center" valign="top">
    <table style="width:99%; height: auto;">
    <tr><td>
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td></tr>
        <tr>
            <td style="text-align:center;">
                <asp:Label ID="lblDetail" runat="server" 
                    style="font-size: large; font-weight: 700;">Question Paper</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                        <table id="cxcxcx" style="width: 812px; height: auto;">
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    <br />
                                   &nbsp;&nbsp; <asp:Label ID="lblTotalRecords" runat="server" style="font-size: small"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Select Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" 
                                        Width="200px">
                                    </asp:DropDownList>
                                &nbsp;&nbsp;
                                <hr />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="height: auto;" valign="top">
                                    <asp:Panel ID="Panel1" runat="server" Height="378px" ScrollBars="Auto" 
                                        style="margin-bottom:20px; margin-top:10px; " Width="800px">
                                        <asp:GridView ID="grdview" runat="server" 
                                            CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" 
                                            Width="790px" AutoGenerateColumns="False" DataKeyNames="FileName">
                                            <RowStyle HorizontalAlign="Left" BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" />
                                            <Columns>
                                                <%--<asp:TemplateField HeaderText="IDNo">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblebookid" runat="server" Text='<%# Bind("EBookID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                                 <asp:BoundField DataField="Course" HeaderText="Course" />
                                                  <asp:BoundField DataField="Batch" HeaderText="Batch" />
                                                   <asp:BoundField DataField="Session" HeaderText="Session" />
                                                <asp:BoundField DataField="FileName" HeaderText="File Name" />
                                              
                                                <asp:ButtonField ButtonType="Image" CommandName="Download" 
                                                    ImageUrl="~/images/download.png" Text="Button" >
                                                <ControlStyle Height="18px" Width="18px" />
                                                <ItemStyle Height="18px" Width="18px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Left" Font-Size="Small" 
                                                ForeColor="White" />
                                            <EditRowStyle BackColor="#999999" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
            </td>
        </tr>
      
    
        </table>
</td>
</tr>
</table>
     </div>

</asp:Content>

