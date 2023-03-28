<%@ Page Title="Advance Excel Online Course - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="advance-excel-online-course.aspx.vb" Inherits="advance_excel_online_course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="Advance Excel Online Course - ThinkNEXT is one of the best Online Training Company providing Advance Excel Online Course in INDIA" />
<meta name="keywords" content="Advance excel online course, Advance excel online training, advanced excel course online free, learn advanced excel online, free online advanced excel course with certificates, advanced excel online, certification in advanced excel, advance excel online classes" />
<link rel="image_src" href="https://www.thinknexttraining.com/images/advance-excel-online-course-min .jpg"/>
<meta property="og:image" content="https://www.thinknexttraining.com/images/advance-excel-online-course-min .jpg" />
     <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
  <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
  
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">
<meta name="copyright" content="ThinkNEXT"/>
<link rel="canonical" href="https://www.thinknexttraining.com/advance-excel-online-course.aspx" /> 
      <style>
          .bg-e0f0fc{
              background:#e0f0fc;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="main-image position-relative">

        <img class="d-md-none" src="images/advance-excel-online-course-min .jpg" alt="Advance Excel Online Course">
        <img class="d-none d-md-block" src="images/advance-excel-online-course-min .jpg" alt="Advance Excel Online Course">

        <div class="downloadsyllabus-banner px-2 py-3 rounded">
            <div class="downloadsyllabus w-100 border-0">
                <h4 class="text-dark fw-bold text-center">Download Syllabus</h4>
                <p class="text-center mb-4">Fill up the below form and you will get the complete course syllabus</p>

                <asp:Label class="label5" ID="Label5" runat="server"></asp:Label>
                <asp:Label ID="msg" runat="server" Visible="false" Text="" CssClass="text-danger"></asp:Label>
                <div class="row m-0">
                    <div class="col-12 mb-4">
                        <asp:TextBox ID="NameSyl" runat="server" class="form-control" placeholder="Your Name*"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="DSyllabusValidatorName" CssClass="text-danger position-absolute" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Name" ControlToValidate="NameSyl" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="DSyllabusGroup1"></asp:RegularExpressionValidator>
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
             
 
    <section class="py-4 d-none">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-8">
                    <div class="p-2 border text-justify position-sticky top-0">
                        <div class="gdl-header-wrapper">
                            <h1>Advance Excel Online Course</h1>
                        </div>
                        <p></p>
                        <h2 class="h3"></h2>
                        <p></p>
                        <p></p>
                      
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">
                        <div class="right_box margin-top">
                            <div class="without_border dwl1 text-center">                                
                                <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher">
                                    <img src="images/download_brochure.png" alt="Advance Excel Online Course">
                                </a>

                            </div>
                        </div>
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
                                    <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4 w-100" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="py-4 d-none">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Advance Excel Online Course" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Advance Excel Online Course" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Advance Excel Online Course" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Advance Excel Online Course" />
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Advance Excel Online Course" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Advance Excel Online Course" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Advance Excel Online Course" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="Advance Excel Online Course" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="Advance Excel Online Course" />
                </div>
            </div>
        </div>

    </section>
    
    <section class="ptb-20 bg-light">
        <div class="container-fluid">
            <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" />
                </div>


            </div>
        </div>
    </section>

    <section class="pd-30 training-highlights">

        <div class="container py-5">
            <h2 class="section-heading text-center"><strong>Training Highlights</strong></h2>
            <div class="row mx-auto text-center">
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

    <section class="py-4 d-none" style="background: #e0f0fc;">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-8 text-justify">
                    <h3 class="text-danger">Future Scope/Career Opportunities in Web Designing</h3>
                    <div>

                        <ul class="welcomeLinks">
                            <li>Person can work in a big web designing company or can also work as a freelancer. There are thousands of huge companies that are looking to hire web designers for their front-end and back-end web development projects.</li>
                            <li>Web designer is the most in-demand job according to international surveys with an annual salary of about 3000,000 to 5000,000.</li>
                            <li>Of the various jobs, web designers and developers have the best outlook through 2022. According to the Bureau of Labor and Statistics: The employment of web developers is projected to grow 40 percent from 2018 to 2023.</li>
                            <li>Post 2020, the demand for web designing courses has drastically increased, and a surge in web designing jobs can also be seen.</li>
                            <li>A large proportion of multinational companies are hunting for web designers around the world.</li>
                            <li>Huge firms like Infosys, IBM, Microsoft, Google, LinkedIn, and many more are desperately looking for professional web designers and offering high salary packages.</li>
                        </ul>
                    </div>


                </div>

                <div class="col-lg-4 text-justify">
                    <div class="position-sticky top-0">

                        <div class="py-3 px-4 bg-warning">
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
                                    <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-dark text-white px-3 h4 w-100" Text="Book Now" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>What will be the training syllabus?</strong></h3>
            </div>
            <br />

            <div class="row">
                <p class="h4 text-danger mt-4"> <strong>Session 1: Introduction</strong> </p>
                <div class="col-sm-12 col-md-4 col-lg-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Interface </li>
                </ul>
                </div>
                <div class="col-sm-12 col-md-4 col-lg-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Tabs and Ribbons </li>
                    <li>Document Windows </li>
                </ul>
               </div>
                <div class="col-sm-12 col-md-4 col-lg-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Navigation Tips </li>
                    <li>Office Button and Save </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 2: </strong></p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Entering, Editing and Formatting Data </li>
                    <li>Introduction </li>
                    <li>Entering Data </li>
                    <li>Fonts, Fills, and Alignment </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Cut, Copy, and Paste </li>
                    <li>Paste Special </li>
                    <li>Undo and Redo </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Moving, Finding, and Replacing a Value </li>
                    <li>Cell Styles </li>
                    <li>Comments </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 3: Formatting Numbers</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Currency Format </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Format Painter </li>
                    <li>Formatting Dates </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Custom and Special Formats </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 4: Managing Worksheets</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Naming and Moving Worksheets </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Copying Worksheets </li>
                    <li>Adding, Deleting and Hiding Worksheets </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Grouping Worksheets </li>
                    <li>Moving, Copying, Deleting and Hiding Grouped Worksheets </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 5: Modifying Rows and Columns</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Inserting and Deleting Columns and Rows </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Inserting &amp; Deleting Cells </li>
                    <li>Inserting Multiple Columns &amp; Rows </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Modifying Cell Width and Height </li>
                    <li>Hiding and Unhiding Rows and Columns </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 6: Understanding Formulas</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Using Operations </li>
                    <li>Creating Formulas </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>AutoSum </li>
                    <li>Common Formulas </li>
                    <li>Searching for Formulas </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Copying Formulas </li>
                    <li>Using Relative and Absolute References </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 7: Changing Views</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Workbook Views </li>
                    <li>Show/Hide </li>
                    <li>Zoom Features </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Freeze Panes </li>
                    <li>Split Windows </li>
                    <li>Viewing Multiple Windows </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Minimize the Ribbon </li>
                    <li>Worksheet Backgrounds </li>
                    <li>Watermarks </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 8: AutoFill and Custom Lists</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>AutoFill a Series </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>AutoFill Non-Adjacent Cells </li>
                    <li>AutoFill on Multiple Sheets </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Creating Custom Lists </li>
                    <li>Series Formatting </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 9: Conditional Formatting</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Highlight Cells Rules </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Top/Bottom Rules </li>
                    <li>Data Bars </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Color Scales </li>
                    <li>Custom Formatting Rule </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 10: Tables</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Insert a Table and Style Options </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Add Rows and Columns </li>
                    <li>Perform a Function in a Table </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Summarise With Pivot Table </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 11: Data Tools</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Data Validation </li>
                    <li>Drop-Down Lists </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Removing Duplicates </li>
                    <li>Text to Columns </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Goal Seek </li>
                    <li>Scenario Manager </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 12: Referencing Formulas</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Multiple Sheet References </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Consolidating Data - With or Without Links </li>
                    <li>Trace the Precedents and Dependents </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Using the Watch Window </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 13: Ranges and Dates</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Cell Names </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Named Ranges </li>
                    <li>Formulas with Cell Names </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Date Formulas </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 14: Lookups</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>VLOOKUP </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>VLOOKUP Exact Match </li>
                    <li>HLOOKUP </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>HLOOKUP Exact Match </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 15: Conditional Logic</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>IF Statement </li>
                    <li>Nested IF </li>
                    <li>AND </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>OR </li>
                    <li>NOT </li>
                    <li>IFERROR </li>
                    <li>SUM IF </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>AVERAGE IF </li>
                    <li>COUNT IF &amp; COUNT IFS </li>
                    <li>SUMIFS </li>
                    <li>AVERAGE IFS </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 16: Text Formulas</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Case Formulas </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Fix Number Fields </li>
                    <li>Trim Spaces </li>
                </ul>
                    </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Substitute Text </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 17: Introduction to Charts</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                        <li>Introduction </li>
                        <li>Chart Types </li>
                        <li>Instant Chart </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                        <li>Update Chart </li>
                        <li>Column Chart </li>
                        <li>Picture Fill </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                        <li>Adjust Chart Size </li>
                        <li>Line Chart </li>
                        <li>Scatter Chart </li>
                    </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 18: Formatting Charts</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Chart Styles </li>
                    <li>Chart Layouts </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Add Labels </li>
                    <li>Axis Options </li>
                    <li>Chart Title </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Legends </li>
                    <li>Data Labels </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 19: Adding Graphics to  Spreadsheets</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Insert Pictures </li>
                    <li>Modifying Pictures </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Insert Shapes </li>
                    <li>Insert SmartArt </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Apply Themes </li>
                    <li>Arrange </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 20: Outline, Sort, Filter,  and Subtotal</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Group and Ungroup </li>
                    <li>Sort Data </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Sort Multiple Levels </li>
                    <li>Filter Data </li>
                    <li>Advanced Filter </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Conditional Sorting and Filtering </li>
                    <li>Sorting with Custom Lists </li>
                    <li>Subtotal </li>
                </ul>
                </div>
                
                <p class="h4 text-danger mt-4"> <strong>Session 21: PivotTables</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Creating PivotTables </li>
                    <li>Choosing Fields </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>PivotTable Layout </li>
                    <li>Filtering PivotTables </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Modifying PivotTable Data </li>
                    <li>Pivot Charts </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 22: </strong></p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Protecting Data </li>
                    <li>Introduction </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Workbook Passwords </li>
                    <li>Protecting Workbooks </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Unlocking Cells </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 23: Collaboration</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Document Properties </li>
                    <li>Inserting Hyperlinks </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Sharing a Workbook </li>
                    <li>Track Changes </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Accept/Reject Changes </li>
                    <li>Mark as Final </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 24: Printing</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Page Orientation </li>
                    <li>Page Breaks </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Print Area </li>
                    <li>Margins </li>
                    <li>Print Titles </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Headers and Footers </li>
                    <li>Scaling </li>
                    <li>Sheet Options </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 25: Saving a Workbook</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction </li>
                    <li>Save As Previous Version </li>
                    <li>AutoRecover Save Options </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Templates </li>
                    <li>Save As PDF </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Save As Web Page </li>
                    <li>Macro-Enabled Workbook </li>
                </ul>
                </div>

                <p class="h4 text-danger mt-4"> <strong>Session 26: Macros</strong> </p>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Introduction and Macro Security </li>
                    <li>Recording a Macro </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>Assign a Macro to a Button or Shape </li>
                    <li>Run a Macro upon Opening a Workbook </li>
                </ul>
                </div>
                <div class="col-sm-12 col-lg-4 col-md-4 text-justify">
                <ul class="welcomeLinks">
                    <li>How to Inspect and Modify a Macro </li>
                </ul>
            </div>
         </div>

            <div class="clear-both"></div>
        </div>

    </section> 

    <section class="bg-light py-5">
        <br>
        <div class="container">
            <div class="row">


                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Advance Excel Online Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Advance Excel Online Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Advance Excel Online Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Advance Excel Online Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>


    <section class="py-5 d-none" style="background: #07294d;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-10">
                    <h3 class="text-warning mb-4 text-center" style="font-size: 36px;"><strong> 3 Modes of Industrial Training/Internship</strong></h3>

                    <div class="row text-center">
                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded" style="background: #8ca94a;">
                                <img class="w-50" src="images/classroom-training.png" alt="Classroom Training">
                                <h4 class="mt-3" style="color: #fff;">Classroom/Offline Training</h4>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded" style="background: #fd6e6f;">
                                <img class="w-50" src="images/instructor-led.png" alt="Classroom Training">
                                <h4 class="mt-3 text-white">Instructor-Led Online Live Training</h4>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded" style="background: #5789e8;">
                                <a href="online-training-course.aspx">
                                    <img class="w-50" src="images/instructor-less.png" alt="Classroom Training"></a>
                                <h4 class="mt-3 text-white"><a href="online-training-course.aspx" class="text-white">Instructor-less Online Training</a></h4>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-lg-1">
                </div>
            </div>


        </div>
    </section>
   
    <section style=" background: #e0f0fc;" id="profiles" class="page py-4 px-2">
        <h2 class="text-center"><strong>ThinkNEXT in Media</strong></h2>
        <div class="col-sm-12">
            <div class="row m-0">
                <div class="col-lg-8">

                    <div id="profile-grid" class="px-2 py-4 position-sticky top-0">
                        <h2 class="h2"><strong>Print Media</strong></h2>

                        <div class="row m-0">

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Advance Excel Online Course" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Advance Excel Online Course" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Advance Excel Online Course" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Advance Excel Online Course" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Advance Excel Online Course" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Advance Excel Online Course" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Advance Excel Online Course" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Advance Excel Online Course" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Advance Excel Online Course" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Advance Excel Online Course" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Advance Excel Online Course" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Advance Excel Online Course" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Advance Excel Online Course" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Advance Excel Online Course" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Advance Excel Online Course" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
                                </div>
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

            <br>
            <p class="hcntr"><span class="htitl"><a href="media.aspx" class="vgalry">View More</a></span></p>

        </div>


    </section>

    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 30 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>

            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                    <li>Advance Excel Online Course from 6 Times National Level Award Winner Company</li>
                    <li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
                    <li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
                    <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                    <li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                    <li>Advance Excel Online Course from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                    <li>Advance Excel Online Course from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
                    <li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
                    <li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
                    <li>Free online courses for class-room/offline students undergoing Industrial Training/Internship</li>
                    <li>Get Industrial Training/Internship in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
                    <li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
                    <li>Guaranteed Job Interviews and 100% Placement Assistance</li>
                    <li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
                    <li>Training on Live-Projects </li>
                    <li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
                    <li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
                    <li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
                    <li>Advance Excel Online Course from 11+ Years old company</li>
                    <li>Customized Syllabus (You can add your own relevant topics) and Backup Classes (in case you miss some classes)</li>
                    <li>Free Subdomain and Web Hosting to host projects.</li>
                    <li>Numerous Tie-up with IT / Electronics / Mechanical / Civil / Electrical / Retail / Textile etc. companies for Placements</li>
                    <li>Lifetime Validity Learning and Placement Assistance</li>
                    <li>Member of CII (Confederation of Indian Industry). Membership No. N5238P</li>
                </ul>
            </div>

        </div>
    </section>

    <section id="profiles" class="bg-ececec py-4 px-2">
        <div class="container-fluid">
            <div class="row m-0">
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Iconic Business Summit & Awards 2021">
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>
                            
                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Advance Excel Online Course" title="Advance Excel Online Course" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </section>


    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

    <section class="py-5">
        <div class="container">
            <div class="faq">
                <h4 class="h3 fw-bold mb-4 text-danger">Online Training - FAQ’S</h4>
                <h4><strong>Q 1. Do I have to be a ThinkNEXT student to take an Advance Excel Online Course?</strong></h4>                              
                <p><strong>Ans.</strong> No, our online training programs are open to everyone in India</p>
                                
                <h4><strong>2. Who can join online training courses at ThinkNEXT? </strong></h4>
                <p><strong>Ans. </strong>Students, irrespective of their diverse backgrounds, professions, and age groups, can join our online courses</p>
                            
                <h4><strong>Q 3. Are there any prerequisites or language requirements for online training at ThinkNEXT? </strong></h4>
                <p><strong>Ans.</strong> There are no prerequisites. All courses are conducted in English and Hindi. For better retention, video lectures include English subtitles and the option to slow-down, pause, or replay lectures.</p>
                            
                <h4><strong>Q 4. Can I take more than one Online Course at a time at ThinkNEXT?</strong></h4>                  
                <p><strong>Ans.</strong> Yes, you can take more then one Online course at ThinkNEXT.</p>
                                                  
                <h4><strong>Q 5. Do I need specific equipment to take Online Courses at ThinkNEXT?</strong></h4>                     
                <p><strong>Ans.</strong> You need to have an up-to-date web browser such as: Chrome, Safari, Firefox, or Internet Explorer.<br />
                    Other than that, we strongly encourage you to have access to a desktop or laptop computer and reliable internet connection.
                </p>

            </div>
        </div>
    </section>

	<!--/// End light-box modelBox -->
    <section class="py-3 d-none">
        <div class="container">
            <div class="col-lg-12">
                <h5 class="text-danger"><b>Top Search</b></h5>
                <a href="https://thinknexttraining.com/topics/web-designing-training-in-mohali.aspx"><b>Web designing training in mohali</b></a>, 
                <a href="https://thinknexttraining.com/topics/web-designing-course.aspx"><b>Web designing course</b></a>, 
                <a href="https://thinknexttraining.com/topics/web-designing-courses.aspx"><b>Web design courses</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-classes.aspx"><b>Web design classes</b></a>, 
                <a href="https://thinknexttraining.com/topics/web-designing-tutorial.aspx"><b>Web design tutorial</b></a>, 
                <a href="https://thinknexttraining.com/topics/web-development-training.aspx"><b>Web development training</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-institute.aspx"><b>Web designing institute</b></a>, 
                <a href="https://thinknexttraining.com/web-designing-training-in-chandigarh.aspx"><b>Web Designing Course in Chandigarh</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-chandigarh.aspx"><b>Web designing course in chandigarh</b></a>,  
                <a href="https://thinknexttraining.com/topics/web-designing-institutes-in-chandigarh.aspx"><b>web designing institutes in chandigarh</b></a>, 
                <a href="https://thinknexttraining.com/topics/how-to-learn-web-designing.aspx"><b>how to learn web designing</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-mohali.aspx"><b>web designing course in mohali</b></a>,
                <a href="https://thinknexttraining.com/top-10-companies-providing-web-designing-training-in-chandigarh.aspx"><b>Top 10 Companies Providing Advance Excel Online Course</b></a>, 
                <a href="https://thinknexttraining.com/top-5-web-designing-training-institutes-chandigarh-mohali.aspx"><b>Top 5 Web Designing Training Institute in Chandigarh Mohali</b></a>,                
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-panchkula.aspx"><b>web designing course in panchkula</b></a>, 
                         
              <br />
                <br />
            </div>
        </div>

    </section>


    <div class="brochiframe" id="brochiframe">
                                    <iframe name="broucher"></iframe>
                                    <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()">

                                </div>

    
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

     

</asp:Content>

