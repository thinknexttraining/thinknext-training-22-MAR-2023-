<%@ Page Title="PHP Online Training - Learn PHP Online | ThinkNEXT " Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="php-online-training.aspx.vb" Inherits="php_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
<meta name="description" content=" PHP Online Training - Join PHP Online Course with Certificate at ThinkNEXT and learn PHP Online in a very easy and fast way. Be a part of best PHP Online Classes." />
<meta name="keywords" content="php online training, learn php online, php online course, online php course with certificate, best php course online, php online classes, php developer course online, learn php online course" />
 <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/php-training.png" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/php-training.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after" />
<meta name="robots" content="index, follow" />

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


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="pd-30" style="background-image: url('images/technology-blue-background.jpg'); background-size: cover;">
        <div class="container">
            <div class="col-lg-7 col-md-7 col-sm-6 text-justify ptb-50">
                <span class="bg-info plr-20 ptb-10">Certified Training</span>
                <h2 class="fa-5x text-white main-head text-left"><strong>PHP Online Training</strong></h2>
                <div style="border: 3px solid orange;"></div>
                <br />
                <p class="text-white"><strong>Become PHP Expert and Boost your Career. Enroll Now </strong></p>
                <br />
                <div class="col-sm-12 pd-0 ">
                    <div class="col-sm-2 text-center">
                        <p><strong class="bg-white pd-10 img-rounded"><span><i class="fa fa-star text-orange"></i>4.9</span></strong></p>
                        <br />
                    </div>
                    <div class="col-sm-6 text-center">
                        <p><strong class="bg-white pd-10 img-rounded"><span>Placement Assistance</span></strong></p>
                        <br />
                    </div>
                    <div class="col-sm-4 text-center">
                        <p><strong class="bg-white pd-10 img-rounded"><span>31,465  Enrolled</span></strong></p>
                        <br />
                    </div>
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

                <div class="right_box margin-top display-none">
                    <div class="without_border dwl">
                        <div class="brochiframe" id="brochiframe">

                            <iframe name="broucher"></iframe>

                            <img class="closebrochureiframe" alt="Online Course Training in India" src="images/close.png" onclick="clsifrm()" />

                        </div>

                        <a href="BroucherDownload.aspx?data=Digital Marketing Broucher" onclick="broucherdownload();" target="broucher">
                            <img src="images/download_brochure.png" border="0" alt="Brochure" />
                        </a>

                    </div>
                </div>

                <div class="loading" align="center">
                    <%--Loading. Please wait.<br />--%>

                    <img src="images/loader.gif" alt="Python Online Course Training in India" />
                </div>


                <div class="right_box margin-top">

                    <div class="rounded_box">

                        <table class="table2" id="tb1">
                            <tr>
                                <td>
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <strong>Full Name: </strong>
                                    <asp:TextBox ID="txtName" runat="server" class="input" placeholder="Name"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <strong>Mobile Number:</strong>
                                    <asp:TextBox ID="txtMobile" runat="server" class="input"
                                        MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <strong>E-mail ID</strong>
                                    <asp:TextBox ID="txtEmailId" runat="server" class="input" placeholder="E-mail ID"></asp:TextBox>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                                    <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="PHP Online Training" ReadOnly="true"></asp:TextBox>
                                <tr>
                                </tr>
                            <tr>
                                <td>
                                    <p class="mb-0"><i class="fa fa-inr" aria-hidden="true"></i><strong><span class="decoration-line-through">4999/-</span>  <span class="textred">2000/-</span></strong> &nbsp; &nbsp; Valid till 1th September </p>
                                    <p class="mb-0 text-primary text-center"><strong>(Don't miss this opportunity)</strong></p>
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <asp:Button ID="btnsubmit" runat="server" Text="SIGN UP" CssClass="buton" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>


                <span class="abythknxt-hdng display-none">Book My Free Demo Class Now! </span>

                <div class="rounded_box display-none">
                    <table class="table2" id="tb2">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>

                            <td>
                                <asp:TextBox ID="txtdemoName" runat="server" class="input" placeholder="Name"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>

                            <td>
                                <asp:TextBox ID="txtdemoMblno" runat="server" class="input"
                                    MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>

                            <td>
                                <asp:TextBox ID="txtdemoEmail" runat="server" class="input" placeholder="E-mail ID"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:TextBox ID="txtdemoMsg" class="input" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />

                            </td>
                        </tr>
                        <tr>

                            <td>
                                <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass="buton" />
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
                <h1>PHP Online Training</h1>
                <p><strong class="heading-red">Are you looking for PHP Online Training?</strong></p>
                <p><strong class="heading-red">Do you want to Learn PHP Online?</strong></p>
                <p><strong class="heading-red">Are you looking for Online PHP Course with Certificate?</strong></p>
                <p><strong class="text-info">If Yes, then</strong></p>
                <p><strong class="text-info">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                <p><strong class="text-info">You are at ThinkNEXT Technologies Private Limited </strong></p>
                <p><strong class="text-info">&nbsp; -Biggest brand for PHP Online Course</strong></p>
                <p><strong class="text-info">&nbsp; -Best PHP Certification Online</strong></p>
                <p class="text-justify"><strong>ThinkNEXT Technologies Private Limited</strong>&nbsp;has introduced <strong>PHP Online Training</strong> for those who can easily avail the <strong>PHP Online Classes</strong> anywhere in India, in order to teach dynamic web programming in an easy and fast way. The motive of <strong>online PHP course with certificate </strong>at ThinkNEXT is to help students to master this trending programming language today, in order to become a successful web developer tomorrow. ThinkNEXT&rsquo;s <strong>best PHP course online</strong> will provide its students step-by-step-instructions on how to create a dynamic website with the help of practical hand-on training.</p>
                <p class="textred text-center"><strong>ThinkNEXT’s Online Courses - The best way to learn PHP Online</strong></p>
                <p class="text-justify">Learn how to become an expert in developing web applications from a professional ISO 9001:2015 Certified <strong>PHP online training </strong>institute in India which has been imparting training over a decade now. ThinkNEXT is felicitated 4 times with the <a href="https://www.youtube.com/watch?v=FO8mzUt7Et4">National Awards</a> in the field of Industrial Training, Web Development &amp; Digital Marketing.</p>
            </div>
        </div>
    </section>
    <section class="bg-light pd-20">
        <div class="container">
            <div class="col-lg-6 text-justify">
                <h3 class="heading-red"><strong>Learn PHP Online - Features </strong></h3>
                <p class="text-info">All you need is an internet connection and you can learn PHP online with us – no matter where you live!</p>
                <p><strong>PHP and MySQL</strong>&nbsp;are incredibly powerful open source technologies thus allowing people to create functional websites and apps. Anyone, with no background in coding, can easily learn how to put together a functional web app with the help of our <strong>PHP online training.</strong></p>
                <p>Everything will be started from the scratch and you will learn to create your own web apps with the use of <strong>PHP &amp; MySQL</strong>.</p>
            </div>


            <div class="col-lg-6">
                <img src="images/learn-php-online-thinknext.jpg" alt="Learn PHP Online" title="Learn PHP Online" />
            </div>
            <div class="clearfix"></div>
            <div class="col-lg-12 text-justify">
                <p>ThinkNEXT&rsquo;s <strong>PHP Online Course</strong> provides in-depth knowledge of modules: HTML, HTML5, CSS3, JavaScript, jQuery, AJAX, Adobe Dreamweaver, Core PHP, MySQL. Students will also learn a range of&nbsp;advanced PHP and MySQL techniques, WordPress, Joomla, Drupal, Majento, MVC.</p>
                <p>Moreover, real-time projects will be included in order to provide in-depth knowledge related to advanced PHP concepts.</p>
                <p>Finally, course completion certificate will be awarded to all the trainees after successful completion of the <strong>PHP online course</strong> from a reputed online training platform like ThinkNEXT.</p>
                <p>ThinkNEXT provide the highest quality <strong>PHP</strong> <strong>training online</strong> offered in the industry. With our&nbsp;<strong>PHP online certification course</strong>, our goal is to produce the exact same learning experience as in our traditional <a href="http://www.thinknexttraining.com/php-training-in-chandigarh.aspx">PHP classroom training</a>.</p>
              <h3 class="heading-red"><strong>PHP Certification Online - ThinkNEXT </strong></h3>
                 <p><p>Kickstart your career with an industry recognized <strong>PHP Certification Online</strong> from ThinkNEXT.</p>
<p>Upon completing the PHP course, which involves the conclusion of the theoretical and practical sessions to freshers as well as corporate trainees, you will be presented with an esteemed ThinkNEXT <strong>PHP Online Course Certification</strong>.</p>
<p>Our certification at ThinkNEXT is accredited worldwide. Earning our <strong>PHP Certification</strong> will help you to enhance the value of your resume, thus standing you out among your peers and you can attain leading job posts with the help of this certification in leading MNC&rsquo;s of the world projects.</p></p>
                 <p><strong>Pre-requisites:</strong></p>
                <ul class="welcomeLinks">
                    <li>Prior knowledge of <a href="http://www.thinknexttraining.com/web-designing-training-in-chandigarh.aspx">HTML</a> is necessary</li>
                    <li>Knowledge of any scripting/ programming language will also be beneficial</li>
                </ul>
            </div>
        </div>
    </section>

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



    <section style="background: #38b7be;" id="profiles" class="page pd-30">
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

                    <br>
                    <a href="https://samachardigital.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition</a>

                    <br>
                    <a href="http://buzzingchandigarh.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020/">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020</a>
                    <br>
                    <a href="https://www.cityairnews.com/content/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020 From Bollywood Actress Sonali Bendre
                    </a>
                    <br>
                    
                    <a href="https://wp.me/p9Qd5a-5gG">Tricity based ThinkNEXT gets national recognition - Chandigarh City News</a>
                    <br>
                    <a href="http://chandigarhtoday.org/?p=35942"></a>
                    <a href="https://tricitynewsonline.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Tricitynewsonline</a>
                    <br>
                    <a href="http://indianewscalling.com/news/94819-tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-ben.aspx">Tricity based ThinkNEXT gets national recognition</a>
                    <br>
                    <a href="http://www.worldwisdomnews.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre-at-new-delhi/">ट्राइसिटी के डिजिटल मीडिया स्टार्टअप थंक नेक्स्ट को मिली राष्ट्रीय पहचान मोहाली के डिजिटल मीडिया स्टार्टअप थिंक नेक्स्ट को मिला राष्ट्रीय सम्मान</a>
                    <br>
                    <a href="https://samacharvishesh.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Samacharvishesh</a>
                    <br>
                    <a href="https://www.newsnetnow.com/thinknext-gets-national-gratitude-award-from-sonali-bendre/">Tricity based company ThinkNEXT gets National Gratitude Award 2020 from Bollywood Actress Sonali Bendre at New Delhi</a>
                    <br>
                    <a href="https://www.showtimechandigarh.com/post/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-actress-sonali-bendra">Tricity based company ThinkNEXT gets National Gratitude Award 2020 Chief Guest Bollywood Film Actress Sonali Bendre</a>
                    <br>
                    <a href="https://thenewschronicle.in/f/thinknext-gets-national-gratitude-award-2020-from-sonali-bendre">ThinkNEXT Technologies Private Limited bagged National Gratitude Award from chief guest Bollywood film actress Sonali Bendre</a>
                    <br>
                    <a href="https://chandigarhpost.com/f/tricity-company-thinknext-bags-national-gratitude-award-2020">Tricity Company ThinkNEXT Bags National Gratitude Award</a>
                    <br>
                    <br>
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
                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/six-months-industrial-training-mohali-thinknext.jpg" title="Six Months Industrial Training in Chandigarh" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>

            <div class="col-lg-6 col-md-6">

                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/industrial-training-course-mohali-krishma.jpg" title="Best Industrial Training in Chandigarh" alt="Best Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>

            <div class="col-lg-6 col-md-6">

                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/best-industrial-training-company-mohali-sunil.jpg" title="6 Months Industrial Training in Chandigarh" alt="6 Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>

            <div class="col-lg-6 col-md-6">

                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/industrial-training-mohali-award-surinder.jpg" title="Six Months Industrial Training in Chandigarh" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>
        </div>
        <div id="video-view-curtain">
            <div id="video-view"></div>
        </div>
    </section>

    <div class="clear-both"></div>


    <section class="thinknext-edge-section thinknextwhy pd-30 ">
        <div class="thknxt-edge">
            <h4 class="text-center">Why PHP Online Training from ThinkNEXT</h4>
            <br>
            <div class="col-lg-6 col-md-6 col-sm-6">

                <p><i class="fa fa-square"></i><span><strong>4 Times National Award Winning Institute:</strong> <strong>ThinkNEXT</strong> is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020 </span></p>
                <p><i class="fa fa-square"></i><span>ISO 9001:2015 Certified Software, Electronics and CAD/CAM Systems Development Private Limited Company </span></p>
                <p><i class="fa fa-square"></i><span><strong>Learn PHP Online</strong> from Google Partner, Facebook Blueprint Certified, Hubspot Certified and Bing Certified Institute </span></p>
                <p><i class="fa fa-square"></i><span><strong>Industry Expert Trainers:</strong> We have certified senior PHP industrial working Professionals/Trainers equipped with in-depth knowledge of <strong>PHP Online Course</strong> and 10+ years of industry experience in working with the technology </span></p>
                <p><i class="fa fa-square"></i><span><strong>Affordable Fees:</strong> Join our <strong>Online PHP Classes</strong> with the lowest fees </span></p>
                <p><i class="fa fa-square"></i><span>Professional <strong>PHP Online Course in India</strong> at <strong>ThinkNEXT</strong> with <strong>PHP certification online</strong> </span></p>
                <p><i class="fa fa-square"></i><span>Step-by-step live demonstrations for each software/technology </span></p>
                <p><i class="fa fa-square"></i><span>Our <strong>PHP online training </strong>program is based on real-time projects and current industry standards </span></p>

            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <p><i class="fa fa-square"></i><span><strong>One on one attention by mentors</strong>: Enjoy the undivided attention of the mentor to learn faster </span></p>
                <p><i class="fa fa-square"></i><span>Flexible payment options like Credit/Debit Cards, NEFT, Paytm and Direct Deposit. </span></p>
                <p><i class="fa fa-square"></i><span>Personalized study and training plans are provided as you progress through the course </span></p>
                <p><i class="fa fa-square"></i><span>Have the exact same learning experience as being in a traditional <strong>PHP classroom training</strong> </span></p>
                <p><i class="fa fa-square"></i><span>Same projects and evaluation techniques will be followed like PHP classroom courses </span></p>
                <p><i class="fa fa-square"></i><span><strong>Interview Question Answer Preparation:</strong> Assistance is provided for the basic interview questions answers. Get all the tips and tricks to crack the interview </span></p>
                <p><i class="fa fa-square"></i><span><strong>100% Placement Support: </strong>We have an expert team to line up your placement calls until you get the job </span></p>
                <p><i class="fa fa-square"></i><span><strong>Grooming Sessions: </strong>Spoken English, Personality Development </span></p>
            </div>
            <div class="clear-both"></div>

        </div>

    </section>

    <section class="pd-30">
        <div class="container">
            <h3 class="bg-primary pd-10 text-center" style="width: fit-content;"><strong>What will be the training syllabus?</strong></h3>
            <br />
            <div class="col-lg-6">
                <strong class="textred">Module 1:HTML</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to HTML </li>
                    <li>Html Basic Tag </li>
                    <li>HTML Image </li>
                    <li>Hyperlink </li>
                    <li>HTML List </li>
                    <li>HTML Table </li>
                    <li>HTML Div </li>
                    <li>HTML Frame </li>
                    <li>HTML Forms </li>
                    <li>HTML Font </li>
                    <li>Marquee Tag and Various Other Tags and Features </li>

                </ul>

                <strong class="textred">Module 2:HTML5 </strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to HTML5 </li>
                    <li>What’s new in HTML5 </li>
                    <li>HTML5 Features </li>
                    <li>HTML5 Doc Type </li>
                    <li>New Structure Tags </li>
                    <li>Section </li>
                    <li>Nav </li>
                    <li>Article  </li>
                    <li>Aside    </li>
                    <li>Header </li>
                    <li>Footer </li>
                    <li>New Media Tags </li>
                    <li>Audio and Video tags </li>

                </ul>
                <strong class="textred">Module 3:DHTML (CSS)</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to CSS  </li>
                    <li>CSS Background    </li>
                    <li>CSS Margin </li>
                    <li>CSS Padding </li>
                    <li>CSS Border </li>
                    <li>CSS Float </li>
                    <li>CSS Links </li>
                    <li>CSS Text   </li>
                    <li>CSS Outline  </li>

                </ul>
                <strong class="textred">Module 4:Cascading Style Sheets (CSS 3)</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to CSS 3 </li>
                    <li>Basic CSS3 Selectors </li>
                    <li>Advanced CSS3 Selectors </li>
                    <li>New CSS3 Properties  </li>
                    <li>CSS Rounded Corners  </li>
                    <li>Box Shadow  </li>
                    <li>Text Shadow Property </li>
                    <li>Text Stroke Property      </li>
                    <li>CSS Gradients    </li>
                    <li>Opacity </li>

                </ul>

                <strong class="textred">Module 5:Working Knowledge of JavaScript</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to JavaScript </li>
                    <li>Introducing variables  objects </li>
                    <li>Introduction to Event Handlers </li>
                    <li>Document Object,  </li>
                    <li>Images, Links, Forms </li>
                    <li>Form Validations </li>
                    <li>Slider Effects </li>
                    <li>JavaScript Transition Effects </li>

                </ul>

                <strong class="textred">Module 6:jQuery (Javascript Library)</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction and Installation  </li>
                    <li>Syntax </li>
                    <li>jQuery Selectors </li>
                    <li>jQuery Events  </li>
                    <li>jQuery Effects  </li>
                    <li>jQuery Animation </li>

                </ul>

                <strong class="textred">Module 7:AJAX (Pre-Requisite:ServerEnd Technology) </strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction  </li>
                    <li>XMLHttpRequest Object </li>
                    <li>Creating a Request Object  </li>
                    <li>Sending a Request to Server </li>
                    <li>Receiving a Response From The Server </li>
                    <li>ReadyState and Status of a Request </li>

                </ul>
                <strong class="textred">Module 8:Adobe Dreamweaver CS5</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to Adobe Dreamweaver DW5 </li>
                    <li>Dreamweaver Interface Basics </li>
                    <li>Type of Views </li>
                    <li>Defining a Dreamweaver Site </li>
                    <li>Standard Tool Bar </li>
                    <li>Multiple Browser Previews </li>
                    <li>Anchor Links </li>
                    <li>Insert Table </li>
                    <li>Insert Div </li>
                    <li>Inserting Images </li>
                    <li>Inserting Tables </li>
                    <li>Text Tags </li>
                    <li>Forms in Dreamweaver </li>
                    <li>Input Tags </li>
                    <li>Select Tag / List Tag / Opt Group </li>
                    <li>Buttons (Submit and Reset) </li>
                    <li>File Type / Encoding Type </li>

                </ul>


            </div>
            <div class="col-lg-6">

                <strong class="textred">Module 9:Core PHP</strong>
                <ul class="welcomeLinks text-justify">
                    <li>PHP Introduction </li>
                    <li>PHP Basic </li>
                    <li>How to Install PHP </li>
                    <li>Basic Syntax of PHP </li>
                    <li>PHP Variables & Data Type </li>
                    <li>Date Time Function </li>
                    <li>Regular Expressions </li>
                    <li>PHP Operators </li>
                    <li>PHP Arrays </li>
                    <li>String Handing in PHP </li>
                    <li>Session And Cookie </li>
                    <li>PHP Function </li>
                    <li>PHP Forms </li>
                    <li>File Handing </li>
                    <li>PHP $Get Method </li>
                    <li>PHP $ Post Method </li>
                    <li>Server Method </li>
                    <li>Request Method </li>
                    <li>File Upload </li>
                    <li>Form Action </li>
                    <li>Form Based Query </li>
                    <li>Form Validation
    <br />
                </ul>
                <strong class="textred">Module 10:MYSQL</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to MYSQL </li>
                    <li>Creating MYSQL Connection </li>
                    <li>Creating Database & Tables </li>
                    <li>MYSQL Queries </li>
                    <li>Data types in SQL </li>
                    <li>MYSQL select </li>
                    <li>Maintain data in a table by using: INSERT, UPDATE statement, DELETE statement </li>
                    <li>Use Where </li>
                    <li>Use wild cards </li>
                    <li>Use the IS NULL and IS NOT NULL keywords </li>
                    <li>Use the ORDER BY clause </li>
                    <li>Use the DISTINCT keyword </li>
                    <li>Use aggregate functions in queries </li>
                    <li>Viewing database </li>
                    <li>Deleting database </li>
                    <li>Renaming database </li>
                    <li>Insert rows into tables  </li>
                    <li>Delete tables </li>
                    <li>Altering tables </li>
                    <li>Backup of database etc </li>

                </ul>
                <strong class="textred">Module 11:Advance PHP</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Object oriented Programming with PHP </li>
                    <li>Class and Object </li>
                    <li>Public ,Private ,Protected Modifiers </li>
                    <li>Constructors and Destructors </li>
                    <li>Patterns </li>
                    <li>Magic Methods </li>
                    <li>Inheritance and Interfaces </li>
                    <li>Polymorfism </li>

                </ul>

                <strong class="textred">WordPress</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Installing WordPress </li>
                    <li>Admin / Dashboard panel basics </li>
                    <li>Installing your theme </li>
                    <li>Edit general settings </li>
                    <li>Using Categories and Tags  </li>
                    <li>Customizing your Dashboard Using Widgets </li>
                    <li>Converting HTML Theme Into WordPress Theme  </li>
                    <li>Creating Customized WordPress Plug in </li>

                </ul>
                <strong class="textred">Joomla</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to Joomla </li>
                    <li>Installation and Configuration </li>
                    <li>Adding Contents </li>
                    <li>Administering Joomla </li>
                    <li>Integrating Extensions </li>
                    <li>Creating Extensions (Modules, Components) </li>

                </ul>
                <strong class="textred">Drupal</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction to Drupal </li>
                    <li>Exception Handling </li>
                    <li>Database Programming </li>
                    <li>HTTP Request/Response </li>
                    <li>Sending e-mail </li>
                    <li>File Operations </li>
                    <li>Sessions & Cookies </li>

                </ul>
                <strong class="textred">MAGENTO</strong>
                <ul class="welcomeLinks text-justify">
                    <li>How to install Magento on server and local computer </li>
                    <li>How to install theme and customize it. </li>
                    <li>Admin / Dashboard panel knowledge and working. </li>
                    <li>Learn to convert PSD into Magento. </li>
                    <li>Clear idea and working with your own design. </li>
                    <li>How to customize home page including sidebars and menu. </li>
                    <li>How to install modules and modify </li>
                    <li>How to create users and provide various permissions. </li>
                    <li>Develop your own custom Module. </li>

                </ul>
                <strong class="textred">MVC</strong>
                <ul class="welcomeLinks text-justify">
                    <li>Introduction About MVC </li>
                    <li>Working on MVC </li>
                    <li>Cake PHP </li>
                    <li>CodeIgniter  </li>

                </ul>

            </div>
            <div class="clear-both"></div>
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
                                    <img src="images/asia-quality-entreprenuership-award.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="awards-img/award-image11.jpg" alt="Best Industrial training in Chandigarh" title="Best Industrial training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/digital-marketing-course-mohali-surinder.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="Industrial Training Company in Chandigarh" title="Industrial Training Company in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="Summer Training in Chandigarh" title="Summer Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                    <img src="images/digital-marketing-course-mohali-cricket.JPG" alt="6 Month industrial training in Chandigarh" title="6 Month industrial training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
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
                                    <img src="images/digital-marketing-course-mohali-dc.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/digital-marketing-course-mohali-vikas-award.jpeg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>



                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/ThinkNEXT-Frontdesk.JPG" alt="Online Course Training in India" title="Online Course Training in India  " class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.JPG" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/galleryjob-fair7.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>



                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/page-5_img-4-b.jpg" alt="PPC Company in Chandigarh" title="PPC Company in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/THINKNEXT-b.jpg" alt="Online Course Training in India" title="Online Course Training in India" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
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
                        <h2 class="text-left">PHP Online Training - FAQs</h2>

                        <div itemscope itemtype='https://schema.org/FAQPage'>
                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 1. Can I attend a free demo class for the PHP Online Course at ThinkNEXT ? </h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> Yes, you can go through the sample class recording which would give you a clear insight about how are the classes conducted and the quality of the trainers.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 2. What will be the qualification of my trainer in PHP Online Training at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans. </strong>The trainer is top-notch PHP industrial working professional equipped with in-depth knowledge of <strong>PHP developer course online</strong> and 10+ years of industry experience</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 3. How can I pay for my PHP online training at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> You can pay through various modes of payments like Credit/Debit Cards, NEFT, Paytm and Direct Deposit.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 4. Can more than one person share and use one account for PHP online course at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> No, the account may not be shared with multiple viewers. For multiple viewers, each person must apply separately for the <strong>PHP online course.</strong></p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 5. What are the job opportunities in PHP Online Training?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> Below given are few PHP job profiles to consider:</p>
                                        <ul class="welcomeLinks">
                                            <li>PHP Developer</li>
                                            <li>Web Developer</li>
                                            <li>Back-End Developer</li>
                                            <li>Web Consultant</li>
                                            <li>Web Programmer</li>
                                            <li>Full Stack Developer</li>
                                        </ul>
                                    </div>
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

                        <div class="person-img">
                            <img src="images/Munish-Mittal.jpg" alt="Munish Mittal ThinkNEXT" /></div>
                        <div>
                            Speak to the Munish Mittal to know what's the best course for your career. Just call us on Munish Mittal  personal number for free career guidance.
                            <br />
                            <br />
                            Thankyou!
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
              "facebook", "linkedin", "pinterest", "reddit", "twitter", "whatsapp"
            ],

            url: "http://www.thinknexttraining.com/php-online-training.aspx"
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