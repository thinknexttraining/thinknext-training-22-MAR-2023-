<%@ Page Title="Careers - ThinkNEXT Technologies" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="Careers" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
<%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>--%>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
     <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
    <link rel="stylesheet" type="text/css" href="style.css" />
     <script type="text/javascript">
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                icons: icons
            });
            $("#toggle").button().click(function () {
                if ($("#accordion").accordion("option", "icons")) {
                    $("#accordion").accordion("option", "icons", null);
                } else {
                    $("#accordion").accordion("option", "icons", icons);
                }
            });
        });
    </script>


<script type="text/javascript">
    function toggles() {
        //alert("text");
        var state = document.getElementById('<%=popup.ClientID %>').style.display;

        if (state == 'block') {

            document.getElementById('<%=popup.ClientID %>').style.display = 'none';
        } else {
            document.getElementById('<%=popup.ClientID %>').style.display = 'block';
        }
    };

</script>
<style>
#panel, #flip {
    padding: 5px;
    
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
  .popupsmsemail1
{
	padding: 0px 0px 0px 50px;
	margin-top: 140px;
	margin-left: auto;
	margin-right: auto;
	width: 329px;
	height:630px;
	position: absolute;
	background-color: #4682B4;
	box-shadow: 0px 15px 25px #000000;
	top: 30%;
	left: 35%;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}
        .style4
        {
        }
        .style9
        {
        }
        .tb5 {
	
	background-repeat:repeat-x;
	border:1px solid #d1c7ac;
	width: 230px;
	color:#333333;
	padding:3px;
	margin-right:4px;
	margin-bottom:8px;
	font-family:tahoma, arial, sans-serif;
}
 .head1 {
            background:url('images/White-Background-9B1.jpg');
    font-family:'Times New Roman';
    font-size: 18px;
    font-weight: 300;
    overflow: hidden;
    padding: 20px 0 0px 23px;
    position: relative;
    width:98%;
   box-shadow: 7px 7px 5px #d7d0d0;
        }


        .ryt {
            float:right;
            background-color:#DE1904;
            padding:7px;
            color:#FFF;
           
          
        }






</style>
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

 <div class="head1">
    <h3 style="color:#000;" >Careers</h3>
       <div class="ryt">

You are here &nbsp; Home /Careers

       </div>


   </div>
<br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />

<table>
<tr>
<td>
<div id="fb-root"></div>

    <br />
</td>
</tr>
</table>
<br />
<div style="background-color:Maroon;"><table><tr><td style="font-size:x-large;"><font style="font-weight:bold;margin-left:35%;color:White;">CAREER OPPORTUNITIES</font></td></tr></table> </div>

<br />
<div>
<table>
<tr><td><p align="justify"><font style="font-size:medium;font-weight:bold;color:Maroon; ">ThinkNEXT competes for the best talent. It offers opportunities to talented persons who can beat the volatile technology world. Our team gives importance to our work by keeping ourselves upgraded with the technologies.At ThinkNEXT the area of learning is really wide.The employees get chance to improve as well as enhance their skills.There is freedom to explore and encouragement to new ideas</font></p></td></tr>
<tr>
<%--<td><p align="justify"><font style="font-size:medium;font-weight:bold;color:Maroon; "> Our team gives importance to our work by keeping ourselves upgraded with the technologies.</font></p></td>--%>
</tr>
<%--<tr><td><p align="justify"><font style="font-size:medium;font-weight:bold;color:Maroon; ">At ThinkNEXT the area of learning is really wide.The employees get chance to improve as well as enhance their skills.</font> </p></td></tr>--%>
<%--<tr><td><p align="justify"><font style="font-size:medium;font-weight:bold;color:Maroon; ">There is freedom to explore and encouragement to new ideas.</font></p></td></tr>--%>
</table>
</div>
<br />
<div style="width:100%;height:60px;background-color:Maroon;"><table><tr><td></td></tr><tr><td style="font-size:x-large;"><font style="font-weight:bold;margin-left:35%;color:White;">CURRENT JOB OPENINGS</font></td></tr></table></div>
<div id="accordion" style="width: 500px;">
        <asp:Repeater ID="repAccordian" runat="server" 
            onitemcommand="repAccordian_ItemCommand" >
            <ItemTemplate>
                <h3 style="width:979px;">
                    <%#Eval("Jobtitle")%>
                    <br></br></h3>
                <div style="width:949px;font-size:small;">
                    <table>
                        <tr>
                            <td class="style1">
                                <b>Area</b>
                            </td>
                            <td class="style2">
                                <%#Eval("jobCategory")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Experience</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Experience")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Location</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Location")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Qualification</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Qualification")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Salary</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Salary")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Job</b>
                            </td>
                            <td class="style2">
                                <%#Eval("JobSummary")%>
                            </td>
                        </tr>
                        <tr colspan="2">
                        <td colspan="2"><b>Required skill</b><%#Eval("Skill")%></td>
                        </tr>
                        <tr>
                        <td class="style1"><asp:Button ID="Button4" runat="server" Text="Apply" CommandName="E" CommandArgument='<%#Eval("JobId") %>'/></td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

    <div style="width:880;height:400px;overflow:auto;">
        <table>
        <tr>
        <td>
        <br />
        <div id="Div1"></div>

        
      
        </td>
        
        </tr>
        
        </table>
        </div>

