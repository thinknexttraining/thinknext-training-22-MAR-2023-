<%@ Page Title="Embedded Systems Online Course - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="embedded-systems-online-course.aspx.vb" Inherits="embedded_systems_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
    <meta name="description" content="Embedded Systems - ThinkNEXT is one of the best IT company providing free 6 months and six weeks Embedded Systems training in Chandigarh Mohali panchkula INIDA. Embedded System Training institute/company in Mohali Chandigarh." />
    <meta name="keywords" content="embedded systems online course, embedded systems training online, embedded systems online certificate course, learn embedded systems online, embedded online courses, best embedded systems online course, best online course for embedded systems, embedded systems certification courses online, embedded programming online course" />
    
     <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/embedded-systems-training-in-chandigarh.aspx" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/embedded-systems-training-in-chandigarh.aspx" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
      <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
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
            <div class="col-lg-7 col-md-7 col-sm-6 text-justify ptb-20">
                <span class="bg-info plr-20 ptb-10">Certified Training</span>
                <h2 class="fa-5x text-white main-head text-left"><strong>Embedded Systems Online Course</strong></h2>
                <div style="border: 3px solid orange;"></div>
                <br />
                <p class="text-white"><strong>Become Embedded Systems Expert and Boost your Career. Enroll Now </strong></p>
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

                    <img src="images/loader.gif" alt="Embedded Systems Online Course Training in India" />
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
                                    <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="Embedded Systems Online Training" ReadOnly="true"></asp:TextBox>
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
            <h4 class="text-center">Why Online Training from ThinkNEXT</h4>
            <br>
            <div class="col-lg-6 col-md-6 col-sm-6">

                <p><i class="fa fa-square"></i><span><strong>4 Times National Award Winning Institute: ThinkNEXT is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020 </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Online Training from Google Partner, Facebook Blueprint Certified, Hubspot Certified and Bing Certified Institute </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Industry Expert Trainers: We have highly experienced and certified Professionals/Trainers equipped with in-depth knowledge </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Affordable Fees: Join our Online Training Courses with the lowest fees </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Professional Online Course in India at ThinkNEXT with International Certifications from Microsoft and Hewlett Packard </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Step-by-step live demonstrations for each software/technology </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Enjoy the undivided attention of the mentor to learn faster </strong></span></p>

            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <p><i class="fa fa-square"></i><span><strong>Personalized study and training plans are provided as you progress through the course </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Have the exact same learning experience as being in a traditional classroom training </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Same projects and evaluation techniques will be followed like classroom courses </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Learn new technologies from the comfort of your home </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Interview Question Answer Preparation: Assistance is provided for the basic interview questions answers. Get all the tips and tricks to crack the interview </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>100% Placement Support: We have an expert team to line up your placement calls until you get the job </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Grooming Sessions: Spoken English, Personality Development </strong></span></p>

            </div>
            <div class="clear-both"></div>

        </div>

    </section>

    <section class="pd-30">
        <div class="container">
            <h3 class="heading-red"><strong>What will be the training syllabus?</strong></h3>
            <br />
            <p class="bg-primary ptb-10 plr-30" style="width: fit-content;"><strong>89c51</strong></p>

            <div class="col-lg-7">
                <ul class="welcomeLinks">
                    <li>History and need of embedded system </li>
                    <li>Advantage and disadvantage of embedded system </li>
                    <li>Uc and up classification </li>
                    <li>Introduction of 8051 family </li>
                    <li>Block diagram of at89c51 </li>
                    <li>Basic embedded C </li>
                    <li>80c51 programming in C </li>
                    <li>I/O programming in C </li>
                    <li>Logical Operation in C </li>
                    <li>Hardware connection </li>
                </ul>
                <p><strong>Sensor Interfacing &amp; Programming in C</strong></p>
                <ul class="welcomeLinks">
                    <li>EXTERNAL MEMORY interfacing and programming </li>
                    <li>RTC interfacing and programming </li>
                    <li>GSM interfacing and programming </li>
                    <li>GPS interfacing and programming </li>
                    <li>DC motor interfacing and programming </li>
                    <li>Stepper motor interfacing and programming </li>
                </ul>
            </div>
            <div class="col-lg-5">
                <p><strong>Hardware Interfacing </strong></p>
                <ul class="welcomeLinks">
                    <li>LED interfacing and programming </li>
                    <li>LED matrix interfacing and programming </li>
                    <li>Graphical interfacing and programming </li>
                    <li>Seven segment display interfacing and programming </li>
                    <li>Keypad interfacing and programming </li>
                    <li>Dc motor interfacing and programming </li>
                    <li>Stepper motor interfacing and programming </li>
                    <li>Relay interfacing and programming </li>
                    <li>Buzzer interfacing and programming </li>
                    <li>ADC 0804 interfacing and programming </li>
                    <li>ADC 0808 interfacing and programming </li>
                    <li>Timer interfacing and programming </li>
                    <li>Serial interfacing rs 232 and DB9 interfacing and programming </li>
                    <li>Interrupts interfacing and programming </li>
                </ul>

            </div>
            <div class="clear-both"></div>
            <hr />
            <p class="bg-primary ptb-10 plr-30" style="width: fit-content;"><strong>PIC</strong></p>

            <div class="col-lg-7">

                <p><strong>Embedded Development Tools</strong></p>
                <ul class="welcomeLinks">
                    <li>Assembler  </li>
                    <li>Interpreter  </li>
                    <li>Compiler  </li>
                    <li>Simulator  </li>
                    <li>Emulator  </li>
                    <li>Debugger  </li>
                    <li>Introduction to Microchip and Family  </li>
                    <li>Block Description of PIC 16F877 and PIC 18F458  </li>
                    <li>PIN diagram Description of PIC 16F877 and PIC 18F458  </li>
                    <li>Introduction of File Register (RAM)  </li>
                    <li>Introduction To RAM Architecture  </li>
                    <li>Access Bank  </li>
                    <li>Special Features of PIC 16F877 and 18F458  </li>
                </ul>
                <p><strong>Introduction of Embedded C</strong></p>
                <ul class="welcomeLinks">
                    <li>Keywords &amp; Identifiers  </li>
                    <li>Data type &amp; its memory representation  </li>
                    <li>Array  </li>
                    <li>Pointers </li>
                    <li>Operators </li>
                    <li>Control Statement and Loops </li>
                    <li>Introduction to preprocessor directives  </li>
                </ul>

                <p><strong>Introduction to PIC18 Compiler/Simulator</strong></p>
                <ul class="welcomeLinks">
                    <li>MPLAB Compiler </li>
                    <li>MPLAB C 18 Compiler  </li>
                    <li>Micro Pro C Compiler  </li>
                    <li>PIC16 Simulator IDE  </li>
                    <li>PIC18 Simulator IDE  </li>
                    <li>Proteus  </li>
                    <li>LED Programming Patterns  </li>
                </ul>
            </div>

            <div class="col-lg-5">
                <ul class="welcomeLinks">

                    <li>Theory of 7-Segment Displays  </li>
                    <li>Block Diagram of LCD </li>
                    <li>Pin Structure of 16x2 LCD  </li>
                    <li>Writing program to drive LCD  </li>
                    <li>TIMER/COUNTER PROGRAMMING </li>
                    <li>Configuring as Counter  </li>
                    <li>Interfacing Circuit of Switches &amp; Keyboard Matrix  </li>
                    <li>Programming of Keyboard Matrix &amp; Switches  </li>
                    <li>Different kind of Motors  </li>
                    <li>Interfacing of DC Motors and Stepper Motor  </li>
                    <li>Motor Drivers Interfacing </li>
                    <li>Introduction to the Communication System </li>
                    <li>Types of communication System </li>
                    <li>Introduction to Serial Communication </li>
                    <li>Data Framing and UART Introduction </li>
                    <li>Introduction &amp; Interfacing of UART </li>
                    <li>Programming of UART  </li>
                    <li>Programming Timer Interrupts  </li>
                    <li>Programming Serial Interrupts  </li>
                    <li>Introduction to ADC  </li>
                    <li>ADC Initialization  </li>
                    <li>Writing programs to read voltages  </li>
                    <li>Introduction of Transducers  </li>
                    <li>Types of Sensors  </li>
                    <li>Sensor Interfacing </li>
                    <li>SPI Protocol </li>
                    <li>I2C Protocol </li>
                </ul>
                <p><strong>Using Internal/External Memories</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction to External Memory Interfacing using Intel Bus Timing </li>
                </ul>

            </div>

            <div class="clear-both"></div>
            <hr />
            <p class="bg-primary ptb-10 plr-30" style="width: fit-content;"><strong>AVR</strong></p>

            <div class="col-lg-7">
                <p><strong>Classification of Microprocessor &amp; Microcontroller</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction to AVR Family </li>
                    <li>Block Description of Atmega8 and Atmega16  </li>
                    <li>PIN diagram Description of Atmega8 and Atmega16 </li>
                    <li>Special Features of Atmega16 </li>
                    <li>Operators </li>
                    <li>Control Statement and Loops </li>
                    <li>Introduction to preprocessor directives</li>
                </ul>
                <p><strong>Introduction to AVR Compiler/Simulator</strong></p>
                <ul class="welcomeLinks">
                    <li>AVR Studio Compiler </li>
                    <li>WinAVR Compiler </li>
                    <li>Proteus </li>
                    <li>Circuit Description of Interfacing LED  </li>
                    <li>LED Programming Patterns  </li>
                    <li>Pin Structure of 16x2 LCD  </li>
                    <li>Hardware Interfacing Circuit  </li>
                    <li>Writing program to drive LCD  </li>
                    <li>How to interface LCD in 4 bit mode with AVR microcontroller </li>
                    <li>Interfacing Circuit of Switches &amp; Keyboard Matrix  </li>
                    <li>Programming of Keyboard Matrix &amp; Switches  </li>
                    <li>Different kind of Motors  </li>
                    <li>Interfacing of DC Motors and Stepper Motor  </li>
                    <li>How to use fast PWM (Pulse Width Modulation) Mode of AVR microcontroller Timer </li>
                </ul>
            </div>
            <div class="col-lg-5 text">
                <ul class="welcomeLinks">

                    <li>Motor Drivers Interfacing </li>
                    <li>Introduction to the Communication System  </li>
                    <li>Introduction to Serial Communication </li>
                    <li>Introduction &amp; Interfacing of UASRT </li>
                    <li>Programming of UASRT  </li>
                    <li>Programming Timer Interrupts  </li>
                    <li>Programming Serial Interrupts  </li>
                    <li>Introduction to ADC  </li>
                    <li>ADC Initialization  </li>
                    <li>Types of Sensors  </li>
                    <li>Sensor Interfacing </li>
                    <li>SPI Protocol </li>
                    <li>I2C Protocol </li>
                    <li>How to configure Watchdog Timers of AVR Microcontroller (ATmega16)
                        <br>
                        <li>How to use inbuilt ADC of AVR microcontroller (ATmega16)
                            <br>
                            <li>How to use internal ADC of AVR microcontroller using interrupts </li>
                    <li>How to Program in Boot Loader Section </li>
                    <li>How to disable JTAG of AVR microcontroller </li>
                    <li>Waveform Generation using AVR Microcontroller (Atmega  16) Timers </li>

                </ul>
            </div>
            <div class="clear-both"></div>
            <hr />
            <p class="bg-primary pd-10" style="width: fit-content;"><strong>Arduino</strong></p>

            <div class="col-lg-6 text-justify">
                <ul class="welcomeLinks">
                    <li>Arduino can sense the environment by receiving input from a variety of sensors and can affect its surroundings by controlling lights, motors, and other actuators. </li>
                    <li>The microcontroller on the board is programmed using the Arduino programming language (based on Wiring) and the Arduino development environment (based on Processing). </li>
                    <li>Arduino projects can be stand-alone or they can communicate with software running on a computer (e.g. Flash, Processing, MaxMSP). </li>
                    <li>The boards can be built by hand or purchased preassembled; the software can be downloaded for free. The hardware reference designs (CAD files) are available under an open-source license, you are free to adapt them to your needs. </li>
                    <li>Arduino received an Honorary Mention in the Digital Communities section of the 2006 Ars Electronica Prix. </li>
                    <li>How to Connect PC with 16x2 LCD using Arduino </li>
                    <li>How To Create Custom Characters on LCD Using Arduino </li>
                    <li>How To Create Running Sine Wave Display In LCD Using Arduino </li>

                </ul>
            </div>

            <div class="col-lg-6 text-justify">

                <ul class="welcomeLinks">

                    <li>How to Make a Wireless Path Tracking System Using Mouse, XBee and Arduino </li>
                    <li>How to Transmit GPS Data from Arduino using Xbee </li>
                    <li>How to Display Random Smiley on LCD using Arduino </li>
                    <li>How To Generate Square Wave Using Arduino </li>
                    <li>How to Make SD Card to Store Sensor Data File using Arduino </li>
                    <li>How To Use Digital Input And Digital Output Of Arduino </li>
                    <li>How to Interface 4 Bit LCD with Arduino </li>
                    <li>How to Interface a PS2 Keyboard with Arduino </li>
                    <li>How to Interface GPS with Arduino </li>
                    <li>How to Receive and Send Serial Data using Arduino </li>
                    <li>How to Use Interrupts with Arduino Board </li>
                    <li>How to Receive SMS Using GSM Module with Arduino </li>
                </ul>
            </div>
            <div class="clear-both"></div>
            <hr />
            <p class="bg-primary ptb-10 plr-30" style="width: fit-content;"><strong>Robotics</strong></p>

            <div class="col-lg-6 text-justify">
                <ul class="welcomeLinks">
                    <li>Present and future scope of robotics </li>
                    <li>Types of robots </li>
                    <li>Application of robotics </li>
                </ul>

                <p><strong>Types of Motors</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction to Motors  </li>
                    <li>AC motor  </li>
                    <li>DC motor  </li>
                    <li>Stepper motor  </li>
                    <li>Servo motor  </li>
                    <li>DC geared motor </li>
                </ul>

                <p><strong>Types of Sensor</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction to Sensing Devices </li>
                    <li>IR sensor </li>
                    <li>Light searching sensor </li>
                    <li>Temperature sensor </li>
                    <li>Touch sensor </li>
                    <li>Motion sensor </li>
                </ul>

                <p><strong>Motor Controlling Circuits</strong></p>
                <ul class="welcomeLinks">
                    <li>Motor controlling using driver ICs IC’s </li>
                    <li>LM358(dual op- amp) </li>
                    <li>LM35(Temperature sensor) </li>
                    <li>L293D(dual H-bridge IC </li>
                    <li>7805(Voltage regulator) </li>
                </ul>

                <p><strong>Introduction  of Embedded C</strong></p>
                <ul class="welcomeLinks">
                    <li>Keywords &amp; Identifiers </li>
                    <li>Data type &amp; its memory representation  </li>
                    <li>User Defined Data type (structure)  </li>
                    <li>Array  </li>
                    <li>Pointers </li>
                    <li>Operators </li>
                    <li>Control Statement and Loops </li>
                    <li>Introduction to Preprocessor Directives  </li>
                    <li>Assembly within C (Inline Assembly)  </li>
                </ul>


            </div>

            <div class="col-lg-6 text-justify">
                <p><strong>Switche &amp; Keypad Interfacing</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction to Switches &amp; Keyboard Matrix </li>
                    <li>Interfacing Circuit of Switches &amp; Keyboard Matrix </li>
                    <li>Programming of Keyboard Matrix &amp; Switches </li>
                    <li>Controlling of LED’s by using Switches </li>
                    <li>Key board Matrix &amp; LCD Interfacing Program  </li>
                </ul>

                <p><strong>Timer</strong></p>
                <ul class="welcomeLinks">
                    <li>Timer0/Timer1/Timer2 Programming </li>
                    <li>PWM using Timers   </li>
                </ul>

                <p><strong>Interrupt</strong></p>
                <ul class="welcomeLinks">
                    <li>Timer Interrupts Programming  </li>
                    <li>External Hardware Interrupts Programming  </li>
                    <li>Interrupt Priority </li>
                </ul>

                <p><strong>RS232 Interfacing</strong></p>
                <ul class="welcomeLinks">
                    <li>Interfacing with PC using UART/RS232 </li>
                    <li>Interfacing with PC using UART/RS232 with Interrupts 
                    </li>
                </ul>

                <p><strong>ADC Interfacing</strong></p>
                <ul class="welcomeLinks">
                    <li>To display digital data on LED </li>
                    <li>To display digital data on LCD </li>
                </ul>

                <p><strong>Sensor Interfacing</strong></p>
                <ul class="welcomeLinks">
                    <li>IR Sensor Interfacing </li>
                    <li>Temperature Sensor Interfacing </li>
                    <li>Tsop</li>
                    <li>DTMF</li>
                    <li>Wirless sensor</li>
                </ul>

                <p><strong>Other Communication Protocol</strong></p>
                <ul class="welcomeLinks">
                    <li>I2C protocol  </li>
                    <li>SPI Protocol </li>
                </ul>

            </div>
                        <div class="clear-both"></div>
            <hr />
            <p class="bg-primary ptb-10 plr-30" style="width: fit-content;"><strong>PCB Designing</strong></p>

            <div class="col-lg-6 text-justify">
                <p><strong>PCB 2-Weeks </strong></p>
<ul class="welcomeLinks">
<li> Basic Circuit Designing Process </li>
<li> Resistors </li>
<li> Capacitors </li>
<li> Diodes </li>
<li> Transistor  </li>
</ul>

<p><strong>Introduction  to PCB Designing</strong></p>
<ul class="welcomeLinks">
<li> Types of PCBs </li>
<li> Machines used for designing </li>
<li> The Designing Process </li>
</ul>

<p><strong>Express Sch</strong></p>
<ul class="welcomeLinks">
<li> Beginning a New Schematic </li>
<li> Placing Items in the Schematic </li>
<li> Placing Symbols and Ports </li>
<li> Labeling components </li>
<li> Editing the Schematic </li>
    <li> Creating New Components </li>
<li> Working with Sheets and Ports</li> 
    <li> Checking the Schematic for Errors </li>
<li> Beginning a New Layout </li>
    </ul>


            </div>

            <div class="col-lg-6 text-justify">
             
<ul class="welcomeLinks">
<li> Placing Items in the Layout </li>
<li> Editing the Layout </li>
<li> Placing Power and Ground Planes </li>
<li> Changing the Board's Perimeter </li>
<li> Creating New Components </li>
<li> Linking the Schematic and PCB</li> 
<li> Keyboard Shortcuts </li>
<li> Troubleshooting errors </li>
<li> Introduction to printing process </li>
<li> Placing of circuit on copper clad </li>
<li> Etching process for final PCB </li>
<li> Drilling of designed PCB </li>
<li> Soldering Process of Components </li>
<li> Testing &amp; Troubleshooting </li>
</ul>

<p><strong> Other Software for PCB</strong></p>
<ul class="welcomeLinks">
<li> Pad2Pad </li>
<li> Multisim </li>
<li> Eagle </li>
<li> OrCAD </li>
<li> Fritzing for Arduino </li>
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
                        <h2 class="text-left">Online Training - FAQs</h2>

                        <div itemscope itemtype='https://schema.org/FAQPage'>
                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 1. Do I have to be a ThinkNEXT student to take an online course?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> No, our online training programs are open to everyone in India</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 2. Who can join online training courses at ThinkNEXT? </h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans. </strong>Students, irrespective of their diverse backgrounds, professions, and age groups, can join our online courses</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 3. Are there any prerequisites or language requirements for online training at ThinkNEXT? </h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> There are no prerequisites. All courses are conducted in English and Hindi. For better retention, video lectures include English subtitles and the option to slow-down, pause, or replay lectures.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 4. Can I take more than one online course at a time at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> You need to have an up-to-date web browser such as: Chrome, Safari, Firefox, or Internet Explorer.
                                            <br />
                                            Other than that, we strongly encourage you to have access to a desktop or laptop computer and reliable internet connection.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 5. Do I need specific equipment to take Online Courses at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>
                                            <strong>Ans.</strong> You need to have an up-to-date web browser such as: Chrome, Safari, Firefox, or Internet Explorer.
                                            <br />
                                            Other than that, we strongly encourage you to have access to a desktop or laptop computer and reliable internet connection.
                                        </p>
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

            url: "http://www.thinknexttraining.com/embedded-systems-online-course.aspx"
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