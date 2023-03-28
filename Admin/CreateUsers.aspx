<%@ Page  Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="~/Admin/CreateUsers.aspx.vb" Inherits="CreateUsers" Title="Create Users" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>

<script type="text/javascript" >
    
          function toggle() {
                //alert("text");
                var state = document.getElementById('<%=popup.ClientID %>').style.display;
             
             if (state == 'block') {

                 document.getElementById('<%=popup.ClientID %>').style.display = 'none';
             } else {
             document.getElementById('<%=popup.ClientID %>').style.display = 'block';
             }
         };
  
   $(function() {
            var colors = ["#0099cc","#c0c0c0","#587b2e","#990000","#000000","#1C8200","#987baa","#981890","#AA8971","#1987FC","#99081E"];
             
            setInterval(function() { 
                var bodybgarrayno = Math.floor(Math.random() * colors.length);
                var selectedcolor = colors[bodybgarrayno];
                $("#color").css("background",selectedcolor);
            }, 3000);
        })
       
         
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
.gridviewstyle
{
 width:775px;
 margin-left:auto;
 margin-right:auto;
}

        .style1
        {
            width: 100%;
        }

        .style2
        {
            width: 140px;
        }

        .style3
        {
            width: 243px;
        }
        .style4
        {
            width: 85px;
        }

    </style>
     <div>
  <table width="100%">
  <tr><td>
  &nbsp;<asp:Label ID="Label3" runat="server" Text="Fcode:" Visible="False"></asp:Label></td>
  <td>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false">TNK101</asp:TextBox></td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="BName: " Visible="False"></asp:Label>
                        </td>
  
  <td>
  
                    <asp:TextBox ID="txtbrand" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">THINKNEXT TRAINING</asp:TextBox>
  
  </td>
  
  </tr>
  
  </table>
                </div>

    <div id="createuser" style="width: 100%; height: 707px">
    <h3> Create Users 
    <div id="logheader" 
        
    style="width: 98%; height: 89px; padding-top: 10px; padding-bottom: 10px;" 
            align="center"> 
    
        <table class="style1">
            <tr>
                <td class="style4" align="left">
                    &nbsp;</td>
                <td class="style2" align="left">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Select Course"></asp:Label>&nbsp;</td>
                <td align="left" class="style3">
                       <asp:DropDownList ID="ddlCourses" runat="server" Height="20px" 
                           CssClass="select" Width="200px" AutoPostBack="True">
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Android</asp:ListItem>
            <asp:ListItem>iPhone</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Web Designing</asp:ListItem>
            <asp:ListItem>Hardware &amp; Networking</asp:ListItem>
            <asp:ListItem>CCNA</asp:ListItem>
            <asp:ListItem>MCITP</asp:ListItem>
            <asp:ListItem>Embedded Systems</asp:ListItem>
            <asp:ListItem>AutoCAD</asp:ListItem>
            <asp:ListItem>Online Bidding</asp:ListItem>
            <asp:ListItem>Oracle/SQL Server</asp:ListItem>
            <asp:ListItem>Software Testing</asp:ListItem>
            <asp:ListItem>C/C++</asp:ListItem>
            <asp:ListItem>SEO</asp:ListItem>
        </asp:DropDownList>
     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</td>
                
                <td align="left">
                       &nbsp;</td>
                
            </tr>
            
            <tr>
                <td align="left" class="style4">
                    &nbsp;</td>
                <td align="left" class="style2">
                    &nbsp;</td>
                <td align="left" class="style3">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               
                <td align="left">
                      &nbsp;</td>
               
            </tr>
            
            <tr>
                <td align="left" class="style4">
                    &nbsp;</td>
                <td align="left" class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Select Login Type"></asp:Label></td>
                <td align="left" class="style3">
                      <asp:DropDownList ID="drplogintype" runat="server" Width="200px" 
        AutoPostBack="True">
       <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Student</asp:ListItem>
    </asp:DropDownList></td>
               
                <td align="left">
                      <asp:Button ID="btngeneratepassword" runat="server" CssClass="Allbuttons" 
        Text="Generate Password" Width="150px" Height="24px" 
        style="font-weight: 700; font-size: small" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="lblmessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                      <br />
               </td>
               
            </tr>
            
            <tr>
                <td align="Center" class="style4">
                    &nbsp;</td>
                <td align="Center" class="style2">
                    &nbsp;</td>
                <td align="left" class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </td>
               
                <td align="left">
                   <input class="Allbuttons"  style="height:22px; width:150px; font-weight: 700;" 
                        name="reset" onclick="toggle();" type="button" value="Create Single User" />  &nbsp;</td>
               
            </tr>
        </table>
        <br />
    
