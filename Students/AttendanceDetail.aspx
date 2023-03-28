<%@ Page Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/AttendanceDetail.aspx.vb" Inherits="AttendanceDetail" title="Attendance Detail" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 287px;
        }
    .style3
    {
        width: 172px;
    }
    .style4
    {
        width: 126px;
    }
    .style5
    {
        width: 97px;
    }
    .style6
    {
        width: 110px;
    }
    .style7
    {
        width: 112px;
    }
    </style>
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 839px; height: auto">
    <div id="pageicons" style="width: 100%; height: 44px;">
   
       <table id="tabpageicon" style="width: 97%; height: 41px;">
           <tr>
               <td>
               </td>
               <td class="style1">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
               <td style="width: 79px">
                  <img src="../pageicon/attendence.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td style="width:389px;">
                  <asp:Label ID="Label1" runat="server" Text="Attendance Detail"  
                        
                       style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td style="width: 516px">
               </td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>
    
<table style="height: auto; width: 824px;">
 
   
    <tr>
        <td valign="top" style="height: 3px" align="center">
           </td>
    </tr>
    <tr>
        <td align="center" valign="top" style="height: auto">
               
               
                
                    <br />
            </td>
           
          
           
    </tr>
    <tr>
        <td align="center" valign="top" style="height: auto">
               
               
                <asp:Panel ID="Panel1" runat="server" Height="400px" Width="834px" 
                 ScrollBars="Auto">
                <asp:GridView ID="gvDisplay" runat="server" Width="100%" CellPadding="4" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                        BorderStyle="None" BorderWidth="1px"   >
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
         <asp:TemplateField HeaderText="Course">
            <ItemTemplate>
                <asp:Label ID="lblCourse" runat="server" Text='<%# Eval("Course") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Batch">
            <ItemTemplate>
                <asp:Label ID="lblBatch" runat="server" Text='<%# Eval("BatchGroup") %>'></asp:Label>
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
               </asp:Panel>

            </td>
    </tr>
  
    
  
    </table>
    <asp:Panel ID="pnldetails" runat="server" group="Single Attendence Detail" Visible="false">
<div style="overflow:auto;height:450px;width:300px;margin-left: 271px;">
   
</div>

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
                        <asp:Button ID="btnexport" runat="server" CssClass="Allbuttons" 
                    Text="Export to Excel" Visible="false" />
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
                         <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <RowStyle ForeColor="#330099" BackColor="White" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
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
        width: 469px;
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
                width: 300,
                height: 450,
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



</asp:Content>


