<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="RegisterStudentOnManagementIntership.aspx.cs" Inherits="Admin_RegisterStudentOnManagementIntership" Title="Register Student On Management Intership" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
    .btnLoginImg
    {
    	background-image : url('images/BlackButton.png' );
    	background-repeat: no-repeat;
    	background-position: center center ;
    	border: 0;
    	text-align: center;
    	vertical-align : middle;
    	color : White;
    	    	}
    .style34
    {
        width: 56px;
    }
    .style35
    {
        width: 106px;
    }
    .style36
    {
            color: transperant;
            width: 109px;
        }
</style>
 <div style="height: 688px; width:100%; " id="MainDiv">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
     <ContentTemplate>
     <table style="width: 100%">
        <tr>
            <td style="width: 63px">
                &nbsp;</td>
            <td style="width: 695px; text-align: center">
                    <asp:TextBox ID="txtfranchise" runat="server" BackColor="#FFFFCC" 
                        Font-Bold="True" ForeColor="#0066FF" Height="20px" ReadOnly="True" 
                        style="font-size: small" Visible="False" Width="180px" 
                        ontextchanged="txtfranchise_TextChanged">IM101</asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
             <td style="width: 63px">
                 &nbsp;</td>
             <td style="width: 695px; text-align: center">
                 <asp:Label ID="lblMsg0" runat="server" ForeColor="Red" style="color: #0000CD" 
                     Text="Get Students Detail whom applied for Management Intership"></asp:Label>
             </td>
             <td>
                 &nbsp;</td>
         </tr>
        <tr>
            <td style="width: 63px">
                &nbsp;</td>
            <td style="width: 695px; text-align: center; font-size: small">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     </ContentTemplate>
     </asp:UpdatePanel>
      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
     <ContentTemplate>
       <div id= "divDetail" style="height: 516px; " 
         runat="server">
           <asp:Panel ID="Panel2" runat="server" 
               GroupingText="Registered Students for Management Intership" Height="600px" 
               style="font-size: small" HorizontalAlign="Right">
                              <table style="width: 100%; height: 40px">
            <tr>
                <td style="text-align: center; width: 70px">
                    &nbsp;</td>
                <td style="text-align: center; width: 70px">
                    <asp:Label ID="lblUserName0" runat="server" style="font-size: small" 
                        Text="From Date"></asp:Label>
                </td>
                <td style="width: 150px">
                    <asp:TextBox ID="txtDateFrom" runat="server" Width="181px" style="height: 16px" 
                        ontextchanged="txtDateFrom_TextChanged"></asp:TextBox>
                    <asp:CalendarExtender ID="txtDateFrom_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDateFrom" 
                        DaysModeTitleFormat="MM/dd/yyyy" Format="MM/dd/yyyy" 
                        TodaysDateFormat="MM/dd/yyyy">
                    </asp:CalendarExtender>
                </td>
                <td style="text-align: center;" class="style34">
                    <asp:Label ID="lblPsw0" runat="server" Text="To Date" style="font-size: small"></asp:Label>
                </td>
                <td style="width: 191px">
                    <asp:TextBox ID="txtDateTo" runat="server" Width="181px" style="height: 16px"></asp:TextBox>
                    <asp:CalendarExtender ID="txtDateTo_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDateTo" 
                        DaysModeTitleFormat="MM/dd/yyyy" Format="MM/dd/yyyy" 
                        TodaysDateFormat="MM/dd/yyyy">
                    </asp:CalendarExtender>
                </td>
                <td class="style35">
                    <asp:Button ID="btnshow" runat="server" Text="Show" Width="104px" 
                        CssClass="Allbuttons" Height="25px" onclick="btnshow_Click"  />
                </td>
                <td class="style36" style="text-align: center">
                    <asp:Button ID="btnExcel" runat="server" Text="Export To Excel" Width="104px" 
                        CssClass="Allbuttons" Height="25px" onclick="btnExcel_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="7" style="text-align:center;" >
                    <asp:Label ID="lblRec" runat="server" ForeColor="Red" 
                        Text="Record Found : 0"></asp:Label>
                </td>
            </tr>
        </table>
            <asp:Panel id= "pnlgrid" runat="server" Height="419px" ScrollBars="Auto" 
              Width="820px">
               <asp:GridView ID="gvdisplay" runat="server" Width="781px" 
                   style="font-size: small; text-align: center" CellPadding="4" Height="16px" 
                 ForeColor="#333333" GridLines="None" >
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                         <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" />
               </asp:GridView>
               </asp:Panel>
           </asp:Panel>
       </div>
        </ContentTemplate>
          <Triggers>
              <asp:PostBackTrigger ControlID="btnExcel" />
          </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
