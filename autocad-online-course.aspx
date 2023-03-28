<%@ Page Title="AutoCAD  Online Course - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="autocad-online-course.aspx.vb" Inherits="Autocad_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta name="description" content="AutoCAD  Online Course - ThinkNEXT is the Best AutoCAD Training Company to provide the basic and advance knowledge about AutoCAD 2D and 3D design tools." />
    <meta name="keywords" content="cad training online, learn autocad online, autocad online course with certificate, autocad certification online, online cad courses, autocad training online, best online autocad classes, online autocad classes, learn cad online, cad certification online, online cad classes, autocad lessons online, online autocad training" />
    <meta name="author" content=" Munish Mittal, mittalmunish@thinknext.co.in " />


    <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/share-images/autocad-course-chandigarh.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/autocad-course-chandigarh.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <!--  End// Facebook -->
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
                <h2 class="fa-5x text-white main-head text-left"><strong>AutoCAD Online Course</strong></h2>
                <div style="border: 3px solid orange;"></div>
                <br />
                <p class="text-white"><strong>Become AutoCAD Expert and Boost your Career. Enroll Now </strong></p>
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
                                    <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="autocad Online Training" ReadOnly="true"></asp:TextBox>
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
                <h1>AutoCAD Online Course</h1>
                <p><strong class="heading-red">Are you looking for the AutoCAD Online Course?</strong></p>
                <p><strong class="heading-red">Do you want to learn AutoCAD Online?</strong></p>
                <p><strong class="heading-red">Are you looking for AutoCAD Certification Online?</strong></p>
                <p><strong class="text-info">If Yes, then</strong></p>
                <p><strong class="text-info">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                <p><strong class="text-info">You are at ThinkNEXT Technologies Private Limited </strong></p>
                <p><strong class="text-info">&nbsp; -Biggest brand for best AutoCAD Online Training</strong></p>
                <p><strong class="text-info">&nbsp; -Best Online AutoCAD Classes</strong></p>
                <p class="text-justify"><strong>ThinkNEXT Technologies Private Limited</strong>&nbsp;has introduced<strong> AutoCAD Online Training Programs </strong>for those who can easily avail the <strong>Online AutoCAD Classes</strong> anywhere in India. The motive of <strong>AutoCAD Online Course</strong> is to give the students an innovative online learning platform where they can get a good overview of the AutoCAD on account of our defined modules.</p>
                <p class="textred text-center"><strong>ThinkNEXT’s Online Courses - The best way to learn AutoCAD Online</strong></p>
                <p class="text-justify"><strong>ThinkNEXT</strong> is a professional ISO 9001:2015 Certified <strong>online AutoCAD training </strong>institute in India which has been imparting training over a decade now. ThinkNEXT is felicitated 4 times with the <a href="https://www.youtube.com/watch?v=FO8mzUt7Et4">National Awards</a> in the field of Industrial Training, Web Development &amp; Digital Marketing.</p>
            </div>
        </div>
    </section>
    <section class="bg-light pd-20">
        <div class="container">
            <div class="col-lg-6 text-justify">
                <h3 class="heading-red"><strong>Learn AutoCAD Online - Features</strong></h3>
                <p>ThinkNEXT&rsquo;s <strong>AutoCAD Online Course </strong>is designed according to the industry need based curriculum. It imparts drawing skills to professionals of all levels ranging from beginner to experts. ThinkNEXT&rsquo;s <strong>AutoCAD online course</strong> provides its students best AutoCAD skills with our hands-on format and live experience.</p>
            </div>


            <div class="col-lg-6">
                <img src="images/learn-autocad-online.jpg" alt="Learn AutoCAD Online" title="Learn AutoCAD Online" />
            </div>
            <div class="clearfix"></div>
            <div class="col-lg-12 text-justify">
                <p>Everything will be started from the scratch and we will cover different AutoCAD software steps and techniques.</p>
                <p>ThinkNEXT&rsquo;s <strong>AutoCAD Training Online </strong>begins with the basic commands required for the professional 2D drawing design and drafting with the help of AutoCAD software. Further, various tools and techniques for drawing, dimensioning and printing are explored. Reusing and modifying the existing design will also be taught to the students. &nbsp;</p>
                <p>Finally, each and every topic will be covered practically with live projects and assessments.</p>
                <p>ThinkNEXT provide the highest quality live<strong> AutoCAD training online</strong> offered in the industry. With our&nbsp;<strong>AutoCAD online course with certificate</strong>, our goal is to produce the exact same learning experience as in our traditional classroom based courses.</p>
                <p><strong>Prerequisites:</strong></p>
                <ul class="welcomeLinks">
                    <li>High configuration Desktop / Laptop with AutoCAD Software License preinstalled</li>
                    <li>Good bandwidth internet connection</li>
                    <li>Headphones</li>
                    <li>Basic fundamental knowledge of subjects like Engineering Graphics &amp; Machine Drawing</li>
                </ul>
                <p><strong>Intended Audience:</strong></p>
                <ul class="welcomeLinks">
                    <li>Undergraduate Students from Civil / Mechanical / Automobile / Production Engineering</li>
                    <li>Civil / Mechanical / Automobile / Production Engineers</li>
                    <li>Designers, Design Engineers and Manufacturing Engineers</li>
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
            <h4 class="text-center">Why AutoCAD Online Course from ThinkNEXT</h4>
            <br>
            <div class="col-lg-6 col-md-6 col-sm-6">

                <p><i class="fa fa-square"></i><span><strong>4 Times National Award Winning Institute:</strong> <strong>ThinkNEXT</strong> is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020 </span></p>
                <p><i class="fa fa-square"></i><span><strong>ISO 9001:2015 Certified Software, Electronics and CAD/CAM Systems Development Private Limited Company</strong> </span></p>
                <p><i class="fa fa-square"></i><span><strong>Learn AutoCAD Online</strong> from Google Partner, Facebook Blueprint Certified, Hubspot Certified and Bing Certified Institute </span></p>
                <p><i class="fa fa-square"></i><span><strong>Industry Expert Trainers:</strong> We have certified senior AutoCAD industrial working Professionals/Trainers equipped with in-depth knowledge of <strong>AutoCAD </strong>and 10+ years of industry experience </span></p>
                <p><i class="fa fa-square"></i><span><strong>Affordable Fees:</strong> Join our <strong>Online AutoCAD Classes</strong> with the lowest fees </span></p>
                <p><i class="fa fa-square"></i><span><strong>Professional AutoCAD Online Course in India at ThinkNEXT </strong>with <strong>AutoCAD certification online</strong> </span></p>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <p><i class="fa fa-square"></i><span>Step-by-step live demonstrations for each software/technology </span></p>
                <p><i class="fa fa-square"></i><span><strong>One on one attention by mentors</strong>: Enjoy the undivided attention of the mentor to learn faster </span></p>
                <p><i class="fa fa-square"></i><span>Personalized study and training plans are provided as you progress through the course </span></p>
                <p><i class="fa fa-square"></i><span>Have the exact same learning experience as being in a traditional classroom training </span></p>
                <p><i class="fa fa-square"></i><span>Same projects and evaluation techniques will be followed like classroom courses </span></p>
                <p><i class="fa fa-square"></i><span><strong>Interview Question Answer Preparation:</strong> Assistance is provided for the basic interview questions answers. Get all the tips and tricks to crack the interview </span></p>
                <p><i class="fa fa-square"></i><span><strong>100% Placement Support:</strong> We have an expert team to line up your placement calls until you get the job </span></p>
                <p><i class="fa fa-square"></i><span><strong>Grooming Sessions:</strong> Spoken English, Personality Development </span></p>


            </div>
            <div class="clear-both"></div>

        </div>

    </section>

    <section class="pd-30">
        <div class="container">
            <h3 class="bg-primary pd-10 text-center" style="width: fit-content;"><strong>What will be the training syllabus?</strong></h3>
            <br />
            <div class="col-lg-6">
                <p><strong>INTRODUCTION TO AUTOCAD</strong> </p>
                <ul class="welcomeLinks">
                    <li>Starting  AutoCAD </li>
                    <li>AutoCAD  Screen Components </li>
                    <li>Drawing  Area </li>
                    <li>Command  Window </li>
                    <li>Navigation  bar </li>
                    <li>Status  bar </li>
                    <li>Invoking  Commands in AutoCAD </li>
                    <li>Keyboard </li>
                    <li>Ribbon </li>
                    <li>Application  Menu </li>
                    <li>Tool  Palettes </li>
                    <li>Menu  Bar </li>
                    <li>Toolbar </li>
                    <li>Shortcut  Menu </li>
                    <li>AutoCAD  Dialog Boxes </li>
                    <li>Starting  a New Drawing </li>
                    <li>Open  a Drawing </li>
                    <li>Use  a Template </li>
                    <li>Use  a Wizard </li>
                    <li>Saving  Your Work </li>
                    <li>Save  Drawing as Dialog box </li>
                    <li>Using  the Drawing Recovery Manager to Recover Files </li>
                    <li>Closing a Drawing </li>
                    <li>Opening an Existing Drawing </li>
                    <li>Opening an Existing Drawing Using the Select File Dialog Box </li>
                    <li>Opening an Existing Drawing Using the Start up Dialog Box </li>
                    <li>Opening  an Existing Drawing Using the Drag and Drop Method </li>
                    <li>Quitting  AutoCAD </li>
                    <li>Creating  and Managing Workspaces </li>
                    <li>Creating  a New Workspace </li>
                    <li>Modifying  the Workspace Settings </li>
                    <li>Autodesk  Exchange </li>
                    <li>Home </li>
                </ul>

                <p><strong>GETTING STARTED WITH AUTOCAD</strong> </p>
                <ul class="welcomeLinks">
                    <li>Dynamic  Input Mode </li>
                    <li>Enable  Dimension Input where possible </li>
                    <li>Show  command prompting and command input near the crosshairs </li>
                    <li>Drafting  Tooltip Appearance </li>
                    <li>Drawing  Lines in AutoCAD </li>
                    <li>The  Close Option </li>
                    <li>The  Undo Option </li>
                    <li>Invoking  tools Using Dynamic INPUT/Command Prompt </li>
                    <li>Coordinate  Systems </li>
                    <li>Absolute  Coordinate System </li>
                    <li>Relative  Coordinate System </li>
                    <li>Relative  Polar Coordinates </li>
                    <li>Direct  Distance Entry </li>
                    <li>Erasing  Objects </li>
                    <li>Cancelling  and Undoing a Command </li>
                    <li>Object  Selection Methods </li>
                    <li>Window  Selection </li>
                    <li>Window  Crossing Method </li>
                    <li>Drawing  a Circle </li>
                    <li>BASIC  Display Commands </li>
                    <li>Setting  Units Type and Precision </li>
                    <li>Specifying  the Format </li>
                    <li>Specifying  the Angle Format </li>
                    <li>SETTING  the Limits OF A DRAWING </li>
                </ul>

                <p><strong>STARTING WITH ADVANCED SKETCHING</strong> </p>
                <ul class="welcomeLinks">
                    <li>Drawing  Arcs </li>
                    <li>Drawing  Rectangles </li>
                    <li>Drawing  Ellipses </li>
                    <li>Drawing  Regular Polygon </li>
                    <li>Drawing  Polylines </li>
                    <li>Placing  Points </li>
                    <li>Drawing  Infinite Lines </li>
                    <li>Writing  a Single Line Text </li>
                </ul>

                <p><strong>WORKING WITH DRAWING AIDS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Understanding  the Concept and use of LAYERS </li>
                    <li>Advantages  of Using Layers </li>
                    <li>Working  with Layers </li>
                    <li>Creating  New Layers </li>
                    <li>Making  a Layer Current </li>
                    <li>Controlling  the Display of Layers </li>
                    <li>Deleting  Layers </li>
                    <li>Object  Properties </li>
                    <li>Changing  the Colour </li>
                    <li>Changing  the Line type </li>
                    <li>Changing  the Line weight </li>
                    <li>Changing  the Plot Style </li>
                    <li>Properties  Palette </li>
                    <li>Quick  Properties Palette </li>
                    <li>Drafting  Settings dialog box </li>
                    <li>Setting  Grid </li>
                    <li>Setting Snap </li>
                    <li>Snap Type </li>
                    <li>Drawing Straight Lines using the Ortho Mode </li>
                    <li>Working with Object Snaps </li>
                    <li>Auto Snap </li>
                    <li>Endpoint </li>
                    <li>Midpoint </li>
                    <li>Nearest </li>
                    <li>Centre </li>
                    <li>Tangent </li>
                    <li>Quadrant </li>
                    <li>Intersection </li>
                    <li>Apparent Intersection </li>
                    <li>Perpendicular </li>
                    <li>Node </li>
                    <li>Insertion </li>
                    <li>Snap  to None </li>
                    <li>Parallel </li>
                    <li>Extension </li>
                    <li>From </li>
                    <li>Midpoint  between 2 Points </li>
                    <li>Temporary Tracking Point </li>
                    <li>Combining Object Snap Modes </li>
                    <li>Running Object Snap Mode </li>
                    <li>Overriding the Running Snap </li>
                    <li>Cycling through Snaps </li>
                    <li>Using Auto Tracking </li>
                    <li>Object Snap Tracking </li>
                    <li>Polar Tracking </li>
                    <li>Auto Track Settings </li>
                    <li>Function and Control Keys </li>
                </ul>


                <p><strong>EDITING SKETCHED OBJECTS-I</strong> </p>
                <ul class="welcomeLinks">
                    <li>Editing Sketches </li>
                    <li>Moving the Sketched Objects </li>
                    <li>Copying the Sketched Objects </li>
                    <li>Creating Multiple Copies </li>
                    <li>Creating a Single Copy </li>
                    <li>Offsetting Sketched Objects </li>
                    <li>Rotating Sketched Objects </li>
                    <li>Scaling the Sketched Objects </li>
                    <li>Filleting the Sketches </li>
                    <li>Chamfering the Sketches </li>
                    <li>Trimming the Sketched Objects </li>
                    <li>Extending the Sketched Objects </li>
                    <li>Stretching the Sketched Objects </li>
                    <li>Lengthening the Sketched Objects </li>
                    <li>Arraying the Sketched Objects </li>
                    <li>Rectangular Array </li>
                    <li>Polar Array </li>
                    <li>Path Array </li>
                    <li>Mirroring the Sketched objects </li>
                    <li>Text Mirroring </li>
                </ul>

                <p><strong>EDITING SKETCHED OBJECTS-II</strong> </p>
                <ul class="welcomeLinks">
                    <li>Introduction  to Grips </li>
                    <li>Types  of Grips </li>
                    <li>Editing  a Polyline by Using Grips </li>
                    <li>Editing  Gripped Objects </li>
                    <li>Changing  the Properties Using the PROPERTIES Pale </li>
                    <li>Matching  the Properties of Sketched Objects </li>
                    <li>Cycling  Through Selection </li>
                    <li>Managing  Contents Using the Design enter </li>
                    <li>Autodesk  Seek design content Link </li>
                    <li>Displaying  Drawing Properties </li>
                    <li>Basic  Display Options </li>
                    <li>Redrawing  the Screen </li>
                    <li>Regenerating  Drawings </li>
                    <li>Zooming  Drawings </li>
                    <li>Real-time  Zooming </li>
                    <li>All  Option </li>
                    <li>Centre  Option </li>
                    <li>Extents  Option </li>
                    <li>Dynamic  Option </li>
                    <li>Previous  Option </li>
                    <li>Window  Option </li>
                    <li>Scale  Option </li>
                    <li>Object  Option </li>
                    <li>Zoom  In and Out </li>
                    <li>Panning  Drawings </li>
                    <li>Panning  in Real time </li>
                </ul>

                <p><strong>CREATING TEXT AND TABLES</strong> </p>
                <ul class="welcomeLinks">
                    <li>Annotative Objects </li>
                    <li>Annotation Scale </li>
                    <li>Assigning Annotative Property and Annotation Scales </li>
                    <li>Customizing Annotation Scale </li>
                    <li>Multiple Annotation Scales </li>
                    <li>Assigning Multiple Annotation Scales Manually </li>
                    <li>Assigning Multiple Annotation Scales Automatically </li>
                    <li>Controlling the Display of Annotative objects </li>
                    <li>Creating Text </li>
                    <li>Writing Single Line Text </li>
                    <li>Entering Special Characters </li>
                    <li>Creating Multiline Text </li>
                    <li>Text Window </li>
                    <li>Text Editor Tab </li>
                    <li>Editing Text </li>
                    <li>Editing Text Using the DDEDIT Command </li>
                    <li>Editing Text Using the Properties Palette </li>
                    <li>Modifying the Scale of the Text </li>
                    <li>Inserting Table in the Drawing </li>
                    <li>Table style Area </li>
                    <li>Insert options Area </li>
                    <li>Insertion behavior Area </li>
                    <li>Column and row settings Area </li>
                    <li>Set cell styles Area </li>
                    <li>Creating a New Table Style </li>
                    <li>Starting table Area </li>
                    <li>General Area </li>
                    <li>Cell styles Area </li>
                    <li>Setting  a Table Style as Current </li>
                    <li>Modifying a Table Style </li>
                    <li>Modifying Tables </li>
                    <li>Substituting Fonts </li>
                    <li>Specifying an Alternate Default Font </li>
                    <li>Creating Text Styles </li>
                    <li>Determining Text Height </li>
                    <li>Creating Annotative text </li>
                </ul>
                <p><strong>BASIC DIMENSIONING, GEOMETRIC DIMENSIONING, AND TOLERANCING</strong> </p>
                <ul class="welcomeLinks">
                    <li>Need  for Dimensioning </li>
                    <li>Dimensioning  in AutoCAD </li>
                    <li>Fundamental  Dimensioning Terms </li>
                    <li>Dimension  Line </li>
                    <li>Dimension  Text </li>
                    <li>Arrowheads </li>

                </ul>
            </div>
            <div class="col-lg-6">

                <ul class="welcomeLinks">

                    <li>Extension  Lines </li>
                    <li>Leader </li>
                    <li>Centre  Mark and Centerlines </li>
                    <li>Alternate  Units </li>
                    <li>Limits </li>
                    <li>Associative  Dimensions </li>
                    <li>Definition  Points </li>
                    <li>Annotative  Dimensions </li>
                    <li>Selecting  Dimensioning Commands </li>
                    <li>Using  the Ribbon and the Toolbar </li>
                    <li>Using  the Command Line </li>
                    <li>Dimensioning  a Number of Objects Together </li>
                    <li>Creating  Linear Dimensions </li>
                    <li>DIMLINEAR  Command Options </li>
                    <li>Creating  Aligned Dimensions </li>
                    <li>Creating  Arc Length Dimensions </li>
                    <li>Creating  Rotated Dimensions </li>
                    <li>Creating  Baseline Dimensions </li>
                    <li>Creating  Continued Dimensions </li>
                    <li>Creating  Angular Dimensions </li>
                    <li>Dimensioning  the Angle between Two Nonparallel Lines </li>
                    <li>Dimensioning  the Angle of an Arc </li>
                    <li>Angular  Dimensioning of Circles </li>
                    <li>Angular  Dimensioning based on Three Points </li>
                    <li>Creating  Diameter Dimensions </li>
                    <li>Creating  Radius Dimensions </li>
                    <li>Creating  Jogged Linear Dimensions </li>
                    <li>Creating  Ordinate Dimensions </li>
                    <li>Maintaining  Equal Spacing between Dimensions </li>
                    <li>Creating  Inspection Dimensions </li>
                    <li>Inspection  Label </li>
                    <li>Dimension  Value </li>
                    <li>Working  with True Associative Dimensions </li>
                    <li>Inspection  Rate </li>
                    <li>Removing  the Dimension Associatively </li>
                    <li>Converting  a Dimension into a True Associative Dimension </li>
                    <li>Drawing  Leaders </li>
                    <li>Multileader </li>
                    <li>Adding  leaders to existing Multileader </li>
                    <li>Removing  Leaders from Existing Multileader </li>
                    <li>Aligning  Multileaders </li>
                    <li>Specify  Spacing </li>
                    <li>Use  current spacing </li>
                    <li>Geometric  Characteristics and Symbols </li>
                    <li>Feature  Control Frame </li>
                    <li>Geometric  Characteristics Symbol </li>
                    <li>Material  Condition Modifier </li>
                    <li>Datum </li>
                    <li>Complex  Feature Control Frames </li>
                    <li>Composite  Position Tolerance </li>
                    <li>Projected  Tolerance Zone </li>
                    <li>Creating  Annotative Dimensions, Tolerances, Leaders, and Multileaders </li>
                </ul>

                <p><strong>EDITING DIMENSIONS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Editing  Dimensions Using Editing Tools </li>
                    <li>Editing  Dimensions by Stretching </li>
                    <li>Editing  Dimensions by Trimming and Extending </li>
                    <li>Flipping  Dimension Arrow </li>
                    <li>Modifying  the Dimensions </li>
                    <li>Editing  the Dimension Text </li>
                    <li>Updating  Dimensions </li>
                    <li>Editing  Dimensions with Grips </li>
                    <li>Editing  Dimensions using the Properties Palette </li>
                    <li>Properties  Palette (Dimension) </li>
                    <li>Properties  Palette (Multileader) </li>
                    <li>Model  Space and Paper Space Dimensioning </li>
                </ul>

                <p><strong>CHAPTER  10: DIMENSION STYLES, MULTILEADER STYLES, AND SYSTEM VARIABLES</strong> </p>
                <ul class="welcomeLinks">
                    <li>Using Styles and Variables to Control Dimensions </li>
                    <li>Creating and Restoring Dimension Styles </li>
                    <li>New  Dimension Style dialog box </li>
                    <li>Controlling  the Dimension Text Format </li>
                    <li>Fitting  Dimension Text and Arrowheads </li>
                    <li>Formatting Primary Dimension Units </li>
                    <li>Formatting Alternate Dimension Units </li>
                    <li>Formatting the Tolerances </li>
                    <li>Creating and Restoring Multileader Styles </li>
                    <li>Modify Multileader Style dialog box </li>
                </ul>

                <p><strong>MODEL SPACE VIEWPORTS, PAPER SPACE VIEWPORTS, AND LAYOUTS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Model  Space and Paper Space/Layouts </li>
                    <li>Model  Space Viewports (Tiled Viewports) </li>
                    <li>Creating  Tiled Viewports </li>
                    <li>Making  a Viewport Current </li>
                    <li>Joining  Two Adjacent Viewports </li>
                    <li>Paper  space viewports (Floating Viewports) </li>
                    <li>Creating  Floating Viewports </li>
                    <li>Creating  Rectangular Viewports </li>
                    <li>Creating  Polygonal Viewports </li>
                    <li>Converting  an Existing Closed Object into a Viewport </li>
                    <li>Temporary  Model Space </li>
                    <li>Editing  Viewports </li>
                    <li>Controlling  the Display of Objects in Viewports </li>
                    <li>Locking  the Display of Objects in Viewports </li>
                    <li>Controlling  the Display of Hidden Lines in Viewports </li>
                    <li>Clipping  Existing Viewports </li>
                    <li>Maximizing  Viewports </li>
                    <li>Inserting  Layouts </li>
                    <li>Inserting  a Layout Using the Wizard </li>
                    <li>Defining  Page Settings </li>
                    <li>Controlling  the Display of Annotative Objects in Viewports </li>
                </ul>

                <p><strong>PLOTTING DRAWINGS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Plotting  Drawings in AutoCAD </li>
                    <li>Plotting  Drawings Using the Plot Dialog Box </li>
                    <li>Page  setup Area </li>
                    <li>Printer/plotter  Area </li>
                    <li>Paper  size Area </li>
                    <li>Number  of copies Area </li>
                    <li>Plot  area </li>
                    <li>Plot  offset (origin set to printable area) Area </li>
                    <li>Plot  scale Area </li>
                    <li>Plot  style table (pen assignments) Area </li>
                    <li>Shaded  viewport options Area </li>
                    <li>Plot  options Area </li>
                    <li>Preview </li>
                    <li>Adding  Plotters </li>
                    <li>The  Plotter Manager Tool </li>
                    <li>Using  Plot Styles </li>
                    <li>Adding  a Plot Style </li>
                </ul>

                <p><strong>HATCHING DRAWINGS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Hatching </li>
                    <li>Hatch  Patterns </li>
                    <li>Hatch  Boundary </li>
                    <li>Hatching  Drawings Using the Hatch Tool </li>
                    <li>Panels  in the Hatch Creation Tab </li>
                    <li>Boundaries  Panel </li>
                    <li>Pattern  Panel </li>
                    <li>Properties  Panel </li>
                    <li>Origin  Panel </li>
                    <li>Options  Panel </li>
                    <li>Match  Properties </li>
                    <li>Setting  the Parameters for Gradient Pattern </li>
                    <li>Creating  Annotative Hatch </li>
                    <li>Hatching  the Drawing Using the Tool Palettes </li>
                    <li>Drag  and Drop Method </li>
                    <li>Select  and Place Method </li>
                    <li>Hatching  Around Text, Dimensions, and Attributes </li>
                </ul>

                <p><strong>WORKING WITH BLOCKS</strong> </p>
                <ul class="welcomeLinks">
                    <li>The  Concept of Blocks </li>
                    <li>Advantages  of Using Blocks </li>
                    <li>Drawing  Objects for Blocks </li>
                    <li>Converting  Entities into a Block </li>
                    <li>Inserting  Blocks </li>
                    <li>Creating  and Inserting Annotative Blocks </li>
                    <li>Block  Editor </li>
                    <li>Adding  Blocks in Tool Palettes </li>
                    <li>Drag  and Drop Method </li>
                    <li>Modifying  Existing Blocks in the Tool Palettes </li>
                    <li>Layers,  Colors, Line types, and Line weights for Blocks </li>
                    <li>Nesting  of Blocks </li>
                    <li>Creating  Drawing Files using the Write Block Dialog Box </li>
                    <li>Exploding  Blocks Using the XPLODE Command </li>
                    <li>Renaming  Blocks </li>
                    <li>Deleting  Unused Blocks </li>
                    <li>Editing Constraints to Blocks </li>
                </ul>

                <p><strong>3D  FOUNDATIONS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Why Use 3D </li>
                    <li>Introduction to the 3D Modeling  Workspace </li>
                    <li>Basic 3D Viewing Tools </li>
                    <li>3D Navigation Tools </li>
                    <li>Introduction to the User Coordinate  System </li>
                </ul>
                <p><strong>SIMPLE  SOLIDS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Working with Solid Primitives </li>
                    <li>Solid Primitive Types </li>
                    <li>Working with Composite Solids </li>
                    <li>Working with Mesh Models </li>
                </ul>

                <p><strong>WORKING  WITH THEUR USER COORDINATE SYSTEM</strong> </p>
                <ul class="welcomeLinks">
                    <li>UCS Basics </li>
                    <li>UCS X, Y, and Z Commands </li>
                    <li>UCS Multifunctional Grips </li>
                    <li>Saving a UCS by Name </li>
                </ul>

                <p><strong>CREATING SOLIDS &amp; SURFACES FROM 2D OBJECTS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Complex 3D Geometry </li>
                    <li>Extruded Solids and Surfaces </li>
                    <li>Swept Solids and Surfaces </li>
                    <li>Revolved Solids and Surfaces </li>
                    <li>Lofted Solids and Surfaces </li>
                    <li>NURBS Surfaces </li>
                </ul>

                <p><strong>MODIFYING IN 3D SPACE</strong> </p>
                <ul class="welcomeLinks">
                    <li>3D Gizmo Tools </li>
                    <li>Aligning Objects in 3D Space </li>
                    <li>3D Modify Commands </li>
                </ul>

                <p><strong>ADVANCED  SOLID EDITING</strong> </p>
                <ul class="welcomeLinks">
                    <li>Editing Components of Solids </li>
                    <li>Editing Faces of Solids </li>
                    <li>Fillets and Chamfers on Solids </li>
                </ul>

                <strong class="textred">ADDITIONAL EDITING TOOLS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Creating a Shell </li>
                    <li>Imprinting Edges of Solids </li>
                    <li>Slicing a Solid along a Plane </li>
                    <li>Interference Checking </li>
                    <li>Converting Objects to Surfaces </li>
                    <li>Converting Objects to Solids </li>
                </ul>

                <p><strong>REFINING  THE VIEW</strong> </p>
                <ul class="welcomeLinks">
                    <li>Working with Sections </li>
                    <li>Working with Cameras </li>
                    <li>Managing Views in 3 </li>
                    <li>Animating with Show Motion </li>
                    <li>Creating Show Motion Shots </li>
                    <li>Creating Animations </li>
                </ul>

                <p><strong>VISUALISATION</strong> </p>
                <ul class="welcomeLinks">
                    <li>Creating Visual Styles </li>
                    <li>Working with Materials </li>
                    <li>Specifying Light Sources </li>
                    <li>Rendering Concepts </li>
                </ul>

                <p><strong>WORKING  DRAWING WITH 3D MODELS</strong> </p>
                <ul class="welcomeLinks">
                    <li>Creating Multiple Viewports </li>
                    <li>2D Views from 3D Solids </li>
                    <li>Creating Technical Drawings </li>
                    <li>3D Model Import </li>
                    <li>Automatic Model Documentation </li>
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
                        <h2 class="text-left">Python Online Training - FAQs</h2>

                        <div itemscope itemtype='https://schema.org/FAQPage'>
                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 1. Do I have to be a ThinkNEXT student to take AutoCAD online course? </h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> No, our AutoCAD online training programs are open to everyone in India</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 2. Do I need to install ant software on my PC to use for the AutoCAD Online Course at ThinkNEXT ?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans. </strong>Yes, you are required to install AutoCAD. Supported versions are 2015 or later versions.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 3. Is there a limit to the number of times I may view the online AutoCAD classes at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> No, you may view the course as many times as you like during the viewing period.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 4. Who will be my trainer in AutoCAD Online Training at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> Top-notch AutoCAD industrial working Professionals/Trainers equipped with in-depth knowledge of AutoCAD and 10+ years of industry experience</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <h3 itemprop='name'>Q 5. Do I need specific equipment to take AutoCAD online classes at ThinkNEXT?</h3>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>Ans.</strong> We strongly encourage you to have access to a high configuration desktop or laptop with AutoCAD Software License preinstalled and high bandwidth internet connection.</p>
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

            url: "http://www.thinknexttraining.com/autocad-online-course.aspx"
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