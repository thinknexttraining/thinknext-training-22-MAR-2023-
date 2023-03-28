﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="PlacementDrive.aspx.vb" Inherits="Admin_PlacementDrive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1
    {
        width: 49px;
    }
    .auto-style3
    {
        width: 339px;
    }
    .auto-style4
    {
        width: 331px;
    }
    .auto-style5
    {
        width: 177px;
    }
    .auto-style6
    {
        width: 263px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>

        <div>
        
<table width ="100%" style="height: 237px">
<tr><th colspan ="4" class="auto-style17"><h2>Placement Drive</h2></th><th class="auto-style17"></th></tr>
<tr><td class="auto-style3">
    <div style ="display:none;">
        <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID ="LinqDataSource1">
       <%--     <asp:CustomExpression OnQuerying ="FilterData"></asp:CustomExpression>--%>
           <%-- <asp:SearchExpression SearchType="Contains" DataFields ="EnquiryNo,Name" >
                <asp:ControlParameter ControlID ="TextBox1"  />
              <%--  <asp:QueryStringParameter QueryStringField ="value" Type ="String"  />
            </asp:SearchExpression>--%>
        </asp:QueryExtender></div>
    </td><td class="auto-style1">
        
       
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Search"></asp:TextBox>
    </td><td class="auto-style6">
        <asp:Button ID="btnsubmit" runat="server" Text="Display" CssClass="Allbuttons" 
            onclick="btnsubmit_Click" Width="65px" Height="24px" />
                                                                        
    </td><td class="auto-style4">
          <div style ="display:none;">
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataplacementDataContext" EntityTypeName="" TableName="PlacementDrives">
        </asp:LinqDataSource></div> 
    </td></tr>





<tr><td class="auto-style3">
    &nbsp;</td><td class="auto-style1">
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
    <td class="auto-style6">
        <asp:Button ID="btnexcel" runat="server" CssClass="Allbuttons" OnClick="btnexcel_Click" Text="Export to Excel" width="110px" />
    <td class="auto-style4">
        </td><td class="auto-style5">
        </td></tr>
</table>

</div>

 <div id="details" 
       
          style="width: 100%; height: 534px; text-align: center; vertical-align: top; margin-top: 10px"> 
        
           <div style="overflow:auto; height:534px; width:808px; margin-left:auto; margin-right:auto; padding-left:10px; " >
               <asp:GridView ID="GridView1" runat="server" Height="16px"   
               style="font-size: small" CellPadding="4" 
                  Width="792px" 
                  AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                   BorderStyle="None" BorderWidth="1px" DataKeyNames="SrId">
               <RowStyle BackColor="White" ForeColor="#330099" />
               <Columns>
                  <%-- <asp:TemplateField HeaderText="SessionMonth">
                       <ItemTemplate>
                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("SessionMonth") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>--%>
                    <asp:BoundField DataField ="SrId" SortExpression ="SrId" HeaderText ="SrId" InsertVisible ="false" ReadOnly ="true"  />
                   <asp:BoundField DataField ="EnquiryNo" SortExpression ="EnquiryNo" HeaderText ="EnquiryNo" />
                   <asp:BoundField DataField ="Name" SortExpression ="Name" HeaderText ="Name" />
                   <asp:BoundField DataField ="MobileNo" SortExpression ="MobileNo" HeaderText ="MobileNo" />
                   <asp:BoundField DataField ="EmailID" SortExpression ="EmailID" HeaderText ="EmailID" />
                   <asp:BoundField DataField ="CollegeName" SortExpression ="CollegeName" HeaderText ="CollegeName" />
                    <asp:BoundField DataField ="Batch" SortExpression ="Batch" HeaderText ="Batch" />
                    <asp:BoundField DataField ="Qualification" SortExpression ="Qualification" HeaderText ="Qualification" />
                    <asp:BoundField DataField ="Description" SortExpression ="Description" HeaderText ="Description" />
                    <asp:BoundField DataField ="Session" SortExpression ="Session" HeaderText ="Session" />
                    <asp:BoundField DataField ="Admissiondate" SortExpression ="Admissiondate" HeaderText ="Admissiondate" />                                                    
               </Columns>
               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
           </asp:GridView>
               <div style ="display :none ;">
           <asp:GridView ID="gvdetails" runat="server" Height="16px" DataSourceID ="LinqDataSource1" 
               style="font-size: small" CellPadding="4" 
                  Width="792px" 
                  AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                   BorderStyle="None" BorderWidth="1px" DataKeyNames="SrId">
               <RowStyle BackColor="White" ForeColor="#330099" />
               <Columns>
                  <%-- <asp:TemplateField HeaderText="SessionMonth">
                       <ItemTemplate>
                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("SessionMonth") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>--%>
                   <asp:BoundField DataField ="SrId" SortExpression ="SrId" HeaderText="SrId" InsertVisible="False" ReadOnly="True" />
                   <asp:BoundField DataField="EnquiryNo" HeaderText="EnquiryNo" SortExpression="EnquiryNo" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                   <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                   <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                   <asp:BoundField DataField="CollegeName" HeaderText="CollegeName" SortExpression="CollegeName" />
                   <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                   <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                   <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                   <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
                   <asp:BoundField DataField="Admissiondate" HeaderText="Admissiondate" SortExpression="Admissiondate" />
               </Columns>
               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
           </asp:GridView>
                   </div>
         </div>
 
    </div>
   
</div>
</asp:Content>

