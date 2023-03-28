<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Online-Training-Chandigarh-Mohali.aspx.vb" Inherits="Online_Training_Chandigarh_Mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <title>Register for Online Training Course in Chandigarh Mohali</title>
    <!-- for Facebook -->          
<meta property="og:title" content="Register for Online Training Course " />
<meta property="og:type" content="article" />
<meta name="og:image" content="http://thinknexttraining.com/share-images/web-desig-share.jpg" />
<meta property="og:url" content="http://thinknexttraining.com/Online-Training-Chandigarh-Mohali.aspx" />
<meta property="og:description" content="Best Onlinne Industrial Training In Chandigarh, Mohali, Panchkula (India) " />


    <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>--%>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
    <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href="css/div.css" type ="text/css" rel="stylesheet" />


    <style type="text/css">


         .col-lg-12, .col-md-12 {
                background: white;
    padding-top: 11px;
    box-shadow: 0px 0px 4px 0px;
   margin-bottom: 16px;
    margin-top: 20px;
        }
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
        .form-style-9{
    max-width: 737px;
    background: #FAFAFA;
    padding: 30px;
    margin: 50px auto;
    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
    border-radius: 10px;
    border: 2px solid red;
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
/*border: 5px solid #060608CC;*/
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

      @media screen and (max-width: 460px) {
          
            .container{
                padding-right: 5px;
    padding-left: 5px;

            }
              .body-container {
                padding-right: 10px !important;
                padding-left: 10px !important;
            }


        }



        @media screen and (max-width: 768px) {
    

        }
            h2{
                font-size:20px;
            }
            .body-container {
            background: #f6f5f5;
    padding-right: 25px;
    padding-left: 25px;
    margin-right: auto;
    margin-left: auto;
}

             p{font-size: 17px;}
        .row{width:100%;}
        .row.gdl-page-row-wrapper{width:100%;}



        .div-style-9 {
    max-width: 100%;
    background: darkgray;
    padding: 30px;
    margin:0px auto;
    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
    border-radius: 0px;
    border: 2px solid red;
}
    </style>


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
             },1 );
         }
       
         $('form').live("submit", function () {
             ShowProgress();
         });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="head1" style="display: none;">
        <h3 style="color: #000;">6 Months Free Training</h3>
        <div class="ryt">
            You are here &nbsp; Home /Careers

        </div>


    </div>


      <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="" />
</div>


     <div style="display:none ;">
         <marquee style="margin-left:183px; margin-right:10px;font-weight:bold;font-size:14px;" onmouseout="start();" onmouseover="stop()" scrollamount="2" scrolldelay="4" scrolldelay="5"> Register for Scholarship Test on 
<asp:Label ID="lblnewssss" runat="server"></asp:Label><asp:Label ID="Label2" runat="server"></asp:Label> <asp:Label ID="Label3" runat="server"></asp:Label></marquee> </div>
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
   
  
    
 
        <div class="body-container">
    


            <div style="background-color: Maroon;">
        <table>
            <tr style="text-align: center;">
                <td style="font-size: x-large;"><font style="font-weight: bold; color: White;">Register for Online Training Courses</font>



                </td>
            </tr>
        </table>
    </div>

 


      <div class="col-lg-7">
    
            <div class="col-lg-12" style="text-align:justify;font-size:17px;">
                <h1> Online Training in Chandigarh Mohali &nbsp;</h1>
              <br />
              <br />
        <p>
            whether you're an established proficient or new to the field, ThinkNEXT face to face and online IT preparing will give you the skill you require in a particular item or innovation. When you gain from our Certified Trainers, you can be sure that what you'll realize will be precise, finished, and up to date. Pick a conventional classroom preparing setting or one of the new choices, which let you learn without anyone else plan, at your own particular pace, and in your own particular place.
            </p>
       <p>In 2016, we're about much more than books. We've long had instructional video and meetings. In the previous year, we've presented live web-based preparing, in addition, to live face to face preparing for meetings and different areas. In any case, a similar standard applies: we want the people who learn with us to feel like they have an expert looking over their shoulders and providing seasoned advice.</p>
     <p>ThinkNEXT live training events —whether on the web or face to face—offer teacher drove, hands-on courses, with an emphasis on the social parts of learning.</p>
       <p>That’s in stark contrast to typical training products based on pre-recorded classes. Each course is led by an expert practitioner in the subject, someone working in the industry. They've seen what works and what doesn't—rather than simply memorizing a syllabus and slide deck. These teachers control you through hands-on course materials and they're accessible to help answer your inquiries anytime. Furthermore, you're ready to interact with other students, learning from their experience.</p>

