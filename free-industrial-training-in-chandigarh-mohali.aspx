﻿<%@ Page Title=" Free 6 Months / 6 Weeks Industrial Training Program with ThinkNEXT" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="free-industrial-training-in-chandigarh-mohali.aspx.cs" Inherits="free_industrial_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<meta name="description" content="100% Free Skill/Industrial Training Programme With Placement Assistance Under Skill Development in ESDM (Electronics Sector Development & Manufacturing) for Digital India under NIELIT, DeitY, Govt. of India. Special Batches For Students/housewives/working professionals." />
<meta name="keywords" content="Free Job-Oriented Courses in Chandigarh, Free Job-Oriented Courses, Free Job-Oriented Courses for housewives, Job-Oriented Courses for students" />
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">
<meta name="robots" content="index, follow" />
<meta name="author" content="ThinkNEXT" />
<meta name="copyright" content="ThinkNEXT"/>
        <link rel="stylesheet" type="text/css" href="style.css" />

     <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />

    
    <%--button save--%>
    <script type="text/javascript">
        function validate() {
            var summary = "";
            summary += isvalidFirstname();
            summary += isvalidEmail();
            summary += isvalidphoneno();
            if (summary != "") {
                alert(summary);
                return false;
            }
            else {
                return true;
            }

        }
        function isvalidphoneno() {

            var uid;
            var temp = document.getElementById("<%=txtContectR.ClientID %>");
            uid = temp.value;
            var re;
            re = /^[0-9]+$/;
            var digits = /\d(10)/;
            if (uid == "") {
    return ("Please enter phoneno" + "\n");
}
else if (re.test(uid)) {
    return "";
}

else {
    return ("Phoneno should be digits only" + "\n");
}
}
function isvalidFirstname() {
    var uid;
    var temp = document.getElementById("<%=txtNameR.ClientID %>");
uid = temp.value;
var re = /^[a-zA-Z ]+$/
if (uid == "") {
    return ("Please enter firstname" + "\n");
}
else if (re.test(uid)) {
    return "";

}
else {
    return ("FirstName accepts Characters and spaces only" + "\n");
}
}
function isvalidEmail() {
    var uid;
    var temp = document.getElementById("<%=txtEmailR.ClientID %>");
uid = temp.value;
var re = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
if (uid == "") {
    return ("Please Enter Email" + "\n");
}
else if (re.test(uid)) {
    return "";
}
else {
    return ("Email should be in the form ex:abc@xyz.com" + "\n");
}
}
</script>

     <%--button save1--%>
    <script type="text/javascript">
        function validate1() {
            var summary = "";
            summary += isvalidFirstname1();
            summary += isvalidEmail1();
            summary += isvalidphoneno1();
            if (summary != "") {
                alert(summary);
                return false;
            }
            else {
                return true;
            }

        }
        function isvalidphoneno1() {

            var uid;
            var temp = document.getElementById("<%=txtContect.ClientID %>");
            uid = temp.value;
            var re;
            re = /^[0-9]+$/;
            var digits = /\d(10)/;
            if (uid == "") {
                return ("Please enter phoneno" + "\n");
            }
            else if (re.test(uid)) {
                return "";
            }

            else {
                return ("Phoneno should be digits only" + "\n");
            }
        }
        function isvalidFirstname1() {
            var uid;
            var temp = document.getElementById("<%=txtName.ClientID %>");
            uid = temp.value;
            var re = /^[a-zA-Z ]+$/
            if (uid == "") {
                return ("Please enter firstname" + "\n");
            }
            else if (re.test(uid)) {
                return "";

            }
            else {
                return ("FirstName accepts Characters and spaces only" + "\n");
            }
        }
        function isvalidEmail1() {
            var uid;
            var temp = document.getElementById("<%=txtEmail.ClientID %>");
    uid = temp.value;
    var re = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    if (uid == "") {
        return ("Please Enter Email" + "\n");
    }
    else if (re.test(uid)) {
        return "";
    }
    else {
        return ("Email should be in the form ex:abc@xyz.com" + "\n");
    }
}
</script>
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>


     <%--button save2--%>
    <script type="text/javascript">
        function validate2() {
            var summary = "";
            summary += isvalidFirstname2();
            summary += isvalidEmail2();
            summary += isvalidphoneno2();
            if (summary != "") {
                alert(summary);
                return false;
            }
            else {
                return true;
            }

        }
        function isvalidphoneno2() {

            var uid;
            var temp = document.getElementById("<%=txtContect2.ClientID %>");
            uid = temp.value;
            var re;
            re = /^[0-9]+$/;
            var digits = /\d(10)/;
            if (uid == "") {
                return ("Please enter phoneno" + "\n");
            }
            else if (re.test(uid)) {
                return "";
            }

            else {
                return ("Phoneno should be digits only" + "\n");
            }
        }
        function isvalidFirstname2() {
            var uid;
            var temp = document.getElementById("<%=txtName2.ClientID %>");
            uid = temp.value;
            var re = /^[a-zA-Z ]+$/
            if (uid == "") {
                return ("Please enter firstname" + "\n");
            }
            else if (re.test(uid)) {
                return "";

            }
            else {
                return ("FirstName accepts Characters and spaces only" + "\n");
            }
        }
        function isvalidEmail2() {
            var uid;
            var temp = document.getElementById("<%=txtEmail2.ClientID %>");
    uid = temp.value;
    var re = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    if (uid == "") {
        return ("Please Enter Email" + "\n");
    }
    else if (re.test(uid)) {
        return "";
    }
    else {
        return ("Email should be in the form ex:abc@xyz.com" + "\n");
    }
}
</script>

     <%--button save3--%>
    <script type="text/javascript">
        function validate3() {
            var summary = "";
            summary += isvalidFirstname3();
            summary += isvalidEmail3();
            summary += isvalidphoneno3();
            if (summary != "") {
                alert(summary);
                return false;
            }
            else {
                return true;
            }

        }
        function isvalidphoneno3() {

            var uid;
            var temp = document.getElementById("<%=txtContect3.ClientID %>");
            uid = temp.value;
            var re;
            re = /^[0-9]+$/;
            var digits = /\d(10)/;
            if (uid == "") {
                return ("Please enter phoneno" + "\n");
            }
            else if (re.test(uid)) {
                return "";
            }

            else {
                return ("Phoneno should be digits only" + "\n");
            }
        }
        function isvalidFirstname3() {
            var uid;
            var temp = document.getElementById("<%=txtName3.ClientID %>");
            uid = temp.value;
            var re = /^[a-zA-Z ]+$/
            if (uid == "") {
                return ("Please enter firstname" + "\n");
            }
            else if (re.test(uid)) {
                return "";

            }
            else {
                return ("FirstName accepts Characters and spaces only" + "\n");
            }
        }
        function isvalidEmail3() {
            var uid;
            var temp = document.getElementById("<%=txtEmail3.ClientID %>");
    uid = temp.value;
    var re = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    if (uid == "") {
        return ("Please Enter Email" + "\n");
    }
    else if (re.test(uid)) {
        return "";
    }
    else {
        return ("Email should be in the form ex:abc@xyz.com" + "\n");
    }
}
</script>

     <%--button save4--%>
    <script type="text/javascript">
        function validate4() {
            var summary = "";
            summary += isvalidFirstname4();
            summary += isvalidEmail4();
            summary += isvalidphoneno4();
            if (summary != "") {
                alert(summary);
                return false;
            }
            else {
                return true;
            }

        }
        function isvalidphoneno4() {

            var uid;
            var temp = document.getElementById("<%=txtContect4.ClientID %>");
            uid = temp.value;
            var re;
            re = /^[0-9]+$/;
            var digits = /\d(10)/;
            if (uid == "") {
                return ("Please enter phoneno" + "\n");
            }
            else if (re.test(uid)) {
                return "";
            }

            else {
                return ("Phoneno should be digits only" + "\n");
            }
        }
        function isvalidFirstname4() {
            var uid;
            var temp = document.getElementById("<%=txtName4.ClientID %>");
            uid = temp.value;
            var re = /^[a-zA-Z ]+$/
            if (uid == "") {
                return ("Please enter firstname" + "\n");
            }
            else if (re.test(uid)) {
                return "";

            }
            else {
                return ("FirstName accepts Characters and spaces only" + "\n");
            }
        }
        function isvalidEmail4() {
            var uid;
            var temp = document.getElementById("<%=txtEmail4.ClientID %>");
    uid = temp.value;
    var re = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    if (uid == "") {
        return ("Please Enter Email" + "\n");
    }
    else if (re.test(uid)) {
        return "";
    }
    else {
        return ("Email should be in the form ex:abc@xyz.com" + "\n");
    }
}
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





    function toggleses() {
        //alert("text");
        var state = document.getElementById('<%=popup1.ClientID %>').style.display;

        if (state == 'block') {

            document.getElementById('<%=popup1.ClientID %>').style.display = 'none';
        } else {
            document.getElementById('<%=popup1.ClientID %>').style.display = 'block';
        }
    };




    function togglesing() {
        //alert("text");
        var state = document.getElementById('<%=popup2.ClientID %>').style.display;

        if (state == 'block') {

            document.getElementById('<%=popup2.ClientID %>').style.display = 'none';
        } else {
            document.getElementById('<%=popup2.ClientID %>').style.display = 'block';
        }
    };




    function google() {
        //alert("text");
        var state = document.getElementById('<%=popup3.ClientID %>').style.display;

        if (state == 'block') {

            document.getElementById('<%=popup3.ClientID %>').style.display = 'none';
        } else {
            document.getElementById('<%=popup3.ClientID %>').style.display = 'block';
        }
    };




    function Googles() {
        //alert("text");
        var state = document.getElementById('<%=popup4.ClientID %>').style.display;

        if (state == 'block') {

            document.getElementById('<%=popup4.ClientID %>').style.display = 'none';
        } else {
            document.getElementById('<%=popup4.ClientID %>').style.display = 'block';
        }
    };

