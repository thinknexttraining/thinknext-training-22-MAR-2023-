﻿<%@ Page Title="Web Designing Course Online - Learn Web Designing Online | ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="web-designing-online-course.aspx.vb" Inherits="web_designing_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<meta name="description" content="Web Designing Course Online - ThinkNEXT offers the best Web Design Online Training to learn web designing online with certifications. " />
<meta name="keywords" content="web designing course online, best online web design courses, online web designing, learn web designing online, online web design certificate programs, web design certificate online, website design course online, web design classes online, web design courses online for beginners, web design online training" />
<link rel="image_src" href="http://www.thinknexttraining.com/share-images/web-desig-share.png"/>
<meta property="og:image" content="http://www.thinknexttraining.com/share-images/web-desig-share.png" />
     <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
  <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
  
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">

<meta name="copyright" content="ThinkNEXT"/>
 
     <style>
    
    .training-highlights img{
        width:55px;
    }
.align-items-center{
    align-items:center;
}
    .d-flex {
    display: -webkit-box!important;
    display: -ms-flexbox!important;
    display: flex!important;
}
    .table2 select {
    width: 100%;
    background: #fff;
    margin: 0;
    padding: 7px 11px;
}
    .table2 input[type="text"], .table2 input[type="password"] {
        margin: 0;
    }
    .table2 td, th {
    padding: 8px 0px;

    }

     .digital-marketing-tools img{
          width:100%;
      }
      .thinknextwhy {
         background: #060e1e;
     background-size: cover;
    }

      .thinknext-edge-section h4 {
    color: #fff;
    font-weight: bold;
    font-size: 30px;
}
      .thinknext-edge-section p {
    font-size: 15px;
    color: #fff;
    letter-spacing: 0.2pt;
}
      .thknxt-edge p span {
    float: right;
    width: 95%;
    color: #fff !important;
}
     
       .faq ul{
        font-size:17px;
    }

    #profiles .profile {
    padding: 10px;
    border: 4px solid #fff;
}
    .our-team-box{
        box-shadow: 0 2px 7px rgba(0,0,0,.15);
    transition: all 800ms cubic-bezier(.19,1,.22,1);
    background: white;
    }

    .our-team-box:hover{
       box-shadow: 0 16px 38px -12px rgba(0,0,0,.56), 0 4px 25px 0 rgba(0,0,0,.12), 0 8px 10px -5px rgba(0,0,0,.2);
    }
     .our-team-box:hover img {
       filter: grayscale();
    }
    .our-team-box p {
        padding: 10px;
    }
     .our-team-box img {
        width:100%;
    }
       .companies-like img{
          margin:auto;
      }
     .companies-like .carousel-control.left{
          background:none;
      }
      .companies-like .carousel-control.right{
          background:none;
      }
       .companies-like .main-slider-arrow-right, .companies-like .main-slider-arrow-left {
    position: absolute;
    top: 44%;
    font-size: 43px;
    border: 1px solid #969696;
    left: 38%;
}
    @media screen and (max-width:768px) {
        .main-head {
            font-size: 30px;
        }
    }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="pd-30" style="background-image: url('images/technology-blue-background.jpg'); background-size:cover;">
         <div class="container">
        <div class="col-lg-7 col-md-7 col-sm-6 text-justify ptb-20">              
          <span class="bg-info plr-20 ptb-10">Certified Training</span>
              <h2 class="fa-5x text-white main-head text-left"><strong>Web Designing Online Course</strong></h2>
            <div style="border:3px solid orange;"></div>
            <br />
            <p class="text-white"><strong>Become Web Designing Expert and Boost your Career. Enroll Now </strong></p>
            <br />
         <div class="col-sm-12 pd-0 ">
                 <div class="col-sm-2 text-center"> <p><strong class="bg-white pd-10 img-rounded"><span><i class="fa fa-star text-orange"></i> 4.9</span></strong></p><br /></div>                
                <div class="col-sm-6 text-center"> <p><strong class="bg-white pd-10 img-rounded"><span>Placement Assistance</span></strong></p> <br /></div>
                <div class="col-sm-4 text-center"> <p><strong class="bg-white pd-10 img-rounded"><span>31,465  Enrolled</span></strong></p> <br /></div>
            <div class="clear-both"></div>
            </div>
 <br />
             <div class="col-sm-12 text-center fa-2x pd-0 text-white">
            <div class=" col-sm-3 col-xs-6 pd-0">
                <div class="pd-10 border border-secondary">
               <span class="days" id="day"></span> 
               <div class="smalltext">Days</div>
                    </div>
            </div>
      
       <div class=" col-sm-3 col-xs-6  pd-0">
            <div class="pd-10 border border-secondary">
               <span class="hours" id="hour"></span> 
               <div class="smalltext">Hours</div>
            </div>
           </div>
    
            <div class=" col-sm-3 col-xs-6  pd-0">
            <div class="pd-10 border border-secondary">
               <span class="minutes" id="minute"></span> 
               <div class="smalltext">Minutes</div>
            </div>
                </div>
      
                 <div class=" col-sm-3 col-xs-6  pd-0">
            <div class="pd-10 border border-secondary">
               <span class="seconds" id="second"></span> 
               <div class="smalltext">Seconds</div>
            </div>
                     </div>
     
      <div class="clear-both"></div>
            <p id="time-up"></p>
         </div>
            <br />
            <p class="text-orange text-warning fa-2x"><strong>Grab this Limited-Time-Period Offer Now </strong></p>