<h3>Certification</h3>
                <p><strong>After Completion of online training course, certificate will be issued by ThinkNEXT</strong></p>
</div>
   

   

    </div>
         <div class="col-lg-5">

             
          <div> 
  <div class="col-lg-12">
       <div class="brochiframe" id="brochiframe">
          
     <iframe name="broucher" height="500px" width ="650px"><a href="#" onclick="frameclose();" ></iframe>
         <a href="#" onclick="clsifrm()"; >
              <img alt="Close" src="images/close.png" style="margin-top:-67%; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a>
               
         </div>       
        <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0" alt="Brochure Download Image" /></a>
       
          </div>
              <div style="clear:both;"></div>
          </div>
     
        <br />

        <div  >
            <div style="border-top-left-radius: 10px;border-top-right-radius: 10px;background-color: red;text-align: center;padding: 0% 0% 0% 0%;">
             <center>  
          
  
     <p id="P1" style="padding: 1.6% 0% 1.6% 0%;    margin-bottom: 0px !important;">
        
        
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" Font-Bold="True" Style="color:#FFF; background-color: #f70000; padding:1%;" Text= "Register for Online Industrial Training"></asp:Label></p>
             
            </center>
        </div>
            </div>
    
          
    <div class="div-style-9">
        <center>
            <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"  Visible="False"></asp:Label>
            <br />
        </center>

  <ul>
    <li>
        <asp:TextBox ID="txtNameR" runat="server" class="field-style field-split align-left"  placeholder="Name" name="field1" required Style="margin :0; text-transform:capitalize;"></asp:TextBox>  </li>
         <div style="margin: 0 0 2% 2%;">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtNameR" ValidationExpression="[a-zA-Z ]*$" ForeColor="red"></asp:RegularExpressionValidator></div>
       
   
    <li>
        <asp:TextBox ID="txtEmailR" runat="server"  name="field2" class="field-style field-split align-right" placeholder="Email" required Style="margin :0;"></asp:TextBox> </li>
        <div style="margin: 0 0 2% 2%;">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailR" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
   
       <li>
          <asp:TextBox ID="txtContectR" runat="server" name="field3" class="field-style field-split align-left" placeholder="Mobile No." required Style="margin :0;" MaxLength="10"></asp:TextBox></li>
          <div style="margin: 0 0 2% 2%;">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtContectR" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="red"></asp:RegularExpressionValidator>
     </div>
    
  
  <li>
         <asp:TextBox ID="txtjob" runat="server" class="field-style field-split align-left"  placeholder="Course interested  in e.g. PHP, JAVA" name="field1" required Style="margin :0; "></asp:TextBox> </li>
      <div style="margin: 0 0 2% 2%;">
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtjob" ValidationExpression="[a-zA-Z ]*$" ForeColor="red"></asp:RegularExpressionValidator></div>
      
      <li>
             <asp:Button ID="btnsubmit" runat="server" EnableTheming="False"  Text="Register"  />
          </li>
      </ul>
 </div>
    
 
 </div>  
</div>

<p style="padding-top: 6px">  <span id="ctl00_ContentPlaceHolder1_lblmsg" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
 
    
       
      

    

   
               <!-- // START Social Share Script  and Css  with Likes-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script  and Css with Likes  -->
    <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook",  "twitter", "linkedin"
    ],
  
    url: "http://www.thinknexttraining.com/Online-Training-Chandigarh-Mohali.aspx"
  });
</script>

    

</asp:Content>