</script>
<style>

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



    .label
    {
        color: White;
        background-color: #008EE8;
        font-size: 18px;
    }

    .style2
    {
        width: 53px;
    }

    .style5
    {
        width: 53px;
        height: 21px;
    }

    .style7
    {
        height: 21px;
    }

    .popupsmsemail1
    {
        padding: 0px 0px 0px 50px;
        margin-top: 125px;
        margin-left: auto;
        margin-right: auto;
        width: 344px;
        height: 385px;
        position: absolute;
        background-color: white;
        box-shadow: 0px 15px 25px #000000;
        top: 761px;
        left: 30%;
        border-radius: 5px;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
    }

    .popupapply
    {
        padding: 0px 0px 0px 50px;
        margin-top: 125px;
        margin-left: auto;
        margin-right: auto;
        width: 344px;
        height: 385px;
        position: absolute;
        background-color: white;
        box-shadow: 0px 15px 25px #000000;
        top: 761px;
        left: 30%;
        border-radius: 5px;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
    }

    @media (min-width: 310px) and (max-width: 380px)
    {
        .popupapply
        {
            width: 90% !important;
            position: fixed !important;
        top:-10% !important;
            left: 2% !important;
        }

        .popupapply-border
        {
            height: 300px !important;
        }

        input#ContentPlaceHolder1_txtContectR
        {
            width: 100% !important;
        }



        input#ContentPlaceHolder1_txtEmailR
        {
            width: 100% !important;
        }

        input#ContentPlaceHolder1_txtNameR
        {
            width: 75% !important;
        }
        .mobl
        {
                padding-right: 14px;

                  }
        .inp-mobl
        {
            width: 100% !important;
        }
        .sbm
        {
            margin-left: 73px !important;
           margin-top: 0px !important;
        }
        .inp-eml
        {
 width: 100% !important;
        }
        .email11
        {
                padding-right: 5px;
        }
        input#ContentPlaceHolder1_btnSave {
    margin-left: 73px !important;
    margin-top: 0px !important;
}
        .header-wrapper .logo-right-text{height: 65px !important;}
    }

