<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/AddClassNotes.aspx.vb" Inherits="AddClassNotes" title="Add Class Notes"   %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
   
    <div style="height: 803px; width: 838px;">
     <table ><tr><td style ="height :400px ; width :800px" 
            align="center" valign="top">
    <table style="width:830px; height: 325px;">
        <tr>
            <td style="text-align:center;">
                <asp:TextBox ID="txtfranchiseCode" runat="server" BackColor="#FFFFCC" 
                    Font-Bold="True" ForeColor="#0066FF" Height="20px" ReadOnly="True" 
                    style="font-size: small" Visible="False" Width="180px">TNK101</asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:Label ID="lblDetail" runat="server" 
                    style="font-size: large; font-weight: 700;">Add Class Notes</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="height: auto; " align="left" valign="top">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>
                         <asp:Panel ID="Panel2" runat="server" BorderColor="Black" 
                            GroupingText="Class Notes" Height="134px" style="font-size: small" 
                            Width="815px">
                             <table align="center" style="width:100%; height: 66px; margin-bottom: 0px;" 
                                 ID="dsfdsfs">
                                 <tr>
                                     <td class="style9">
                                     </td>
                                     <td align="left" class="style2">
                                         <asp:Label ID="lblTopic0" runat="server" SkinID="MytextID" 
                                             style="font-size: small" Text="Enter Topic :"></asp:Label>
                                     </td>
                                     <td align="left" class="style3" colspan="4">
                                         <asp:TextBox ID="txtTopic" runat="server" Height="14px" MaxLength="255" 
                                             SkinID="MytextID" style="font-size: x-small" Width="244px"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="style4">
                                     </td>
                                     <td align="left" class="style7">
                                         <asp:Label ID="lblTopic1" runat="server" SkinID="MytextID" 
                                             style="font-size: small" Text="Class Notes for"></asp:Label>
                                     </td>
                                     <td align="left" class="style8" colspan="4">
                                         <asp:DropDownList ID="drpappliedfor" runat="server" Height="20px" 
                                             style="font-size: x-small" Width="186px">
                                         </asp:DropDownList>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="style4">
                                         &nbsp;</td>
                                     <td align="left" class="style7">
                                         <asp:Label ID="lblFileName0" runat="server" SkinID="MytextID" 
                                             style="font-size: small" Text="Browse File :"></asp:Label>
                                     </td>
                                     <td align="left" colspan="4" style="height: 22px;">
                                         <asp:FileUpload ID="UploadFile" runat="server" Height="21px" SkinID="MytextID" 
                                             style="font-size: x-small" Width="161px" />
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:Button ID="btnUpload" runat="server" CssClass="Allbuttons" 
                                             Height="24px" style="font-weight: 700" Text="Upload" Width="116px" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="style4">
                                         &nbsp;</td>
                                     <td align="left" class="style7">
                                         &nbsp;</td>
                                     <td align="left" colspan="4" style="height: 22px;">
                                         <asp:Label ID="Label4" runat="server" ForeColor="#FF3300" 
                                             Text="(.doc, .pdf, .txt, .xls, .xlsx, .docx, .rtf, .ppt, .pps, .pptx, .ppsx only)"></asp:Label>
                                     </td>
                                 </tr>
                             </table>
                         </asp:Panel>
                     </ContentTemplate>
                </asp:UpdatePanel>
                </td>
        </tr>
        <tr>
            <td style="height: 32px;" align="center" valign="top">
                <div style="height: 587px">
                   
                                    
                        <table style="width: 812px; height: 200px;">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lblmessage" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                                    
                                    
                                    <br />
                                    
                                    
                                    <br />
                                    <asp:Label ID="lblTotalRecords" runat="server" style="font-size: small"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnShow" runat="server" CssClass="Allbuttons" 
                                        Text="Show Notes" />
                                </td>
                            </tr>
                        <tr><td valign ="top" align ="center" style="height: 552px" >
                                    <asp:Panel ID="Panel1" runat="server" 
                                        style="height:510px; margin-bottom:20px; "  ScrollBars="Auto" 
                                        Width="800px">
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                            GridLines="None" AutoGenerateColumns="False" Height="16px" Width="785px">
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Size="Small" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Notes ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblnoticeID" runat="server" Text='<%# Bind("NotesID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="NotesDate" HeaderText="Date" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Course" HeaderText="Course">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Topic" HeaderText="Topic" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="FileName" HeaderText="File Name" >
                                                <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="Small" />
                                            <EditRowStyle BackColor="#999999" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                    </asp:Panel>
                            </td></tr>
                        </table>
                   
         
                       
                </div>
            </td>
        </tr>
    
        </table>
</td>
</tr>
</table>
     </div>
     </ContentTemplate>
    
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnUpload" />
                        </Triggers>
    
     </asp:UpdatePanel>
     
  
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">




    <style type="text/css">
        .style2
        {
            width: 165px;
            height: 20px;
        }
        .style3
        {
            height: 20px;
        }
        .style4
        {
            height: 22px;
            width: 134px;
        }
        .style7
        {
            width: 165px;
            height: 22px;
        }
        .style8
        {
            height: 22px;
        }
        .style9
        {
            height: 20px;
            width: 134px;
        }
        </style>

</asp:Content>


