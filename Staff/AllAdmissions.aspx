<%@ Page Title="Admissions" Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/AllAdmissions.aspx.vb" Inherits="AllAdmissions" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
 .marginauto
 {
 	margin-left:auto;
 	margin-right:auto;
 
 }
 </style>
 
 <div>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </div>
  <div id="enqdet" style="width: 100%; height: auto">
   <h3> Admissions Detail </h3>
   <p>
       <asp:Label ID="lblrecord" runat="server"></asp:Label>
       <strong> &nbsp;&nbsp;&nbsp; Select Course :&nbsp;
                    <asp:DropDownList ID="drpappliedfor" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px" AutoPostBack="True">
                    </asp:DropDownList>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </strong> 
       <asp:Button ID="btnexcel" runat="server" Text="Export to Excel" />
      </p>
   <div id="details" 
       
          style="width: 100%; height: 534px; text-align: center; vertical-align: top; margin-top: 10px"> 
   
   
       <asp:Panel ID="Panel1" runat="server" Height="505px" Width="781px"  ScrollBars="Auto"
           style="margin-left:auto; margin-right:auto; padding-left:10px;" >
           <asp:Label ID="lblmessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
           <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
               GridLines="None" Height="16px" style="font-size: small" Width="758px">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <EditRowStyle BackColor="#999999" />
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           </asp:GridView>
         
       </asp:Panel>
   
    </div>
  
  </div>
</asp:Content>