</style>


      <div class="head1">
    <h3 style="color:#000;" > Free Industrial Training in Chandigarh &nbsp;&nbsp;</h3>
       <div class="ryt">

You are here &nbsp; Home /Free Industrial Training in Chandigarh

       </div>


   </div>
    <br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />
<div style="height:100%">
   <%-- <asp:Panel ID="Panel1" runat="server">
        <font style="font-weight:bold;font-size:large;"><asp:Label ID="Label1" runat="server" Text="100% Free Skill/Industrial Training Programme With Placement Assistance Under Skill Development in ESDM (Electronics Sector Development & Manufacturing) for Digital India under NIELIT, DeitY, Govt. of India." CssClass="label" ></asp:Label></font>
        <br />
    </asp:Panel>--%>
    <br />


    <div class="col-lg-12">
        <div class="col-lg-4">
<img src="images/dit.jpg" style="width: 246px; height: 105px; float:left; "/>

        </div>

         <div class="col-lg-4"> <img src="wp-content/themes/bluediamond/images/logo.png" style="width: 246px; height: 105px; float:left;   "/></div>

    <div class="col-lg-4"> <img src="images/digital-India.png " style="width:263px; height: 105px; float:left; "/></div>
     
  
    
    
    </div>
    <div>
    <table style="background-color:#F9F7CA;border:1px solid black;">
    <tr><td ><h2 style ="margin-top:8px; color:#000000; font-weight:400"> 100% Free 6 Months / 6 Weeks Industrial Training Programs with ThinkNEXT & Government Certification  </h2> </td></tr>
    </table></div>
     <br />
    <div>
    <table width="100%" style="background-color:#F9F7CA;border:1px solid black;border-radius: 15px 50px 30px 5px">
  <tr>
    <td> <li style="margin-left:6%; font-size:16px; font-weight:600; "> <strong> Free Spoken English PD classes </strong> </li>
        <li style="margin-left:6%; font-size:16px; font-weight:600; "> Part time / Full time job offer for each student during taining </li>
        <li style="margin-left:6%; font-size:16px; font-weight:600;  " >Study Material </li> 
    
   </td>
    <td ><li style="font-size:16px; font-weight:600;"> Job Placement Support </li>
        <li  style="font-size:16px; font-weight:600;"> Flexible Timing </li>
        <li  style="font-size:16px; font-weight:600;"> Fully AC</li>
        <li  style="font-size:16px; font-weight:600;"> Wi-fi labs with large LEDs / Projectors</li>
    </td>
  </tr>
 
 
