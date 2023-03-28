<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="UploadNewsEvents.aspx.cs" Inherits="Admin_UploadNewsEvents" Title="Upload News And Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table>
<tr>
    <td style=" height: 61px; width: 947px;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" 
        Font-Size="12pt" onclick="LinkButton1_Click">News &amp; Events</asp:LinkButton>
    &nbsp;&nbsp;|<asp:LinkButton ID="LinkButton2" runat="server" BackColor="White" 
        Font-Size="12pt" onclick="LinkButton2_Click">Vacancies</asp:LinkButton>&nbsp;|<asp:LinkButton ID="LinkButton3" runat="server" BackColor="White" 
        Font-Size="12pt" onclick="LinkButton3_Click">Other Information</asp:LinkButton>

        &nbsp;&nbsp;|<asp:LinkButton ID="LinkButton4" runat="server" BackColor="White" 
        Font-Size="12pt" OnClick="LinkButton4_Click">Home News & Events</asp:LinkButton>
    </td>
</tr>
<tr><td style="width: 947px">&nbsp;</td></tr></table>
    <asp:Panel ID="newsandeventspnl" runat="server" GroupingText="Add News & Events" >
    <table>
    <tr><td></td><td>&nbsp;</td><td>
        <asp:Label ID="lblnewsmssg" runat="server"></asp:Label>
        </td><td></td></tr>
    <tr><td></td><td style="width:100px">
        <asp:Label ID="Label2" runat="server" Text="Enter File Name"></asp:Label>
        </td><td>
            <asp:TextBox ID="txtNews" runat="server" Height="116px" TextMode="MultiLine" 
                Width="255px"></asp:TextBox>
        </td><td></td></tr>
    <tr><td></td><td>
        <asp:Label ID="Label3" runat="server" Text="UploadFile"></asp:Label>
        </td><td>
            <asp:FileUpload ID="flpNews" runat="server" />
        </td><td></td></tr>
    <tr><td></td><td></td><td>
        &nbsp;</td><td></td></tr>
    <tr><td></td><td></td><td>
        <asp:Button ID="Button4" runat="server" onclick="Button1_Click" Text="Submit" />
        </td><td></td></tr>
    
    </table>
    
    </asp:Panel>
    <asp:Panel ID="vacanciespnl" runat="server" GroupingText="Add Vacancies" Visible="false">
    <table>
    <tr><td></td><td>&nbsp;</td><td>
        <asp:Label ID="lblvacancy" runat="server"></asp:Label>
        </td><td></td></tr>
    <tr><td></td><td style="width:100px">
        <asp:Label ID="Label5" runat="server" Text="Enter File Name"></asp:Label>
        </td><td>
            <asp:TextBox ID="txtVacancy" runat="server" Height="116px" TextMode="MultiLine" 
                Width="255px"></asp:TextBox>
        </td><td></td></tr>
    <tr><td></td><td>
        <asp:Label ID="Label6" runat="server" Text="UploadFile"></asp:Label>
        </td><td>
            <asp:FileUpload ID="flpVacancy" runat="server" />
        </td><td></td></tr>
    <tr><td></td><td></td><td>
        &nbsp;&nbsp;
        </td><td></td></tr>
    <tr><td></td><td></td><td>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVaupdate" runat="server" Text="Update" />
        </td><td></td></tr>
    
    </table>
    
    </asp:Panel>
    <asp:Panel ID="infopnl" runat="server" GroupingText="Add Other Information" Visible="false">
    <table>
    <tr><td></td><td>&nbsp;</td><td>
        <asp:Label ID="lblinfo" runat="server"></asp:Label>
        </td><td></td></tr>
    <tr><td style="height: 36px"></td><td style="height: 36px">
        <asp:Label ID="Label8" runat="server" Text="Enter Important Information"></asp:Label>
        </td><td style="height: 36px">
            <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
        </td><td style="height: 36px"></td></tr>
    <tr><td></td><td>
        &nbsp;</td><td>
            &nbsp;</td><td></td></tr>
    <tr><td></td><td>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
            Visible="False" />
        </td><td>
            <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                Text="Update" />
        </td><td></td></tr>
    <tr><td></td><td></td><td></td><td></td></tr>
    </table>
    
    </asp:Panel>

        <asp:Panel ID="Home_news_events" runat="server" GroupingText="Home News & Events" Visible="false">
    <table>
    <tr>
        <td></td>
        <td>&nbsp;</td>
        
        <td>
        <asp:Label ID="lbl_Home_news" runat="server"></asp:Label>
        </td>
        
        <td></td>

    </tr>
    <tr>
        <td style="height: 36px"></td><td style="height: 36px">
        <asp:Label ID="Label7" runat="server" Text="Enter News and event Detail"></asp:Label>
        </td>
        <td style="height: 36px">
            <asp:TextBox ID="txt_Detail" runat="server"></asp:TextBox>
        </td>
        <td style="height: 36px"></td>

    </tr>
    <tr>
        <td></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td></td>

    </tr>
    <tr>
        <td></td>
        <td>
        <asp:Button ID="btn_submit" runat="server"   Text="Submit" OnClick="btn_submit_Click" />
        </td>
        <td>
            
        </td>
        <td></td>

    </tr>
    <tr><td></td>
        <td></td>
        <td></td>
        <td></td>

    </tr>
    </table>
    
    </asp:Panel>
    <br />
    
    


</div>
<div id="maindiv" style="border:solis 1px">
    <asp:GridView ID="GridInfo" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" Width="867px" OnSelectedIndexChanged="GridInfo_SelectedIndexChanged">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="S.No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# (Container.DataItemIndex)+1 %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# (Container.DataItemIndex)+1 %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">
                <HeaderTemplate>
                    Select All<br />
                    <asp:CheckBox ID="chkAll" runat="server" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkSelect" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="File Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblFileName" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkdel" runat="server" onclick="lnkdel_Click">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <br />
    <br />

</div>

</asp:Content>

