<%@ Page Title="Enquiries" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" EnableEventValidation="true" AutoEventWireup="false" CodeFile="~/Admin/Enquiry.aspx.vb" Inherits="Enquiry" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
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
    function changevalues() {
    var adm = document.getElementById() 
    
    
    }

    </script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="Webcam_Plugin/jquery.webcam.js"></script>
    
   <script src='<%=ResolveUrl("~/Webcam_Plugin/jquery.webcam.js") %>' type="text/javascript"></script>
    <script type="text/javascript">
        var pageUrl = '<%=ResolveUrl("~/Admin/Enquiry.aspx") %>';
        $(function myfunction() {
            jQuery("#webcam").webcam({
                width: 320,
                height: 240,
                mode: "save",
                swffile: '<%=ResolveUrl("~/Admin/Webcam_Plugin/jscam.swf") %>',
                debug: function(type, status) {
                    $('#camStatus').append(type + ": " + status + '<br /><br />');
                },
                onSave: function(data) {
                    $.ajax({
                        type: "POST",
                        url: pageUrl + "/GetCapturedImage",
                        data: '',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(r) {
                        $("[id*=imgCapture]").css("visibility", "visible");
                        $("[id*=imgCapture]").attr("src", r.d);
                        },
                        failure: function(response) {
                            alert(response.d);
                        }
                    });
                },
                onCapture: function() {
                    webcam.save(pageUrl);
                }
            });
        });
        function Capture() {
            webcam.capture();
            return false;
        }
    </script>

    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>
    
    <div id="main" style="width: 100%; height:1650px">
<h3 class="hz3" style="margin: 0px"> Students Enquiries</h3>
<div id="option"        
          
            style="padding: 5px; text-align: center; vertical-align: middle; height: auto;"> 
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblmessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
     <asp:Label ID="lblmessage1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            Please wait. . . . . . . . .<br />
            <img src="../images/progressbar.gif" style="width: 248px; height: 12px" />
        </ProgressTemplate>
    </asp:UpdateProgress>
    <br />
    
    
 </div>
