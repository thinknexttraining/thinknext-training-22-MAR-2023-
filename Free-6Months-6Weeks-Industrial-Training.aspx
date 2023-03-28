<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Free-6Months-6Weeks-Industrial-Training.aspx.vb" Inherits="Free_6Months_6Weeks_Industrial_Training" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <title>Free 6Months 6Weeks Industrial Training in Chandigarh, Mohali.</title>


    <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>--%>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
    <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
    <link rel="stylesheet" type="text/css" href="style.css" />
     <link href="css/div.css" type ="text/css" rel="stylesheet" />
    <script type="text/javascript">
        function ShowProgress() {
            setTimeout(function () {
                var modal = $('<div />');
                modal.addClass("modal");
                $('body').append(modal);
                var loading = $(".loading");
                loading.show();
                var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                loading.css({ top: top, left: left });
            }, 200);
        }

        $('form').live("submit", function () {
            ShowProgress();
        });

        //function RefreshParent() {
        //    window.opener.document.getElementById('Button3').click();
        //    window.close();
        //}
</script>
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
    
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script> 

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

        .popupsmsemail1 {
            padding: 0px 0px 0px 50px;
            margin-top: 140px;
            margin-left: auto;
            margin-right: auto;
            width: 329px;
            height: 630px;
            position: absolute;
            background-color: #4682B4;
            box-shadow: 0px 15px 25px #000000;
            top: 30%;
            left: 35%;
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
        }

        .style4 {
        }

        .style9 {
        }

        .tb5 {
           
            background-repeat: repeat-x;
            border: 1px solid #d1c7ac;
            width: 230px;
            color: #333333;
            padding: 3px;
            margin-right: 4px;
            margin-bottom: 8px;
            font-family: tahoma, arial, sans-serif;
        }

        .head1 {
            background: url('images/White-Background-9B1.jpg');
            font-family: 'Times New Roman';
            font-size: 18px;
            font-weight: 300;
            overflow: hidden;
            padding: 20px 0 0px 23px;
            position: relative;
            width: 98%;
            box-shadow: 7px 7px 5px #d7d0d0;
        }
            .head1 input[type="submit"] {
                margin: 5px;
                width: 21%;
                background:#337ab7;
                text-transform:uppercase;
                font-size:17px;
                height:auto;
        }

        .ryt {
            float: right;
            background-color: #DE1904;
            padding: 7px;
            color: #FFF;
        }






        .auto-style1 {
            width: 222px;
        }





        label {
            width:100%;
            text-align:left;
            font-size:18px;
            margin:5px 15px;
            }
        .modal
    {
        position: fixed;
        top: -3;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family: Arial;
        font-size: 10pt;
        /*border: 5px solid #67CFF5;*/
        width: 200px;
        height: 100px;
        display: none;
        position: fixed;
        background-color: #51121200;
        z-index: 999;
    }
     .brochiframe {
    position: fixed;
    top: 50px;
    left: 23%;
    border: 1px solid;
    background: white;
    height: 329px;
    z-index: 9999;
    display:none;
   
}
        </style>

    <div class="head1" style="display: none;">
        <h3 style="color: #000;">Stipend Based Industrial Training</h3>
        <div class="ryt">
            You are here &nbsp; Home /Careers

        </div>


    </div>
    <br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true" style="margin-left:3%;"></div>
   <br /> 
    <br />





    <table>
        <tr>
            <td>
                <div style="display: none;">
                    <marquee style="margin-left: 183px; margin-right: 10px; font-weight: bold; font-size: 14px;" onmouseout="start();" onmouseover="stop()" scrollamount="4" scrolldelay="5">
<asp:Label ID="secnews" runat="server"></asp:Label> <asp:Label ID="app" runat="server"></asp:Label></marquee>
                </div>
                <br />
            </td>
        </tr>
    </table>
    <div class ="container">
    <div style="background-color: Maroon;">
        <table>
            <tr style="text-align: center;">
                <td style="font-size: x-large;"><font style="font-weight: bold; color: White;">Register for Free 6 Months/6 Weeks Industrial Training/Internship in Chandigarh/Mohali through Aptitude-Cum-Technical Test</font>



                </td>
            </tr>
        </table>
    </div>
        </div>
    
    <div>
       
    <div>
       
  <%--  <p style="text-align: justify;"><font style="font-size:medium;font-weight:bold;color:Black; "> Students clearing the scholarship exam will be provided Free 6 Months Industrial Training and Dual Certification of ThinkNEXT and Govt. of India (under Digital India Government) Project. Apart from that these students will be provided FREE Spoken English, Personality Development, IELTS and Interview Preparation Classes on daily basis. These students will also be given preference for placement in ThinkNEXT after their training. </font></p>--%>
    
  
   
        <%-- Thinknext Technologies detail view (20-09-2016) --%>
        <div class="loading" align="center">
   <%-- Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="" />
