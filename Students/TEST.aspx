<%@ Page Language="C#" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="true" CodeFile="TEST.aspx.cs" Inherits="Students_TEST" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="html5lightbox.js" type="text/javascript"></script>
<link rel="canonical" href="http://www.thinknexttraining.com/" />
  <link rel="stylesheet" href="css/smk-accordion.css" />
 <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>

        <script type="text/javascript">


            function togglSession() {
                //alert("text");
                document.getElementById('<%= ChkliCourse.ClientID %>').Text = '';
                var state = document.getElementById('<%=popupCRS.ClientID %>').style.display;

                if (state == 'block') {

                    document.getElementById('<%=popupCRS.ClientID %>').style.display = 'none';
                } else {
                document.getElementById('<%=popupCRS.ClientID %>').style.display = 'block';
                }
            };

            $(function() {
                var colors = ["#0099cc", "#c0c0c0", "#587b2e", "#990000", "#000000", "#1C8200", "#987baa", "#981890", "#AA8971", "#1987FC", "#99081E"];

                setInterval(function() {
                    var bodybgarrayno = Math.floor(Math.random() * colors.length);
                    var selectedcolor = colors[bodybgarrayno];
                    $("#color").css("background", selectedcolor);
                }, 3000);
            })
       
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <asp:TextBox ID="txtCourses" runat="server" 
             Placeholder="Preferred Course  e.g:PHP,.NET"  Width="205px" 
             CssClass="input new" ReadOnly="True"></asp:TextBox>
          
          <input id="Button1" runat="server"  style="height: 26px; padding-top: 2px; padding-left: 8px; padding-right: 5px;" name="reset" onclick="togglSession();" type="button" value="..." />
         
         
          <div id="popupCRS" runat="server" style="z-index: 999; display:none;left:590px; top: 226px;width:288px;height:448px;position:absolute;margin-bottom:10px"  class="popupsmsemail1">
            <p id="P1" style="height:40.px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="togglSession()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "/> </a> </p>
            <p id="P2" style="width: 281px;" align="center">
            <asp:Label ID="Label3" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="Red" Text="Selct Course to Preferred" style=" padding-right: 53px;"></asp:Label></p>
            <div style="height:324px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;overflow:auto" 
                                                    align="left">

<table class="tab1" align="center" border="1" id="Table1" style="width:100%;">
  <tbody> <tr>
                    <td style="width:74px">
                    </td>
                    <td style="width: 244px;vertical-align: bottom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                   <%-- <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglSession();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>--%>
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
                        <%--<asp:Button ID="Button2" runat="server"  Text="Save" 
                            style="height: 31px; width: 90px; padding-left: 8px; margin-left: 11px; margin-top: 14px;" CausesValidation="False" OnClick="Button2_Click" />--%>
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
</tbody></table>
 </div>  
<asp:Button ID="Button2" runat="server"  Text="Save" 
                            style="height: 31px; width: 90px; padding-left: 8px; margin-left: 65px; margin-top: 10px;" CausesValidation="False" OnClick="Button2_Click" />
<p style="padding-top: 6px">  <span id="Span1" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>
</asp:Content>

