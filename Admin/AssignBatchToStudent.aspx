<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AssignBatchToStudent.aspx.cs" Inherits="Admin_AssignBatchToStudent" Title="Assign Batches" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script> 
<script type="text/javascript" src="../js/gridviewScroll.min.js"></script>  
   
    
    <script type="text/javascript" language="javascript">
        $(document).ready(function() {

            gridviewScroll();
        });

        function gridviewScroll() {
            $('#<%=GridView1.ClientID%>').gridviewScroll({
                width: 860,
                height: 300,
                freezesize: 0
            });
        } 
       </script>
    <script type="text/javascript" language="javascript" >

        function togglSession() {
            document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Session';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Session';

            document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }

        function togglCourse() {
            document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Course';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Course';
            document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }
        function togglBatch() {
            document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Sub Category';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Sub Category';
            document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }

        $(document).ready(function() {
            gridviewScroll();
        });

        function gridviewScroll() {
            $('#<%=GridView2.ClientID%>').gridviewScroll({
                width: 860,
                height: 300,
                freezesize: 0
            });
        } 
       


</script>
    <style type="text/css">
        .style1
        {
            width: 285px;
        }
        .style2
        {
            width: 218px;
        }
        .style4
        {
            height: 24px;
            width: 283px;
        }
        .style5
        {
            width: 143px;
            height: 24px;
        }
        .style6
        {
            width: 283px;
        }
        .style7
        {
            width: 283px;
            height: 41px;
        }
        .style8
        {
            width: 143px;
            height: 41px;
        }
        .style9
        {
            width: 143px;
        }
          .buttonjava
{
height:20px;
width:22px;
padding-bottom:3px;

}

.corner
     {
     	-moz-border-radius: 10px;
     	-webkit-border-radius: 10px;
     	border-top-width: 10px; /* future proofing */
     	-khtml-border-radius: 10px;
     	     	     	
     	}
    
    .buttonjava
{
height:20px;
width:22px;
padding-bottom:3px;

}

