<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="DailyAttendanceDetail.aspx.cs" Inherits="Admin_DailyAttendanceDetail" Title="Attendance Detail" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script> 
<script type="text/javascript" src="../js/gridviewScroll.min.js"></script>  
   
    
    <script type="text/javascript" language="javascript">
        $(document).ready(function() {
            gridviewScroll();
        });

        function gridviewScroll() {
            $('#<%=GridView1.ClientID%>').gridviewScroll({
                width: 800,
                height: 300,
                freezesize: 0
            });
        } 
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

<div style="Height:400px;margin-bottom:5px" Width="500px">
<h3 class="hz3" style="margin: 0px">Daily Attendance Report</h3>


 <asp:Label id="lbltotalrecord"  runat="server" ForeColor="Red" Visible="false" 
        style="font-weight: 700"  ></asp:Label>
 <br />
 <br />
 
    <b>Select Date</b>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtdate" 
        runat="server" Height="31px" Width="185px" BackColor="#F5F6CE" ></asp:TextBox>
 
 
 <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server"  TargetControlID="txtdate" Format="MM/dd/yyyy" ></cc1:CalendarExtender>
 <asp:Button ID="btnsearch" runat="server" Text="Show Attendence" 
        CssClass="Allbuttons" onclick="btnsearch_Click" Height="30px" 
        Width="137px"/>
        <br />
        <br />
        <br />
        
 <asp:Panel ID="Panel4" runat="server" GroupingText="Daily Attendence Detail" 
        Height="200px" Width="838px" >
                                            
   
   

    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
          BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
          ForeColor="Black" GridLines="Vertical" style="overflow:auto">
        <RowStyle BackColor="#F7F7DE" />
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>

    <br />
    <br />
   
      <asp:Button ID="btnexporttoexl" runat="server" Text="Export To Exel" 
    CssClass="Allbuttons" onclick="btnexporttoexl_Click" Height="34px" 
        Width="159px"/>
    </asp:Panel>
    
    
   
      </div>
    
   
  <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />


</asp:Content>

