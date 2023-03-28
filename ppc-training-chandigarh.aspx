<%@ Page Title="PPC Training in Chandigarh - ThinkNEXT" Language="VB"  MasterPageFile="~/MasterPage4.master" AutoEventWireup="false" CodeFile="ppc-training-chandigarh.aspx.vb" Inherits="digital_marketing_course_in_mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
   <meta name="description" content="PPC Training in Chandigarh - ThinkNEXT provides the best PPC training in Chandigarh. Become expert in PPC " />
    <meta name="keywords" content="PPC Training in Chandigarh, PPC Course in Chandigarh, PPC Company in Chandigarh, PPC institute in Chandigarh" />
    
      <!-- Facebook sharing image show  -->
      <link rel="image_src" href="http://www.thinknexttraining.com/images/PPC-Course-in-Chandiharh-mob.jpg" />
     <meta property="og:image" content="http://www.thinknexttraining.com/images/PPC-Course-in-Chandiharh-mob.jpg" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    <!--  End// Facebook --> 

<style>

    .bg-337ab7{
        background:#337ab7;
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

   
 
 .thknxt-edge p{
     font-size:16px !important;
 }
    .thknxt-edge p span {
        float: right;
        width: 95%;
        color: #ffffff !important;
    }

      .faq ul{
        font-size:17px;
    }
      .faq h3{
          color:#000;
          font-size:19px;
      }
    
    #profiles .profile {
    padding: 10px;
    border: 4px solid #fff;
}
   
    .form-control {
        display: block;
        width: 100%;       
    }
   
     .bg-dark{
         background:#212529!important;
     }
     .awards-achiements-mobile {
    display: none;
}
    
    @media screen and (max-width: 768px) {
        
        
        .downloadsyllabus {
            width: 390px;
            height: 283px;
        }
      
     
     
    }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-image">
         <img class="d-md-block d-none" src="images/PPC-Course-in-Chandiharh.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />
        <img class="d-md-none" src="images/PPC-Course-in-Chandiharh-mob.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />


       <div class="downloadsyllabus-banner px-2 py-3 rounded">
            <div class="downloadsyllabus w-100 border-0">
                <h4 class="text-dark fw-bold text-center">Download Syllabus</h4>
                <p class="text-center mb-4">Fill up the below form and you will get the complete course syllabus</p>

                <asp:Label class="label5" ID="Label5" runat="server"></asp:Label>
                <asp:Label ID="msg" runat="server" Visible="false" Text="" CssClass="text-danger"></asp:Label>
                <div class="row m-0">
                    <div class="col-12 mb-4">
                        <asp:TextBox ID="NameSyl" runat="server" class="form-control" placeholder="Your Name*"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="DSyllabusValidatorName" CssClass="text-danger position-absolute" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Name"  ControlToValidate="NameSyl" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="DSyllabusGroup1" ></asp:RegularExpressionValidator>                            
                                <asp:RequiredFieldValidator ID="RequiredDSyllabusdValidatorName" CssClass="text-danger position-absolute" runat="server" ControlToValidate="NameSyl" ErrorMessage="Enter Name" ValidationGroup="DSyllabusGroup"></asp:RequiredFieldValidator>
                            </div>
                   
                    
                    <div class="col-12 mb-4">
                        <asp:TextBox ID="PhonenoSyl" runat="server" class="form-control" Type="text" placeholder="Mobile No."></asp:TextBox>
                        <asp:RegularExpressionValidator ID="DSyllabusValidatorPhone" CssClass="text-danger position-absolute" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="PhonenoSyl" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ValidationGroup="DSyllabusGroup1"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredDSyllabusValidatorPhone" CssClass="text-danger position-absolute" runat="server" ControlToValidate="PhonenoSyl" ErrorMessage="Enter Mobile No." ValidationGroup="DSyllabusGroup"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-12 mb-4">
                        <asp:TextBox ID="EmailidSyl" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="DSyllabusValidatorEmail" CssClass="text-danger position-absolute" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="EmailidSyl" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="DSyllabusGroup1"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredDSyllabusValidatorEmail" CssClass="text-danger position-absolute" runat="server" ControlToValidate="EmailidSyl" ErrorMessage="Enter EmailID" ValidationGroup="DSyllabusGroup"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-12 text-center">
                        <span class="buttonicon">
                            <asp:Button ID="btnsyll" runat="server" class="btn btn-dark text-white dnloadbtn" Text="Download Syllabus Now" OnClick="btnsyll_Click" OnClientClick="return SyllValidate()" />
                        </span>
                    </div>
                </div>

            </div>


        </div>

    </div>





    <section class="py-4 ">

        <div class="container register">
            <div class="row">
                <div class="col-lg-8 col-md-7 col-sm-6 text-justify">
                    <div class="text-justify">

                        <div class="gdl-header-wrapper">
                            <h1>PPC Training in Chandigarh</h1>
                        </div>

                        <p class="text-danger fw-bold">Are you looking for the best PPC Training in Chandigarh?</p>
                        <p class="text-danger fw-bold">Are you looking for the best PPC Course in Chandigarh?</p>
                        <p class="text-primary fw-bold">If Yes, then</p>
                        <p class="text-primary fw-bold">Your search ends here. Finally, You are at the RIGHT PLACE </p>
                        <p class="text-primary fw-bold">You are at ThinkNEXT Technologies Private Limited.  </p>
                        <p class="text-primary fw-bold">&nbsp; -Biggest brand for quality PPC Training in Chandigarh and India </p>
                        <p class="text-primary fw-bold">&nbsp; -Best PPC Training Institute near me </p>
                        <p><strong>ThinkNEXT Technologies Private Limited</strong>&nbsp;is recognized as the <a href="http://thinknext.co.in/"><strong>best PPC company</strong></a> or best <strong>PPC training institute in Chandigarh</strong> region for providing an intensive <strong>PPC training in Chandigarh</strong> with practical as well as factual learning.</p>
                        <p><strong>ThinkNEXT</strong> is a professional ISO 9001:2015 Certified <strong>PPC training institute in Chandigarh </strong>which is felicitated 6 times with the <strong>National Awards </strong>in the field of Digital Marketing, Industrial Training and Web Development.</p>
                    </div>
                </div>



                <div class="col-lg-4 col-md-5 col-sm-6 text-justify">
                    <div class="position-sticky top-0">
                        <div class="right_box margin-top text-center">

                            <div class="brochiframe" id="brochiframe">

                                <iframe name="broucher"></iframe>

                                <img class="closebrochureiframe" alt="PPC Training in Chandigarh" src="images/close.png" onclick="clsifrm()" />

                            </div>

                            <a href="BroucherDownload.aspx?data=Digital Marketing Broucher" onclick="broucherdownload();" target="broucher">
                                <img src="images/download_brochure.png" border="0" alt="Brochure" />
                            </a>


                        </div>

                        <div class="loading" align="center">
                            <%--Loading. Please wait.<br />--%>

                            <img src="images/loader.gif" alt="Pay Per Click Training in Chandigarh" />
                        </div>


                        <div class="py-3 px-4 bg-black text-center" style="padding: 31px;">

                            <h3 class="text-white text-center"><b>Arrange a Call Back</b></h3>


                            <div class="mt-3">

                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                <div class="form-group">


                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"
                                        ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtMobile" runat="server" class="form-control "
                                        MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>


                                <div class="form-group text-center">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn bg-warning px-3 h4 w-100" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />
                                </div>
                            </div>



                        </div>

                    </div>

                </div>


               <div class="col-12">
                  <p class="text-justify"><strong>ThinkNEXT</strong> is one-stop solution for all your <strong>PPC Training</strong> needs. Since many years, <strong>ThinkNEXT</strong> has been considered as the No. 1 choice for <strong>PPC training in Chandigarh</strong> among the <a href="https://www.chandigarhlearning.com/top-5-ppc-training-course-institute-in-chandigarh/"><strong>top 5 PPC training institutes in Chandigarh</strong></a> region and India.</p>
                  <p class="text-justify"><strong>ThinkNEXT</strong> consists of a team of highly expert and experienced PPC professionals/trainers which will make you industry-ready by giving you 100% practical <strong>PPC training in Chandigarh</strong> with Live Projects. <strong>ThinkNEXT</strong> will make you Master in PPC by helping you to implement PPC strategies from basic to advanced level.</p>
               </div>

            </div>
        </div>



    </section>

    <section class="py-5">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="PPC Training in Chandigarh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-1.jpg" alt="PPC Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-2.jpg" alt="6 Weeks Pay Per Click Training in Chandigarh Mohali" />
                </div>
            </div>
        </div>

    </section>

   <section class="py-4">

   </section>

    <section class="ptb-20 bg-light ">
        <div class="container-fluid">
            <br />
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="PPC Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="PPC Training in Chandigarh"  />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="PPC Training in Chandigarh"  />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="PPC Training in Chandigarh"  />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="PPC Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="PPC Training in Chandigarh"  />
                </div>

            </div>
        </div>
    </section>

    <br />
    <br />
    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-7 text-justify">
                    <h2 class="text-danger h4 fw-bold">Pay Per Click (PPC) Overview:</h2>
                    <p><strong>Pay Per Click (PPC) advertising</strong>is a great way to get visitors on your website on an urgent basis, thus bringing in qualified leads. Getting organic traffic through SEO is a tiring and long process which means it may take 6 months to get your website in top rankings or more than that, depending on the competition.</p>
                    <p>On the contrary, in <strong>Google PPC</strong>, you pay to Google for specific keywords and in return, Google displays your listing in top and you are charged every time a user clicks on the paid listing.</p>
                    <p class="text-center textred"><strong><em>ThinkNEXT is known for its QUALITY</em></strong></p>
                    <p>ThinkNEXT’s <strong>PPC course near me</strong> covers up major topics like Introduction to Google Adwords, Video Ads, Creating your first Campaign, Adgroups &amp; Keywords, Bidding Strategies, Ad Format &amp; Types, Other Targeting Methods, Conversions</p>
                   
                </div>
                <div class="col-lg-5 text-justify">
                    <div class="py-3 px-4 bg-black">
                        <h3 class="text-white text-center"><strong>Book My Free Demo Class Now!</strong></h3>
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
                                <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Message" />
                            </div>


                            <div class="form-group text-center">
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-warning px-3 h4" Text="Book Now" />

                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </section>
    
    <section class="thinknext-edge-section thinknextwhy pd-30 ">
        <div class="thknxt-edge container">
            <h4 class="text-center">Why ThinkNEXT is the Best PPC Institute in Chandigarh India?</h4>
            <br />

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">

                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>ThinkNEXT is 6 Times National Award Winner company in the field of digital marketing, industrial training and web development
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>ThinkNEXT is the winner of National Gratitude Award 2020, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Icon Award 2018 and numerous other awards.
                        </strong></span>
                    </p>

                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>PPC training under team of more than 15 expert and experienced digital marketing professionals/trainers. thus making students 100% industry-ready
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>PPC Training from Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.
                        </strong></span>
                    </p>

                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>100% Job Assurance after completion of PPC course.
                        </strong></span>
                    </p>


                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Complete PPC Training with Live Projects from Basic to Advanced Level
                        </strong></span>
                    </p>

                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Free Spoken English, Personality Development and Interview Preparation Classes
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Part-Time/Full-Time Job offer along with training so that students can earn, while they learn.
                        </strong></span>
                    </p>


                </div>

                <div class="col-lg-6 col-md-6 col-sm-6">


                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Placement service at ThinkNEXT is not just an assistance. It is a passion which drives us to place you at any cost
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Offers Classroom and Online Training (both)
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Highest level of Infrastructure in Mohali region with 200+ Computers and 14 Labs
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Opportunity to work on Live Digital Marketing Projects
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>ThinkNEXT Life-time validity Learning and Placement Card
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Regular Job Interviews and 100% Placement Assistance
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>ThinkNEXT Certificates are globally accepted and recognized.
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Small Batches and Free backup classes
                        </strong></span>
                    </p>

                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Unlimited Timing – We want your satisfaction
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Free e-Books and Study-Material
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Free query support post-training
                        </strong></span>
                    </p>
                    <p>
                        <i class="fa fa-square"></i>
                        <span><strong>Early Morning, Late Evening and Weekend Batches are also available for working professionals / self employed/ entrepreneurs / businessmen/students etc.
                        </strong></span>
                    </p>

                </div>

            </div>


        </div>


    </section>

    <section class="py-5 px-4">

        <h4 class="text-center"><strong>"It’s much easier to double your business by doubling your conversion rate than by doubling your traffic."</strong></h4>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 pd-lft-0 pd-rght-0">
                <img class="width-100" src="images/summer-training-in-chandigarh-sonali.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 pd-lft-0 pd-rght-0">
                <img class="width-100" src="images/digital-marketing-course-chandigarh-surinder.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />
            </div>


        </div>
    </section>



    <section class="pd-30 page-div">
        <div class="container">
            <h3 class="text-center"><strong>PPC Course Syllabus</strong></h3>
            <br>
            <div class="row m-0">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="p-3 border border-secondary mb-4">                     
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Introduction to Google Ads</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Introduction to Google Ads</li>
                            <li>Importance of Google Ads</li>
                            <li>Adwords account creation</li>
                            <li>Type of campaign</li>
                            <li>Campaign level settings</li>
                            <li>Adgroup level Setting</li>
                            <li>Keyword match types</li>
                            <li>Bidding options &amp; Budget</li>
                            <li>Ad rank &amp; Quality Score</li>
                            <li>Conversion Tracking</li>
                            <li>Types of Audience</li>
                        </ul>
                    </div>

                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Search / Text Ads</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Introduction to search campaign</li>
                            <li>Search network / text ads importance</li>
                            <li>Network Selection</li>
                            <li>Budgets and Campaign building strategy</li>
                            <li>Location targeting</li>
                            <li>Click through Rates</li>
                            <li>CPC, CPM, CPA</li>
                            <li>Budget Calculation</li>
                            <li>Ad Rotation</li>
                            <li>Site link extension</li>
                            <li>Callout extension</li>
                            <li>Call extension</li>
                            <li>Structured snippet</li>
                            <li>App extension</li>
                            <li>Message extension</li>
                            <li>Promotion &amp; Price extension</li>
                            <li>Location extension</li>
                            <li>Ad group Introduction</li>
                            <li>Keywords &amp; Negative keywords</li>
                            <li>Ad Creation</li>
                            <li>Difference between final &amp; Display Url</li>
                            <li>Headlines &amp; description</li>
                        </ul>
                    </div>

                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Gmail Campaign</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Gmail Campaign</li>
                            <li>Campaign goals</li>
                            <li>Location targeting</li>
                            <li>Bidding strategies &amp; Budget</li>
                            <li>Delivery method</li>
                            <li>Ad rotation &amp; schedule</li>
                            <li>Devices targeting</li>
                            <li>Dynamic ads</li>
                            <li>Adgroup</li>
                            <li>Keywords &amp; Negative Keywords</li>
                            <li>Affinity &amp; custom affinity audience</li>
                            <li>Inmarket Audiences</li>
                            <li>Remarketing and similar audiences</li>
                            <li>Demographics</li>
                            <li>Automated targeting</li>
                            <li>Ad group bid</li>
                        </ul>
                    </div>
                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Google Merchant Centre</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Account Creation</li>
                            <li>roduct feeds creation</li>
                            <li>Google merchant center and Google Ads account linking</li>
                        </ul>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Display Campaign</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Introduction to display networks</li>
                            <li>Bidding strategy and budget</li>
                            <li>Ad rotation &amp; scheduling</li>
                            <li>Device targeting</li>
                            <li>Frequency capping</li>
                            <li>Content Exclusion</li>
                            <li>Adgroup</li>
                            <li>Types of Audience</li>
                            <li>Demographics</li>
                            <li>Content targeting</li>
                            <li>Ad group bid</li>
                            <li>Ad Creation</li>
                        </ul>
                    </div>

                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Google Shopping Ads</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Inventory filter</li>
                            <li>Local Products</li>
                            <li>Bidding Strategy &amp; Budget</li>
                            <li>Delivery method</li>
                            <li>Campaign priority</li>
                            <li>Google Search ads partner Networks</li>
                            <li>Device Targeting</li>
                            <li>Location targeting &amp; Scheduling</li>
                            <li>Ad group &amp; Ad format</li>
                            <li>Bid</li>
                        </ul>
                    </div>

                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Video Campaign</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Google Video ads Networks<br>
                                Campaign Goals</li>
                            <li>Sales, Leads, Website traffic</li>
                            <li>Product and Brand Consideration</li>
                            <li>Brand awareness and reach Campaign Subtype</li>
                            <li>Influence consideration</li>
                            <li>Shopping</li>
                            <li>ad sequence</li>
                            <li>skippable in-stream ads</li>
                            <li>Bumper ads</li>
                            <li>Non-skippable instream ads</li>
                            <li>Outstream ads</li>
                            <li>Budget &amp; Bidding Strategy</li>
                            <li>Languages</li>
                            <li>Location targeting</li>
                            <li>Inventory type</li>
                            <li>Excluded content</li>
                            <li>Excluded types and labels</li>
                            <li>Device targeting</li>
                            <li>Types of Audience</li>
                            <li>Demographics</li>
                            <li>Content targeting</li>
                            <li>Ad group bid</li>
                            <li>Ad Creation</li>
                        </ul>
                    </div>

                    <div class="p-3 border border-secondary mb-4">
                        <h4 class="bg-337ab7 text-center pd-10 text-white"><strong>Universal App Campaigns</strong></h4>
                        <ul class="welcomeLinks">
                            <li>Ad assets</li>
                            <li>App Campaign Network</li>
                            <li>Locations &amp; language</li>
                            <li>Budget &amp; bidding</li>
                            <li>Campaign optimization</li>
                            <li>Ad scheduling</li>
                        </ul>
                    </div>
                </div>
               
               
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
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/mohali-sithith-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-honor-thumb.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award-chd.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-mohali.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>




                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Pay Per Click Training in Chandigarh">
                                </a>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="bg-black px-2 py-4 position-sticky top-0">
                        <h2 class="elecronics">Electronic Media</h2>
                        <ul class="welcomeLinks">
                            <li><a class="text-white" href="http://citynews9.com/9272/">मोहाली स्थित आईटी संगठन थिंकनेक्स्ट को मिला राष्ट्र्रीय सम्मान - City News9</a></li>
                            <li><a class="text-white" href="https://www.cityairnews.com/content/tricity-it-organisation-thinknext-gets-national-honour">Tricity IT organisation ThinkNEXT gets national honour - City Air News</a></li>
                            <li><a class="text-white" href="https://thenorthdaily.blogspot.com/2021/10/thinknext-gets-most-trusted-digital.html">ThinkNEXT gets the 'Most Trusted Digital Marketing & Industrial Training Company of The Year' Award - THE NORTH DAILY</a></li>
                            <li><a class="text-white" href="https://theimagestar.com/archives/524">Tricity IT Organisation ThinkNEXT Recognised At National Level - The Image Star</a></li>
                            <li><a class="text-white" href="https://blogswire.in/f/thinknext-technologies-bags-company-of-the-year-award">ThinkNEXT Technologies bags Company of the Year Award</a></li>
                            <li><a class="text-white" href="https://nationalreport.in/f/tricity-it-organisation-thinknext-gets-national-honour">Tricity IT organisation 'ThinkNEXT' gets national honour</a></li>
                            <li><a class="text-white" href="https://www.babushahi.com/full-news.php?id=132872&headline=Tricity-IT-organisation-ThinkNEXT-gets-national-honour">Tricity IT organisation ThinkNEXT gets national honour - Babushahi</a></li>
                            <li><a class="text-white" href="http://121newsonlines.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">ThinkNEXT Gets National Recognition-Newsonline</a></li>
                            <li><a class="text-white" href="https://samachardigital.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition</a></li>
                            <li><a class="text-white" href="https://www.cityairnews.com/content/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020 From Bollywood Actress Sonali Bendre </a></li>
                            <li><a class="text-white" href="https://wp.me/p9Qd5a-5gG">Tricity based ThinkNEXT gets national recognition - Chandigarh City News </a></li>
                            <li><a class="text-white" href="http://chandigarhtoday.org/?p=35942">ट्राइसिटी के डिजिटल मीडिया स्टार्टअप थंक नेक्स्ट को मिली राष्ट्रीय पहचान मोहाली के डिजिटल मीडिया स्टार्टअप थिंक नेक्स्ट को मिला राष्ट्रीय सम्मान - Chandigarh Today</a></li>
                            <li><a class="text-white" href="https://tricitynewsonline.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Tricitynewsonline</a></li>
                            <li><a class="text-white" href="http://indianewscalling.com/news/94819-tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-ben.aspx">Tricity based ThinkNEXT gets national recognition</a></li>
                            <li><a class="text-white" href="http://www.worldwisdomnews.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre-at-new-delhi/">ट्राइसिटी के डिजिटल मीडिया स्टार्टअप थंक नेक्स्ट को मिली राष्ट्रीय पहचान मोहाली के डिजिटल मीडिया स्टार्टअप थिंक नेक्स्ट को मिला राष्ट्रीय सम्मान</a></li>
                            <li><a class="text-white" href="https://samacharvishesh.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Samacharvishesh</a></li>
                            <li><a class="text-white" href="https://www.newsnetnow.com/thinknext-gets-national-gratitude-award-from-sonali-bendre/">Tricity based company ThinkNEXT gets National Gratitude Award 2020 from Bollywood Actress Sonali Bendre at New Delhi</a></li>
                            <li><a class="text-white" href="https://www.showtimechandigarh.com/post/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-actress-sonali-bendra">Tricity based company ThinkNEXT gets National Gratitude Award 2020 Chief Guest Bollywood Film Actress Sonali Bendre</a></li>
                            <li><a class="text-white" href="https://thenewschronicle.in/f/thinknext-gets-national-gratitude-award-2020-from-sonali-bendre">ThinkNEXT Technologies Private Limited bagged National Gratitude Award from chief guest Bollywood film actress Sonali Bendre</a></li>

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

    <section class="bg-light py-5">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/WCpCT22tiig" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Pay Per Click Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="PPC Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Pay Per Click Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/mgQy9ZCqc50" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/top-15-reason-to-join-thinknext.jpg" alt="PPC Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain">
                <div id="video-view"></div>
            </div>
        </div>
    </section>



    <section class="py-5">
               <div class="container">
                   <p class="text-center text-danger"><em><strong>Call 78374-01000, 78374-02000 for best PPC Training in Chandigarh. 100% practical training available with 100% Job assurance.</strong></em></p>
               <h3 class="text-center">Training Methodology – PPC Training in Chandigarh at ThinkNEXT</h3>
                   <img class="w-100" src="images/ppc-training-methodology.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />

               </div>
               
           </section>
        

    <section class="pd-30 page-div">
        <div class="container">
        <h3><strong>Who can join PPC Training in Chandigarh?</strong></h3>
            <p class="text-justify">The good part about Pay Per Click Marketing (PPC Marketing) is that, there is no special criterion as such needed to learn PPC Course. Individuals of all fields and backgrounds can accommodate our PPC Training program. Anyone with a basic understanding of computers and internet can learn PPC Marketing by being part of our PPC training program in Chandigarh.</p>
      <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="p-3 border border-secondary mb-3">
                    <h4 class="bg-337ab7 text-center pd-10 text-white">Students and Graduates </h4>
                    <ul class="welcomeLinks">
                        <li>For better job opportunities</li>
                        <li>To earn money as a freelancer</li>
                        <li>To gain more confidence and self esteem</li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="p-3 border border-secondary mb-3">
                    <h4 class="bg-337ab7 text-center pd-10 text-white"> Working Professionals </h4>
                    <ul class="welcomeLinks">
                        <li>For better job opportunities in digital domain</li>
                        <li>Can earn much higher salaries</li>
                        <li>Can work as a freelancer for generating more money</li>
                        <li>Much better and promising career</li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="p-3 border border-secondary mb-3">
                    <h4 class="bg-337ab7 text-center pd-10 text-white"> Business Owners </h4>
                    <ul class="welcomeLinks">
                        <li>To get more business leads via PPC</li>
                        <li>For more business growth opportunities</li>
                        <li>For expanding business in other countries</li>
                        <li>For more Return On Investments (ROI)</li>
                        <li>For better and organized business</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="p-3 border border-secondary mb-3">
                    <h4 class="bg-337ab7 text-center pd-10 text-white"> Housewives / Retired Employees </h4>
                    <ul class="welcomeLinks">
                        <li>To earn income via online business models</li>
                    </ul>
                </div>

                <div class="p-3 border border-secondary mb-3">
                    <h4 class="bg-337ab7 text-center pd-10 text-white"> Sales and Marketing Employees of Companies </h4>
                    <ul class="welcomeLinks">
                        <li>To increase their work productivity</li>
                    </ul>
                </div>


            </div>


        </div>

            
            
            </div>
    </section>

        <section class="py-4">
            <div class="container">
                <h3 class="text-center"><b>Our Students Work in Companies like</b></h3>
                <br />

                <img src="images/digital-marketing-companies-chandigarh-ThinkNEXT-1.png" alt="Pay Per Click Training in Chandigarh" title="Pay Per Click Training in Chandigarh" />
            </div>

        </section>


            <section class="tstmnl-ytbe py-4">
                <div class="container">
                <div class="row m-0 align-items-center">
                    <div class="col-lg-8 col-md-7 col-sm-6 text-justify text-white">
                        <h3 class="text-white"><strong>PPC Course in Chandigarh with Certifications</strong></h3>
                      
                        <p>Certifications play an important role in an aspirant’s life. They are not only a measure of your knowledge but also act as a booster for your skills.</p>
                        <p><strong>ThinkNEXT</strong> is a pioneer in imparting Best <strong>PPC Course in Chandigarh</strong>&nbsp;along with certifications.</p>
                        <p>This certification at ThinkNEXT is provided after completion of the theoretical and practical sessions to freshers as well as corporate trainees.</p>
                        <p>Our certification at ThinkNEXT enhances the value of your resume and you can attain leading job posts with the help of this certification in leading MNC’s.</p>
                    </div>
                <div class="col-lg-4 col-md-5 col-sm-6">
                        <img class="w-100" src="images/thinknext-certificate.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />
                    </div>

                </div>
                </div>
               
            </section>

      

    



        
        <!--  ////-- Start Student Testimonials    -->
        
        <!--  ////-- END Student Testimonials  -->



        <section id="profiles " class="page py-4">

            <div class="container-fluid">
                <div class="row" id="profile-grid">
                    <h3 class="text-center">PPC Certification</h3>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google AdWords Certification" class="thumb">
                                    <img src="awards-img/adwords-cer.jpg" title="Pay Per Click Training in Chandigarh " alt="Pay Per Click Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google AdWords Search Certification" class="thumb">
                                    <img src="awards-img/adwords-Certificate.jpg" title="Pay Per Click Training in Chandigarh" alt="Pay Per Click Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google AdWords Mobile Certification" class="thumb">
                                    <img src="awards-img/adwrds-moble.jpg" title="PPC Course in Chandigarh" alt="PPC Course in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google AdWords Shopping Certification" class="thumb">
                                    <img src="awards-img/adwrds-shopping.jpg" title="PPC Training in Chandigarh" alt="PPC Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google Analytics Certification" class="thumb">
                                    <img src="awards-img/anlyts-cert.jpg" title="PPC Course in Chandigarh" alt="PPC Course in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Digital Sales Certification" class="thumb">
                                    <img src="awards-img/digital-sales-certificate.jpg" title="PPC Course in Chandigarh" alt="PPC Course in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Academy for Ads Achievement" class="thumb">
                                    <img src="awards-img/dubble-click-search-basics.jpg" title="PPC Training in Chandigarh" alt="PPC Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google AdWords Video Certification" class="thumb">
                                    <img src="awards-img/video-adwords.jpg" title="advanced Pay Per Click Training in Chandigarh" alt="advanced Pay Per Click Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Facebook blueprint Certified" class="thumb">
                                    <img src="awards-img/Fb-Blueprint-certificate.jpg" title="PPC Course in Chandigarh" alt="PPC Course in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Google AdWords Display Certification" class="thumb">
                                    <img src="awards-img/google-adwords.png" title="PPC Course in Chandigarh" alt="PPC Course in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="HubSpot Academy Email Marketing Certified" class="thumb">
                                    <img src="awards-img/hubspot-academy-email-marketing-certified.JPG" title="PPC Training in Chandigarh" alt="PPC Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="HubSpot Academy Inbound Certified" class="thumb">
                                    <img src="awards-img/hubspot-academy-inbound-certified.jpg" title="PPC Course in Chandigarh" alt="PPC Course in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>






                </div>
            </div>


        </section>

      <section class="bg-dark py-5">
            <div class="container text-center">
                <div class="row">

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-users"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>97.99%</strong></h4>
                            <h5>CUSTOMER RETENTION</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-trophy"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>40+</strong></h4>
                            <h5>AWARDS</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-user-plus"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>300+</strong></h4>
                            <h5>CLIENTS</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-coffee"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>30+</strong></h4>
                            <h5>DAILY COFEE</h5>
                        </div>
                    </div>


                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-building"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>11+</strong></h4>
                            <h5>YEARS IN BUSINESS</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-inr"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>25 CR+</strong></h4>
                            <h5>BUDGET MANAGED</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-users"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>85+</strong></h4>
                            <h5>STRONG TEAM</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-certificate"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>20+</strong></h4>
                            <h5>AFFILIATIONS</h5>
                        </div>
                    </div>


                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-facebook"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>42K+</strong></h4>
                            <h5>FACEBOOK LIKES</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-instagram"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>39K+</strong></h4>
                            <h5>INSTAGRAM FOLLOWERS</h5>
                        </div>
                    </div>
                     

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-youtube"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>5K+</strong></h4>
                            <h5>YOUTUBE SUBSCRIBERS</h5>
                        </div>
                    </div> 

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-google"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>1860+</strong></h4>
                            <h5>GOOGLE REVIEWS</h5>
                        </div>
                    </div>


                </div>
            </div>

        </section>


    <section class="py-5">
        <div class="container">
        <h3><strong>PPC Training Tools that you will learn in PPC Course in Chandigarh</strong></h3>
              
         <div class="text-justify">
           <p>Without proper usage of right tools to manage PPC projects, a student cannot become a PPC expert. We cover the following most popular and best PPC tools during the <strong>PPC Course in Chandigarh</strong> in order to make your PPC training more effective and result-oriented.</p>
             </div>
                            
                    <img class="w-100 border" src="images/ppc-training-tools-in-chandigarh.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" />
      
    </div>
        </section>

        <section id="profiles" class="bg-ececec py-4 px-2">
            <div class="container-fluid">
                <div class="row m-0">
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Iconic Business Summit & Awards 2021" class="thumb">
                                    <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                    <img src="images/asia-quality-entreprenuership-award.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="images/award-image11.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                    <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                    <img src="/php-images/php-industrial-training.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                    <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                    <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>



                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                    <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="PPC Training in Chandigarh" title="Six Weeks Pay Per Click Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/ThinkNEXT-Frontdesk.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/galleryjob-fair7.jpg" alt="45 Days PPC Training in Chandigarh" title="45 Days PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                    <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="6 Month PPC Training in Chandigarh" title="6 Month PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/page-5_img-4-b.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/THINKNEXT-b.jpg" alt="45 Days PPC Training in Chandigarh" title="45 Days PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industial-training-in-chandigarh-group.webp" alt="PPC Course in Chandigarh" title="PPC Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="PPC Course in Chandigarh" title="PPC Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="PPC Training in Chandigarh" title="PPC Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>


        </section>


        <!-- light-box modelBox -->
        <div class="modal fade modal-profile gallerylightbox" tabindex="-1" role="dialog" aria-labelledby="modalProfile" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" type="button" data-bs-dismiss="modal">X</button>
                        <h3 class="modal-title"></h3>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <!--/// End light-box modelBox -->

        <div class="modal fade gallerylightbox" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-bs-dismiss="modal">
                            <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive col-md-12" src="" />
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
        <!--/// End gallerylightbox modelBox -->



    <section class="py-5" style="background: mintcream;">
        <div class="container">

            <div class="faq mt-0">
                   <h2 class="text-left">PPC Training - FAQs</h2>

            <div itemscope="" itemtype="https://schema.org/FAQPage">
