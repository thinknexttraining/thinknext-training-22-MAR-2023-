<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="Admin_StudentDetails" Title="Student Details" EnableEventValidation ="false"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style3
    {
        width: 221px;
    }
    .style4
    {
        height: 23px;
        width: 221px;
    }
    .style5
    {
        width: 164px;
    }
    .style6
    {
        height: 23px;
        width: 164px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

        <div>
        
<table width ="100%">
<tr><th colspan ="4"><h2>Student Details</h2></th><th>&nbsp;</th></tr>
<tr><td>
    <asp:TextBox ID="TxtFranchiseCode" runat="server" BackColor="#FFFFCC" 
        ForeColor="#0066FF" ReadOnly="True" Visible="False" Width="100px">TNK101</asp:TextBox>
    </td><td></td><td></td><td></td></tr>
<tr><td>
    AdmissionType&nbsp;
        <asp:DropDownList ID="ddladmissiontrype" runat="server" Height="24px" 
            Width="90px" 
        onselectedindexchanged="ddladmissiontrype_SelectedIndexChanged">
           
            
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td class="style5">
     Training&nbsp;
                                    <asp:DropDownList ID="ddltraining" runat="server" Height="24px" Width="89px">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>6 Months</asp:ListItem>
                                        <asp:ListItem>3 Months</asp:ListItem>
                                        <asp:ListItem>2 Months</asp:ListItem>
                                        <asp:ListItem>1 Month</asp:ListItem>
                                        <asp:ListItem>6 Weeks</asp:ListItem>
                                        <asp:ListItem>4 Weeks</asp:ListItem>
                                        
                                        
                                    </asp:DropDownList>
                                    
                                </td>
                                <td class="style3">
        
       
        Session&nbsp;&nbsp;
        <asp:DropDownList ID="ddlsession" runat="server" Height="24px" 
            Width="79px">
        </asp:DropDownList>
    <td>
        Course:&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="ddlcourse" runat="server" 
            onselectedindexchanged="ddlcourse_SelectedIndexChanged" Height="23px" 
            Width="106px">
        </asp:DropDownList>
    </td></td>
                                <td>&nbsp;</td></tr>
<tr><td>
    &nbsp;</td><td class="style5">
        &nbsp;<td class="style3">
        &nbsp;<td>
        &nbsp;</td><td>&nbsp;</td></tr>
<tr><td>Between Date     <asp:CheckBox ID="chkbetweendate" runat="server" AutoPostBack="True" 
        oncheckedchanged="chkbetweendate_CheckedChanged" />
&nbsp;</td>
<td colspan ="4">
   From:&nbsp;&nbsp;&nbsp;  
    <asp:TextBox ID="txtdatefrom" runat="server" 
        style="margin-bottom: 0px" Enabled="False"></asp:TextBox>
    <asp:CalendarExtender ID="cal" TargetControlID ="txtdatefrom" runat ="server" ></asp:CalendarExtender>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To:&nbsp;
    <asp:TextBox ID="txtdateto" runat="server" 
        ontextchanged="txtdateto_TextChanged" Enabled="False"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID ="txtdateto" runat ="server" ></asp:CalendarExtender>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsubmit" runat="server" Text="Display" CssClass="Allbuttons" 
            onclick="btnsubmit_Click" />
    </tr>
<tr><td>&nbsp;</td>
<td colspan ="4">
    <asp:CheckBox ID="chkdisplayallenquiryadmission" runat="server" 
        Text="Click here to see all admission or Enquiry" />
    </tr>
<tr><td class="style1"></td><td class="style6">
    <td class="style4"><td class="style1">
        
       <asp:Button ID="btnexcel" runat="server" Text="Export to Excel" 
           OnClick="btnexcel_Click" Visible="False"  CssClass="Allbuttons" />

      </td>
        
        <td class="style1">
        </td></tr>
<tr><td>
    </td><td class="style5">
    <td class="style3">
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
    <td>
        </td><td>
        </td></tr>
</table>

</div>

 <div id="details" 
       
          style="width: 100%; height: 534px; text-align: center; vertical-align: top; margin-top: 10px"> 
        
           <div id="sadasds" runat="server"
              style="overflow:auto; height:534px; width:808px; margin-left:auto; margin-right:auto; padding-left:10px; " >
           <asp:GridView ID="gvdetails" runat="server" Height="16px" 
               style="font-size: small" CellPadding="4" ForeColor="#333333" GridLines="None" 
                  Width="792px" 
                  AutoGenerateColumns="False">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <Columns>
                  <%-- <asp:TemplateField HeaderText="SessionMonth">
                       <ItemTemplate>
                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("SessionMonth") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>--%>
                   <asp:TemplateField HeaderText="Session">
                       <ItemTemplate>
                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("Session") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="EnquiryNo">
                       <ItemTemplate>
                           <asp:Label ID="Label4" runat="server" Text='<%# Eval("EnquiryNo") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="CollegeName">
                       <ItemTemplate>
                           <asp:Label ID="Label5" runat="server" Text='<%# Eval("CollegeName") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Course">
                       <ItemTemplate>
                           <asp:Label ID="Label6" runat="server" Text='<%# Eval("Course") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Duration">
                       <ItemTemplate>
                           <asp:Label ID="Label7" runat="server" Text='<%# Eval("Duration") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="StudentName">
                       <ItemTemplate>
                           <asp:Label ID="Label8" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="StudentMobileNo">
                       <ItemTemplate>
                           <asp:Label ID="Label9" runat="server" Text='<%# Eval("StudentMobileNo") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="EmailID">
                       <ItemTemplate>
                           <asp:Label ID="Label10" runat="server" Text='<%# Eval("EmailID") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="City">
                       <ItemTemplate>
                           <asp:Label ID="Label11" runat="server" Text='<%# Eval("City") %>'></asp:Label>
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
         </div>

    </div>
   
</div>
</asp:Content>
