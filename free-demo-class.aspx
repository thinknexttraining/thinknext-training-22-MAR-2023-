﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="free-demo-class.aspx.vb" Inherits="stipend_based_industrial_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <title>Free Demo Class</title>
     <!-- for Facebook -->          
    <meta name="description" content="ThinkNEXT provides Free Demo Class In Chandigarh, Mohali, Panchkula (India)" />
<meta property="og:title" content="Free Demo Class " />
<meta property="og:type" content="article" />
<meta name="og:image" content="http://thinknexttraining.com/share-images/web-desig-share.jpg" />
<meta property="og:url" content="http://thinknexttraining.com/free-demo-class.aspx" />
<meta property="og:description" content="ThinkNEXT provides Free Demo Class In Chandigarh, Mohali, Panchkula (India) " />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    <meta itemprop="name" content="Free Demo Class " />
    <meta itemprop="description" content="ThinkNEXT provides Free Demo Class In Chandigarh, Mohali, Panchkula (India) " />
    <meta itemprop="image" content="http://thinknexttraining.com/share-images/web-desig-share.jpg" />
   <!--  End// Google+ -->  
     <link href="css/div.css" type ="text/css" rel="stylesheet" />
    <style>

        .form-reddiv {
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    background-color: red;
    text-align: center;
    width: 90%;
    padding: 2% 0% 2% 0%;
    margin: 1% 0% -2.4% 5%;
}
        .textwhite {
    color: #fff;
}
        .pad-top-bot0 {
            padding-top:0;
            padding-bottom:0;
        }
        .pd-lft-rght-5prcnt {
            padding-left:5%;
            padding-right:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="main-image">
  
   <%--<img src="images/Stipend-based-training-in-chandigarh-mohali.jpg" alt="Stipend based Industrial Training in Chandigarh Mohali" />--%>
     
        </div>
               <div class="page-div">
                 
                   <br />
                   <div class="col-sm-12 text-justify backgroundmaroon">
       
     Apply for Free Demo Class
   
</div>
                      
                 
                     


  
                   
       <div class="col-lg-6 col-md-6 col-sm-6">

    <div class="col-lg-12 text-justify">
              <h1>Free Demo Class</h1>
            
         <p><strong><span style="color:blue;">Dear Student/Learner</span><br />
             ThinkNEXT is offering industrial training with Live Projects and Free Spoken English, Personality Development, Interview Preparation (HR+Technical Round) Classes to make you industry-ready. We also provide part-time/full-time job during training so that students can earn while they learn. ThinkNEXT will also give you 100% placement assistance and we shall conduct your regular Job Interviews until the student gets placed. 
<br /><br />
You can take a <span class="textred">FREE DEMO CLASS</span> or you can meet your trainer before joining to any course. After registering for free demo class, one of our executive will be in-touch with you shortly to schedule your demo class at your convenient timings and other details.
<br />
             <a href="Default.aspx" class="text-left">Industrial Training Programs or Courses</a>
            </strong></p>
    <iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies%2F&width=122&layout=button_count&action=like&size=small&show_faces=false&share=false&height=25&appId" width="90" height="25" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
           <iframe src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2Fwww.thinknexttraining.com%2Fapply-for-free-placement.aspx&layout=button&size=small&mobile_iframe=true&width=59&height=25&appId" width="59" height="25" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
        
</div>

            <div class="clear-both"></div>
                     <div class="text-center">
 <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&amp;tabs=Thinknext&amp;width=408&amp;height=380&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId" width="408" height="180" scrolling="no" class="fb-ifrme-460"></iframe>
</div>
      </div>
        
                   <div class="col-lg-6 col-md-6 col-sm-6 ">
        <div class="pad-top-bot0 pd-lft-rght-5prcnt">
            <div class="right_box margin-top">
        <div class="without_border dwl">
          <div class="brochiframe" id="brochiframe">
          
            <iframe name="broucher"></iframe>
        
            <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()" /> 
               
          </div>

       <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher"><img src="images/download_brochure.png" alt="Sap ABAP Training"> </a>
             
        </div> 
    </div>

            
            </div>
    
          <div class="form-reddiv">
             
     <p class="text-center">
         <strong class="textwhite">
            Apply for Free Demo Class
         </strong>
        </p>
            
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
                  
                   <div class="clear-both"></div>
                 
</div>

         <!-- // START Social Share Script-Code with likes ---------->
       <!-- // START Social Share Script  and Css  with Likes-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script and Css with Likes  -->
  
      <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook",  "twitter", "linkedin"
    ],
  
    url: "http://www.thinknexttraining.com/free-demo-class.aspx"
  });
</script>
    <!-- // END Social Share Script-Code with likes ---------->

                 
     

                 
</asp:Content>
