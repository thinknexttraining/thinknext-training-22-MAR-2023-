<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewFollowupDetails.aspx.cs" Inherits="Admin_NewFollowupDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 166px;
        }
        .auto-style4
        {
            width: 188px;
        }
        .auto-style5
        {
            width: 165px;
        }
        .auto-style6
        {
            width: 141px;
        }
           Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;}
.Grid td {
      padding: 2px;
      border: solid 1px #c1c1c1; }
.Grid th  {
      padding : 4px 2px;
      color: #fff;
      background: #363670 url(Images/grid-header.png) repeat-x top;
      border-left: solid 1px #525252;
      font-size: 0.9em; }
.Grid .alt {
      background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }
.Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }
.Grid .pgr table { margin: 3px 0; }
.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  
.Grid .pgr a { color: Gray; text-decoration: none; }
.Grid .pgr a:hover { color: #000; text-decoration: none; }
- See more at: http://www.dotnetfox.com/articles/gridview-custom-css-style-example-in-Asp-Net-1088.aspx#sthash.n5iZOJEX.dpuf
        .style15
        {
            width: 329px;
        }
        .style16
        {
            width: 246px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
          <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager> 
    <div>
       <div id="tab2" runat="server" style="z-index:100; display:block  ;" class="popupfreetraining">
            <%--<p id="P1" style="height:19px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
            &nbsp;<img alt="Close" src="../images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </p>--%>
          
            <div class="popu" style="height: 74%; border:solid 1px #aaa7a7;border-radius:10px; margin-left: -8px; margin-top: 3px;padding-bottom:8px !important" 
                                                    align="left">

<table class="tab1" border="1" id="Table1" style="width:100%; table-layout: fixed; height: 271px;">
  <tbody>
       <p id="P2" style="width: 284px !important; margin:2% auto;" align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="Small" Font-Bold="True"  Style="color:#FFF; background-color: #f83c3c;font-size: 19px; padding:2%; "
                ForeColor="Red" Text="Followup Details"></asp:Label></p>
      <tr>
          <td class="auto-style6">Enquiry No. </td>
          <td class="auto-style4">
        <asp:TextBox ID="txtEnquiryno" runat="server" Height="22px" Width="202px" style="text-transform: capitalize;" Enabled="False"></asp:TextBox>        &nbsp;</td>
    <td class="auto-style5" >Name</td>
    <td class="auto-style1">
        <asp:TextBox ID="txtnamename" runat="server" Height="22px" Width="177px" style="text-transform: capitalize;" required=""></asp:TextBox>        &nbsp;</td>
   
   
   
  </tr>
  <tr>
    <td class="auto-style6" >Mobile No</td>
    <td class="auto-style4">
        <asp:TextBox ID="txtmobilenono" runat="server"  style=" Height:22px; Width:202px; " Enabled="False"></asp:TextBox>
&nbsp;</td>
      <td class="auto-style5" >E-mail ID</td>
    <td>
        <asp:TextBox ID="txtemailidid" runat="server" style=" Height:22px; Width:177px;" Enabled="False"></asp:TextBox>
&nbsp;</td>
  
  
  </tr>
  <tr>
    <td class="auto-style6" >College Name</td>
    <td class="auto-style4">
        <asp:TextBox ID="txtcollegenamename" runat="server" style=" Height:22px; Width:202px;text-transform: capitalize;" required=""></asp:TextBox>
      </td>
     <td class="auto-style5" > Course </td>
    <td style="padding-left:0px;">
         
          <asp:TextBox ID="txtCourse" runat="server" style=" Height:22px; Width:177px;  text-transform: capitalize;" required=""></asp:TextBox>
 </td>
   </tr>
 <tr>
    <td class="auto-style6">Visited</td>
    <td colspan="3" style="padding-left:0px;">
   
          <asp:TextBox ID="txtVisited" runat="server" style=" text-transform: capitalize;" Width="98%" ></asp:TextBox>
 </td>
      </tr>
      <tr>
    <td class="auto-style6" > Followup Date </td>
    <td colspan="3" style="padding-left:0px;">
        
          <asp:TextBox ID="txtfollowupdate" runat="server" style=" Height:22px; Width:98%; text-transform: capitalize;" required="" Enabled ="false" ></asp:TextBox>
        <asp:CalendarExtender ID="cal" TargetControlID ="txtfollowupdate" runat ="server" ></asp:CalendarExtender>
 </td>
  </tr>
<tr>
    <td class="auto-style6">Comments</td>
    <td colspan="3" style="padding-left:0px;">
   
          <asp:TextBox ID="txtComments" runat="server" style=" text-transform: capitalize;" TextMode="MultiLine" Width="98%" required=""></asp:TextBox>
 </td>
      </tr>
        <tr>
             <td class="auto-style6">New Followup Date </td>
    <td colspan="3" style="padding-left:0px;">
       
          <asp:TextBox ID="txtnewfollowupdate" runat="server" style=" Height:22px; width:98%; text-transform: capitalize;" required=""></asp:TextBox>
         <asp:CalendarExtender ID="CalendarExtender1" TargetControlID ="txtnewfollowupdate" runat ="server" ></asp:CalendarExtender>
 </td>
      </tr>

<%--<tr>
    <td style="float:left; margin-top:17%";> Description </td>
    <td colspan="2" style="padding-left:0px;">
        &nbsp; &nbsp;  &nbsp;
          <asp:TextBox ID="txtdiscription" runat="server" MaxLength="100" style=" Height:50px; Width:142px; margin-top:12%;" TextMode="MultiLine"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[\s\S]{0,100}$" Text="100 characters max" ControlToValidate="txtdiscription" ForeColor="Red"></asp:RegularExpressionValidator>
 </td>
  </tr>--%>
</tbody>
</table>
                <br />
<table style="border:none; margin:auto;">
<tbody>
<tr>
        <td style="float:right; margin-left: 29%;border:none; margin-top:-5%;">
        <asp:Button ID="Button1" runat="server" EnableTheming="False" Text="Submit" OnClientClick="javascript:validate12()"  OnClick="Button1_Click" />
            
        </td>
    <td><asp:Label ID="Label2" runat="server" ></asp:Label></td>
  </tr>
</tbody>
</table>
 </div>  
   


<p style="padding-top: 6px">  <span id="Span1" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;">
    <center>
    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label></center>
                              </span> </p>
    
    


        <div id="Div1" 
       
          style="width: 100%; height:auto;  vertical-align: top; margin-top: 10px;overflow-y: scroll;"> 
        
           <div style="overflow:auto; height:auto; width:808px; margin-left:auto; margin-right:auto; padding-left:10px; " >
               <asp:GridView ID="GridView1" runat="server" Height="16px"   
               style="font-size: small" CellPadding="4" 
                  Width="792px" 
                  AutoGenerateColumns="False" ShowFooter="false" BackColor="White" BorderColor="#CC9966"
                   BorderStyle="None" BorderWidth="1px" DataKeyNames="EnquiryNo">
               <RowStyle BackColor="White" ForeColor="#330099" />
                   
               <Columns>
                      <asp:TemplateField HeaderText="Followup History">
                       <ItemTemplate>&nbsp;<table width="100%">
                                   <tr><td class="auto-style15"><strong>Session : </strong></td> <td class="auto-style15"><%# Eval("Session") %></td>
                                   
                              <td class="auto-style15"><strong>Enquiry No :</strong></td> <td class="auto-style15"><%# Eval("EnquiryNo") %></td> 
                                         <td class="tdstyle"><strong>Followup Date :</strong></td> <td class="tdstyle"><%# Eval("DateEntry") %></td>          
                                         <td class="tdstyle"><strong>Next Date Entry :</strong></td> <td class="tdstyle"><%# Eval("NextDateEntry") %></td> 
                                    
                                   
</tr>
                               <tr > 
                                   <td class="tdstyle"><strong>Followup Remarks :</strong></td> <td class="tdstyle" colspan ="8"><%# Eval("FollowupRemarks") %></td>
                                   
                                
                                  
                                   </tr>
                                 
                               </table>
                          <%-- <asp:Label ID="lblSession" runat="server" Text='<%# Eval("Session") %>'></asp:Label>--%>
                       </ItemTemplate>
                       <%-- <EditItemTemplate>
                                <table width="100%">
                                   <tr><td class="auto-style15"><strong>Session : </strong></td> 
                                       <td class="auto-style15"><asp:Label ID="lblSession" runat="server" Text=' <%# Eval("Session") %>' Width="50px" /></td>
                                   
                              <td class="auto-style15"><strong>Enquiry No :</strong></td>
                                        <td class="auto-style15"><asp:Label ID="lblEnquiryNo" runat="server" Text='<%# Eval("EnquiryNo") %>' Width="50px" /></td> 
                                                  
                                      <td class="tdstyle"><strong>Name : </strong></td>
                                        <td class="tdstyle">  <asp:TextBox ID="lblName1" runat="server" Text='<%# Eval("Name") %>'  Width ="150px"></asp:TextBox></td>
                                   <td class="tdstyle"><strong>College Name :</strong></td>
                                        <td class="tdstyle"><asp:Label ID="lblCollegeName" runat="server" Text='<%# Eval("CollegeName") %>' Width="50px" /></td>
</tr>
<tr>
                                   <td class="tdstyle"><strong>Course :</strong></td> 
    <td class="tdstyle"><asp:Label ID="lblCourse" runat="server" Text='<%# Eval("Course") %>' Width="50px" /></td>
                                        
                              <td class="tdstyle"><strong>Mobile No : </strong></td>
     <td class="tdstyle"><asp:Label ID="lblMobileNo" runat="server" Text='<%# Eval("MobileNo") %>' Width="50px" /></td>
                                                                                                                                
                                    <td class="tdstyle"><strong>Email ID :</strong></td> 
    <td class="tdstyle"><asp:Label ID="lblEmailID" runat="server" Text='<%# Eval("EmailID") %>' Width="50px" /></td>
    <td class="tdstyle"><strong>Followup Date :</strong></td>
     <td class="tdstyle"><asp:Label ID="lblDateEntry" runat="server" Text='<%# Eval("DateEntry") %>' Width="50px" /></td>
 </tr>
                               <tr> 
                                   <td class="tdstyle"><strong>Followup Remarks :</strong></td> 
                                   <td class="tdstyle"><asp:TextBox ID="txtfollowupremarks" runat="server" Text='<%# Eval("FollowupRemarks") %>' Width ="150px"></asp:TextBox></td>
                                   
                                    <td class="tdstyle"><strong>Next Date Entry :</strong></td> 
                                   <td class="tdstyle"> <asp:TextBox ID="txtnextfollowupdate" runat="server" Text='<%# Eval("NextDateEntry") %>'  Width ="150px"></asp:TextBox>
  <asp:CalendarExtender ID="cal" TargetControlID ="txtnextfollowupdate" runat ="server" ></asp:CalendarExtender></td>
                                     <td class="tdstyle"><strong>Date :</strong></td>
                                   <td class="tdstyle"><asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date") %>' Width="50px" /></td>
                                    
                                   <td class="tdstyle"><strong>Status :</strong></td>
                                    <td class="tdstyle">   <asp:DropDownList ID="ddlist" runat="server" OnSelectedIndexChanged="ddlist_SelectedIndexChanged" DataTextField='<%#Eval("Status") %>'  Width ="150px">
                               
                                 <asp:ListItem Text="Clear" Value="0">Clear</asp:ListItem>
                               <asp:ListItem Text="Pending" Value="1">Pending</asp:ListItem>
                           </asp:DropDownList></td> 
                                   </tr>
                                     <tr>
                                           <td class="tdstyle"><strong>Visited :</strong></td>
                                           <td class="tdstyle"><%# Eval("Visited") %> </td>
                                       </tr>
                               </table>
                           </EditItemTemplate>--%>
                     
                       
                   </asp:TemplateField>
                  
                  
                  
                  
                  
                  
                
                  
                 
                   
                 <%--  <asp:TemplateField HeaderText="Edit">
                       <ItemTemplate>
                           <asp:Button ID="txtedit" runat="server" Text="Edit" CommandName="edit" />
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:Button ID="btnupdate1" runat="server" Text="Update" CommandName="update" />
                           <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="cancel" />
                       </EditItemTemplate>
                   </asp:TemplateField>--%>
                                                               
                                     
                    
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

    </form>
</body>
</html>