</div>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>

     <div class="container">
      <div class="col-lg-6">
        <div style="overflow-x:auto;">
        <table class="nav-justified">
        <table class="shortcode1-1" cellpadding="0" style=" border-spacing: 0.5em; border-collapse:separate;">
           <!-- <tr>
                <td class="auto-style2"><strong><span><font style="font-size:medium;font-weight:bold;color:red;vertical-align:top; ">Total Seats Available</span></strong></td>
                <td class="auto-style3"><strong><span><font style="font-size:medium;font-weight:bold;color:black; vertical-align:top;">370</span></strong></td>
              
            </tr>-->
            
  
            <tr>
                <td class="auto-style1" style="text-align:left;"><strong><span><font style="font-size:medium;font-weight:bold;color:red; vertical-align:top;">Test Dates</span></strong></td>
                <td><font style="font-size:medium;font-weight:bold;color:black;"><strong><span><asp:Label ID="lblnewssss" runat="server"></asp:Label></span></strong></td>
            </tr>
            <tr>
                <td class="auto-style1"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Timings</span></strong></td>
                <td><strong><span><font style="font-size:medium;font-weight:bold;color:black;">10:00 AM to 5:00 PM</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align:left;"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Test Duration </span></strong></td>
                <td>
                    <p>
                    <strong><span><font style="font-size:medium;font-weight:bold;color:black;">30 Minute</font></span></strong>
                        </p>
                        </td>
            </tr>
            <tr>
                <td class="auto-style1" style="vertical-align:top; text-align:left;"><strong><span><font style="font-size:medium;font-weight:bold;color:red; ">Venue</span></strong></td>
                <td>
                    <p class="MsoNormal">
                        <strong><span><font style="font-size:medium;font-weight:bold;color:black;">ThinkNEXT Technologies Private Limited</span></strong><b><span><br />
                        <strong>SCF 113, Sector 65, Phase-XI, Mohali (Chandigarh)</strong></span></b><br />
                        <a href="http://www.thinknext.co.in">www.thinknext.co.in</a>, <a href="http://www.thinknexttraining.com">www.thinknexttraining.com</a>

                    </p>
                   </td>
            </tr>
            <tr>
                <td class="auto-style1" style="vertical-align:top;"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Contact</span></strong></td>
                <td>
                    <p class="MsoNormal">
                        <strong><span><font style="font-size:medium;font-weight:bold;color:black;">0172-4656197, 78374-01000, 7837402000, 7837403000</span></strong>
                        <br />
                        <strong><span>Toll Free: 1800-102-4102 &nbsp; &nbsp; <img src="wp-content/themes/bluediamond/images/icon/social-icon/Whatsapp.png" alt="Whatsapp"/> 78374-04000</span></strong>

                    </p>

                    </td>
            </tr>
            <!--<tr>
                <td class="auto-style1" style="vertical-align:top;"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Documents to Bring</span></strong></td>
                <td><strong><span><font style="font-size:medium;font-weight:bold;color:black;">Photocopy of Aadhar Card, Matriculation Certificate, 10+2 Certificate, B.Tech/MCA DMCs, 2 Passport Size Photographs</span></strong></td>
            </tr>-->
            <tr>
                <td class="auto-style1"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Certification</span></strong></td>
                <td><strong><span><font style="font-size:medium;font-weight:bold;color:black;">Dual Certification i.e. Govt. of India and ThinkNEXT</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style1" style="vertical-align:top;"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Description</span></strong></td>
                <td><strong><span><font style="font-size:medium;font-weight:bold;color:black;">Apart from Stipend Based Industrial Training, Students will be provided free Spoken English, Personality Development with training on daily basis</span></strong></td>
            </tr>
            <!--<tr>
                <td class="auto-style1" style="vertical-align:top;"><strong><span><font style="font-size:medium;font-weight:bold;color:red;">Part-Time/Full-Time
                    <br />
                    Job Offer</span></strong></td>
                <td><strong><span><font style="font-size:medium;font-weight:bold;color:black;">Students will be offered Part-Time/Full-Time Job along with Industrial Training so that they can earn while they learn</span></strong></td>
            </tr>-->
      

        </table>

            </table>