<div id="popup" runat="server" style="z-index:999;display:none;" class="popupsmsemail1">
            <p id="close" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="toggles()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P" style="width: 550px;" align="center">
            <asp:Label ID="lblstatus" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="White" Text="Register for free Training" style="margin-left:-56%;font-size:larger;"></asp:Label></p>
            <div style="height:480px; width:90%; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left:-23px; margin-top: 3px;" 
                                                    align="left">



<table class="tab1" align="center" border="1" id="TableR" style="width:100%;">
  <tbody>
  <tr>
  <td class="style10">
      <asp:TextBox ID="txtname" runat="server" CssClass="tb5"  placeholder="Enter Name*" Style="margin:0px"></asp:TextBox>
      </td>
  <td>
      <asp:Label ID="lblDesignation" runat="server" Text="Label" ForeColor="White" style="font-weight:bold;font-size:medium ;" Visible="false"></asp:Label>
      </td>
  </tr>
  <tr>
  <td class="style4" colspan="2"><font style="font:bold;color:White;">Contact Details :</font></td>
  </tr>
  <tr>
  <td class="style10">
      <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Width="230px" Height="100px" placeholder="Adress Detail*" CssClass="tb5"></asp:TextBox>
      </td>
      </tr>
      <tr>
  <td>
      <asp:TextBox ID="txtcity" runat="server" placeholder="Enter City*" CssClass="tb5" Style="margin-bottom: 8px !important; margin:0px;margin-right: 0px" ></asp:TextBox>
      </td>
  </tr>
  <tr>
  <td class="style10">
      <asp:TextBox ID="txtzip" runat="server" placeholder="Zip/Postalcode*" CssClass="tb5" Style="margin-bottom: 8px !important; margin-right: 4px;  margin:0px "></asp:TextBox>
      </td>
      </tr>
      <tr>
  <td>
      <asp:TextBox ID="txtContact" runat="server" placeholder="Mobile No*" CssClass="tb5" MaxLength="10" Style="margin-bottom: 8px !important; margin-right: 4px;  margin:0px"></asp:TextBox>
      </td>
  </tr>
  <tr>
  <td class="style10">
      <asp:TextBox ID="txtEmailID" runat="server" placeholder="Enter Email ID*" CssClass="tb5" Style="margin-bottom: 8px !important; margin:0px "></asp:TextBox>
      </td>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td class="style9" colspan="2"><font style="font:bold;color:White;">Education Background :</font></td>
  </tr>
  <tr>
  <td class="style10">
      <asp:DropDownList ID="ddlEducation" runat="server" placeholder="Highest Qualification*" CssClass="tb5">
      <asp:ListItem Value="-1">Select</asp:ListItem>
      <asp:ListItem>B.A</asp:ListItem>
      <asp:ListItem>B.E</asp:ListItem>
      <asp:ListItem>B.Tech</asp:ListItem>
      <asp:ListItem>B.Sc</asp:ListItem>
      <asp:ListItem>B.com</asp:ListItem>
      <asp:ListItem>BFA</asp:ListItem>
      <asp:ListItem>BBA</asp:ListItem>
      <asp:ListItem>B.S</asp:ListItem>
      <asp:ListItem>M.S</asp:ListItem>
      <asp:ListItem>MCA</asp:ListItem>
      <asp:ListItem>Others</asp:ListItem>
      </asp:DropDownList>
      </td>
      </tr>
      <tr>
  <td>
     <asp:DropDownList id="txtWork" runat="server" CssClass="tb5">
     <asp:ListItem Value="-1">Select</asp:ListItem>
     <asp:ListItem>Less than one year</asp:ListItem>
     <asp:ListItem>1-2 years</asp:ListItem>
     <asp:ListItem>2-3 years</asp:ListItem>
     <asp:ListItem>3-4 years</asp:ListItem>
     <asp:ListItem>4-5 years</asp:ListItem>
     <asp:ListItem>5-6 years</asp:ListItem>
     <asp:ListItem>6-7 years</asp:ListItem>
     <asp:ListItem>Over 7 years</asp:ListItem>

     </asp:DropDownList>
      </td>
  </tr>
  
  <tr>
  <td class="style10">
      <asp:FileUpload ID="FileUpload1" runat="server" placeholder="Upload Resume" CssClass="tb5"/>
      </td>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td class="style10"></td>
      </tr>
      <tr>
  <td>
      <asp:Button ID="btnSave" runat="server" Text="Submit" Width="120px" style="margin-top:15px; margin-left:55px;" OnClick="btnSave_Click" />
      <asp:Label id="lblerror" runat="server" visible="false" ForeColor="White"></asp:Label>
      </td>
  </tr>
</tbody></table>
 </div>  

<p style="padding-top: 6px">  <span id="ctl00_ContentPlaceHolder1_lblmsg" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>
</asp:Content>