<div id="admissions"> 
    <asp:UpdatePanel ID="fdggs" runat ="server" >
        <ContentTemplate>
               <asp:Panel ID="Panel3" runat="server" GroupingText="Enquiry Details" 
        Height="542px" HorizontalAlign="Left" 
        style="font-size: small; font-family: Arial;">
        <table ID="tabregus" 
            style="width:99%; height: 100px; background-color: #CCCCCC;">

            <tr>
                <td>

                </td>
                <td>
                   
                </td>
               
            </tr>
            <tr>
                <td class="style5" colspan="4">
                    <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">
                        <asp:Button ID="Button1" runat="server" CssClass="Allbuttons" Height="24px" 
                            Text="All Enquiries" Width="120px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Student Detail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txtsearch" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server"  CssClass="Allbuttons" Height="24px" 
                             Text="Search" />
                        <asp:Image ID="Image1" runat="server"  Width="125px" Height="100px" style="float:right" />
                    </h3>
                     
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Session</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" 
                        style="font-size: x-small" Width="113px">
                         <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Jan-June</asp:ListItem>
                        <asp:ListItem>July-Dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="drpsession" runat="server" Height="22px" 
                        style="font-size: x-small" Width="82px" Visible="False">
                    </asp:DropDownList>
                    </td>
                <td class="style21">
                    &nbsp;</td>
                <td style="width: 200px; height: auto;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Franchise Code</td>
                <td class="auto-style5">
                
                    <%--<asp:DropDownList ID="drpfranchisecode" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px">
                        <asp:ListItem>Select Code</asp:ListItem>
                        <asp:ListItem>Mohali</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Shimla</asp:ListItem>
                        <asp:ListItem>Bathinda</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Singapore</asp:ListItem>
                    </asp:DropDownList>--%>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF">TNK101</asp:TextBox>
                </td>
                <td class="style21">
                    Brand Name</td>
                <td style="width: 200px; height: auto;">
                
                  <%--  <asp:DropDownList ID="drpbrandname" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px">
                        <asp:ListItem>Select Brand Name</asp:ListItem>
                        <asp:ListItem>ThinkNEXT Technologies Pvt. Ltd.</asp:ListItem>
                        <asp:ListItem>Competition Maestro</asp:ListItem>
                        <asp:ListItem>Gate Maestro</asp:ListItem>
                        <asp:ListItem>Think English</asp:ListItem>
                        <asp:ListItem>Managment Internship</asp:ListItem>
                    </asp:DropDownList>--%>
                    <asp:TextBox ID="txtbrand" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF">THINKNEXT TRAINING</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="lblStudentName0" runat="server" style="font-size: small" 
                        Text="Enquiry No"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEnquiryNo" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                    &nbsp;
                </td>
                <td class="style11">
                    <asp:Label ID="lblStudentName1" runat="server" style="font-size: small" 
                        Text="Mode Of Enquiry "></asp:Label>
                </td>
                <td class="style12">
                    <asp:DropDownList ID="ddlmodeofEnquiry" runat="server" 
                        AppendDataBoundItems="True" Height="20px" style="font-size: x-small" AutoPostBack ="true" 
                        Width="186px">
                    </asp:DropDownList>
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
                    <asp:Label ID="Label2" runat="server" style="font-size: small" Text="Qualification"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtcourse" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style21">
                    <asp:Label ID="Label3" runat="server" style="font-size: small" Text="Batch"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtbatch" runat="server" Height="14px" 
                        style="font-size: small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server" style="font-size: small" Text="IDNo"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtIDNo" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" 
                        Width="180px" BackColor="#FFFFCC" ForeColor="#0066FF" ReadOnly="True"></asp:TextBox>
                    &nbsp;</td>
                <td class="style21">
                    <asp:Label ID="Label8" runat="server" style="font-size: small" 
                        Text="Uni Roll No"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtIUniRollNo" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small;" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label5" runat="server" style="font-size: small" 
                        Text="Applied For"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAddCourse" runat="server" Height="20px" ReadOnly="true" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                 <input class="Allbuttons"  style="width:18px; height:18px; " name="reset" onclick="togglCategory();" type="button" value="..."/>
                </td>
                <td class="style19">
                    <asp:Label ID="Label12" runat="server" style="font-size: small" 
                        Text="Representative Name"></asp:Label></td>
                <td class="style20">
                    <asp:TextBox ID="txtRepresentativeName" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" 
                        style="font-size: x-small" Width="180px"></asp:TextBox></td>
            </tr>

             <tr>
                <td class="style17">
                    Scholarship Test</td>
                <td class="auto-style7">
                  
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="35px" RepeatDirection="Horizontal" Width="115px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem Selected="True">No</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                      <asp:TextBox ID="Txtdate" placeholder="select Date" runat="server" style="font-size: x-small" Width="180px"  Height="14px" Enabled="False"></asp:TextBox><asp:Label ID="dateformat" runat="server" Text="(dd/MM/yyyy)"  ForeColor="Red"></asp:Label>
                   <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Txtdate" Format="dd/MM/yyyy"></asp:CalendarExtender>
                 
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" placeholder="scholarship percentage" runat="server" Width="183px" Enabled="False"></asp:TextBox>
                 
                </td>
                 
                <td class="style19">
                    Fee Commitment</td>
                <td class="style20">
                    <asp:TextBox ID="txtfeecommitment" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" 
                        style="font-size: x-small" Width="180px"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td class="style4">
                    <asp:Label ID="lblDOB1" runat="server" style="font-size: small" 
                        Text="Duration"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="drptrainingtype" runat="server" Height="20px" 
                        style="font-size: x-small" Width="186px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>6 Months</asp:ListItem>
                        <asp:ListItem>6 Weeks</asp:ListItem>
                        <asp:ListItem>3 Months</asp:ListItem>
                        <asp:ListItem>2 Months</asp:ListItem>
                        <asp:ListItem>1 Months</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style21">
                    <asp:Label ID="Label13" runat="server" style="font-size: small" 
                        Text="Seminar Person"></asp:Label> </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtSeminarPerson" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" 
                        style="font-size: x-small" Width="180px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style3">
                    Visited</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rdbVisited" runat="server" Width="135px" AutoPostBack="True" RepeatDirection="Horizontal" >
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
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
                <td class="auto-style5">
                    <asp:TextBox ID="txtStudentName" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style21">
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
                <td class="auto-style5">
                    <asp:TextBox ID="txtMotherName" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" 
                        Width="180px"></asp:TextBox>
                    &nbsp;</td>
                <td class="style21">
                    <asp:Label ID="lblFatherMobileNo0" runat="server" style="font-size: small" 
                        Text="Alternate Contact No"></asp:Label>
                </td>
                <td style="width: 200px; height: auto;">
                    <asp:TextBox ID="txtContactNumber" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px" MaxLength="10"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName2" runat="server" style="font-size: small" 
                        Text="Student Mobile No."></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtstudentmobNo" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px" MaxLength="10"></asp:TextBox>
                </td>
                <td class="style21">
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
                    <asp:Label ID="lblEmailID0" runat="server" style="font-size: small" 
                        Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmailID" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmailID" ErrorMessage="invalid e-mail " 
                        Font-Size="X-Small" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp;</td>
                
                <td class="style21">
                   <asp:Label ID="lblWappno" runat="server" Text="WhatsApp No." style="font-size: small" ></asp:Label></td>
                <td style="width: 200px; height: auto;">
                   <asp:TextBox ID="txtWhatsappno" runat="server" Height="14px" style="font-size: x-small" Width="180px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblEmailID1" runat="server" style="font-size: small" 
                        Text="Town/City"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txttown" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
                <td class="style21">
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
                    <asp:Label ID="lblDOB" runat="server" Text="DOB" style="font-size: small"></asp:Label>&nbsp;</td>
                <td class="auto-style5">
                   <asp:TextBox ID="txtDOB" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>
                   <asp:CalendarExtender ID="Clder" runat="server" TargetControlID="txtDOB" Format="dd/MM/yyyy"></asp:CalendarExtender>
                    &nbsp;</td>
                <td class="style21">
                    <asp:Label ID="lbldoc" runat="server" Text="Pic Upload" style="font-size: small"></asp:Label>&nbsp;
                    &nbsp;</td>
                <td style="width: 200px; height: auto;">
                    <asp:FileUpload ID="Filedoc" runat="server" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName5" runat="server" style="font-size: small" 
                        Text="Permanent Address"></asp:Label>
                </td>
                <td class="style6" colspan="3">
                    <asp:TextBox ID="txtpermanentaddress" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="500px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName4" runat="server" style="font-size: small" 
                        Text="Correspondence Address"></asp:Label>
                    <br />
                </td>
                <td class="style2" colspan="3">
                    <asp:CheckBox ID="chkaddress" runat="server" AutoPostBack="True" /><asp:Label ID="lbl" 
                        runat="server" Text="same as Above" Font-Size="Small" ForeColor="Red"></asp:Label>
                    <asp:TextBox ID="txtcorrespondence" runat="server" Height="14px" 
                        onblur="return RanaProperCase(this);" style="font-size: x-small" Width="500px"></asp:TextBox>
                </td>
            </tr>
            <tr> <!-- ======================Refrence details====================== --> 
              
                <td class="style3" align="center"  colspan="4">
                <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;"> 
                    Reference Detail </h3></td>
            </tr>
            
            <tr> 
                 <td class="style3" colspan="4">
                <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;"> 
                    <asp:Label ID="lblClgRef" runat="server" Text="College Refrence"></asp:Label> </h3>
                    </td>
            </tr>
            <tr>
                
                <td><asp:Label ID="lblname1" runat="server" Text="Name"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtname1" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblDesignation1" runat="server" Text="Designation"></asp:Label></td>
                 <td><asp:TextBox ID="txtdesignation1" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="lblcontact1" runat="server" Text="Contact"></asp:Label> &nbsp;</td>
                <td class="auto-style9"> <asp:TextBox ID="txtcontact1" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td class="auto-style8"><asp:Label ID="lblemail1" runat="server" Text="Email"></asp:Label></td>
                 <td class="auto-style8"><asp:TextBox ID="txtemail1" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>

            </tr>
            <tr>
                
                <td><asp:Label ID="lblname2" runat="server" Text="Name"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtname2" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblDesignation2" runat="server" Text="Designation"></asp:Label></td>
                 <td><asp:TextBox ID="txtdesignation2" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblcontact2" runat="server" Text="Contact"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtcontact2" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblemail2" runat="server" Text="Email"></asp:Label></td>
                 <td><asp:TextBox ID="txtemail2" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>

            </tr>

            <tr>
                 <td class="style3" colspan="4"><br />
                <h3 style="margin: 0px; padding: 0px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;"> 
                    <asp:Label ID="Label11" runat="server" Text="Friend Refrence"></asp:Label> </h3>
                    </td>
            </tr>
            <tr>
                
                <td><asp:Label ID="lblFrndName1" runat="server" Text="Name"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtFrndName1" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblFrndContact1" runat="server" Text="Contact"></asp:Label></td>
                 <td><asp:TextBox ID="txtFrndContact1" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFrndName2" runat="server" Text="Name"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtFrndName2" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblFrndContact2" runat="server" Text="Contact"></asp:Label></td>
                 <td><asp:TextBox ID="txtFrndContact2" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>

            </tr>
            <tr>
                
                <td><asp:Label ID="lblFrndName3" runat="server" Text="Name"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtFrndName3" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblFrndContact3" runat="server" Text="Contact"></asp:Label></td>
                 <td><asp:TextBox ID="txtFrndContact3" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFrndName4" runat="server" Text="Name"></asp:Label> &nbsp;</td>
                <td class="auto-style6"> <asp:TextBox ID="txtFrndName4" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>
                <td><asp:Label ID="lblFrndContact4" runat="server" Text="Contact"></asp:Label></td>
                 <td><asp:TextBox ID="txtFrndContact4" runat="server" style="font-size: x-small" Width="180px"  Height="14px"></asp:TextBox>&nbsp;</td>

            </tr>
            <tr>
                
                <td class="style3" colspan="4"><asp:Label ID="lblsearch" runat="server" 
                        Text="Search Reference:" style="font-weight: 700"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtRefSearch" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px" AutoPostBack="True"></asp:TextBox>
                        <asp:AutoCompleteExtender ID="autocom" runat="server" TargetControlID="txtRefSearch" ServiceMethod="SearchCustomers" MinimumPrefixLength="1"
                        EnableCaching="false" CompletionSetCount="10" FirstRowSelected = "true" CompletionInterval="0"></asp:AutoCompleteExtender>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblStudentName6" runat="server" style="font-size: small" 
                        Text="Reference By"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtreferenceby" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
                <td class="style21">
                    <asp:Label ID="lblContacts" runat="server" Text="Contact No."  style="font-size: small"></asp:Label></td>
                <td class="style2">
                    <asp:TextBox ID="txtrefdescription" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                  <asp:Label ID="lblEmails" runat="server" Text="Email ID"  style="font-size: small"></asp:Label></td>
                <td class="auto-style5">
                                       <asp:TextBox ID="txtEmailS" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
                <td class="style21">
                   <asp:Label ID="lbldes" runat="server" Text="Designation" style="font-size: small"></asp:Label></td>
                <td class="style2">
                                        <asp:TextBox ID="txtDesig" runat="server" Height="14px" 
                        style="font-size: x-small" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:CheckBox ID="Chkref" runat="server" style="font-weight: 700" 
                        Text="Another Referece" AutoPostBack="True" />
                </td>
                <td class="auto-style5">
                    <asp:CheckBox ID="Chksms" runat="server" Text="ScholarshipSms" Font-Bold="True" />
                </td>
                <td class="style21">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
       <table id="tblref" runat="server" visible="false" style="width: 815px; height: 74px; background-color: rgb(204, 204, 204); margin-top: 3px; margin-left: 0px;">
    <tr>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" 
                        style="font-size: small; font-family: Arial;float:left;" Text="Reference By"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtRef2" runat="server" Height="14px" style="font-size: x-small;float:left;margin-left:6px" Width="180px"></asp:TextBox>
                </td>
                <td class="style21">
                    <asp:Label ID="Label6" runat="server" Text="Contact No."  
                        style="font-size: small; font-family: Arial;float:left;margin-left:22px"></asp:Label></td>
                <td class="style2">
                    <asp:TextBox ID="txtrefContact2" runat="server" Height="14px" 
                        style="font-size: x-small;float:left;margin-left:27px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                  <asp:Label ID="Label9" runat="server" Text="Email ID"  
                        style="font-size: small; font-family: Arial;float:left;"></asp:Label></td>
                <td class="style6">
                                       <asp:TextBox ID="txtref2email" runat="server" Height="14px" 
                        style="font-size: x-small;float:left;margin-left:6px;" Width="180px"></asp:TextBox>
                </td>
                <td class="style21">
                   <asp:Label ID="Label10" runat="server" Text="Designation" 
                        style="font-size: small; font-family: Arial;float:left;margin-left:22px;"></asp:Label></td>
                <td class="style2">
                                        <asp:TextBox ID="txtref2desig" runat="server" Height="14px" 
                        style="font-size: x-small;float:left;margin-left:27px;" Width="180px"></asp:TextBox>
                </td>
            </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
   
    </table>
                   <br />
                   <br />
                   <br />
    </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
 <br />
    <div style="margin-top: 651px;">
        <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td align="center">
                <u>Live Camera</u>
            </td>
            <td>
            </td>
            <td align="center">
                <u>Captured Picture</u>
            </td>
        </tr>
        <tr>
            <td>
                <div id="webcam">
                </div>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                
               <asp:Image ID="imgCapture" runat="server" Style="visibility:visible; width: 320px;
                    height: 240px" />
            </td>
        </tr>
       
    </table>
    <br />
