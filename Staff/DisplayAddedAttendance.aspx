<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="DisplayAddedAttendance.aspx.cs" Inherits="Admin_DisplayAddedAttendance" Title="Display Attendance" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


 <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script> 
<script type="text/javascript" src="../js/gridviewScroll.min.js"></script>  
   
    
    <script type="text/javascript" language="javascript">
        $(document).ready(function() {

            gridviewScroll();
            Gridviewscrolling();
        });

        function gridviewScroll() {
            $('#<%=gvDisplay.ClientID%>').gridviewScroll({
                width: 800,
                height: 600,
                freezesize: 0
            });
        }
        function Gridviewscrolling() {
            $('#<%=GridView1.ClientID%>').gridviewScroll({
                width:300,
                height: 414,
                freezesize: 0
            });
        }


        function togglSession() {
            document.getElementById('<%= lblMsg.ClientID %>');
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


    <style type="text/css">
        .style1
        {
            width: 219px;
        }
    .style2
    {
        width: 116px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table width ="100%" >
<tr>
<th colspan ="4">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </th>
</tr>
<tr>
<th colspan ="4"><center><h2>Display  Attendance</h2></center></th>
</tr>
</table>
<asp:Panel ID="pnldetail" runat="server" GroupingText="Attendance Detail">
<table style="margin-left:50px">
<tr>
<td class="style2">&nbsp;</td>


    <td class="style1">
        Select Session&nbsp;<asp:DropDownList ID="ddlsession" runat="server" 
            AutoPostBack="True" onselectedindexchanged="ddlsession_SelectedIndexChanged" 
            Width="100px">
            <asp:ListItem>Select Session</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    <td>
        Select Batch&nbsp;<asp:DropDownList ID="ddlbatch" runat="server" Width="100px">
            <asp:ListItem>Select Batch</asp:ListItem>
        </asp:DropDownList>
    </td>


    <td>
        &nbsp;</td>


    <td>
        &nbsp;<asp:Button ID="btnshow" runat="server" CssClass="Allbuttons" Height="25px" 
            onclick="btnshow_Click" Text="Show" Width="93px" />
    </td>


</tr>
<tr>
<td class="style2">
    
    &nbsp;</td>

    <td class="style1">
        </td>
    <td>
        &nbsp;</td>
    <td>
        &nbsp;</td>

    <td>
        &nbsp;</td>

    <td>
        &nbsp;</td>

</tr>


</table>


</asp:Panel>
<asp:Label ID="lblmessage" runat="server" ForeColor="#FF3300"></asp:Label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
<br />
<br />
<asp:Panel ID="pnlgrid" runat="server" GroupingText="Attendence Precentage" Visible="false">
 <asp:Button ID="btnExport" runat="server" Text="Export To Exel" 
        CssClass="Allbuttons" onclick="btnExport_Click" Visible="false" style="margin-left:700px;height:27px"/>
        <br />
        <br />
        
<asp:GridView ID="gvDisplay" runat="server" Width="100%" CellPadding="4" AutoGenerateColumns="False" 
        onrowcommand="gvDisplay_RowCommand" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
    <RowStyle BackColor="White" ForeColor="#330099" />
    <Columns>
        <asp:TemplateField HeaderText="IDNo">
            <ItemTemplate>
                <asp:Label ID="lblIDNo" runat="server" Text='<%# Eval("IDNo") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Student Name">
            <ItemTemplate>
                <asp:Label ID="lblStudentname" runat="server" Text='<%# Eval("Studentname") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Father Name">
            <ItemTemplate>
                <asp:Label ID="lblFathername" runat="server" Text='<%# Eval("fathername") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="TotalDeliverLecture">
            <ItemTemplate>
                <asp:Label ID="lblTotalDeliverLecture" runat="server" Text='<%#Eval("Totaldeliverlecture") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="TotalAttendLecture">
            <ItemTemplate>
                <asp:Label ID="lbltotalattendlecture" runat="server" 
                    Text='<%# Eval("totalattendlecture") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Precentage">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("precentage") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Detail">
            <ItemTemplate>
                <asp:LinkButton ID="lbEdit" runat="server" CommandName="Detail" Text="Detail" ></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <br />
    <br />
   
</asp:Panel>

          
<asp:Panel ID="pnldetails" runat="server" group="Single Attendence Detail" Visible="false">

</asp:Panel>

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
                        <asp:Label ID="lblMsg" style="margin-right:10px;" runat="server" ForeColor="#CC3300"></asp:Label>
                        <br />
                        <asp:Button ID="btneExport" runat="server" CssClass="Allbuttons" Text="Export to Excel" Visible="false" /> 
                       Name: <asp:Label ID="lblname" runat="server" ForeColor="Green" Visible="false" 
            style="font-weight: 700"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Batch: <asp:Label ID="lblBatch" runat="server" ForeColor="Green" Visible="false" 
            style="font-weight: 700;margin-right:69px"></asp:Label>
                    <br />
                 ID No: <asp:Label ID="lblid" runat="server" ForeColor="Green" style="font-weight: 700;margin-right:58px" ></asp:Label>
                    
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
                         <%--<div style="overflow:auto;height:414px;width:300px;margin-left:15px;">--%>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <RowStyle ForeColor="#330099" BackColor="White" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
<%--</div>
--%>
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

