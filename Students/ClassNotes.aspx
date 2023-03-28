<%@ Page Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/ClassNotes.aspx.vb" Inherits="ClassNotes" title="Class Notes"   %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
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
                    style="font-size: large; font-weight: 700;">Class Notes</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                        <table id="cxcxcx" style="width: 812px; height: auto;">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    <br />
                                    <asp:Label ID="lblTotalRecords" runat="server" style="font-size: small"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="height: auto;" valign="top">
                                    <asp:Panel ID="Panel1" runat="server" Height="378px" ScrollBars="Auto" 
                                        style="margin-bottom:20px; " Width="800px">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" 
                                            Width="785px">
                                            <RowStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Notes ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblnoticeID" runat="server" Text='<%# Bind("NotesID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="NotesDate" HeaderText="Date">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Topic" HeaderText="Topic">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="FileName" HeaderText="File Name">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:ButtonField ButtonType="Image" CommandName="Select" 
                                                    ImageUrl="~/images/download.png">
                                                    <ControlStyle Height="18px" Width="18px" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="Small" 
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




