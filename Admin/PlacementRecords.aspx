<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Admin/PlacementRecords.aspx.cs" Inherits="PlacementRecords" Title="PlacementRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 836px; height: 710px">
       <table style="width:750px; height: 476px; margin-bottom: 0px;" cellpadding="0" 
            cellspacing="0">
   <tr><td align="center" style="height: 10px" valign="top">
       &nbsp;</td></tr>
  
   <tr><td align="center" style="height: 49px" valign="top" rowspan="1">
       
       &nbsp;&nbsp;&nbsp;
       
       <asp:Label ID="lblPlacementRecords" runat="server" style="font-size:x-large; font-weight: 700;" 
           Text="Placement Records" ForeColor="#336699" Font-Size="X-Large"></asp:Label>
       
       </td></tr>
    <tr>
        <td align="center" valign="top">
            <asp:Label ID="lblMsg" runat="server" Font-Size="Small" SkinID="MytextID" 
                style="color: #CC3300"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" valign="top">
                           <asp:Label ID="lblTotal" runat="server" Font-Size="Small" SkinID="MytextID" 
                style="color: #000000"></asp:Label>
                             <asp:Panel ID="Panel1" runat="server" Height="400px" ScrollBars="Auto" 
                                 Width="838px" >
                            <asp:GridView ID="gdShow" runat="server"  
    CellPadding="4" ForeColor="#333333" 
                GridLines="None" Height="16px"   Width="97%" 
                HorizontalAlign="left" AllowPaging="True" 
                AutoGenerateColumns="False" style="font-size:large; margin-right: 0px; margin-left: 18px;"  
    PageSize="30">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="left" />
                                <Columns >
                                    <asp:BoundField DataField="CandidateName" HeaderText="Name of Candidate" 
                        >
                                        <HeaderStyle HorizontalAlign="left" />
                                        <ItemStyle  HorizontalAlign="left" Width="160px" Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CollegeName" 
                        HeaderText="College Name"  >
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" 
                         >
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
                                    </asp:BoundField>
                                    
                                </Columns>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Left" />
                                <EditRowStyle BackColor="#999999" Font-Size="Larger" HorizontalAlign="Left" 
                                    VerticalAlign="Middle" Wrap="False" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" 
                                    HorizontalAlign="Center" />
                            </asp:GridView>
                        </asp:Panel> 
            
        </td>
    </tr>  <%-- GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99%
     <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"  CellPadding="4" 
    ForeColor="#333333" GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99% " Font-Size="X-Large" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="740px">
                            <RowStyle ForeColor="#000066" Font-Size="Medium" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" 
                                Font-Size="Small" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" 
                                Font-Size="Medium" />
                    </asp:GridView>
      "--%>
    <tr>
        <td colspan="8" style="width: 99%; height: 180px" style="height:400px; width: 925px;" align="left" valign="top">
                           
                             &nbsp;</td>
    </tr>
    </table>
    </div>
</asp:Content>

