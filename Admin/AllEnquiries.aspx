<%@ Page Title="All Enquiry" Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" EnableEventValidation="false" CodeFile="~/Staff/AllEnquiries.aspx.vb" Inherits="AllEnquiries" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
   <h3> Enquiries Detail </h3>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>

         
   <p>  
       &nbsp;
       <asp:RadioButton ID="rdbStudent" runat="server" Text="Student Registration" GroupName="aa"
       AutoPostBack="True" Checked="True"  />
&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:RadioButton ID="rdbonline" runat="server" GroupName="aa" 
           Text="Online Registration" AutoPostBack="True" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:RadioButton ID="rdbintern" runat="server" GroupName="aa" 
           Text="Internship" AutoPostBack="True" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="btnExport" runat="server" CssClass="Allbuttons" Height="22px" 
           Text="Export To Excel" Width="150px" />
      </p>
      <p>
          <asp:CheckBox ID="chkbetweendate" runat="server" AutoPostBack="True" Text ="Between Date"
        oncheckedchanged="chkbetweendate_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lbltext" runat="server" Text=" From:" ></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtdatefrom" runat="server" style="margin-bottom: 0px" Enabled="False" Height="16px" Width="87px"></asp:TextBox>
    <asp:CalendarExtender ID="cal" TargetControlID ="txtdatefrom" runat ="server" ></asp:CalendarExtender>
      &nbsp;&nbsp;    To:&nbsp;
    <asp:TextBox ID="txtdateto" runat="server" Enabled="False" Width="87px"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID ="txtdateto" runat ="server" ></asp:CalendarExtender>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnShow" runat="server" CssClass="Allbuttons" Height="22px"  Text="Show" Width="150px"/>
      </p>
 <p>
     <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
 </p>

               </ContentTemplate>
          <Triggers>
              <asp:PostBackTrigger ControlID="btnExport" />
              <asp:PostBackTrigger ControlID="btnShow" />
          </Triggers>
      </asp:UpdatePanel>
   <div id="details" 
       
          style="width: 100%; height: 534px; text-align: center; vertical-align: top; margin-top: 10px"> 
   
          <div id="sadasds" 
              style="overflow:auto; height:534px; width:808px; margin-left:auto; margin-right:auto; padding-left:10px; " >
           <asp:GridView ID="GridView1" runat="server" Height="16px" 
               style="font-size: small" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  Width="792px">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <EditRowStyle BackColor="#999999" />
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           </asp:GridView>
         </div>
   
    </div>
  
  </div>
</asp:Content>