</div>

        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            Generating Password...........<br />
            <img alt="" src="../Images/progressbar.gif" style="width: 171px; height:15px;" /></ProgressTemplate>
        </asp:UpdateProgress>
        <br />
        <br />
        
        <div id="Gridview" 
            
            
            style="margin: auto; width: 98%; height: 520px; padding: 5px; text-align: center; vertical-align: top; overflow: auto;">

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Height="16px" style="font-size: small">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>

        </div>

    </div>
    <div id="popup" runat="server" style="z-index:999; display:none; " class="popupsmsemail1">
            <p id="close" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="toggle()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="Red" Text="Register for Scholarship Test"></asp:Label></p>
            <div style="height: 247px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">

<table class="tab1" align="center" border="1" id="TableR" style="width:100%;">
  <tbody><tr>
    <td width="25PX" align="left">Name</td>
    <td colspan="2" width="62%" align="left">
        <asp:TextBox ID="txtNameR" runat="server" Height="14px" Width="150px"></asp:TextBox>
        &nbsp;</td>
   
  </tr>
  <tr>
    <td>Mobile No</td>
    <td colspan="2">
        <asp:TextBox ID="txtContectR" runat="server" Height="14px" Width="150px"></asp:TextBox>
        &nbsp;</td>
  
  </tr>
  <tr>
    <td>E-mail ID</td>
    <td colspan="2">
        <asp:TextBox ID="txtEmailR" runat="server" Height="14px" Width="150px"></asp:TextBox>
        &nbsp;</td>
  
  </tr>
  <tr>
    <td>Training Type</td>
    <td colspan="2">
        &nbsp;<asp:DropDownList ID="ddlTraining" runat="server" Width="160px">
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
                                                            </td>
   </tr>
  <tr>
    <td>Preferred Courses</td>
    <td colspan="2">
        &nbsp;
         <asp:TextBox ID="txtcourses1" runat="server" Height="14px" Width="150px"></asp:TextBox>
         <%--<asp:DropDownList ID="ddlCouses" runat="server" Width="160px">
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Android</asp:ListItem>
            <asp:ListItem>iPhone</asp:ListItem>
            <asp:ListItem>/MySQL</asp:ListItem>
            <asp:ListItem>Web Designing</asp:ListItem>
            <asp:ListItem>Software Quality Testing</asp:ListItem>
                    
            <asp:ListItem>Hardware &amp; Networking</asp:ListItem>
            <asp:ListItem>CCNA</asp:ListItem>
            <asp:ListItem>MCITP</asp:ListItem>
            <asp:ListItem>SEO, SMO & Online Bidding</asp:ListItem>
            <asp:ListItem>C/C++</asp:ListItem>
            <asp:ListItem>Online Bidding</asp:ListItem>
            <asp:ListItem>Oracle/SQL Server</asp:ListItem>
            
            <asp:ListItem>Animation & Multimedia</asp:ListItem>
            <asp:ListItem>SAP Training</asp:ListItem>
            
            <asp:ListItem>Embedded Systems</asp:ListItem>
            <asp:ListItem>89c51</asp:ListItem>
            <asp:ListItem>PIC</asp:ListItem>
            <asp:ListItem>AVR</asp:ListItem>
            <asp:ListItem>Arduino</asp:ListItem>
            <asp:ListItem>Raspberry Pi</asp:ListItem>
            <asp:ListItem> PCB Designing</asp:ListItem>
            <asp:ListItem>PLC/SCADA(Automation)</asp:ListItem>
            
             <asp:ListItem>AutoCAD</asp:ListItem> 
             <asp:ListItem>CATIA</asp:ListItem>
             
              <asp:ListItem>SolidWorks</asp:ListItem>
               <asp:ListItem>Pro-E</asp:ListItem>
                <asp:ListItem>CNC Programming</asp:ListItem>
                 <asp:ListItem>STAADPro</asp:ListItem>

        </asp:DropDownList>--%>
</td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td align="right">
        <asp:Button ID="btnSave" runat="server" EnableTheming="False" Text="Submit" />
        &nbsp;</td>
  </tr>
</tbody></table>
 </div>  

<p style="padding-top: 6px">  <span id="ctl00_ContentPlaceHolder1_lblmsg" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>
</asp:Content>