<asp:Button ID="btnCapture" Text="Capture" runat="server" OnClientClick="return Capture();"  />
    <br />
        <%-- <asp:PostBackTrigger ControlID ="btnPrintPreview" />--%>
    </div>
    
    <br />    
    <br />
    
    <asp:Button ID="btnSave" runat="server" CssClass="Allbuttons" Height="24px" 
                        Text="Save" Width="90px"  />
    <asp:Button ID="btnUpdate" runat="server" CssClass="Allbuttons" Height="24px" 
                        Text="Update" Width="90px" />
    </div>




</div>

<div id="popup" 
        
            style="display:none; padding: 10px;  width : 370px; height:300px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 50px; left: 493px;">
        
        <div id="datainsert" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;overflow:auto" >
            
            
            <table >
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                  <%--  <a onclick="togglCategory();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Closetom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />--%>
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



   <%-- </ContentTemplate>
    </asp:UpdatePanel>--%>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            height: auto;
            }
        .style3
        {
            height: 33px;
        }
        .style4
        {
            height: auto;
            width: 147px;
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            height: auto;
            width: 264px;
        }
        .style7
        {
            height: 21px;
            width: 147px;
        }
        .style8
        {
            height: 21px;
        }
        .style9
        {
            width: 147px;
        }
        .style10
        {
            width: 268px;
        }
        .style11
        {
            width: 149px;
        }
        .style12
        {
            width: 200px;
        }
        .style13
        {
            height: 20px;
            width: 147px;
        }
        .style14
        {
            height: 20px;
            width: 268px;
        }
        .style15
        {
            height: 20px;
            width: 149px;
        }
        .style16
        {
            width: 200px;
            height: 20px;
        }
        .style17
        {
            height: 18px;
            width: 147px;
        }
        .style18
        {
            height: 18px;
            width: 268px;
        }
        .style19
        {
            height: 18px;
            width: 149px;
        }
        .style20
        {
            width: 200px;
            height: 18px;
        }
        #admissions
        {
            height: 792px;
        }
        .style21
        {
            height: auto;
            width: 149px;
        }
        .style22
        {
            height: auto;
            width: 268px;
        }
        .auto-style1 {
            height: 31px;
            width: 147px;
        }
        .auto-style2 {
            height: 31px;
            width: 233px;
        }
        .auto-style3 {
            height: 31px;
            width: 149px;
        }
        .auto-style4 {
            width: 200px;
            height: 31px;
        }
        .auto-style5 {
            height: auto;
            width: 233px;
        }
        .auto-style6 {
            width: 233px;
        }
        .auto-style7 {
            height: 18px;
            width: 233px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 233px;
            height: 27px;
        }
        </style>

</asp:Content>