</table>
    </div>
    <br />
    <div>
    <table width="100%"  style=" border:1px solid black; background-color:#F9F7CA" >
   <tr>
   <td style="border:1px solid black;font-size:18px"  class="style2"><font style="font-weight:bold;">S. No.</font></td>
       <td  style="  border:1px solid black; font-size:24px" class="auto-style1"><font  style="font-weight:bold;">Name of Course</font></span></td>

<%--<td style=" border:1px solid black;font-size:16px"><font style="font-weight:bold;">Registration-cum-Certification cost</font></td>
       <td style=" border:1px solid black;font-size:16px" class="style5"><font style="font-weight:bold;">Fee</font></td>--%>


<td style=" border:1px solid black;font-size:24px"><font style="font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apply Here</font></td>  </tr>
   <tr>
   <td style=" border:1px solid black; font-size:20px;" class="style5"><font style="font-weight:bold;">1.</font></td>
       <td style=" border:1px solid black; font-size:20px;" class="auto-style2"><b><span>Assembly &amp; Maintenance of PCs<br />
           </span></b></td>

<%--<td style=" border:1px solid black;"><b><span>500/-</span></b></td>
       <td style=" border:1px solid black;" class="style5"><b><span>5000/-</span></b></td>--%>



<td style=" border:1px solid black;" class="style7">
 <%--   <asp:LinkButton ID="lba" 
        runat="server" Text="Apply" onclick="toggles();"></asp:LinkButton>--%>
        
        <b><input  style="height: 27px; width: 108px;" name="reset1" onclick="toggles();" type="button"  value="Apply" /><br />
    </b></td>  </tr>
   <tr>
   <td style=" border:1px solid black;  font-size:20px; " class="style2"><font style="font-weight:bold;">2.</font></td>
       <td style=" border:1px solid black; font-size:20px;" class="auto-style1"><b><span>BSNL Certified Telecom Technician-PC Hardware and 
       Networking<br />
           </span></b></td>

<%--<td style=" border:1px solid black;"><b><span>1500/-</span></b></td>
       <td style=" border:1px solid black;" class="style5"><b><span>12000/-</span></b></td>--%>



<td style=" border:1px solid black;"><b><%--<asp:LinkButton ID="lbap" runat="server" 
        Text="Apply" onclick="toggleses();"></asp:LinkButton>--%>
        <input  style="height: 27px; width: 110px;" name="reset" onclick="toggleses();" type="button"  value="Apply" /> <br />
        </b></td>  </tr>
   <tr>
   <td style=" border:1px solid black; font-size:20px; " class="style2"><font style="font-weight:bold;">3.</font></td>
       <td style=" border:1px solid black;  font-size:20px; " class="auto-style1"><b><span>
           Embedded System Design <br />
           </span></b></td>

<%--<td style=" border:1px solid black;"><b><span>2000/-</span></b></td>
       <td style=" border:1px solid black;" class="style5"><b><span>15000/-</span></b></td>--%>

 

<td style=" border:1px solid black;"><b><%--<asp:LinkButton ID="aply" runat="server" Text="Apply" onclick="togglesing();"></asp:LinkButton>--%>

<input  style="height: 27px; width: 109px;" name="reset" onclick="togglesing();" type="button"  value="Apply" /> <br /> 
</b></td>  </tr>
   <tr>
   <td style=" border:1px solid black; font-size:20px; " class="style2"><font style="font-weight:bold;">4.</font></td>
       <td style=" border:1px solid black;  font-size:20px; " class="auto-style1"><b><span>Automation Technology – Basic Level 
           (PLC-SCADA)<br />
           </span></b></td>