</div>
          </div>
  

   
        <div class="col-lg-6">
             <div style="padding: 2% 0% 0% 8%;" > 
  
       <div class="brochiframe" id="brochiframe">
          
     <iframe name="broucher" height="500px" width ="650px"><a href="#" onclick="frameclose();" ></iframe>
         <a href="#" onclick="clsifrm()"; >
              <img alt="Close" src="images/close.png" style="margin-top:-67%; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a>
               
         </div>       
        <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0" alt="Brochure Download Image" /></a>
       </div>
        <div >
          <div  style="border-top-left-radius: 10px;border-top-right-radius: 10px;background-color: red;text-align: center;width: 90%;padding: 0% 0% 0% 0%;margin: 1% 0% -2.4% 5%;">  
   <center>
     <p id="P" style="padding: 1.6% 0% 1.6% 0%;" >
            <asp:Label ID="lblstatus" runat="server" Font-Size="Medium" Font-Bold="True" Style="color:#FFF;  padding:1%;" Text= "Register for Free Industrial Training"></asp:Label></p>
             
            </center>
            </div>
        </div>
               
            <div class="div-style-9">
                <center>
                     <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300" ></asp:Label>
                     <br />
                </center>
  <ul>
    <li>
         <asp:TextBox ID="txtNameR" runat="server" class="field-style field-split align-left" placeholder="Name" name="field1" style="margin:0; text-transform:capitalize;"  required></asp:TextBox>
         </li>
        <div style="margin: 0 0 2% 2%;">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtNameR" ValidationExpression="[a-zA-Z ]*$" ForeColor="red"></asp:RegularExpressionValidator></div>
       
    <li>
        <asp:TextBox ID="txtContectR" runat="server" class="field-style field-split align-left" name="field1" style="margin: 0;" MaxLength ="10" placeholder="Mobile No" required></asp:TextBox>
         </li>
        <div style="margin: 0 0 2% 2%;">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtContectR" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="red"></asp:RegularExpressionValidator></div>
    
     
    <li>
        <asp:TextBox ID="txtEmailR" runat="server" class="field-style field-split align-right" name="field2" style="margin: 0;" placeholder="E-mail ID" required></asp:TextBox>
         </li>
        <div style="margin: 0 0 2% 2%;">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailR" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
   
  
  <div style="display:none;">
        <li  class="col-lg-6">
            <asp:DropDownList ID="ddlTraining" runat="server" class="col-lg-11" >
                <asp:ListItem>Training Type</asp:ListItem>
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
              &nbsp;&nbsp;
        <asp:CustomValidator ID="CustomValidator1" ValidateEmptyText="true" ControlToValidate ="ddlTraining" runat="server" ErrorMessage="Enter Valid Training Type" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
         </li>


    <li class="col-lg-6">
        <asp:TextBox ID="txtcourses" runat="server" class="col-lg-11" style="margin-left: -28px;" placeholder="Preferred Courses" ></asp:TextBox><br /><br />
    &nbsp;&nbsp;
         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtcourses" ValidationExpression="[a-zA-Z ]*$" ForeColor="red"></asp:RegularExpressionValidator>
    </li>
      </div>
      <li>
        <asp:Button ID="btnSave" runat="server" EnableTheming="False" Text="Register" OnClick="btnSave_Click" />
          </li>
      </ul>
 </div>  
           

<p style="padding-top: 6px">  <span id="ctl00_ContentPlaceHolder1_lblmsg" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>
       
      </div>
 
    </div>
    <br />

    </font></font>
  
    </font></font>
  
    </font></font>
  
    </font></font>
  
    </font></font></font></font>
  
    </font></font></font></font></font></font></font></font>
       <%-- </ContentTemplate>
</asp:UpdatePanel>--%>
     </div>
    </div>
</asp:Content>