<div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 1. Do you provide PPC Training Certificate after the course?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> Yes, we do provide PPC certification after the completion of the course.</p></div> 
 </div> 
 </div> 

 <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 2. Do we get practical training for PPC Course at ThinkNEXT? </h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"><p><strong>Ans. </strong> Yes, <b>PPC training in Chandigarh</b> at ThinkNEXT comes with practical sessions and labs.</p> </div> 
 </div> 
 </div> 

<div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 3. Is PPC Training in Chandigarh at ThinkNEXT up to date and relevant?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> ThinkNEXT provides the latest, best-quality content that is up to date with current industry needs. Our experienced and certified trainers constantly research the latest trends and indulge them into our training programs. </p></div> 
 </div> 
 </div> 

<div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 4. What are the qualifications of PPC trainers at ThinkNEXT?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> PPC training at ThinkNEXT is provided under a team of expert, certified and experienced PPC professionals/trainers who have 8+ years of experience in PPC.</p> </div> 
 </div> 
 </div> 
 
  <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 5. How can I enroll in PPC Training at ThinkNEXT?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> You can enroll in our PPC training by registering on our website or visiting our office.</p> </div> 
 </div> 
 </div> 

 <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 6. What is the duration of PPC training program from ThinkNEXT Technologies?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> The duration to get PPC training from ThinkNEXT Technologies is 2 months.</p> </div> 
 </div> 
 </div> 
 
 <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 7. What is the job guarantee after PPC Training provided by ThinkNEXT Technologies?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> ThinkNEXT provides 100% placement support till you get a job, as the placement service at ThinkNEXT is not just assistance, rather it is a passion. Free interview preparation classes are also provided.</p> </div> 
 </div> 
 </div> 
 
 <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 8. What is the course fees of PPC Training in Chandigarh provided by ThinkNEXT Technologies?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> The course fee for our <b>PPC training in Chandigarh</b> depends on the type of course you select. There are separate fee structures for weekday and weekend batch students. You can call us on <a href="tel:7837401000">7837401000</a>, <a href="tel:7837402000">7837402000</a> for detailed information on the fee structure and timings for <b>PPC Training in Chandigarh.</b></p> </div> 
 </div> 
 </div> 
 
 <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 9. Who can join PPC training course in Chandigarh provided by ThinkNEXT Technologies?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> PPC training course at ThinkNEXT is open for everyone, irrespective of their respective fields. Anyone (students, business owners, working professionals, housewives, retired employees etc) who has a basic understanding of computers and internet can be a part of our PPC training in Chandigarh.</p> </div> 
 </div> 
 </div> 
 
 <div itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
<h3 class="fw-bold" itemprop="name"> Q 10. Do you offer industry specific PPC Course in Chandigarh at ThinkNEXT?</h3>
 <div itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"> 
 <div itemprop="text"> <p><strong>Ans.</strong> For business owners and working professionals, a specially crafted PPC training in Chandigarh is provided to help them with their business niche.</p> </div> 
 </div> 
 </div>

           
 
</div>

                   </div>


         
        </div>

 </section>

    <section class="py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <ul class="welcomeLinks mb-0">
                        <li><a href="digital-marketing-course-training-in-chandigarh.aspx">Digital Marketing Course in Chandigarh</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="welcomeLinks mb-0">
                        <li><a href="digital-marketing-course-in-panchkula.aspx">Digital Marketing Course in Panchkula</a></li>
                    </ul>
                </div>

                <div class="col-md-4">
                    <ul class="welcomeLinks mb-0">
                        <li><a href="digital-marketing-course-zirakpur.aspx">Digital Marketing Course in Zirakpur</a></li>
                    </ul>
                </div>
            </div>
        </div>


    </section>

    <link href="new-bootstrap/css/style.css" rel="stylesheet" />
    <script src="new-bootstrap/js/jquery.min.js"></script>





</asp:Content>