</div>


 <div class="col-lg-5 col-md-5 col-sm-6">
    
    <div class="right_box margin-top display-none" >
        <div class="without_border dwl" >
          <div class="brochiframe" id="brochiframe">
          
            <iframe name="broucher"></iframe>
        
            <img class="closebrochureiframe" alt="Online Course Training in India" src="images/close.png"  onclick="clsifrm()"  /> 
               
          </div>

        <a href="BroucherDownload.aspx?data=Digital Marketing Broucher" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0" alt="Brochure" /> </a>
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="Web Designing Online Course Training in India" />
</div>

         
     <div class="right_box margin-top">
 
 <div class="rounded_box">

<table class="table2" id="tb1">
    <tr>
       <td>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <strong>Full Name: </strong>
                                <asp:TextBox ID="txtName" runat="server" class="input" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <strong>Mobile Number:</strong>
                                <asp:TextBox ID="txtMobile" runat="server" class="input" 
                                    MaxLength="10" Placeholder="Mobile No." ></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <strong>E-mail ID</strong>
                                <asp:TextBox ID="txtEmailId"  runat="server" class="input" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                        <tr class="display-none">                           
                            <td>                               
                                <%--<asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox> --%>                              
                                </td>
                        </tr>
                         <tr>
                           <td>
                               <strong>Course type</strong>
                                <asp:TextBox ID="TextBox1"  runat="server" class="input" placeholder="Web designing Online Training" ReadOnly="true" ></asp:TextBox>
                              
                       <tr>
                         
                       </tr>
                <tr>
                    <td> <p class="mb-0"><i class="fa fa-inr" aria-hidden="true"></i> <strong><span class="decoration-line-through">4999/-</span>  <span class="textred">2000/-</span></strong> &nbsp; &nbsp; Valid till 1th September </p>
                        <p class="mb-0 text-primary text-center"><strong>(Don't miss this opportunity)</strong></p>
                    </td>
                </tr>

                        <tr>                         
                            <td>                             
                                <asp:Button ID="btnsubmit" runat="server" Text="SIGN UP" CssClass ="buton" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />                              
                                </td>
                        </tr>
                   </table>              
</div>
</div>      
   
     
       <span class="abythknxt-hdng display-none"> Book My Free Demo Class Now! </span>

               <div class="rounded_box display-none">
                  <table class="table2" id="tb2">
    <tr>
       <td>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoName" runat="server" class="input" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoMblno" runat="server" class="input" 
                                    MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtdemoEmail"  runat="server" class="input" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                       <tr>
                           <td>
                              <asp:TextBox id="txtdemoMsg" class="input" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />

                           </td>
</tr>
                      <tr>
                                              
                            <td>                             
                                <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass ="buton" />                              
                                </td>
                        </tr>
                   </table>

     
    </div>


          </div>


        <div class="clear-both"></div>
             </div>
  </section>
 <section class="pd-20">
        <div class="container">
            <div class="col-lg-12">
                <h1>Web Designing Online Training</h1>
                <p><strong class="heading-red">Are you looking for Web Designing Online Training?</strong></p>
                <p><strong class="heading-red">Do you want to learn how to build your own websites?</strong></p>
                <p><strong class="heading-red">Are you looking for Online Web Design Certificate Programs?</strong></p>
                <p><strong class="text-info">If Yes, then</strong></p>
                <p><strong class="text-info">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                <p><strong class="text-info">You are at ThinkNEXT Technologies Private Limited </strong></p>
                <p><strong class="text-info">&nbsp; -Biggest brand for Web Design Online Course</strong></p>
                <p><strong class="text-info">&nbsp; -Best Web Design Certification Online</strong></p>
                <p class="text-justify"><strong>ThinkNEXT Technologies Private Limited</strong>&nbsp;has introduced <strong>Web Design Certificate Programs</strong> for those who can easily avail the <strong>web design Online Tutorials</strong> anywhere in India, in order to teach web design  from basic to advanced level. The motive of <strong>online web designing course with certificate </strong>at ThinkNEXT is to help students to master the industry-standard web designing
 skills today, in order to become a successful web designing developer tomorrow. ThinkNEXT&rsquo;s <strong>best web design course online</strong> provides its students with
hands on experience of designing a professional website.</p>
                <p class="textred text-center"><strong>ThinkNEXT’s Online Courses - The best way to learn web Designing Online</strong></p>
                <p class="text-justify"><strong>ThinkNEXT</strong>is a professional ISO 9001:2015 Certified<strong> web design online training</strong>
                    institute in
India which has been imparting training over a decade now. ThinkNEXT is felicitated 4 times
with the <a href="https://www.youtube.com/watch?v=FO8mzUt7Et4">National Awards</a> in the field of Industrial Training, Web Development &amp; Digital
Marketing.
                    <br />
                    <strong>ThinkNEXT</strong>is recognized all over India for providing an intensive<strong> web design courses online
for beginners</strong> to dive right in, thus exploring effective ways of learning.
                </p>
            </div>
        </div>
    </section>
     <section class="bg-light pd-20">
        <div class="container">
            <div class="col-lg-6 text-justify">
                <h3 class="heading-red"><strong>Learn Web Designing Online - Features </strong></h3>
                <p class="text-info">All you need is an internet connection and you can study with us  – no matter where you live!</p>
                <p><strong>Web Designing Online Course</strong>is great for absolute beginners, having no coding knowledge or
any web development experience. We have designed our<strong> web design online classes</strong> in such a
way that anyone who wants to be an aspiring web designer, blogger, non- programmer etc. finds
it attractive and would expand their skill set.</p>
                <p>We will be using free applications - Notepad++, Brackets and Google Chrome. You can get
started, no matter what type of computer you have - Windows, Mac, Linux.</p>
            </div>


            <div class="col-lg-6">
                <img src="images/learn-web-designing-online-thinknext.jpg" alt="Learn web design Online" title="Learn web design Online" />
            </div>
            <div class="clearfix"></div>
            <div class="col-lg-12 text-justify">
                <p>Everything will be started from the scratch and we will cover different steps and techniques.
There will be the introduction to HTML, HTML5, CSS &amp; CSS3 in the beginning and will
layout the basic structure. Right after that we are going to learn the fundamentals of Bootstrap,
JavaScript &amp; jQuery. Further, we will start with the graphics part which will consist of 3 major
graphics tools: Adobe Photoshop, CorelDRAW and Adobe Illustrator..</p>
                <p>Finally, you&#39;ll put all your knowledge together with full live website projects, domain and
hosting.</p>
                <p>ThinkNEXT provide the highest quality <strong>web design</strong> <strong>training online</strong> offered in the industry. With our&nbsp;<strong>online web design online certification programs</strong>, our goal is to produce the exact same learning experience as in our traditional  classroom based courses.</p>
                <p><strong>What you require for web designing online course?</strong></p>
                <ul class="welcomeLinks">
                    <li>Access to Smart Phone / Computer.</li>
                    <li>Good Internet Connection (Wifi/3G/4G).</li>
                    <li>Good Quality Earphones / Speakers.</li>
                    <li>Basic Understanding of English.</li>
                    <li>Dedication &amp; Confidence to clear any exam.</li>
                    
                </ul>
                <p>
                    <strong>Coding Part:</strong>
                </p>
                <ul class="welcomeLinks">
                    <li>HTML</li>
                    <li>HTML5</li>
                     <li>CSS</li>
                    <li>CSS3</li>
                     <li>JavaScript</li>
                     <li>jQuery</li>
                     <li>Bootstrap</li>
                </ul>
                <p><strong>Graphics Part:</strong></p>
                <ul class="welcomeLinks">
                    <li>Adobe Photoshop</li>
                    <li>CorelDRAW</li>
                    <li>Adobe Illustrator</li>
                </ul>
            </div>
        </div>
    </section>
     <section>
    <section>
         <div class="jackopt-offer-img">
             <br>
              <p class="threetimesaward">4 Times National Award Winner Company</p>

             <img src="images/digital-marketing-course-mohali-sonalibendre.jpg" alt="Online Course Training in India" title="Online Course Training in India">
              <img src="images/digital-marketing-course-mohali-sunielshetty.jpg" alt="Online Course Training in India" title="Online Course Training in India">
             <img src="images/digital-marketing-training-in-mohali-krismak.jpg" alt="Online Course Training in India" title="Online Course Training in India">
             <img src="images/digital-marketing-training-mohali-surindrapal.jpg" alt="Online Course Training in India" title="Online Course Training in India">
            
             <div class="clear-both"></div>
               </div>
            </section>
         
       
      <section class="pd-30 training-highlights">

          <div class="container py-5">
            <h2 class="section-heading text-center"><strong>Training Highlights</strong></h2>
            <div class="row mx-auto">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/learn-from-home.png" alt="Online Course" title="Online Course">
                        </div>
                      
                        <div class="content-container">
                            <h3 class="title">Learn from home</h3>
                            <p class="description">Stay safe indoors</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/video-tutorials.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Professional videos</h3>
                            <p class="description">Learn anytime, anywhere</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/projects.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Build projects</h3>
                            <p class="description">For hands-on practice</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/doubt-clearing.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Doubt clearing</h3>
                            <p class="description">Through Q&amp;A forum</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/beginner-friendly.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Beginner friendly</h3>
                            <p class="description">No prior knowledge required</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/weeks-access.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">6 weeks access</h3>
                            <p class="description">To the platform</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/downloadable-content.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Downloadable content</h3>
                            <p class="description">With lifetime access</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/placement-assistance.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Placement assistance</h3>
                            <p class="description">To build your career</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/certificate-training.png" alt="Online Course" title="Online Course">
                        </div>
                        <div class="content-container">
                            <h3 class="title">Certificate of Training</h3>
                            <p class="description">From ThinkNEXT Technologies</p>
                        </div>
                    </div>
                </div>
                            </div>
        </div>
          
            </section>

    
    
    <section style="background:#38b7be;" id="profiles" class="page pd-30">            
              <h2 class="elecronics"><strong>ThinkNEXT in Media</strong></h2>
  <div class="col-sm-12 pd-lft-0 pd-rght-0">
			<div class="col-lg-8 ">
				<div id="profile-grid">
                   
                  <h2 class="h2"><strong>Print Media</strong></h2> 
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/DivyaHimachal20-03-2020.png" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>
 
				<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/Himprabha.png" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                    	<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/DainikSavera20-03-2010Chandigarh.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>
 
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/Yugmarg-19-03-20-Page-9-ThinkNEXT.jpg" alt="Yugmarg-19-03-20-Page-9-ThinkNEXT" title="Industrial Training Company in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/pehredar.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/DainikBhaskar.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/Punjab-Express-19-03-2020-Page-4.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>
				         
				        </div>
				    </div>
          
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" class="thumb">
				          		<img src="images/TribuneThinkNEXT.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg">
				          	</a>
				          </div>				         
				        </div>

                    </div> 

				</div>
                </div>
            
                       
				    <div class="col-lg-4">
                        <div class="footer-wraper">
                             <h2 class="elecronics">Electronic Media</h2>
                          
                 <a href="http://121newsonlines.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">ThinkNEXT Gets National Recognition-Newsonline</a>
               
                <br> <a href="https://samachardigital.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition</a>
              
                 <br><a href="http://buzzingchandigarh.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020/">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020</a>
                 <br><a href="https://www.cityairnews.com/content/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020 From Bollywood Actress Sonali Bendre
                </a>
                <br> 
                <a href="https://wp.me/p9Qd5a-5gG">Tricity based ThinkNEXT gets national recognition - Chandigarh City News</a>
                <br> <a href="http://chandigarhtoday.org/?p=35942"></a>
                         <a href="https://tricitynewsonline.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Tricitynewsonline</a>
                <br> <a href="http://indianewscalling.com/news/94819-tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-ben.aspx">Tricity based ThinkNEXT gets national recognition</a> <br>
                 <a href="http://www.worldwisdomnews.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre-at-new-delhi/">ट्राइसिटी के डिजिटल मीडिया स्टार्टअप थंक नेक्स्ट को मिली राष्ट्रीय पहचान मोहाली के डिजिटल मीडिया स्टार्टअप थिंक नेक्स्ट को मिला राष्ट्रीय सम्मान</a>
                 <br> <a href="https://samacharvishesh.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Samacharvishesh</a>
                         <br> <a href="https://www.newsnetnow.com/thinknext-gets-national-gratitude-award-from-sonali-bendre/">Tricity based company ThinkNEXT gets National Gratitude Award 2020 from Bollywood Actress Sonali Bendre at New Delhi</a>
              <br>  <a href="https://www.showtimechandigarh.com/post/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-actress-sonali-bendra">Tricity based company ThinkNEXT gets National Gratitude Award 2020 Chief Guest Bollywood Film Actress Sonali Bendre</a>
                <br> <a href="https://thenewschronicle.in/f/thinknext-gets-national-gratitude-award-2020-from-sonali-bendre">ThinkNEXT Technologies Private Limited bagged National Gratitude Award from chief guest Bollywood film actress Sonali Bendre</a>
               <br> <a href="https://chandigarhpost.com/f/tricity-company-thinknext-bags-national-gratitude-award-2020">Tricity Company ThinkNEXT Bags National Gratitude Award</a>
                            <br><br>
                            <br>
            </div>
               </div>
                      
                         <div class="clear-both"></div>
                       <br>
      <p class="hcntr"><span class="htitl"><a href="media.aspx" class="vgalry">View More</a></span></p>             
      
                </div>
                      
       <div class="clear-both"></div>


	</section>
    
      <section class="pd-30 page-div">
<div class="container">
 
     <div class="col-lg-6 col-md-6">
    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/six-months-industrial-training-mohali-thinknext.jpg" title="Six Months Industrial Training in Chandigarh" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
     </div>

    <div class="col-lg-6 col-md-6">

   <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/industrial-training-course-mohali-krishma.jpg" title="Best Industrial Training in Chandigarh" alt="Best Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
          </div>

<div class="col-lg-6 col-md-6" >

<a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/best-industrial-training-company-mohali-sunil.jpg" title="6 Months Industrial Training in Chandigarh" alt="6 Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
</div>
        
<div class="col-lg-6 col-md-6" >

 <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/industrial-training-mohali-award-surinder.jpg" title="Six Months Industrial Training in Chandigarh" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
</div>
  </div>
            <div id="video-view-curtain"><div id="video-view"></div></div>
        </section>

        <div class="clear-both"></div>


         <section class="thinknext-edge-section thinknextwhy pd-30 ">
             <div class="thknxt-edge">
                 <h4 class="text-center">Why Web Design Online Training from ThinkNEXT</h4>
                 <br>
                 <div class="col-lg-6 col-md-6 col-sm-6">

                     <p><i class="fa fa-square"></i><span><strong>4 Times National Award Winning Institute:</strong> <strong>ThinkNEXT</strong> is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>Web Design Online Training</strong> from Google Partner, Facebook Blueprint Certified, Hubspot Certified and Bing Certified Institute</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>Industry Expert Trainers:</strong> We have certified Professionals/Trainers equipped with in-depth knowledge and many years of industry experience</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>Affordable Fees:</strong> Join our Online Training Courses with the lowest fees</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>Professional Online Course in India at ThinkNEXT </strong>with <strong>web design certificate online</strong></span> </p>
                     <p><i class="fa fa-square"></i><span><strong>One on one attention by mentors</strong>: Enjoy the undivided attention of the mentor to learn faster</span> </p>

                 </div>

                 <div class="col-lg-6 col-md-6 col-sm-6">
                     <p><i class="fa fa-square"></i><span>Step-by-step live demonstrations for each software/technology</span> </p>
                     <p><i class="fa fa-square"></i><span>Personalized study and training plans are provided as you progress through the course</span> </p>
                     <p><i class="fa fa-square"></i><span>Have the exact same learning experience as being in a traditional classroom training</span> </p>
                     <p><i class="fa fa-square"></i><span>Same projects and evaluation techniques will be followed like classroom courses</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>Interview Question Answer Preparation:</strong> Assistance is provided for the basic interview questions answers. Get all the tips and tricks to crack the interview</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>100% Placement Support: </strong>We have an expert team to line up your placement calls until you get the job</span> </p>
                     <p><i class="fa fa-square"></i><span><strong>Grooming Sessions: </strong>Spoken English, Personality Development</span> </p>

                 </div>
                 <div class="clear-both"></div>

             </div>

         </section> 

         <section class="pd-30">
             <div class="container">
                 <h3 class="heading-red"><strong>What will be the training syllabus?</strong></h3>
                 <br />
                 <p class="bg-primary pd-10" style="width: fit-content;"><strong>HTML - Hypertext Markup Language</strong></p>

                 <div class="col-lg-7">
                     <ul class="welcomeLinks">
                         <li>HTML - Introduction</li>
                         <li>HTML - Elements</li>
                         <li>HTML - Tags</li>
                         <li>HTML - Text</li>
                         <li>HTML - Formatting</li>
                         <li>HTML - Pre</li>
                         <li>HTML - Attributes</li>
                         <li>HTML - Font</li>
                         <li>HTML - Text Links</li>
                         <li>HTML - Comments</li>
                         <li>HTML - Lists</li>
                         <li>HTML - Images</li>
                         <li>HTML - Image Links</li>
                         <li>HTML - Tables</li>
                         <li>HTML - Bgcolor</li>
                         <li>HTML - Color Codes</li>
                         <li>HTML - Color Chart</li>
                         <li>HTML - Background</li>
                         <li>HTML - Forms</li>
                         <li>HTML - Input</li>
                         <li>HTML - Text Fields</li>
                         <li>HTML - Password</li>
                         <li>HTML - Reset</li>
                         <li>HTML - Submit</li>


                     </ul>
                 </div>
                 <div class="col-lg-5">
                     <ul class="welcomeLinks">
                         <li>HTML - Checkboxes</li>
                         <li>HTML - Radio</li>
                         <li>HTML - Select</li>
                         <li>HTML - Hidden Fields</li>
                         <li>HTML - Upload</li>
                         <li>HTML - Textarea</li>
                         <li>HTML - Body</li>
                         <li>HTML - Meta</li>
                         <li>HTML - Style</li>
                         <li>HTML - Div</li>
                         <li>HTML - Layouts</li>
                         <li>HTML - Frames</li>
                         <li>HTML - Bold</li>
                         <li>HTML - Paragraphs</li>
                         <li>HTML - Headings</li>
                         <li>HTML - Line Breaks</li>
                         <li>HTML - Horizontal Rule</li>
                         <li>HTML - Email</li>
                         <li>HTML - Italic</li>
                         <li>HTML - Code</li>
                         <li>HTML - Superscript</li>
                         <li>HTML - Subscript</li>
                         <li>HTML - Strikethrough</li>
                     </ul>
                 </div>
                 <div class="clear-both"></div>
                 <hr />
                 <p class="bg-primary pd-10" style="width: fit-content;"><strong>CSS - Cascading Style Sheets</strong></p>

                 <div class="col-lg-7">

                     <p><strong>CSS Introduction </strong></p>
                     <ul class="welcomeLinks">
                         <li>CSS Syntax</li>
                         <li>CSS Id &amp; Class</li>
                         <li>CSS How</li>
                     </ul>
                     <br />
                     <p><strong>CSS Styling </strong></p>
                     <ul class="welcomeLinks">
                         <li>Styling Backgrounds</li>
                         <li>Styling Text</li>
                         <li>Styling Fonts</li>
                         <li>Styling Links</li>
                         <li>Styling Lists</li>
                         <li>Styling Tables</li>
                     </ul>
                     <br />
                 </div>

                 <div class="col-lg-5">
                     <p><strong>CSS Box Model </strong></p>
                     <ul class="welcomeLinks">
                         <li>CSS Border</li>
                         <li>CSS Outline</li>
                         <li>CSS Margin</li>
                         <li>CSS Padding</li>
                         <li>CSS Dimension</li>
                         <li>CSS Display</li>
                         <li>CSS Positioning</li>
                         <li>CSS Floating</li>
                         <li>CSS Navigation Bar</li>
                         <li>CSS Image Gallery</li>
                         <li>CSS Image Opacity</li>
                         <li>CSS Align</li>
                     </ul>
                 </div>

                 <div class="clear-both"></div>
                 <hr />
                 <p class="bg-primary pd-10" style="width: fit-content;"><strong>Javascript</strong></p>

                 <div class="col-lg-7">
                     <p><strong>Introduction </strong></p>
                     <ul class="welcomeLinks">
                         <li>JavaScript Overview</li>
                         <li>JavaScript Syntax</li>
                         <li>Type of JavaScript</li>
                         <li>Embedding Script In HTML File</li>
                         <li>Variable</li>
                     </ul>
                     <br />
                     <p><strong>Operators </strong></p>
                     <ul class="welcomeLinks">
                         <li>Arithmetic</li>
                         <li>Logical</li>
                         <li>Comparison</li>
                         <li>Assignment</li>
                         <li>Conditional</li>
                     </ul>
                     <br />
                     <p><strong>Conditional Statement &amp; Looping Statement </strong></p>
                     <ul class="welcomeLinks">
                         <li>If</li>
                         <li>Else</li>
                         <li>Switch</li>
                         <li>While</li>
                         <li>Do/while</li>
                         <li>For</li>
                     </ul>
                     <br />

                 </div>
                 <div class="col-lg-5">
                     <p><strong>Function &amp; Object </strong></p>
                     <ul class="welcomeLinks">
                         <li>Passing Parameter to function</li>
                         <li>Returning a value from function</li>
                         <li>Creating Object</li>
                         <li>Accessing Object Properties &amp;</li>
                     </ul>
                     <br />
                     <p><strong>Method </strong></p>
                     <ul class="welcomeLinks">
                         <li>Array Object</li>
                         <li>String Object</li>
                         <li>Date Object</li>
                         <li>Math Object</li>
                         <li>Window Object</li>
                         <li>Navigator Object</li>
                     </ul>
                     <br />
                     <p><strong>Event Type </strong></p>
                     <ul class="welcomeLinks">
                         <li>Mouse Events</li>
                         <li>Frame/Object Events</li>
                         <li>Form Events</li>
                     </ul>
                 </div>
                 <div class="clear-both"></div>
                 <hr />
                 <p class="bg-primary pd-10" style="width: fit-content;"><strong>Adobe Photoshop</strong></p>

                 <div class="col-lg-7">
                     <p><strong>Introduction and Overview of Photoshop </strong></p>
                     <ul class="welcomeLinks">
                         <li>About Photoshop</li>
                         <li>Pixels and Vector Images</li>
                         <li>User interface</li>
                         <li>Creating new workspace.</li>
                         <li>Opening existing workspace</li>
                         <li>Closing workspace</li>
                         <li>Exploring Toolbox</li>
                     </ul>
                     <br />
                     <p><strong>Working with Selection </strong></p>
                     <ul class="welcomeLinks">
                         <li>Moving a selected area</li>
                         <li>Using Rectangular marquee tool, Elliptical marquee tool</li>
                         <li>Selecting with the lasso tools</li>
                         <li>Using the quick selection tool</li>
                         <li>Using the magic wand tool</li>
                     </ul>
                     <br />
                     <p><strong>Resizing &amp; cropping Images </strong></p>
                     <ul class="welcomeLinks">
                         <li>Understanding Pixels &amp; Resolution</li>
                         <li>Adjusting Images size</li>
                         <li>Cropping an Image</li>
                         <li>Adjusting Canvas Size and Canvas Rotation</li>
                         <li>Working with Rulers, Guides</li>
                     </ul>
                     <br />
                     <p><strong>Photo Retouching </strong></p>
                     <ul class="welcomeLinks">
                         <li>Spot healing brush tool</li>
                         <li>Patch and Healing brush tool</li>
                         <li>The Red eye tool</li>
                         <li>color Replacement tool</li>
                         <li>The Clone stamp &amp; Pattern stamp tools</li>
                         <li>The history brush tool &amp; art history brush tool</li>
                         <li>Using Blur, Sharpen, Smudge tool</li>
                         <li>Using Dodge, Burn, Sponge tool</li>
                     </ul>
                     <br />
                     <p><strong>Vector Image Creation in Photoshop </strong></p>
                     <ul class="welcomeLinks">
                         <li>Using the Pen tool</li>
                         <li>Pen tool modifier Keys</li>
                         <li>Path Selection</li>
                         <li>Modifying paths</li>
                         <li>Creating Vector Shapes</li>
                         <li>Creating Custom Shapes</li>
                     </ul>
                     <br />

                 </div>

                 <div class="col-lg-5">
                     <p><strong>Panting In Photoshop </strong></p>
                     <ul class="welcomeLinks">
                         <li>Using the Brush tool</li>
                         <li>Working with color and Swatches</li>
                         <li>Using Gradients</li>
                         <li>Working with Brushes</li>
                         <li>Using the Pencil &amp; Eraser tools</li>
                     </ul>
                     <br />
                     <p><strong>Working with Text </strong></p>
                     <ul class="welcomeLinks">
                         <li>Text Layers</li>
                         <li>Creating &amp; Modifying Text</li>
                         <li>Styling texts</li>
                         <li>Character &amp; Paragraph Adjustment</li>
                         <li>Creating path outlines from text</li>
                         <li>Wrapping text</li>
                     </ul>
                     <br />
                     <p><strong>Working with Layers </strong></p>
                     <ul class="welcomeLinks">
                         <li>Understanding the Background Layer</li>
                         <li>Creating, Selecting, Deleting Layers</li>
                         <li>Locking &amp; Merging Layers</li>
                         <li>Copying layers, Duplicate Layers &amp; Layers style</li>
                         <li>Filling &amp; Grouping Layers</li>
                         <li>Blending Modes, Opacity &amp; Fill</li>
                     </ul>
                     <br />
                     <p><strong>Working Adjustment Layers </strong></p>
                     <ul class="welcomeLinks">
                         <li>Levels, Auto Levels, Auto Contrast</li>
                         <li>Change the brightness or contrast of Image etc...</li>
                     </ul>
                     <br />
                     <p><strong>Creating Special Effect </strong></p>
                     <ul class="welcomeLinks">
                         <li>Working with Photoshop Filter</li>
                         <li>Smart Filter</li>
                         <li>Creating Text effect</li>
                         <li>Creating Effect on Image</li>
                     </ul>
                     <br />
                     <p><strong>Importing &amp; Exporting Images </strong></p>
                     <ul class="welcomeLinks">
                         <li>Saving with Different File Format</li>
                         <li>Saving for Web &amp; Devices</li>
                         <li>Printing option</li>
                     </ul>
                     <p><strong>Design Logo</strong></p>
                     <p><strong>Banners</strong></p>
                     <p><strong>&nbsp;Business Card &amp; Website Layout</strong></p>
                     <p><strong>&nbsp;Brochures etc.</strong></p>
                 </div>
             </div>
         </section>
    

   

   

 
   

    

    

    <div class="page-div">

              
              
   <section id="profiles" class="page">
  <br />
			<div class="col-lg-12">
				<div id="profile-grid">


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
				          		<img  src="images/asia-quality-entreprenuership-award.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
 
				<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
				          		<img  src="awards-img/award-image11.jpg" alt="Best Industrial training in Chandigarh" title="Best Industrial training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                    	<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
				          		<img  src="images/digital-marketing-course-mohali-surinder.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
 
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
				          		<img  src="images/awards-1.jpg" alt="Industrial Training Company in Chandigarh" title="Industrial Training Company in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
				          		<img  src="images/awards-2.jpg" alt="Summer Training in Chandigarh" title="Summer Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
				          		<img  src="images/Leadership-Summit-2019-Award.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT taking Award" class="thumb">
				          		<img  src="images/digital-marketing-course-mohali-cricket.JPG" alt="6 Month industrial training in Chandigarh" title="6 Month industrial training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

          
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
				          		<img src="images/Digital-Marketing-Training-in-Mohali-chitkara.jpg" alt="Online Course Training in India" title="Digital Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>


                      <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
				          		<img src="images/Digital-marketing-course-mohali-vikas.jpg" alt="Online Course Training in India" title="Digital Marketint Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>  
				        </div>
				    </div>
                           </div>
					<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
				          		<img  src="images/digital-marketing-course-mohali-dc.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
				          		<img  src="images/digital-marketing-course-mohali-vikas-award.jpeg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
				
				
                  
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/ThinkNEXT-Frontdesk.JPG" alt="Online Course Training in India" title="Online Course Training in India  " class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/Android-lab.JPG" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/galleryjob-fair7.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  

                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/page-5_img-4-b.jpg" alt="PPC Company in Chandigarh" title="PPC Company in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>               
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/THINKNEXT-b.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>


                      
                  
                    <div class="clear-both"></div>
                       <br />
      <p class="hcntr"><span class="htitl"><a href="photogallery.aspx" class="vgalry">View More</a></span></p>
  
   			
			</div>
        </div>
       <div class="clear-both"></div>


	</section>
	
           

	<!-- light-box modelBox -->
	<div class="modal fade modal-profile gallerylightbox" tabindex="-1" role="dialog" aria-labelledby="modalProfile" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal">X</button>
						<h3 class="modal-title"></h3>
					</div>
					<div class="modal-body">
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
        
			</div>
		</div>
	<!--/// End light-box modelBox -->
        
       <section>
   <div class="col-lg-8"> 
       <div class="col-lg-12">
           <div class="faq mt-0">
                   <h2 class="text-left">Online Training - FAQs</h2>

            <div itemscope itemtype='https://schema.org/FAQPage'>
<div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
<h3 itemprop='name'> Q 1. Do I have to be a ThinkNEXT student to take an online course?</h3>
 <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> 
 <div itemprop='text'> <p><strong>Ans.</strong> No, our online training programs are open to everyone in India</p></div> 
 </div> 
 </div> 

 <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
<h3 itemprop='name'> Q 2. Who can join online training courses at ThinkNEXT? </h3>
 <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> 
 <div itemprop='text'><p><strong>Ans. </strong> Students, irrespective of their diverse backgrounds, professions, and age groups, can join our online courses</p> </div> 
 </div> 
 </div> 

<div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
<h3 itemprop='name'> Q 3. Are there any prerequisites or language requirements for online training at ThinkNEXT? </h3>
 <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> 
 <div itemprop='text'> <p><strong>Ans.</strong> There are no prerequisites. All courses are conducted in English and Hindi. For better retention, video lectures include English subtitles and the option to slow-down, pause, or replay lectures.</p></div> 
 </div> 
 </div> 

<div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
<h3 itemprop='name'> Q 4. Can I take more than one online course at a time at ThinkNEXT?</h3>
 <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> 
 <div itemprop='text'> <p><strong>Ans.</strong> You need to have an up-to-date web browser such as: Chrome, Safari, Firefox, or Internet Explorer. <br /> Other than that, we strongly encourage you to have access to a desktop or laptop computer and reliable internet connection.</p> </div> 
 </div> 
 </div> 
 
  <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
<h3 itemprop='name'> Q 5. Do I need specific equipment to take Online Courses at ThinkNEXT?</h3>
 <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> 
 <div itemprop='text'> <p><strong>Ans.</strong> You need to have an up-to-date web browser such as: Chrome, Safari, Firefox, or Internet Explorer. <br />
Other than that, we strongly encourage you to have access to a desktop or laptop computer and reliable internet connection.
</p> </div> 
 </div> 
 </div> 
   
</div>
</div>

       </div>
       </div>
           <div class="col-lg-4"> 
               
<span class="abythknxt-hdng">Career Counselling</span>
                  
<div class="rounded_box career-counseling">
     
<div class="contt"> 

              <div class="person-img"><img src="images/Munish-Mittal.jpg" alt="Munish Mittal ThinkNEXT" /></div>
                 <div> Speak to the Munish Mittal to know what's the best course for your career. Just call us on Munish Mittal  personal number for free career guidance. <br/> <br/>Thankyou!
                                                               </div>               
                            
     <div class="career-counseling-number"><span>+91 8360 052 717</span></div>

</div>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>
       
            <br />
        <div class="rounded_box course-video text-center">
         <div class="right_box margin-top">
     <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&amp;tabs=Thinknext&amp;width=244&amp;height=380&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId" scrolling="no"></iframe>
       </div>

     </div>

               <br />
                   
           </div>
           
   <div class="clear-both"></div>
</section>

  

   <div class="clear-both"></div>
        
    
   
    </div>
        <!-- // START Social Share Script-Code with likes ---------->
       <!-- // START Social Share Script  and Css  with Likes-->
 
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javasript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script  and Css with Likes  -->
   <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook", "linkedin", "pinterest", "reddit", "twitter",  "whatsapp"
    ],
  
    url: "http://www.thinknexttraining.com/web-designing-online-course.aspx"
  });
</script>
    <script>
        var deadline = new Date("september 1, 2020 23:59:00").getTime();
        var x = setInterval(function () {
            var currentTime = new Date().getTime();
            var t = deadline - currentTime;
            var days = Math.floor(t / (1000 * 60 * 60 * 24));
            var hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((t % (1000 * 60)) / 1000);
            document.getElementById("day").innerHTML = days;
            document.getElementById("hour").innerHTML = hours;
            document.getElementById("minute").innerHTML = minutes;
            document.getElementById("second").innerHTML = seconds;
            if (t < 0) {
                clearInterval(x);
                document.getElementById("time-up").innerHTML = "TIME UP";
                document.getElementById("day").innerHTML = '0';
                document.getElementById("hour").innerHTML = '0';
                document.getElementById("minute").innerHTML = '0';
                document.getElementById("second").innerHTML = '0';
            }
        }, 1000);

    </script>
</asp:Content>
