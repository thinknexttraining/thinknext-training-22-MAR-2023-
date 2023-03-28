<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project_request.aspx.cs" Inherits="project_request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="border: 0px solid #ffd800;">
         <br />
         <br />
        <div style="border: 0px solid #ff0000; background-color: #1d4fd9; width: 100%; padding:12px;">
            <span style="font-size: 30px; color: #fff;">Project Request Form</span>

        </div>
        <br />
         <div style="border: 1px solid #000000; height:auto; width: 100%; float: right">
             
             <table class="downmenu">
                 <tr>
                     <td class="text-center" style="width: 130px">&nbsp;</td>
                     <td class="text-center" style="width: 324px">&nbsp;</td>
                     <td class="text-center">&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="text-center" style="width: 130px; font-weight: bold;">
                         &nbsp;</td>
                     <td class="text-left" style="width: 324px; font-weight: bold;">
                         <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                     </td>
                     <td class="text-left">
                         <asp:TextBox ID="txtname" runat="server" style="height:40px;width:270px;"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-center" style="width: 130px; font-weight: bold;">
                         &nbsp;</td>
                     <td class="text-left" style="width: 324px; font-weight: bold;">
                         <asp:Label ID="lblphone" runat="server" Text="Phone No"></asp:Label>
                     </td>
                     <td class="text-left">
                         <asp:TextBox ID="txtphone" runat="server" style="height:40px;width:270px;"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-center" style="width: 130px; font-weight: bold;">
                         &nbsp;</td>
                     <td class="text-left" style="width: 324px; font-weight: bold;">
                         <asp:Label ID="lblemail" runat="server" Text="Email ID"></asp:Label>
                     </td>
                     <td class="text-left">
                         <asp:TextBox ID="txtemail" runat="server" style="height:40px;width:270px;"></asp:TextBox>
                     </td>
                 </tr>
            
                 <tr>
                     <td class="text-center" style="width: 130px; font-weight: bold; height: 127px;">
                         &nbsp;</td>
                     <td class="text-left" style="width: 324px; font-weight: bold; height: 127px;">
                         <asp:Label ID="lblmsg" runat="server" Text="Message"></asp:Label>
                     </td>
                     <td class="text-left" style="height: 127px">
                         &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtmessage" runat="server" Height="107px" TextMode="MultiLine"
                        Width="266px"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <td class="text-center" style="width: 130px; font-weight: bold;border:0px solid #333;">
                         &nbsp;</td>
                     <td class="text-left" style="width: 324px; font-weight: bold;border:0px solid #333;">
                         <asp:Label ID="lblknow" runat="server" Text="How You Know About ThinkNEXT?"></asp:Label>
                     </td>
                     <td class="text-left" style="border:0px solid #333;">
                     <asp:CheckBoxList ID="chk_source" runat="server" BorderWidth="0" RepeatDirection="Horizontal" RepeatColumns="3" Width="400px" Height="40px">
                         <asp:ListItem Text="Friends" Value="Friends"></asp:ListItem>
                         <asp:ListItem Text="Canopy" Value="Canopy"></asp:ListItem>
                         <asp:ListItem Text="Website" Value="Website"></asp:ListItem>
                         <asp:ListItem Text="E-Mail" Value="E-Mail"></asp:ListItem>
                         <asp:ListItem Text="College Campus" Value="College Campus"></asp:ListItem>
                         <asp:ListItem Text="Training" Value="Training"></asp:ListItem>
                         <asp:ListItem Text="Search Engines" Value="Search Engines"></asp:ListItem>
                         <asp:ListItem Text="Workshops" Value="Workshops"></asp:ListItem>
                         <asp:ListItem Text="Ex-Student" Value="Ex-Student"></asp:ListItem>
                         <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                         <asp:ListItem Text="Banners" Value="Banners"></asp:ListItem>
                         <asp:ListItem Text="Seminar" Value="Seminar"></asp:ListItem>
                     </asp:CheckBoxList>
                     </td>
                 </tr>
                 
                 <tr>
                     <td class="text-center" style="width: 130px; font-weight: bold;">&nbsp;</td>
                     <td class="text-left" style="width: 324px; font-weight: bold;">&nbsp;</td>
                     <td class="text-left">
                         <br />
                         <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                         <br />
                         <br />
                         <br />
                     </td>
                 </tr>
             </table>
             
         </div>
        
    </div>
</asp:Content>