<%--<td style=" border:1px solid black;"><b><span>1500/-</span></b></td>
       <td style=" border:1px solid black;" class="style5"><b><span>12000/-</span></b></td>--%>


 
<td style=" border:1px solid black;"><b><%--<asp:LinkButton ID="applyy" runat="server" Text="Apply" onclick="google();"></asp:LinkButton>--%>
<input  style="height: 27px; width: 111px;" name="reset" onclick="google();" type="button"  value="Apply" /> <br />
</b></td>  </tr>
   <tr>
   <td style=" border:1px solid black; font-size:20px;" class="style2"><font style="font-weight:bold;">5.</font></td>
       <td style=" border:1px solid black;  font-size:20px; " class="auto-style1"><b><span>Automation Technology – Advance Level 
           (PLC-SCADA)<br />
           </span></b></td>

<%--<td style=" border:1px solid black;"><b><span>2000/-</span></b></td>
       <td style=" border:1px solid black;" class="style5"><b><span>15000/-</span></b></td>--%>



<td style=" border:1px solid black;"><b><%--<asp:LinkButton ID="apply" runat="server" 
        Text="Apply" onclick="Googles();"></asp:LinkButton>--%>
        
        <input  style="height: 27px; width: 111px;" name="reset" onclick="Googles();" type="button"  value="Apply" /> <br />
        </b></td>  </tr>
    </table >
    </div>
   
    <div id="fb-root"></div>
<script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    <div class="fb-share-button" data-href="https://www.facebook.com/thinknextchandigarh/photos/a.348547321850124.75702.286513474720176/994512920586891/?type=3" data-layout="button_count"></div>

    <br />
    <div>
    <%--<table width="100%" style="background-color:#F9F7CA;border:1px solid black;">
    <tr>
    
    <td style="font-size:16px"><font style="font-weight:bold;"> Examination and Certification:</font></td>
    </tr>
    <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*  NIELIT will conduct the examination and Certificate will be issued to successful candidates.</td>
    </tr>
    </table>--%>
    </div>
    </div>

    
    <div id="popup" runat="server" style="z-index:999; display:none;  width: 375px;" class="popupapply">
            <p id="close" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="toggles()"; >
              <img alt="Close" src="images/close.png" style="border-style: none;height: 35px;margin-right: -25px;margin-top: -10px;width: 35px; "  /> </a> </p>
            <p id="P" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="black" Text="Register for free Training"></asp:Label></p>
            <div class="popupapply-border" style="height: 276px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">
<table>
    <tr>
        <td style=" color: black;float: left;font-weight: bold;margin-top: 30px;width: 25px; ">
            Name
        </td>
        <td>
             <asp:TextBox ID="txtNameR" runat="server" Height="22px" Width="150px" style="margin-top:29px; float:right; text-transform: capitalize;"></asp:TextBox>
        </td>
    </tr>
</table>
                <table>
                    <tr>
                        <td class="mobl"  style=" color: black;float: left;font-weight: bold;margin-top: 26px;">
                            Mobile No
                        </td>
                        <td>
                              <asp:TextBox ID="txtContectR" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;" MaxLength="10">  </asp:TextBox>

                           
                            <asp:Label ID="lbla" runat="server" Text="Assembly & Maintenance of PCs" Visible="false"></asp:Label>
                        </td>
                    </tr>
                     
                </table>
