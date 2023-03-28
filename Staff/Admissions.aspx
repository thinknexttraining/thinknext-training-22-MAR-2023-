<%@ Page Title="Admissions" Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/Admissions.aspx.vb" Inherits="Admissions" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/vbscript">
    function changevalues() {
    var adm = document.getElementById() 
    }
    </script>
    <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <link href="../js/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.autocomplete.js" type="text/javascript"></script>
     <script type="text/javascript">
         function changevalues() {
             var adm = document.getElementById()
         }
         function togglCategory() {

             document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Select Course';
             document.getElementById('<%= hiddentext.ClientID %>').value = 'Select Course';

             document.getElementById('<%= ChkliCourse.ClientID %>').Text = '';
             var state1 = document.getElementById("popup").style.display;
             if (state1 == 'block') {
                 document.getElementById("popup").style.display = 'none';
             }
             else {
                 document.getElementById("popup").style.display = 'block';
             }

         }
         $(document).ready(function() {
             $("#<%=txtAdmissionsStatus.ClientID%>").autocomplete('VisitorsSearch_VB.ashx');
         });       
</script> 
    <div id="main" style="width: 100%; height:auto; ">
<div id="option" style="padding: 5px; text-align: center; vertical-align: middle"> 
    <asp:Label ID="lblmessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
 </div>
