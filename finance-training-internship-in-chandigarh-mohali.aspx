<%@ Page Title="Finance Training Internship in Chandigarh Mohali " Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="finance-training-internship-in-chandigarh-mohali.aspx.vb" Inherits="php_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="Finance Training Internship in Chandigarh Mohali - ThinkNEXT is one of the best IT company providing Finance Training / Internship in Chandigarh Mohali Panchkula" />
    <meta name="keywords" content="Finance Training in Chandigarh, Finance Training in Mohali, Finance Training Internship in Chandigarh Mohali" />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/finance-management-online-course-banner.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/finance-management-online-course-banner.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image position-relative">

        <img class="d-md-none" src="images/Finance-training-internship-chandigarh-mohali-Mob.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
        <img class="d-none d-md-block" src="images/Finance-training-internship-chandigarh-mohali-min.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />

        <div class="downloadsyllabus-banner px-2 py-3 rounded">
            <iframe src="SyllabusDownload.aspx?data=Brochure" class="downloadsyllabus w-100 border-0"></iframe>
        </div>
    </div>




    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-8">
                    <div class="p-2 border text-justify position-sticky top-0">
                        <div class="gdl-header-wrapper">
                            <h1>Finance Training in Chandigarh Mohali Panchkula</h1>
                        </div>
                    <p>Our <strong>Financial Training Course</strong> focuses on  those undergraduate students who are thinking about a career in the financial  market. Students who are seeking their commerce graduation and learning the  aspects of economics, business and accounting can profit an awesome arrangement  from this weighty course however, working professionals and postgraduates (MBA  – Finance) can also pursue this course to strengthen their aptitudes and  appoint as a Financial Training in a reputed firm. In this course, the student  will be instructed about significant subjects that incorporate MIS Reports  (Advanced Excel), Financial and Cost Accounting, Accounting with Tally (ERP)  and VAT, CST and E1 Sales, Payroll Processing utilizing Software and Biometrics  Machine, Company Law. These themes will enable the members to increase key data  on making bookkeeping proclamations and adjust to sheet, liquidity, monetary  proportions, business investigation, future forecast, laws of business back and  considerably more. </p>


                    </div>
                </div>
                <div class="col-md-4">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">


                        <div class="py-3 px-4 bg-black" id="regform">
                            <h3 class="text-white text-center"><strong>Arrange a Call Back</strong></h3>
                            <div class="mt-3">
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>

                                <div class="form-group mb-0">
                                    <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name First" Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group mb-0">
                                    <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile No." Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group mb-0">
                                    <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Enter EmailID" Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group text-center">
                                    <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>


    <section class="ptb-20 ">
        <div class="container-fluid">
            <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward text-light">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4 bg-black">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-12">
                    <h2 class="text-warning fw-bold">Financial Training Course</h2>
                    
                   <p class =" text-justify text-white"><strong>Financial</strong> Training Course from <strong>ThinkNEXT Technologies Mohali</strong> is way better than any other  financial course, as we offer brilliant preparing materials, updated course  modules, extraordinary online help, live activities and assignments, broad case  studies provided by the business based and experienced teachers. This  short-term job oriented course can be finished inside 3 - 4 months and students  can find an important activity job soon after the course is finished. We  ourselves send best students to reputed and well-established firms for the  Financial Training positions courtesy our 100%&nbsp;job placement&nbsp;program. <br> Since financial  Training is a vital part, every association must cover keeping in mind the end  goal to take all the correct choices to guarantee the achievement, it is basic  for them to enroll experts who have exceptional information about the economic  situation and enable them to comprehend their money related circumstances. For  that they hire financial&nbsp;<strong>Training&nbsp;</strong>who  are paid on a to a great degree high scale. </p>
                </div>

               
            </div>
        </div>
    </section>




    <section class="bg-ececec py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Finance Training - Course Contents</strong></h3>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-6 col-md-6 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Accounting Basics</li>
                        <li>Financial Planning & Accounting</li>
                        <li>Basics of Corporate Finance</li>
                        <li>Management Accounting</li>
                        <li>Business Finance</li>
                        <li>Research Methodology</li>
                        <li>Financial and Cost Accounting</li>
                        <li>Risk Management and Insurance Planning</li>
                        <li>Taxation</li>
                        <li>Retirement Planning and Employee Benefit</li>
                        <li>Labour Law</li>
                        <li>Accounting with Tally (ERP)</li>
                        <li>Full Costing</li>
                    </ul>

                </div>

                <div class="col-lg-6 col-md-6 text-justify">

                    <ul class="welcomeLinks">

                        <li>Cost Accounting</li>
                        <li>Budgeting</li>
                        <li>Business Regulatory Framework</li>
                        <li>Payroll Processing using Software & Biometrics Machine</li>
                        <li>VAT,CST & E1 Sales</li>
                        <li>Service Tax</li>
                        <li>Banking</li>
                        <li>Income Tax</li>
                        <li>Central Excise</li>
                        <li>MIS Reports (Advance Excel)</li>
                        <li>Add on Benefits</li>
                        <li>Company Law</li>
                        <li>Project Work.</li>
                    </ul>
                </div>

            </div>
        </div>
    </section>

    <section style="background: url('images/finance-training-internship-in-chandigarh-bg.jpg'); background-attachment: fixed;" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h4 class="h4 text-warning fw-bold">Other essential motivations to seek after this course are as per the following:</h4>
                <ul class="welcomeLinks text-white">
                    <li>A Financial Training holds an extremely secure future because of its highly demanding in the organization along with huge importance in the market.</li>
                    <li>You will increase tremendous learning of money related world as you will manage economic situation and face various difficulties once a day, making you more skilled.</li>
                    <li>You can also invest into the share market as you will find out about different tools and how to work and increase your chances of success.</li>
                    <li>You can even open your own consultancy firm where you can advise to corporate and individuals on market conditions and where to spend.</li>
                </ul>
                    <p class="text-white text-justify">Becoming a professional Financial Training requires a great deal and will to learn If you acquire both, then ThinkNEXT Technologies Mohali can give you simply the stage you to fulfill your dream of becoming an irreplaceable asset for your company We are well known as the leading IT and Non-IT training provider in Mohali region with proven track record</p>

                </div>

                <div class="col-md-4">
                    <div class="py-3 px-4 bg-warning rounded">
                        <h3 class="text-dark text-center"><strong>Book My Free Demo Class Now!</strong></h3>
                        <div class="mt-3">
                            <asp:Label ID="Label1" runat="server"></asp:Label>

                            <div class="form-group">
                                <asp:TextBox ID="txtdemoName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtdemoMblno" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank." ControlToValidate="txtdemomblno" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtdemoEmail" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />
                            </div>


                            <div class="form-group text-center">
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-black px-3 h4 w-100 text-white fw-bold" Text="Book Now" />

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-light">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Finance Training Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Best Finance Training Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Finance Training Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="Finance Training Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain">
                <div id="video-view"></div>
            </div>
        </div>
    </section>


    <section style="background: #38b7be;" id="profiles" class="page py-4 px-2">
        <h2 class="elecronics"><strong>ThinkNEXT in Media</strong></h2>
        <div class="col-sm-12">
            <div class="row m-0">
                <div class="col-lg-8">

                    <div id="profile-grid" class="px-2 py-4 position-sticky top-0">
                        <h2 class="h2"><strong>Print Media</strong></h2>

                        <div class="row m-0">
                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/Pehredaar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Pehredaar-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" title="Finance Training Internship in Chandigarh">
                                </a>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="bg-black px-2 py-4 position-sticky top-0">
                        <h2 class="elecronics">Electronic Media</h2>

                        <ul class="welcomeLinks">
                            <li><a class="text-white" href="http://121newsonlines.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">ThinkNEXT Gets National Recognition-Newsonline</a></li>
                            <li><a class="text-white" href="https://samachardigital.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition</a></li>
                            <li><a class="text-white" href="http://buzzingchandigarh.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020/">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020</a></li>
                            <li><a class="text-white" href="https://www.cityairnews.com/content/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020 From Bollywood Actress Sonali Bendre </a></li>
                           
                            <li><a class="text-white" href="https://wp.me/p9Qd5a-5gG"></a></li>
                            <li><a class="text-white" href="http://chandigarhtoday.org/?p=35942"></a></li>
                            <li><a class="text-white" href="https://tricitynewsonline.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Tricitynewsonline</a></li>
                            <li><a class="text-white" href="http://indianewscalling.com/news/94819-tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-ben.aspx">Tricity based ThinkNEXT gets national recognition</a></li>
                            <li><a class="text-white" href="http://www.worldwisdomnews.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre-at-new-delhi/">ट्राइसिटी के डिजिटल मीडिया स्टार्टअप थंक नेक्स्ट को मिली राष्ट्रीय पहचान मोहाली के डिजिटल मीडिया स्टार्टअप थिंक नेक्स्ट को मिला राष्ट्रीय सम्मान</a></li>
                            <li><a class="text-white" href="https://samacharvishesh.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Samacharvishesh</a></li>
                            <li><a class="text-white" href="https://www.newsnetnow.com/thinknext-gets-national-gratitude-award-from-sonali-bendre/">Tricity based company ThinkNEXT gets National Gratitude Award 2020 from Bollywood Actress Sonali Bendre at New Delhi</a></li>
                            <li><a class="text-white" href="https://www.showtimechandigarh.com/post/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-actress-sonali-bendra">Tricity based company ThinkNEXT gets National Gratitude Award 2020 Chief Guest Bollywood Film Actress Sonali Bendre</a></li>
                            <li><a class="text-white" href="https://thenewschronicle.in/f/thinknext-gets-national-gratitude-award-2020-from-sonali-bendre">ThinkNEXT Technologies Private Limited bagged National Gratitude Award from chief guest Bollywood film actress Sonali Bendre</a></li>
                            <li><a class="text-white" href="https://chandigarhpost.com/f/tricity-company-thinknext-bags-national-gratitude-award-2020">Tricity Company ThinkNEXT Bags National Gratitude Award</a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="clear-both"></div>
            <br>
            <p class="hcntr"><span class="htitl"><a href="media.aspx" class="vgalry">View More</a></span></p>

        </div>

        <div class="clear-both"></div>


    </section>

    <section id="profiles" class="bg-ececec py-4 px-2">
        <div class="container-fluid">
            <div class="row m-0">
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Iconic Business Summit & Awards 2021" class="thumb">
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                <img src="images/award-image11.webp" alt="Finance Training Internship in Chandigarh" title="Best Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                <img src="/php-images/php-industrial-training.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-1.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-2.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Photography Course in Mohali" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Photography Course in Mohali" title="Photography Course in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Photography Course in Mohali" title="Photography Course in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Finance Training Internship in Chandigarh Mohali" title="6 Month Finance Training Internship in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/galleryjob-fair7.jpg" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Finance Training Internship in Chandigarh" title="Finance Training Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/page-5_img-4-b.jpg" alt="Finance Training Internship in Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/THINKNEXT-b.jpg" alt="Finance Training Internship in Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Finance Training Internship in Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Finance Training Internship in Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Finance Training Internship in Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Finance Training Internship in Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>


    <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

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



    <script>

        function Validate() {
            var isValid = false;
            isValid = Page_ClientValidate('arrangecallbackGroup');
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup1');
            }
            //if (isValid) {
            //    isValid = Page_ClientValidate('arrangecallbackGroup3');
            //}
            //if (isValid) {
            //    isValid = Page_ClientValidate('arrangecallbackGroup4');
            //}
            return isValid;
        }
    </script>

    <!-- light-box modelBox -->

    <div class="modal fade gallerylightbox" id="image-gallery" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="image-gallery-title"></h4>
                    <button type="button" class="close" data-bs-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img id="image-gallery-image" class="img-responsive col-md-12" src="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary float-left" id="show-previous-image">
                        <i class="fa fa-arrow-left"></i>
                    </button>

                    <button type="button" id="show-next-image" class="btn btn-secondary float-right">
                        <i class="fa fa-arrow-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!--/// End light-box modelBox -->

</asp:Content>