<%--<table class="" align="center" border="1" id="TableR" >
 
      <tr>
    <td width="25px" align="left"><font style="font-weight:bold;color:black;">Name</font></td>
    <td colspan="" width="62%" align="left">
        <asp:TextBox ID="txtNameR" runat="server" Height="22px" Width="150px" style="margin-top:29px;"></asp:TextBox>
        &nbsp;</td>
   
  </tr>
    </table>--%>
               <%-- <table >
                             <tr>
                                <td><font style="font-weight:bold;color:black;">Mobile No</font></td>
                                <td colspan="">
                                    <asp:TextBox ID="txtContectR" runat="server" Height="22px" Width="150px" style="margin-top:26px" MaxLength="10"></asp:TextBox>
                                    <asp:Label ID="lbla" runat="server" Text="Assembly & Maintenance of PCs" Visible="false"></asp:Label>
                            &nbsp;</td>
  
                              </tr>
                </table>--%>
                <table>
                    <tr>
                        <td class="email11" style="color: black;float: left;font-weight: bold;margin-top: 27px;">
                            E-mail ID
                        </td>
                        <td>
                             <asp:TextBox ID="txtEmailR" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <%--<table>
                                    <tr>
                    <td> <font style="font-weight:bold;color:black;">E-mail ID</font></td>
                    <td colspan="">
                        <asp:TextBox ID="txtEmailR" runat="server" Height="22px" Width="150px" style="margin-top:26px"></asp:TextBox>
                &nbsp;</td>
  
                  </tr>

                </table>--%>
 
  
  <%--<tr>
    <td><font style="font-weight:bold;">Training Type</font></td>
    <td colspan="2">
        &nbsp;<asp:DropDownList ID="ddlTraining" runat="server" Width="160px">
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
         </td>
   </tr>--%>
                <table>
                    <tr>
                        <td style="float:left;">
                            <asp:Button ID="btnSave" runat="server" EnableTheming="False" Text="Submit" style="margin-left: 110px;margin-top: 28px;" OnClick="btnSave_click" OnClientClick="javascript:validate()"/>
                        </td>
                    </tr>
                </table>
  <%--<table>
           <tr>
    <td>&nbsp;</td>
    <td align="right">
        <asp:Button ID="btnSave" runat="server" EnableTheming="False" Text="Submit" style="margin-top:-10px" OnClick="btnSave_click"/>
        &nbsp;</td>
  </tr>
 
  </table>--%>
  <table>
  <tr>
  <td><asp:Label id="lblerror" runat="server" visible="false" ForeColor="Red"></asp:Label></td>
  </tr>
</table>


 </div>  

<p style="padding-top: 6px">  <span id="ctl00_ContentPlaceHolder1_lblmsg" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>
         <%--OnClick="ButtonInsSave_Click"--%>


    

<%--<div id="popup1" runat="server" style="z-index:999; display:none; " class="popupapply">
            <p id="P1" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="toggleses()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P2" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus1" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="black" Text="Register for free Training"></asp:Label></p>
            <div style="height: 276px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">--%>
     <div id="popup1" runat="server" style="z-index:999; display:none;  width: 375px;" class="popupapply ">
            <p id="P1" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="toggleses()"; >
              <img alt="Close" src="images/close.png" style="border-style: none;height: 35px;margin-right: -25px;margin-top: -10px;width: 35px; "  /> </a> </p>
            <p id="P2" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus1" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="black" Text="Register for free Training"></asp:Label></p>
            <div class="popupapply-border" style="height: 276px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">

 <table>
    <tr>
        <td style=" color: black;float: left;font-weight: bold;margin-top: 30px;width: 25px;">
            Name
        </td>
        <td>
        <asp:TextBox ID="txtName" runat="server" Height="22px" Width="150px" style="margin-top:29px; float:right; text-transform: capitalize;" ></asp:TextBox>
        &nbsp;</td>
   
  </tr>
     </table>

                 <table>
                    <tr>
                        <td class="mobl" style=" color: black;float: left;font-weight: bold;margin-top: 26px;">
                            Mobile No
                        </td>
                        <td>
                     <asp:Label ID="b" runat="server" Text="BSNL Certified Telecom Technician-PC Hardware and Networking" Visible="false"></asp:Label>
                 <asp:TextBox ID="txtContect" CssClass="inp-mobl"  runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;" MaxLength="10"></asp:TextBox>
            &nbsp;</td>
                </tr>
                                                                
                     </table>

                <table>
                    <tr>
                        <td class="email11" style="color: black;float: left;font-weight: bold;margin-top: 27px;">
                            E-mail ID
                        </td>
                        <td>
                <asp:TextBox ID="txtEmail" CssClass="inp-eml" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;"></asp:TextBox>
                &nbsp;</td>
                  </tr>
                    </table>
  <%--<tr>
    <td><font style="font-weight:bold;">Training Type</font></td>
    <td colspan="2">
        &nbsp;<asp:DropDownList ID="ddlTraining1" runat="server" Width="160px">
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
                                                            </td>
   </tr>--%>
  
   <table>
      <tr>
       <td style="float:left;">
        <asp:Button ID="btnSave1" CssClass="sbm" runat="server" EnableTheming="False" Text="Submit" style="margin-left: 110px;margin-top: 28px;" OnClick="btnSave1_click" OnClientClick="javascript:validate1()"/>
        &nbsp;</td>
  </tr>
       </table>
                <table>
  <tr>
  <td><asp:Label id="lblerror1" runat="server" visible="false" ForeColor="Red"></asp:Label></td>
  </tr>