<div id="admissions" style="height:auto ; padding-bottom:7px;"> 
    <asp:Panel ID="Panel3" runat="server" GroupingText="Basic Detail" 
        HorizontalAlign="Left" 
        style="font-size: small; font-family: Arial; height:auto;">
        <table ID="tabregus" 
            style="width:99%; height:637px; background-color: #CCCCCC;">
            <tr>
                <td class="style5" colspan="4">
               
                    <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; text-align: center;">
                        
                        <asp:RadioButton ID="RdbUserId" runat="server" GroupName="No" Text="UserId" 
                            AutoPostBack="True" />
                        <asp:RadioButton ID="RdbEnquiryNo" runat="server" GroupName="No" Text="EnquiryNo" AutoPostBack="true" />
                    <br /><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label
                            ID="lbltext" runat="server" Text="User Id" Visible="False"></asp:Label>&nbsp;&nbsp;
                       
                        <asp:TextBox ID="txtsearchenq" runat="server" Height="14px" 
                            onblur="return RanaProperCase(this);" 
                            style="font-size: x-small" Width="180px" Visible="False"></asp:TextBox>
                        
                        &nbsp;<asp:Button ID="btnsearch" runat="server" Height="24px" 
                            Width="30px" CssClass="searchbutton" Visible="False" />
                            
                    </h3>
                    <h3 class="h3" style="margin: 0px">
                        </h3>
                    <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; text-align: center;">
                        <asp:Button ID="Button1" runat="server" CssClass="Allbuttons" Height="24px" 
                            style="margin-left:100px;" Text="All Admissions" Width="120px" />
                    </h3>
                </td>
            </tr>
            
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    <div>
                        <asp:Image ID="Image1" runat="server" AlternateText="No Image Found" 
                            Height="120px" Width="120px" />
                    </div>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Session</td>
                <td class="style10">
                    
                    <asp:DropDownList ID="drpsessionmonth" runat="server" Height="21px" 
                        style="font-size: x-small" Width="96px">
                       
                    </asp:DropDownList>
                    <asp:DropDownList ID="drpsessionyear" runat="server" Height="22px" 
                        style="font-size: x-small" Width="82px" Visible="False">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                    </asp:DropDownList>
                    
                    </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Franchies Code</td>
                <td class="style10">
                    <asp:TextBox ID="txtFranchisecode" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" ReadOnly="True" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
                <td class="style11">
                    Brand Name</td>
                <td class="style12">
                    <asp:TextBox ID="txtbrandname" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" ReadOnly="True" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="lblStudentName0" runat="server" style="font-size: small" 
                        Text="Enquiry No"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtEnquiryNo" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" ReadOnly="True" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
                <td class="style11">
                    <asp:Label ID="lblAdmissionsStatus" runat="server" style="font-size: small" 
                        Text="Admissions Status"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtAdmissionsStatus" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" style="font-size: small" 
                        Text="CollegeName"></asp:Label>
                </td>
                <td colspan="3" class="style8">
                    <asp:TextBox ID="txtcollegename" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="500px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" style="font-size: small" Text="Course"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtcourse" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" style="font-size: small" Text="Batch"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtbatch" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px" 
                        onblur="return RanaProperCase(this);"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server" style="font-size: small" Text="IDNo"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtIDNo" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" style="font-size: small" 
                        Text="Uni Roll No"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtIUniRollNo" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server" style="font-size: small" 
                        Text="Applied For"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="drpappliedfor" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px">
                    </asp:DropDownList>
                    <br />
                    <asp:TextBox ID="txtCEnquiry" runat="server" Height="16px" Visible="false" 
                        Width="181px" ReadOnly="True"></asp:TextBox>
                <input class="Allbuttons" id="btnMultipleCourse" runat="server"  style="width:18px;height:18px;" visible="false"  name="btnCourse" onclick="togglCategory();" type="button" value="..."/>
                      
                </td>
                <td class="style1">
                    <asp:Label ID="lblDOB0" runat="server" style="font-size: small" 
                        Text="Joining Date"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtjoiningdate" runat="server" Height="14px" 
                        style="font-size: x-small" Width="130px"></asp:TextBox>
                    <asp:CalendarExtender ID="txtjoiningdate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtjoiningdate">
                    </asp:CalendarExtender>
                    <asp:CalendarExtender ID="txtjoiningdate_CalendarExtender2" runat="server" 
                        Enabled="True" TargetControlID="txtjoiningdate">
                    </asp:CalendarExtender>
                    <asp:Label ID="lbldFormat1" runat="server" 
                        style="color: #FF0000; font-size: x-small;" Text="(MM/dd/yyyy)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblDOB1" runat="server" style="font-size: small" 
                        Text="Training Type"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="drptrainingtype" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>6 Months</asp:ListItem>
                        <asp:ListItem>6 Weeks</asp:ListItem>
                          <asp:ListItem>3 Months</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style1">
                    <asp:Label ID="lblDOB2" runat="server" style="font-size: small" 
                        Text="Batch Timing"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtbatchtimings" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                 </td>
                <td class="style6">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" 
                        style="font-size: x-small" Width="76px" Visible="False">
                        <asp:ListItem>-Select-</asp:ListItem>
                        <asp:ListItem>Jan</asp:ListItem>
                        <asp:ListItem>Feb</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>Apr</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>Jun</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>Aug</asp:ListItem>
                        <asp:ListItem>Sep</asp:ListItem>
                        <asp:ListItem>Oct</asp:ListItem>
                        <asp:ListItem>Nov</asp:ListItem>
                        <asp:ListItem>Dec</asp:ListItem>
                        </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="drpsession" runat="server" Height="22px" 
                        style="font-size: x-small" Width="82px" Visible="False" AppendDataBoundItems="True">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style1">
                    &nbsp;</td>
                <td style="width: 200px; height: auto;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="4">
                <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;"> 
                    Personal Detail </h3>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName" runat="server" style="font-size: small" 
                        Text="Student Name"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtStudentName" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="lblFathersName" runat="server" style="font-size: small" 
                        Text="Father's Name"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtFatherName" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblMothersName" runat="server" style="font-size: small" 
                        Text="Mother's Name"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtMotherName" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" 
                        Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="lblFatherMobileNo0" runat="server" style="font-size: small" 
                        Text="Contact No"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtContactNumber" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName2" runat="server" style="font-size: small" 
                        Text="Student Mobile No."></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtstudentmobNo" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px" MaxLength="10"></asp:TextBox>
                </td>
                <td class="style1">
                    <asp:Label ID="lblStudentName3" runat="server" style="font-size: small" 
                        Text="Father Mobile No."></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtFathermobNo0" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblDOB" runat="server" style="font-size: small" 
                        Text="DOB"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtDOB" runat="server" Height="14px" 
                        style="font-size: x-small" Width="130px"></asp:TextBox>
                    <asp:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDOB">
                    </asp:CalendarExtender>
                    <asp:Label ID="lbldFormat0" runat="server" 
                        style="color: #FF0000; font-size: x-small;" Text="(MM/dd/yyyy)"></asp:Label>
                </td>
                <td class="style1">
                    <asp:Label ID="lblSex" runat="server" style="font-size: small" Text="Gender"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:DropDownList ID="ddlSex" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblEmailID1" runat="server" style="font-size: small" 
                        Text="Email ID"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtEmailID" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmailID" ErrorMessage="invalid e-mail " 
                        Font-Size="X-Small" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style1">
                    <asp:Label ID="lblEmailID2" runat="server" style="font-size: small" 
                        Text="Town/City"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txttowncity" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td style="width: 200px; height: auto;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName4" runat="server" style="font-size: small" 
                        Text="Correspondence Address"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:TextBox ID="txtcorrespondence" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName5" runat="server" style="font-size: small" 
                        Text="Permanent Address"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:TextBox ID="txtpermanentaddress" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName6" runat="server" style="font-size: small" 
                        Text="Reference By"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtreferenceby" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:Label ID="lblStudentName7" runat="server" style="font-size: small" 
                        Text="Reference Description"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtrefdescription" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" valign="top">
                    <asp:Label ID="lblFollowUpRemarks" runat="server" style="font-size: small" 
                        Text="FollowUp Remarks"></asp:Label>
                </td>
                <td class="style6" colspan="3" valign="top">
                    <asp:TextBox ID="txtFollowupRemarks" runat="server" Height="35px" 
                        onblur="return RanaProperCase(this);" style="text-decoration:top; font-size: x-small" 
                        Width="625px" TextMode="MultiLine" ></asp:TextBox>
                    <br />
                    <br />
                    <asp:Panel ID="panelgvFollowup" runat="server" style="Height:auto ; width:633px;" >
                        <asp:GridView ID="gvFollowup" runat="server" Height="16px" Width="633px" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            AutoGenerateColumns="False" style="font-size: small">
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="DateEntry" HeaderText="Date"  >
                                    <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FollowupRemarks" HeaderText="Followup Remarks"  >
                                    <HeaderStyle BorderStyle="None" HorizontalAlign="Left" Width="500px" />
                                    <ItemStyle HorizontalAlign="Left" Width="500px" />
                                </asp:BoundField>
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
                </td>
            </tr>
            <tr>
                <td class="style4" valign="top">
                    Upload Image</td>
                <td class="style6" colspan="3" valign="top">
                    <asp:FileUpload ID="FileUpload1" runat="server"  />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
    <ProgressTemplate>
        Please wait. . . . . . . . . .&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <img src="../images/progressbar.gif" style="width: 212px; height: 12px" />
    </ProgressTemplate>
    </asp:UpdateProgress>
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Update" Height="24px" 
        Width="90px" CssClass="Allbuttons" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnConfirmation" runat="server" Text="Confirmation Letter" 
        Width="140px" CssClass="Allbuttons" Height="24px" Visible="False" />
    </div>
    
    
    
    
    
  <div id="popup" style="display: none; padding: 10px;  width : 370px; height:300px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 250px; left: 493px;">
        
     <div id="datainsert" style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;overflow:auto" >
            
          <table >
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglCategory();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                       
                        
                        <asp:CheckBoxList ID="ChkliCourse" runat="server" RepeatLayout="Table" RepeatDirection="Vertical" style="text-align:left;" RepeatColumns="1" CellSpacing="20"></asp:CheckBoxList>
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False"  OnClick="ButtonInsSave_Click" />
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
</div>

</asp:Content>




