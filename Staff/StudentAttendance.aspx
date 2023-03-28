<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master"  AutoEventWireup="true" CodeFile="StudentAttendance.aspx.cs" Inherits="Admin_StudentAttendance" Title="Student Attendance Report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  id="Main">
<table id="tbshow" style="width:75%; height:auto">
<tr>
<td class="style1">&nbsp;</td>
<td class="style3">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="118px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false" >TNK101</asp:TextBox>
    </td>
<td class="style2">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="style1">Student Id No.:</td>
<td class="style3">
    <asp:TextBox ID="txtIDNo" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
<td class="style2">&nbsp;</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td class="style1">&nbsp;</td>
<td class="style3">
    &nbsp;</td>
<td class="style2">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="style1">Date(From):</td>
<td class="style3">
    <asp:TextBox ID="txtdateFrom" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="txtdateFrom_CalendarExtender" runat="server" Enabled="true" TargetControlID="txtdateFrom"></asp:CalendarExtender>
    &nbsp;&nbsp;&nbsp;&nbsp; Date(To):</td>
<td class="style2">
    <asp:TextBox ID="txtDateTo" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="txtDateTo_CalendarExtender" Enabled="true" TargetControlID="txtDateTo"
        runat="server"      >
    </asp:CalendarExtender>
   
    
    </td>
<td>
    <asp:Button ID="btnshow" runat="server" Text="Show" Width="71px" 
        onclick="btnshow_Click" CssClass="Allbuttons" style="margin-top:13px" />
   
    
    </td>
</tr>
<tr>
<td class="style1"></td>
<td class="style3">
    &nbsp;</td>
<td class="style2"></td>
<td></td>
</tr>
<tr>
<td class="style1">&nbsp;</td>
<td class="style3">
    <asp:Button ID="btnExcel" runat="server" Text="Export to Excel" 
        onclick="btnExcel_Click" CssClass="Allbuttons" />
    </td>
<td class="style2">
    <asp:Button ID="btnword" runat="server" Text="Export to MS Word" 
        onclick="btnword_Click" CssClass="Allbuttons" />
    
                                </td>
<td>
    <asp:Button ID="btnpdf" runat="server" Text="Export to PDF" 
        onclick="btnpdf_Click" Visible="False" CssClass="Allbuttons" />
                                </td>
</tr>
</table>
<div id="grid" style="margin-left:10px">
<p>
    <asp:Label ID="lblmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    &nbsp;&nbsp;
        
</p>
<div style="overflow:auto;left: 493px;" >
<div style="width: 323px; margin-left: 135px;">
<asp:Panel ID="pnld" runat="server" GroupingText="Student  Detail" Visible="false">
    <table>
    <tr>
    <td>
    Student IDNo:
    </td>
    <td>
    <asp:Label ID="lblID" runat="server" ForeColor="Green"></asp:Label>
    </td>
    
    </tr>
    <tr>
    <td>Student Name:</td>
    <td><asp:Label ID="lblSname" runat="server" ForeColor="Green"></asp:Label></td>
    </tr>
    <tr>
    <td>Batch Name:</td>
    <td><asp:Label ID="lblBName" runat="server" ForeColor="Green"></asp:Label></td>
    </tr>
    <tr>
    <td>
    Father Name:
    </td>
    <td>
    <asp:Label ID="lblFname" runat="server" ForeColor="Green"></asp:Label>
    </td>
    </tr>
    </table>
    </asp:Panel>
    </div>
<div style="width:354px;margin-left:133px">
  <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        AutoGenerateColumns="False">
        <RowStyle ForeColor="#330099" BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lblDate" runat="server" Text='<%# Eval("AttDate") %>'></asp:Label>
                    <br />
                    <asp:Label ID="lblBatch" runat="server" Text='<%# Eval("BatchGroup") %>' Visible="false"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LectureDelievered">
                <ItemTemplate>
                    <asp:Label ID="lbllectattdate" runat="server" 
                        Text='<%# Eval("LectDelievered") %>'></asp:Label>
                    <br />
                    <asp:Label ID="lblFathername" runat="server" Text='<%# Eval("FatherName") %>' 
                        Visible="False"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LectureAttended">
                <ItemTemplate>
                    <asp:Label ID="lblLectureatt" runat="server" Text='<%# Eval("lectAttended") %>'></asp:Label>
                    <br />
                    <asp:Label ID="lblStuname" runat="server" Text='<%# Eval("StudentName") %>' 
                        Visible="False"></asp:Label>
                    <br />
                    <asp:LinkButton ID="lbDetail" runat="server" CommandName="Detail" 
                        Visible="False">Detail</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    </div>
   
 </div>
</div>
<div id="popup" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 512px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 128px; left: 493px;">
        
        <div id="Div2" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;" 
            class="corner">
            
            
            <table class="corner">
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="Label1" style="margin-right:10px;" runat="server" ForeColor="#CC3300"></asp:Label>
                        <%--<asp:Button ID="btnexport" runat="server" CssClass="Allbuttons" 
                    Text="Export to Excel" Visible="false" />--%>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglSession();" href="#" id="a1" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                       
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        
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

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 95px;
        }
        .style2
        {
            width: 148px;
        }
        .style3
        {
            width: 234px;
        }
    </style>
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
                width: 350,
                height: 450,
                left:493,
                freezesize: 0
            });
        }





        function togglSession() {
            document.getElementById('<%= lblmsg.ClientID %>');
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Session';

            document.getElementById('<%= GridView1.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }


        
       </script>


</asp:Content>