</table>
 </div>  

<p style="padding-top: 6px">  <span id="Span1" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>

    

   <%-- <div id="popup2" runat="server" style="z-index:999; display:none; " class="popupsmsemail1">
            <p id="P3" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="togglesing()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P4" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus2" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="White" Text="Register for free Training"></asp:Label></p>
            <div style="height: 268px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">--%>

<div id="popup2" runat="server" style="z-index:999; display:none;  width: 375px;" class="popupapply">
            <p id="P3" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="togglesing()"; >
              <img alt="Close" src="images/close.png" style="border-style: none;height: 35px;margin-right: -25px;margin-top: -10px;width: 35px; "  /> </a> </p>
            <p id="P4" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus2" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="black" Text="Register for free Training"></asp:Label></p>
            <div class="popupapply-border" style="height: 276px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">


<table>
    <tr>
        <td style=" color: black;float: left;font-weight: bold;margin-top: 30px;width: 25px;">
            Name
        </td>
        <td>
        <asp:TextBox ID="txtName2" runat="server" Height="22px" Width="150px" style="margin-top:29px; float:right; text-transform: capitalize;" ></asp:TextBox>
        &nbsp;</td>
  </tr>
    </table>

  <table>
    <tr>
        <td class="mobl" style=" color: black;float: left;font-weight: bold;margin-top: 26px;">
           Mobile No
          </td>
     <td>
    <asp:Label ID="C" runat="server" Text="Embedded System Design using 8-bit Microcontroller" Visible="false"></asp:Label>
        <asp:TextBox ID="txtContect2" CssClass="inp-mobl" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;" MaxLength="10"></asp:TextBox>
&nbsp;</td>
  
  </tr>
     
      </table>

     <table>
         <tr>
           <td class="email11" style="color: black;float: left;font-weight: bold;margin-top: 27px;">
               E-mail ID
          </td>
       <td>
        <asp:TextBox ID="txtEmail2"  CssClass="inp-eml" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;"></asp:TextBox>
&nbsp;</td>
  </tr>
</table>
  <%--<tr>
    <td><font style="font-weight:bold;">Training Type</font></td>
    <td colspan="2">
        &nbsp;<asp:DropDownList ID="ddlTraining2" runat="server" Width="160px">
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
                                                            </td>
   </tr>--%>
    <table>
      <tr>
       <td style="float:left;">
        <asp:Button ID="btnSave2" CssClass="sbm" runat="server" EnableTheming="False" Text="Submit" style="margin-left: 110px;margin-top: 28px;" OnClick="btnSave2_click" OnClientClick="javascript:validate2()"/>
           </td>
  </tr>
        </table>

      <table>
  <tr>
  <td><asp:Label id="lblerror2" runat="server" visible="false" ForeColor="Red"></asp:Label></td>
  </tr>
</table>
 </div>  

<p style="padding-top: 6px">  <span id="Span2" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>







<%--<div id="popup3" runat="server" style="z-index:999; display:none; " class="popupsmsemail1">
            <p id="P5" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="google()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P6" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus3" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="White" Text="Register for free Training"></asp:Label></p>
            <div style="height: 268px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">--%>

    <div id="popup3" runat="server" style="z-index:999; display:none;  width: 375px;" class="popupapply">
            <p id="P5" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="google()"; >
              <img alt="Close" src="images/close.png" style="border-style: none;height: 35px;margin-right: -25px;margin-top: -10px;width: 35px; "  /> </a> </p>
            <p id="P6" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus3" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="black" Text="Register for free Training"></asp:Label></p>
            <div class="popupapply-border" style="height: 276px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">

<table>
    <tr>
        <td style=" color: black;float: left;font-weight: bold;margin-top: 30px;width: 25px;">
            Name
        </td>
        <td>
        <asp:TextBox ID="txtName3" runat="server" Height="22px" Width="150px" style="margin-top:29px; float:right; text-transform: capitalize;"></asp:TextBox>
        &nbsp;</td>
   </tr>
    </table>

  <table>
    <tr>
        <td class="mobl" style=" color: black;float: left;font-weight: bold;margin-top: 26px;">
           Mobile No
          </td>
        <td>
    <asp:Label ID="D" runat="server" Text="Automation Technology – Basic Level" Visible="false"></asp:Label>
        <asp:TextBox ID="txtContect3" CssClass="inp-mobl" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;" MaxLength="10"></asp:TextBox>
