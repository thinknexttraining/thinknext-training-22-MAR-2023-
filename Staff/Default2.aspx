<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width=100% Height="580px">
           
            <table>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblTitle" runat="server" Text="Display Scholarship" 
                            Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            CellSpacing="2" Font-Size="X-Small">
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
             </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

