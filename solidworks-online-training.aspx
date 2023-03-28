<%@ Page Title="SolidWorks Online Training - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="solidworks-online-training.aspx.vb" Inherits="solid_works_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta name="description" content="SolidWorks Online Training - ThinkNEXT is top SolidWorks training company that provides SolidWorks training in Chandigarh Mohali " />
    <meta name="keywords" content="solidworks online training, solidworks online course, learn solidworks online, online solidworks classes, solidworks online course certification, solidworks online tutorials, solidworks training courses online, solidworks online certification course, solidworks online training certification" />
    <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/share-images/solidworks-institute-chandigarh.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/solidworks-institute-chandigarh.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->

    <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after" />
    <meta name="robots" content="index, follow" />
    <meta name="author" content="ThinkNEXT" />
    <meta name="copyright" content="ThinkNEXT" />
    <style>
        .training-highlights img {
            width: 55px;
        }

        .align-items-center {
            align-items: center;
        }

        .d-flex {
            display: -webkit-box !important;
            display: -ms-flexbox !important;
            display: flex !important;
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

        .digital-marketing-tools img {
            width: 100%;
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

        .faq ul {
            font-size: 17px;
        }

        #profiles .profile {
            padding: 10px;
            border: 4px solid #fff;
        }

        .our-team-box {
            box-shadow: 0 2px 7px rgba(0,0,0,.15);
            transition: all 800ms cubic-bezier(.19,1,.22,1);
            background: white;
        }

            .our-team-box:hover {
                box-shadow: 0 16px 38px -12px rgba(0,0,0,.56), 0 4px 25px 0 rgba(0,0,0,.12), 0 8px 10px -5px rgba(0,0,0,.2);
            }

                .our-team-box:hover img {
                    filter: grayscale();
                }

            .our-team-box p {
                padding: 10px;
            }

            .our-team-box img {
                width: 100%;
            }

        .companies-like img {
            margin: auto;
        }

        .companies-like .carousel-control.left {
            background: none;
        }

        .companies-like .carousel-control.right {
            background: none;
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
                <h2 class="fa-5x text-white main-head text-left"><strong>SolidWorks Online Training</strong></h2>
                <div style="border: 3px solid orange;"></div>
                <br />
                <p class="text-white"><strong>Become SolidWorks Expert and Boost your Career. Enroll Now </strong></p>
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
                                    <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="SolidWorks Online Training" ReadOnly="true"></asp:TextBox>
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
 
<p>  <i class="fa fa-square"></i> <span><strong> 4 Times National Award Winning Institute: ThinkNEXT is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020 </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Online Training from Google Partner, Facebook Blueprint Certified, Hubspot Certified and Bing Certified Institute </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Industry Expert Trainers: We have highly experienced and certified Professionals/Trainers equipped with in-depth knowledge </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Affordable Fees: Join our Online Training Courses with the lowest fees </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Professional Online Course in India at ThinkNEXT with International Certifications from Microsoft and Hewlett Packard </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Step-by-step live demonstrations for each software/technology </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Enjoy the undivided attention of the mentor to learn faster </strong> </span> </p>

          </div>
             
                 <div class="col-lg-6 col-md-6 col-sm-6">
                     <p>  <i class="fa fa-square"></i> <span><strong> Personalized study and training plans are provided as you progress through the course </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Have the exact same learning experience as being in a traditional classroom training </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Same projects and evaluation techniques will be followed like classroom courses </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Learn new technologies from the comfort of your home </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Interview Question Answer Preparation: Assistance is provided for the basic interview questions answers. Get all the tips and tricks to crack the interview </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> 100% Placement Support: We have an expert team to line up your placement calls until you get the job </strong> </span> </p>
<p>  <i class="fa fa-square"></i> <span><strong> Grooming Sessions: Spoken English, Personality Development </strong> </span> </p>

                 </div>
             <div class="clear-both"></div>
     
             </div>
        
        </section> 

    <section class="pd-30">
        <div class="container">
            <h3 class="bg-primary pd-10 text-center" style="width: fit-content;"><strong>What will be the training syllabus?</strong></h3>
            <br />
            <div class="col-lg-6">

                <p><strong>INTRODUCTION TO SOLIDWORKS</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction to SolidWorks </li>
                    <li>Part Mode </li>
                    <li>Assembly Mode </li>
                    <li>Drawing Modes </li>
                    <li>System Requirements </li>
                    <li>Getting Started with SolidWorks </li>
                    <li>Menu Bar and SolidWorks menus </li>
                    <li>Command Manager </li>
                    <li>Part Mode Command Managers </li>
                    <li>Assembly Mode Command Managers </li>
                    <li>Drawing Mode Command Managers </li>
                    <li>Customized Command Manager </li>
                    <li>Toolbar </li>
                    <li>Pop-up Toolbar </li>
                    <li>View (Heads-Up) Toolbar </li>
                    <li>Shortcut Bar </li>
                    <li>Mouse Gestures </li>
                    <li>Dimensioning Standard and Units </li>
                    <li>Important Terms and Their Definitions </li>
                    <li>Feature-based Modeling </li>
                    <li>Parametric Modeling </li>
                    <li>Windows Functionality </li>
                    <li>Geometric Relations </li>
                    <li>Blocks </li>
                    <li>Library Feature </li>
                    <li>Design Table </li>
                    <li>2D Command Line Emulator </li>
                    <li>Simulation process </li>
                    <li>Physical Dynamics </li>
                    <li>Physical Simulation </li>
                    <li>Feature Manager Design tree </li>
                    <li>Selecting Hidden Entities </li>
                    <li>Color Scheme </li>
                    <li>Self-Evaluation Test </li>
                </ul>


                <p><strong>DRAWING SKETCHES FOR SOLID MODELS</strong></p>
                <ul class="welcomeLinks">
                    <li>The  Sketching Environment </li>
                    <li>Starting a New Session of SolidWorks </li>
                    <li>Work flow customization Area </li>
                    <li>Task Panes </li>
                    <li>Solid Works Resources Task Pane </li>
                    <li>Design  Library Task Pane </li>
                    <li>File Explorer Task Pane </li>
                    <li>View Palette Task Pane </li>
                    <li>Appearances, Scenes, and Decals Task Pane </li>
                    <li>Custom Properties Task Pane </li>
                    <li>Starting a New Document in SolidWorks </li>
                    <li>Part </li>
                    <li>Assembly </li>
                    <li>Drawing </li>
                    <li>Understanding  the Sketching environment </li>
                    <li>Setting the Document Options </li>
                    <li>Modifying the Drafting Standards </li>
                    <li>Modifying the Linear and Angular Units </li>
                    <li>Modifying the Snap and Grid Settings </li>
                    <li>Learning Sketcher Terms </li>
                    <li>Origin </li>
                    <li>Inferencing Lines </li>
                    <li>Select tool </li>
                    <li>Selecting Entities Using the Box Selection </li>
                    <li>Selecting Entities Using the Cross Selection </li>
                    <li>Selecting Entities Using the SHIFT and CTRL Keys </li>
                    <li>Invert Selection Tool </li>
                    <li>Drawing Lines </li>
                    <li>Orientation Rollout </li>
                    <li>Options Rollout </li>
                    <li>Drawing Continuous Lines </li>
                    <li>Drawing Individual Lines </li>
                    <li>Line Cursor Parameters </li>
                    <li>Drawing Tangent or Normal Arcs Using the Line Tool </li>
                    <li>Drawing Construction Lines or Centerlines </li>
                    <li>Drawing the Lines of Infinite Length </li>
                    <li>Drawing Circles </li>
                    <li>Drawing Circles by Defining their Center Points </li>
                    <li>Drawing Circles by Defining Three Points </li>
                    <li>Drawing Construction Circles </li>
                    <li>Drawing Arcs </li>
                    <li>Drawing Tangent/Normal Arcs </li>
                    <li>Drawing Center point Arcs </li>
                    <li>Drawing 3 Point Arcs </li>
                    <li>Drawing Rectangles </li>
                    <li>Drawing Rectangles by Specifying their Corners </li>
                    <li>Drawing Rectangles by Specifying the Center and a Corner </li>
                    <li>Drawing Rectangles at an Angle </li>
                    <li>Drawing Center point Rectangles at an Angle </li>
                    <li>Drawing Parallelograms </li>
                    <li>Drawing Polygons </li>
                    <li>Drawing Splines </li>
                    <li>Drawing Slots </li>
                    <li>Creating a Straight Slot </li>
                    <li>Creating a Center point Straight Slot </li>
                    <li>Creating a 3 Point Arc Slot </li>
                    <li>Creating a Center point Arc Slot </li>
                    <li>Placing Sketched Points </li>
                    <li>Drawing Ellipses </li>
                    <li>Drawing Elliptical Arcs </li>
                    <li>Drawing Parabolic Curves </li>
                    <li>Drawing Display Tools </li>
                    <li>Zoom to Fit </li>
                    <li>Zoom to Area </li>
                    <li>Zoom In/Out </li>
                    <li>Zoom to Selection </li>
                    <li>Pan </li>
                    <li>Previous View </li>
                    <li>Redraw </li>
                    <li>Deleting Sketched Entities </li>
                    <li>Self-Evaluation Test </li>
                </ul>

                <p><strong>EDITING AND MODIFYING SKETCHES</strong></p>
                <ul class="welcomeLinks">
                    <li>Editing Sketched Entities </li>
                    <li>Trimming Sketched Entities </li>
                    <li>Extending Sketched Entities </li>
                    <li>Filleting Sketched Entities </li>
                    <li>Chamfering Sketched Entities </li>
                    <li>Offsetting Sketched Entities </li>
                    <li>Mirroring Sketched Entities </li>
                    <li>Mirroring While Sketching (Dynamic Mirror Entities) </li>
                    <li>Moving Sketched Entities </li>
                    <li>Rotating Sketched Entities </li>
                    <li>Scaling Sketched Entities </li>
                    <li>Copying and Pasting Sketched Entities </li>
                    <li>Creating Patterns </li>
                    <li>Creating Linear Sketch Patterns </li>
                    <li>Creating Circular Sketch Patterns </li>
                    <li>Editing Patterns </li>
                    <li>Writing Text in the Sketching Environment </li>
                    <li>Modifying Sketched Entities </li>
                    <li>Modifying a Sketched Line </li>
                    <li>Modifying a Sketched Circle </li>
                    <li>Modifying a Sketched Arc </li>
                    <li>Modifying a Sketched Polygon </li>
                    <li>Modifying a Spline </li>
                    <li>Modifying the Coordinates of a Point </li>
                    <li>Modifying an Ellipse or an Elliptical Arc </li>
                    <li>Modifying a Parabola </li>
                    <li>Dynamically Modifying and Copying Sketched Entities </li>
                    <li>Splitting Sketched Entities </li>
                </ul>

                <p><strong>ADDING RELATIONS AND  DIMENSIONS TO SKETCHES</strong></p>
                <ul class="welcomeLinks">
                    <li>Applying Geometric Relations to Sketches </li>
                    <li>Applying Relations Using the Add Relations Property Manager </li>
                    <li>Design Intent </li>
                    <li>Dimensioning a Sketch </li>
                    <li>Horizontal/Vertical  Dimensioning </li>
                    <li>Aligned Dimensioning </li>
                    <li>Angular Dimensioning </li>
                    <li>Diameter Dimensioning </li>
                    <li>Radius Dimensioning </li>
                    <li>Linear Diameter Dimensioning </li>
                    <li>Ordinate Dimensioning </li>
                    <li>Concept of a Fully Defined Sketch </li>
                    <li>Fully  Defined </li>
                    <li>Over  defined </li>
                    <li>Under  defined </li>
                    <li>Dangling </li>
                    <li>No  Solution Found </li>
                    <li>Invalid  Solution Found </li>
                    <li>Sketch  Dimension or Relation Status </li>
                    <li>Deleting  Over defining Dimensions </li>
                    <li>Displaying  and Deleting Relations </li>
                    <li>Opening  an Existing File </li>
                    <li>Address  Bar </li>
                    <li>File  name </li>
                    <li>Type  Drop-down List </li>
                    <li>Open  as Read-Only </li>
                    <li>Quick  view </li>
                    <li>References </li>
                    <li>Configurations </li>
                    <li>Display  States Area </li>
                </ul>

                <p><strong>ADVANCED DIMENSIONING TECHNIQUES AND BASE FEATURE OPTIONS</strong></p>
                <ul class="welcomeLinks">
                    <li>Advanced  Dimensioning Techniques Fully Defining the Sketches </li>
                    <li>Dimensioning  the True Length of an Arc </li>
                    <li>Measuring  Distances and Viewing Section Properties </li>
                    <li>Measuring  Distances </li>
                    <li>Determining  the Section Properties of Closed Sketches </li>
                    <li>Creating  Base Features by Extruding Sketches </li>
                    <li>Creating  Thin Extruded Features </li>
                    <li>Creating  Base Features by Revolving Sketches </li>
                    <li>Creating  Solid Revolved Features </li>
                    <li>Creating  Thin Revolved Features </li>
                    <li>Determining  the Mass Properties of Parts </li>
                    <li>Dynamically  Rotating the View of a Mode </li>
                    <li>Rotating  the View Freely in 3D Space </li>
                    <li>Rotating  the View around a Selected Vertex, Edge, or Face </li>
                    <li>Modifying  the View Orientation </li>
                    <li>Changing  the Orientation Using the Reference Triad </li>
                    <li>Restoring  the Previous View </li>
                    <li>Displaying  the Drawing Area in Viewports </li>
                    <li>Displaying  the Drawing Area in Two Horizontal Viewports </li>
                    <li>Displaying  the Drawing Area in Two Vertical Viewports </li>
                    <li>Displaying  the Drawing Area in Four Viewports </li>
                    <li>Display  Modes of a Model </li>
                    <li>Wireframe </li>
                    <li>Hidden  Lines Visible </li>
                    <li>Hidden  Lines Removed </li>
                    <li>Shaded  With Edges </li>
                    <li>Shaded </li>
                    <li>Additional  Display Modes </li>
                    <li>Shadows  in Shaded Mode </li>
                    <li>Perspective </li>
                    <li>Assigning  Materials and Textures to Models </li>
                    <li>Assigning  Materials to a Model </li>
                    <li>Changing  the Appearance of the Model </li>
                    <li>Editing  the Appearances </li>
                </ul>

                <p><strong>CREATING REFERENCE GEOMETRIES</strong></p>
                <ul class="welcomeLinks">
                    <li>Importance  of Sketching Planes </li>
                    <li>Reference  Geometry </li>
                    <li>Reference  Planes </li>
                    <li>Creating  New Planes </li>
                    <li>Creating  Reference Axes </li>
                    <li>Creating  Reference Points </li>
                    <li>Creating  Reference Coordinate Systems </li>
                    <li>Advanced  Boss/Base Options </li>
                    <li>From </li>
                    <li>End  Condition </li>
                    <li>Direction  of Extrusion </li>
                    <li>Modeling  Using the Contour Selection Method </li>
                    <li>Creating  Cut Features </li>
                    <li>Creating  Extruded Cuts </li>
                    <li>Handling  Multiple Bodies in the Cut Feature </li>
                    <li>Creating  Revolved Cuts </li>
                    <li>Concept  of the Feature Scope </li>
                </ul>

                <p><strong>ADVANCED MODELING TOOLS-I</strong></p>
                <ul class="welcomeLinks">
                    <li>Advanced  Modeling Tools </li>
                    <li>Creating  Simple Holes </li>
                    <li>Creating  Standard Holes Using the Hole Wizard </li>
                    <li>Adding  External Cosmetic Threads </li>
                    <li>Creating  Fillets </li>
                    <li>Selection  Methods </li>
                    <li>Creating  Fillets Using the FilletXpert </li>
                    <li>Creating  Chamfers </li>
                    <li>Creating  Shell Features </li>
                    <li>Creating  Wrap Features </li>
                </ul>
                <p><strong>ADVANCED MODELING TOOLS-II</strong></p>
                <ul class="welcomeLinks">
                    <li>Advanced  Modeling Tools </li>
                    <li>Creating  Mirror Features </li>
                    <li>Creating  Linear Pattern Features </li>
                    <li>Creating  Circular Pattern Features </li>
                    <li>Creating  Sketch Driven Patterns </li>
                    <li>Creating  Curve Driven Patterns </li>
                    <li>Creating  Table Driven Patterns </li>
                    <li>Creating  Fill Patterns </li>
                    <li>Creating  Rib Features </li>
                    <li>Displaying  the Section View of a Model </li>
                    <li>Changing  the Display States </li>
                </ul>
                <p><strong>EDITING FEATURES</strong></p>
                <ul class="welcomeLinks">
                    <li>Editing the Features of a Model </li>
                    <li>Editing Using the Edit Feature Option </li>
                    <li>Editing Sketches of the Sketch-based Features </li>
                    <li>Changing the Sketch Plane of the Sketches </li>
                    <li>Editing by Selecting an Entity or a Feature </li>
                    <li>Editing Using the Instant3D Tool </li>
                    <li>Editing Features and Sketches by Cut, Copy, and Paste </li>
                    <li>Cutting, Copying, and Pasting Features and Sketches from One Document </li>
                    <li>To  the Other </li>
                    <li>Copying Features Using Drag and Drop </li>
                    <li>Deleting Features </li>
                    <li>Deleting Bodies </li>
                    <li>Suppressing Features </li>
                    <li>Unsuppressing the Suppressed Features </li>
                    <li>Unsuppressing Features with Dependents </li>
                    <li>Hiding Bodies </li>
                    <li>Moving and Copying Bodies </li>
                    <li>Reordering the Features </li>
                    <li>Rolling Back the Feature </li>
                    <li>Renaming Features </li>
                    <li>Creating Folders in the Feature Manager Design tree </li>
                    <li>What’s Wrong Functionality? </li>
                </ul>
            </div>
            <div class="col-lg-6">


                <p><strong>ADVANCED MODELING TOOLS-III</strong></p>
                <ul class="welcomeLinks">
                    <li>Advanced Modeling Tools </li>
                    <li>Creating Sweep Features </li>
                    <li>Creating Cut-Sweep Features </li>
                    <li>Creating Loft Features </li>
                    <li>Adding  a Section to a Loft Feature </li>
                    <li>Creating Lofted Cuts </li>
                    <li>Creating 3D Sketches </li>
                    <li>Creating Grid Systems </li>
                    <li>Editing 3D Sketches </li>
                    <li>Creating  Curves </li>
                    <li>Extruding  a 3D Sketch </li>
                    <li>Creating  Draft Features </li>
                </ul>

                <p><strong>ADVANCED MODELING TOOLS-IV</strong></p>
                <ul class="welcomeLinks">
                    <li>Advanced  Modeling Tools </li>
                    <li>Creating  Dome Features </li>
                    <li>Creating  Indents </li>
                    <li>Creating  Deform Features </li>
                    <li>Creating  Flex Features </li>
                    <li>Creating  Fastening Features </li>
                    <li>Creating  the Mounting Boss </li>
                    <li>Creating  Snap Hooks </li>
                    <li>Creating  Snap Hook Grooves </li>
                    <li>Creating  Vents </li>
                    <li>Creating  a Lip/Groove Feature </li>
                    <li>Creating  Freeform Features </li>
                    <li>Face  Settings Rollout </li>
                    <li>Control  Curves Rollout </li>
                    <li>Control  Points Rollout </li>
                    <li>Display  Rollout </li>
                    <li>Dimensioning  a Part Using DimXpert </li>
                    <li>Specifying  the Datum </li>
                    <li>Pop-up  Toolbar </li>
                    <li>Adding  Dimensions </li>
                    <li>Specifying  the Location of a Feature </li>
                    <li>Adding  Geometric Tolerance to the Features </li>
                    <li>Collecting  Pattern Features </li>
                    <li>Adding  Dimensions Automatically </li>
                </ul>

                <p><strong>ASSEMBLY MODELING-I</strong></p>
                <ul class="welcomeLinks">
                    <li>Assembly  Modeling </li>
                    <li>Types  of Assembly Design Approach </li>
                    <li>Creating  Bottom-Up Assemblies </li>
                    <li>Placing  Components in the Assembly Document </li>
                    <li>Assembling  Components </li>
                    <li>Creating  Top-down Assemblies </li>
                    <li>Creating  Components in the Top-down Assembly </li>
                    <li>Moving  Individual Components </li>
                    <li>Moving  Individual Components by Dragging </li>
                    <li>Moving  Individual Components Using the Move Component Tool </li>
                    <li>Rotating  Individual Components </li>
                    <li>Rotating  Individual Components by Dragging </li>
                    <li>Rotating  Individual Components Using the Rotate Component Tool </li>
                    <li>Moving  and Rotating Individual Components Using the Triad </li>
                    <li>Assembly  Visualization </li>
                </ul>

                <p><strong>ASSEMBLY MODELING-II</strong></p>
                <ul class="welcomeLinks">
                    <li>Advanced  Assembly Mates </li>
                    <li>Applying  the Symmetric Mate </li>
                    <li>Applying  the Width Mate </li>
                    <li>Applying  the Distance Mate </li>
                    <li>Applying  the Angle Mate </li>
                    <li>Applying  the Path Mate </li>
                    <li>Mechanical  Mates </li>
                    <li>Applying  the Cam Mate </li>
                    <li>Applying  the Gear Mate </li>
                    <li>Applying  the Rack Pinion Mate </li>
                    <li>Applying  the Screw Mate </li>
                    <li>Applying  the Hinge Mate </li>
                    <li>Creating  Sub-assemblies </li>
                    <li>Bottom-up  Sub-assembly Design Approach </li>
                    <li>Top-down  Sub-assembly Design Approach </li>
                    <li>Inserting  a New Sub-assembly </li>
                    <li>Deleting  Components and Sub-assemblies </li>
                    <li>Editing  Assembly Mates </li>
                    <li>Replacing  Mated Entities </li>
                    <li>Editing  Components </li>
                    <li>Editing  Sub-assemblies </li>
                    <li>Dissolving  Sub-assemblies </li>
                    <li>Replacing  Components </li>
                    <li>Creating  Patterns of Components in an Assembly </li>
                    <li>Feature  Driven Pattern </li>
                    <li>Local  Pattern </li>
                    <li>Copying  and Mirroring Components </li>
                    <li>Copy  a Component with Mates </li>
                    <li>Simplifying  Assemblies using the Visibility Options </li>
                    <li>Hiding  Components </li>
                    <li>Suppressing  and Unsuppressing the Components </li>
                    <li>Changing  the Transparency Conditions </li>
                    <li>Changing  the Display States </li>
                    <li>Checking  Interferences in an Assembly </li>
                    <li>Checking  the Hole Alignment </li>
                    <li>Creating  Assemblies for Mechanism </li>
                    <li>Analyzing  Collisions Using the Collision Detection Tool </li>
                    <li>Creating  the Exploded State of an Assembly </li>
                    <li>Creating  the Explode Line Sketch </li>
                </ul>

                <p><strong>WORKING WITH DRAWING VIEWS-I</strong></p>
                <ul class="welcomeLinks">
                    <li>The  Drawing Mode </li>
                    <li>Starting  a Drawing Document </li>
                    <li>Starting  a New Drawing Document Using the New SolidWorks Document </li>
                    <li>Dialog  Box </li>
                    <li>Starting  a New Drawing Document from the Part/Assembly Document </li>
                    <li>Types  of Views </li>
                    <li>Model  View </li>
                    <li>Projected  View </li>
                    <li>Section  View </li>
                    <li>Aligned  Section View </li>
                    <li>Auxiliary  View </li>
                    <li>Detail  View </li>
                    <li>Broken  View </li>
                    <li>Broken-out  Section View </li>
                    <li>Crop  View </li>
                    <li>Alternate  Position View </li>
                    <li>Generating  Standard Drawing Views </li>
                    <li>Generating  Model Views </li>
                    <li>Using  the View Palette to Place the Drawing Views </li>
                    <li>Generating  the Three Standard Views </li>
                    <li>Generating  Standard Views Using the Relative View Tool </li>
                    <li>Generating  Standard Views Using the Predefined View Tool </li>
                    <li>Generating  Drawing Views of the Exploded State of an Assembly </li>
                    <li>Working  with Interactive Drafting in SolidWorks </li>
                    <li>Editing  and Modifying Drawing Views </li>
                    <li>Changing  the View Orientation </li>
                    <li>Changing  the Scale of Drawing Views </li>
                    <li>Deleting  Drawing Views </li>
                    <li>Rotating  Drawing Views </li>
                    <li>Manipulating  the Drawing Views </li>
                    <li>Modifying  the Hatch Pattern in Section Views </li>
                </ul>


                <p><strong>WORKING WITH DRAWING VIEWS-II</strong></p>
                <ul class="welcomeLinks">
                    <li>Adding  Annotations to Drawing Views </li>
                    <li>Generating  Annotations Using the Model Items Tool </li>
                    <li>Adding  Reference Annotations </li>
                    <li>Aligning  the Dimensions </li>
                    <li>Editing  Annotations </li>
                    <li>Adding  the Bill of Materials (BOM) to a Drawing </li>
                    <li>Table  Template Rollout </li>
                    <li>Table  Position Rollout </li>
                    <li>BOM  Type Rollout </li>
                    <li>Configurations  Rollout </li>
                    <li>Part  Configuration Grouping Rollout </li>
                    <li>Keep  Missing Item Rollout </li>
                    <li>Item  Numbers Rollout </li>
                    <li>Setting  Anchor Point for the BOM </li>
                    <li>Linking  Bill of Materials </li>
                    <li>Adding  Balloons to the Drawing Views </li>
                    <li>Adding  Balloons using the Auto Balloon tool </li>
                    <li>Adding  New Sheets to the Drawing Views </li>
                    <li>Editing  the Sheet Format </li>
                    <li>Creating  User-Defined Sheet Formats </li>
                    <li>Changing  the Visibility of Components in Different Configurations of an </li>
                    <li>Assembly </li>
                    <li>Library  Features </li>
                    <li>Creating  a Library Feature </li>
                    <li>Placing  Library Features in a Part </li>
                    <li>Editing  the Library Features </li>
                    <li>Dissolving  the Library Features </li>
                </ul>

                <p><strong>WORKING WITH BLOCKS</strong></p>
                <ul class="welcomeLinks">
                    <li>Introduction  to Blocks </li>
                    <li>Blocks  Toolbar </li>
                    <li>Saving  a Sketch as a Block in the design Library </li>
                    <li>Creating  Mechanisms by using Blocks </li>
                    <li>Creating  the Rack and Pinion Mechanism </li>
                    <li>Creating  the Cam and Follower Mechanism </li>
                    <li>Applying  Motion to Blocks </li>
                    <li>Creating  Parts from Blocks </li>
                    <li>Selected  Blocks </li>
                    <li>Block  to Part Constraint </li>
                </ul>

                <p><strong>SHEET METAL DESIGN</strong></p>
                <ul class="welcomeLinks">
                    <li>Sheet  Metal Design </li>
                    <li>Designing  the Sheet Metal Components by Creating the Base Flange </li>
                    <li>Creating  the Base Flange </li>
                    <li>Understanding  the Feature Manager Design tree of a Sheet Metal Component </li>
                    <li>Creating  the Edge Flange </li>
                    <li>Creating  Tabs </li>
                    <li>Creating  the Sketched Bend </li>
                    <li>Creating  the Miter Flange </li>
                    <li>Creating  Closed Corners </li>
                    <li>Creating  Hems </li>
                    <li>Creating  the Jog Bend </li>
                    <li>Breaking  the Corners </li>
                    <li>Creating  Cuts on the Planar Faces of the Sheet Metal Components </li>
                    <li>Creating  Lofted Bends </li>
                    <li>Creating  a Flat Pattern View of the Sheet Metal Components </li>
                    <li>Creating  Sheet Metal Components from a Flat Sheet </li>
                    <li>Creating  a Sheet Metal Component From a Flat Part </li>
                    <li>Converting  a Part or a Flat Part into Sheet Metal by Adding Bends </li>
                    <li>Adding  Bends to the Flattened Sheet Metal Component </li>
                    <li>Unbending  the Sheet Metal Part Using the No Bends Tool </li>
                    <li>Creating  a Sheet Metal Component By Designing it as a Part </li>
                    <li>Types  of Bends </li>
                    <li>Converting  a Solid Body into a Sheet Metal Part </li>
                    <li>Designing  a sheet Metal Part from a Solid Shelled model </li>
                    <li>Ripping  the Edges </li>
                    <li>Creating  Cuts in Sheet Metal Components Across the Bends </li>
                    <li>Creating  Cuts in a Sheet Metal Component Created from a Solid Model </li>
                    <li>Creating  Cuts in a Sheet Metal Component Created Using the Base Flange </li>
                    <li>Creating  Cylindrical and Conical Sheet Metal Components </li>
                    <li>Generating  the Drawing View of the Flat Pattern of the Sheet Metal Components </li>
                </ul>

                <p><strong>SURFACE MODELING</strong></p>
                <ul class="welcomeLinks">
                    <li>Surface  Modeling </li>
                    <li>Creating  an Extruded Surface </li>
                    <li>Creating  a Revolved Surface </li>
                    <li>Creating  a Swept Surface </li>
                    <li>Creating  a Lofted Surface </li>
                    <li>Creating  a Boundary Surface </li>
                    <li>Creating  a Planar Surface </li>
                    <li>Creating  a Fill Surface </li>
                    <li>Creating  a Radiated Surface </li>
                    <li>Offsetting  Surfaces </li>
                    <li>Trimming  Surfaces </li>
                    <li>Untrimming  Surfaces </li>
                    <li>Extending  Surfaces </li>
                    <li>Knitting  Surfaces </li>
                    <li>Filleting  Surfaces </li>
                    <li>Creating  a Mid-Surface </li>
                    <li>Deleting  Holes from Surfaces </li>
                    <li>Replacing  Faces </li>
                    <li>Deleting  Faces </li>
                    <li>Moving  and Coping Surfaces </li>
                    <li>Mirroring  Surface Bodies </li>
                    <li>Adding  Thickness to Surface Bodies </li>
                    <li>Creating  a Thicken Surface Cut </li>
                    <li>Creating a Surface Cut </li>
                </ul>

                <p><strong>WELDMENT DESIGN</strong></p>
                <p><strong>PHOTO VIEW</strong></p>
                <p><strong>SIMULATION PROCESSES</strong></p>
                <p><strong>ACTUAL VIEW OR RENDERING  PROCESS</strong></p>
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
                            <img src="images/Munish-Mittal.jpg" alt="Munish Mittal ThinkNEXT" />
                        </div>
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

            url: "http://www.thinknexttraining.com/solidworks-online-training.aspx"
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