&nbsp;</td>
  </tr>
      
  </table>

   <table>
         <tr>
           <td class="email11" style="color: black;float: left;font-weight: bold;margin-top: 27px;">
               E-mail ID
          </td>
             <td>
        <asp:TextBox ID="txtEmail3"  CssClass="inp-eml" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;"></asp:TextBox>
&nbsp;</td>
  </tr>
       </table>
  <%--<tr>
    <td><font style="font-weight:bold;">Training Type</font></td>
    <td colspan="2">
        &nbsp;<asp:DropDownList ID="ddlTraining3" runat="server" Width="160px">
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
                                                            </td>
   </tr>--%>
  
  
  <table>
      <tr>
       <td style="float:left;">
        <asp:Button ID="btnSave3" CssClass="sbm" runat="server" EnableTheming="False" Text="Submit" style="margin-left: 110px;margin-top: 28px;" OnClick="btnSave3_click" OnClientClick ="javascript:validate3()"/>
        &nbsp;</td>
  </tr>
      </table>
                <table>
  <tr>
  <td><asp:Label id="lblerror3" runat="server" visible="false" ForeColor="Red"></asp:Label></td>
  </tr>
</table>
 </div>  

<p style="padding-top: 6px">  <span id="Span3" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>




   <%-- <div id="popup4" runat="server" style="z-index:999; display:none; " class="popupsmsemail1">
            <p id="P7" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="Googles()"; >
              <img alt="Close" src="images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P8" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus4" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="White" Text="Register for free Training"></asp:Label></p>
            <div style="height: 268px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">--%>

      <div id="popup4" runat="server" style="z-index:999; display:none;  width: 375px;" class="popupapply">
            <p id="P7" style="height:40px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
             <a href="#" onclick="Googles()"; >
              <img alt="Close" src="images/close.png" style="border-style: none;height: 35px;margin-right: -25px;margin-top: -10px;width: 35px; "  /> </a> </p>
            <p id="P8" style="width: 281px;" align="center">
            <asp:Label ID="lblstatus4" runat="server" Font-Size="Small" Font-Bold="True" 
                ForeColor="black" Text="Register for free Training"></asp:Label></p>
            <div class="popupapply-border" style="height: 276px; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;" 
                                                    align="left">

<table>
    <tr>
        <td style=" color: black;float: left;font-weight: bold;margin-top: 30px;width: 25px;">
            Name
        </td>
        <td>
        <asp:TextBox ID="txtName4" runat="server" Height="22px" Width="150px" style="margin-top:29px; float:right; text-transform: capitalize;"></asp:TextBox>
        &nbsp;</td>
  </tr>
</table>

<table>
    <tr>
        <td style=" color: black;float: left;font-weight: bold;margin-top: 26px;">
           Mobile No
          </td>
        <td>
    <asp:Label ID="E" runat="server" text="Automation Technology – Advance Level" Visible="false"></asp:Label>
        <asp:TextBox  ID="txtContect4" CssClass="inp-mobl" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;" MaxLength="10"></asp:TextBox>
&nbsp;</td>
  
  </tr>
    
</table>

<table>
         <tr>
           <td style="color: black;float: left;font-weight: bold;margin-top: 27px;">
               E-mail ID
          </td>
             <td>
        <asp:TextBox ID="txtEmail4"  CssClass="inp-eml" runat="server" Height="22px" Width="150px" style="margin-top:26px; float:right;"></asp:TextBox>
&nbsp;</td>
  
  </tr>
</table>
  <%--<tr>
    <td><font style="font-weight:bold;">Training Type</font></td>
    <td colspan="2">
        &nbsp;<asp:DropDownList ID="ddlTraining4" runat="server" Width="160px">
           <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>6 Weeks</asp:ListItem>
            <asp:ListItem>2 Months</asp:ListItem>
              <asp:ListItem>4 Weeks</asp:ListItem>
        </asp:DropDownList>
                                                            </td>
   </tr>--%>
  
  <table>
      <tr>
       <td style="float:left;">
        <asp:Button ID="btnSave4" CssClass="sbm" runat="server" EnableTheming="False" Text="Submit" style="margin-left: 110px;margin-top: 28px;" OnClick="btnSave4_click" OnClientClick ="javascript:validate4()"/>
        &nbsp;</td>
  </tr>
      </table>

<table>  <tr>
  <td><asp:Label id="lblerror4" runat="server" visible="false" ForeColor="Red"></asp:Label></td>
  </tr>
</table>

 </div>  

<p style="padding-top: 6px">  <span id="Span4" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>

</asp:Content>