.corner
     {
     	-moz-border-radius: 10px;
     	-webkit-border-radius: 10px;
     	border-top-width: 10px; /* future proofing */
     	-khtml-border-radius: 10px;
     	     	     	
     	}
        .style10
        {
            height: 24px;
            width: 72px;
        }
        .style11
        {
            width: 72px;
            height: 48px;
        }
        .style12
        {
            width: 72px;
        }
        .style13
        {
            width: 119px;
            height: 24px;
        }
        .style14
        {
            width: 119px;
            height: 48px;
        }
        .style15
        {
            width: 119px;
        }
        .style16
        {
            width: 72px;
            height: 33px;
        }
        .style17
        {
            width: 119px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div style="width: 100%; height: 1055px; margin-bottom:50px">
 <div id="pageicons" style="width: 92%; height: 45px;">
 
 
 
 
<!----*****************HEADER START HERE***************************----->
       <table id="tabpageicon" style="width: 92%; height: 45px;">
           <tr>
               <td class="style1">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                        <asp:TextBox ID="txtBrandName" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">THINKNEXT TRAINING</asp:TextBox>
                </td>
               <td style="width: 46px">
                  <img src="../pageicon/attendence.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td class="style2">
                  <asp:Label ID="Label1" runat="server" Text="Assign Batches To Students"  
                        style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td>
                   &nbsp;</td>
           </tr>
</table>

<!----*****************HEADER END HERE***************************----->



<br />
<br />

<!---*********************FIRST PANEL START HERE*******************************---> 
<asp:Panel ID="Panel3" runat="server" GroupingText="Show Students" Height="600px" ScrollBars="Auto" 
           HorizontalAlign="Center" Width="380px" 
           style="font-size: small;float:left; margin-right: 0px; margin-bottom: 0px;">
                            <table style="width: 90%; height: 135px;" id="vvcvc">
                                <tr>
                                    
                                    <td align="left" class="style10" >
                                        <asp:Label ID="lblSession0" runat="server" SkinID="MytextID" 
                                            style="font-size: small" Text="Session:"></asp:Label>
                                    </td>
                                    <td align="left" valign="middle" class="style13">
                                        <asp:DropDownList ID="ddlSelectSession"  runat="server" Height="16px" 
                                            Width="90px">
                                           
                                        </asp:DropDownList>
                                           
                                      <input class="Allbuttons"  style="height:22px;" name="reset" onclick="togglSession();" type="button" value="..." />       
                                    </td>
                                    
                                   <%-- <td align="left" style="width: 81px" valign="top">
                                         <asp:Button ID="btnAddLectDelivered" CssClass="Allbuttons" 
                                             OnClientClick="return SetLectDelivered(); " runat="server"  
                                             style="font-size: small;  font-weight: 700" Text="Set" Width="43px" />
                                    </td>--%>
                                    </tr>
                                    <tr>
                                    <td align="left" valign="middle" class="style11">
                                        <asp:Label ID="lblBatch" runat="server" SkinID="MytextID" 
                                            style="font-size: small" Text="Course:"></asp:Label>
                                    </td>
                                    <td align="left" valign="middle" class="style14">
                                        <asp:DropDownList ID="ddlCourses" runat="server"  Width="90px">
                                            
                                        </asp:DropDownList>
                                        <asp:CheckBox ID="chkall" runat="server" Text="All" AutoPostBack="true" 
                                            oncheckedchanged="chkall_CheckedChanged" />
                                    </td>
                                    
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="style16">
                                           
                                        </td>
                                         <td align="left" valign="top" class="style17">
                                             <asp:Button ID="btnShowStudent" runat="server" CssClass="Allbuttons" 
                                                 Height="29px" onclick="btnShowStudent_Click" style="font-weight: 700;" 
                                                 Text="Show" ValidationGroup="LAT" Width="72px" />
                                        </td>
                                </tr>
                               
                                <tr>
                                    <td align="left" class="style12" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style15" valign="top">
                                        &nbsp;</td>
                                </tr>
                               
                                <tr>
                                    <td align="left" class="style12" >
                                        <asp:DropDownList ID="ddlBatchesassign" runat="server" Width="90px">
                                            <asp:ListItem>Select Batch</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" class="style15" valign="top">
                                        <asp:Button ID="btnAddin" runat="server" CssClass="Allbuttons" 
                                            onclick="btnAddin_Click" text="Add In Batch" />
                                    </td>
                                </tr>
                               
                            </table>
                            
                              <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Visible="false" ></asp:Label>
                            
                            <asp:Panel ID="Panel2" runat="server" GroupingText="Show Students" Height="400px" 
           HorizontalAlign="Center" Width="400px" 
           style="font-size: small;float:left; margin-right: 0px; overflow:auto">
        
           <br />
            
         
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                   GridLines="None" Height="16px" style="font-size: small;" Width="309px" 
                   AutoGenerateColumns="False">
                    
                   
                <RowStyle  BackColor="#FFF7E7" ForeColor="#8C4510" />
                   <Columns>
                       <asp:TemplateField HeaderText="Select">
                           <ItemTemplate>
                               <asp:CheckBox ID="chk" runat="server"/>
                           
                               <asp:Label ID="lblIdNo" runat="server" Text='<%# Eval("IDNO") %>' 
                                   Visible="False"></asp:Label>
                           
                           </ItemTemplate>
                           <HeaderTemplate>
                               <asp:CheckBox ID="CHLALL" runat="server" AutoPostBack="True"  />
                           </HeaderTemplate>
                       </asp:TemplateField>
                       
                       <asp:BoundField DataField="IDNo" HeaderText="IDNo" />
                       <asp:BoundField DataField="Course" HeaderText="Course" />
                      
                       <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                       <asp:BoundField DataField="BatchGroup" HeaderText="Group" />
                   </Columns>
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <EditRowStyle BackColor="#999999" />
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               </asp:GridView>
                     
               </asp:Panel>
        <br />
                       <br />                      
                 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                       <br />  
                        </asp:Panel>
                        
<!---*********************FIRST PANEL END HERE*******************************---> 
                        
                        
                        
                        
                        
                        
  <!---*********************SECOND PANEL START HERE*******************************--->                      
                        
 <asp:Panel ID="Panel1" runat="server" GroupingText="Assign Batch " Height="600px"  
                                HorizontalAlign="Center" Width="380px" 
                                style="font-size: small;float:right; margin-left:0px;" ScrollBars="Auto">
           
  <table style="width: 98%; height: 103px;" id="Table1">
  <tr>
                                    
  <td align="left" class="style4" >
 <asp:Label ID="lblSessionbatch" runat="server" SkinID="MytextID" style="font-size: small" Text="Session:"></asp:Label>
 </td>
<td align="left" valign="middle" class="style5">
                                       <%-- <asp:TextBox ID="textBoxLectDelivered" runat="server" Height="14px"  
                                            MaxLength="3" SkinID="MytextID" style="font-size: x-small; margin-bottom: 0px;" 
                                            Width="100px"></asp:TextBox>--%>
<asp:DropDownList ID="ddlsessionbatch" runat="server">
 
</asp:DropDownList>
                                           
                                             
  </td>
      <td align="left" class="style5" valign="middle">
          &nbsp;</td>
  <td>
      &nbsp;</td>
                                   <%-- <td align="left" style="width: 81px" valign="top">
                                         <asp:Button ID="btnAddLectDelivered" CssClass="Allbuttons" 
                                             OnClientClick="return SetLectDelivered(); " runat="server"  
                                             style="font-size: small;  font-weight: 700" Text="Set" Width="43px" />
                                    </td>--%>
                                    </tr>
                                    <tr>
                                    <td align="left" valign="middle" class="style7">
                                        <asp:Label ID="lblassBatch" runat="server" SkinID="MytextID" 
                                            style="font-size: small" Text="Batch:"></asp:Label>
                                    </td>
                                    <td align="left" valign="middle" class="style8">
                                        <%--<asp:TextBox ID="textBoxLectAttended" runat="server" Height="14px"   
                                            MaxLength="3" SkinID="MytextID" style="font-size: x-small" Width="100px"></asp:TextBox>--%>  
                                            
                                            <asp:DropDownList ID="ddlassbatch" runat="server" Width="100px">
                                              
                                            </asp:DropDownList>  
                                    </td>
                                        <td align="left" class="style8" valign="middle">
                                            &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="style6">
                                           
                                        </td>
                                         <td align="left" valign="top" class="style9">
                                            <asp:Button ID="btnShowbatchstu" runat="server" CssClass="Allbuttons" 
                                                Height="29px" style="font-weight: 700;" Text="Show" ValidationGroup="LAT" 
                                                Width="78px" onclick="btnShowbatchstu_Click" />
                                        </td>
                                        <td align="left" class="style9" valign="top">
                                            &nbsp;</td>
                                </tr>
           <tr>
               <td align="left" class="style6" valign="top">
                   &nbsp;</td>
               <td align="left" class="style9" valign="top">
                   &nbsp;</td>
               <td align="left" class="style9" valign="top">
                   &nbsp;</td>
      </tr>
           <tr>
               <td align="left" class="style6" valign="top">
                   <asp:DropDownList ID="ddlBatchset" runat="server" Height="19px" Width="92px">
                       <asp:ListItem>Select Batch</asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td align="left" class="style9" valign="top">
                   <asp:Button ID="btnUpdateBatch" runat="server" CssClass="Allbuttons" 
                       Height="24px" onclick="btnUpdateBatch_Click" Text="Update Batch" Width="91px" />
               </td>
               <td align="left" class="style9" valign="top">
                   <asp:Button ID="btnDeleteFBatch" runat="server" CssClass="Allbuttons" 
                       Height="22px" onclick="btnDeleteFBatch_Click" Text="Delete For Batch" 
                       Width="138px" />
               </td>
      </tr>
           </table>
           <br />
<asp:Label ID="lblmessages" runat="server" ForeColor="Red" Visible="false"></asp:Label>
<br />
<br />
           <asp:Panel ID="Panel4" runat="server" GroupingText="Show Students" Height="400px" 
           HorizontalAlign="Center" Width="374px" 
           style="font-size: small;float:left; margin-right: 0px;overflow:auto;">
   
            
           
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                   GridLines="None" Height="16px" style="margin:auto; float:left; font-size: small" Width="350px" 
                   AutoGenerateColumns="False">
                    
                   
                <RowStyle  BackColor="#FFF7E7" ForeColor="#8C4510" />
                   <Columns>
                       <asp:TemplateField HeaderText="Select">
                           <ItemTemplate>
                               <asp:CheckBox ID="CHK" runat="server"/>
                               <asp:Label ID="lblIDno" runat="server" Text='<%# Eval("IDNO") %>' 
                                   Visible="False"></asp:Label>
                           </ItemTemplate>
                           <HeaderTemplate>
                               <asp:CheckBox ID="Chkall" runat="server" AutoPostBack="True"/>
                               
                           </HeaderTemplate>
                       </asp:TemplateField>
                      
                       <asp:BoundField DataField="IDNo" HeaderText="IDNo" />
                       <asp:BoundField DataField="Course" HeaderText="Course" />
                      
                       <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                       <asp:BoundField DataField="BatchName" HeaderText="Batch" />
                   </Columns>
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <EditRowStyle BackColor="#999999" />
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               </asp:GridView>
               
           
               </asp:Panel>
               
          
           

                </asp:Panel>
                
<!---*********************SECOND PANEL END HERE*******************************---> 
            
            
            
            
            
            
            
<!---*********************POPUP START HERE FOR SESSION************************************** --> 
               
               <div id="popup" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 145px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 350px; left: 493px;">
        
        <div id="datainsert" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;" 
            class="corner">
            
            
            <table class="corner">
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglSession();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="TextBoxInsert" runat="server" Height="18px" Width="200px"></asp:TextBox>exp:-Jan-May-2015
                        <br />
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False"  OnClick="ButtonInsSave_Click"/>
                    </td>
                    <td style="height: 34px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            
            
            </div>
        
        </div>
            
<!---*********************POPUP START HERE FOR SESSION************************************** --> 
        
        
        
<!---*********************POPUP START HERE FOR Course************************************** -->  

<div id="Div1" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 130px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 350px; left: 493px;">
        
        <div id="Div2" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;" 
            class="corner">
            
            
            <table class="corner">
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="Label2" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="HiddenField1" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglCourse();" href="#" id="a1" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="txtCourseentr" runat="server" Height="18px" Width="200px"></asp:TextBox>
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="Button4" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False"  OnClick="ButtonInsSave_Click"/>
                    </td>
                    <td style="height: 34px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            
            
            </div>
        
        </div>

<!---*********************POPUP START HERE FOR SESSION************************************** -->      
               
</div>


</div>

</asp:Content>