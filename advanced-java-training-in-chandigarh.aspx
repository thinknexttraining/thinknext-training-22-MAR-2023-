<%@ Page Title="Advanced Java Training In Chandigarh Mohali - ThinkNEXT Technologies" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="advanced-java-training-in-chandigarh.aspx.vb" Inherits="java_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="Best Advanced java training in Chandigarh Mohali Panchkula. ThinkNEXT is top java training company that provides Java training in Core and Advance Java, Java Course Coaching." />
<meta name="keywords" content="Advanced java training in Chandigarh, Advanced java training in Mohali, Java Training in Chandigarh, Java Training in Mohali, Java Tutorial, Learn Java, Java Training in Panchkula." />
<link rel="image_src" href="https://www.thinknexttraining.com/images/advance-java-training.jpg"/>
<meta property="og:image" content="https://www.thinknexttraining.com/images/advance-java-training.jpg" />
     <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
  <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
  
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">
<meta name="copyright" content="ThinkNEXT"/>
<link rel="canonical" href="https://www.thinknexttraining.com/advanced-java-training-in-chandigarh.aspx." /> 
      <style>
          .bg-e0f0fc{
              background:#e0f0fc;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="main-image position-relative">

        <img class="d-md-none" src="images/advance-java-training-mobile.jpg" alt="Web Designing Training Course in Chandigarh Mohali Panchkula">
        <img class="d-none d-md-block" src="images/advance-java-training.jpg" alt="Web Designing Training Course in Chandigarh Mohali Panchkula">

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
 
    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-8">
                    <div class="p-2 border text-justify position-sticky top-0">
                        <div class="gdl-header-wrapper">
                            <h1>Advanced Java Training In Chandigarh Mohali</h1>
                        </div>
                        <p>
                           Are you looking for Advance Java Training in Chandigarh? There is a number of companies that provide advance java training in Chandigarh. ThinkNEXT Technologies Private Limited is one of the Best Institutes in Chandigarh which provides advanced java training This company is the best company because of its placements. It provides the best placement chance to the students.
                        </p>
                           <h2 class="h3 fw-bold text-danger">Java : Programming Language</h2>
                        <p>
                            Java does not have storage classes so it has a unique feature of garbage collection and that’s why it is liked by most of us. Languages that have come after Java, most notably C#, have had to clear the new higher bar for developer productivity that Java established. It is platform independent as well as architectural neutral.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">
                        <div class="right_box margin-top">
                            
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

    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Web Designing Training in Chandigarh">
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Web Designing Course in Chandigarh">
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Web Designing Course in Chandigarh">
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Web Designing Course in Chandigarh">
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Web Designing Course in Chandigarh">
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Web Designing Course in Chandigarh">
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Web Designing Training in Chandigarh">
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="Web Designing Training in Chandigarh">
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="Web Designing Training in Chandigarh">
                </div>
            </div>
        </div>

    </section>
   <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="Advanced Java Training In Chandigarh Mohali" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" />
                </div>


            </div>
        </div>
    </section>

    <section class="py-4" style="background: #e0f0fc;">
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
            <div class="text-center py-2">
                <h3 class="text-danger mb-0 content"><strong>Web Designing Course Contents</strong> </h3>
            </div>

            <div class="div">
                <div class="accordion" id="accordionExample">
                    <div class="row">
                    <div class="col-md-4 my-1">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    PHOTOSHOP
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                         <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Adobe Photoshop Download and Installation</li>
                                                <li>Photoshop Interface</li>
                                                <li>Import Image in Photoshop</li>
                                                <li>How to Use Move and Selection Tool All Types</li>
                                                <li>Layers Creation in Photoshop</li>
                                                <li>Banner Designing using Photoshop</li>
                                                <li>How to use quick selection tool with types</li>
                                                <li>Lasso Tool with Types</li>
                                                <li>2D Logo Design in Transparent and JPEG Format</li>
                                            </ul>
                                        </div>

                                          <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>3D LOGO Design With Mockup</li>
                                                <li>How to make image transparent or remove background</li>
                                                <li>Crop Tool And Types</li>
                                                <li>Brush Tool And Its Properties</li>
                                                <li>Clone Stamp Tool</li>
                                                <li>Paint Bucket and Gradient Tool</li>
                                                <li>Healing Tool Spot healing and Patch tool</li>
                                                <li>Content Aware Fill and Content Aware Move Tools</li>
                                            </ul>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                     <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    CANVA
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <ul class="welcomeLinks">
                                        <li>Creating Canva Account</li>
                                        <li>Logo Designing Using Canva</li>
                                        <li>Banner Designing Using Canva</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    HTML
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Introduction to HTML</li>
                                                <li>Software Installation</li>
                                                <li>Basic Tags of HTML</li>
                                                <li>BODY and MARQUEE Tag</li>
                                                <li>H1 HR P BR Tags</li>
                                                <li>Font Img Tag</li>
                                                <li>A Marquee Tag</li>
                                                <li>TABLE Tag</li>
                                                <li>Form Input Tags</li>
                                                <li>DIV SPAN Tags</li>
                                                <li>Input Tags</li>
                                            </ul>
                                        </div>

                                         <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>List Tags</li>
                                                <li>Select Textarea</li>
                                                <li>Fieldset Legend Imagemap</li>
                                                <li>Iframes</li>
                                                <li>Meta Tag</li>
                                                <li>Audio Video</li>
                                                <li>HTML Text Formatting Tags</li>
                                                <li>HTML5 Semantic Tags</li>
                                                <li>HTML5 Table Tags</li>
                                                <li>Bookmark HTML</li>
                                                <li>Quotation Tags HTML</li>
                                                <li>HTML QUIZ</li>
                                            </ul>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                     <div class="col-md-4 my-1">

                        <div class="accordion-item">

                            <h2 class="accordion-header" id="headingFour">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    CSS
                                </button>
                            </h2>

                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                          <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>CSS Basics</li>
                                                <li>How to add CSS to your HTML File</li>
                                                <li>How to use CSS Tags</li>
                                                <li>CSS Padding</li>
                                                <li>CSS Colors</li>
                                                <li>CSS Measurement Units</li>
                                                <li>CSS Background Properties</li>
                                                <li>CSS Border Style</li>
                                                <li>CSS Fonts</li>
                                                <li>CSS Display Properties</li>
                                                <li>CSS Class ID</li>

                                            </ul>
                                        </div>
                                          <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>CSS Margins</li>
                                                <li>CSS Float</li>
                                                <li>CSS Border</li>
                                                <li>CSS Text Tags</li>
                                                <li>CSS Scroll Bar</li>
                                                <li>CSS Positioning</li>
                                                <li>CSS Z-Index</li>
                                                <li>CSS 2D Transform Properties</li>
                                                <li>CSS Transform 2D Methods More</li>
                                                <li>CSS Pseudo Classes</li>
                                                <li>Animation in CSS</li>
                                            </ul>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFive">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    JAVASCRIPT
                                </button>
                            </h2>

                            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Type Conversion JavaScript</li>
                                                <li>Convert Variables to Number in JavaScript</li>
                                                <li>Set TimeOut SetInterval ClearTimeout and ClearInterval in JavaScript</li>
                                                <li>Set Timeout Setinterval Explained in JavaScript</li>
                                                <li>String and String Functions in JavaScript</li>
                                                <li>String Functions Explained in JavaScript</li>
                                                <li>Array Functions in JavaScript</li>
                                                <li>Array Functions in JavaScript Part 2</li>
                                                <li>Slice Splice Function JavaScript</li>
                                            </ul>
                                        </div>
                                         <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>Eval Function in JavaScript</li>
                                                <li>Calculator</li>
                                                <li>Calculator Code Explained</li>
                                                <li>Window Open and Close in JavaScript</li>
                                                <li>Vowel Using Switch Case</li>
                                                <li>Screen Properties in JavaScript</li>
                                                <li>History Object in JavaScript</li>
                                                <li>Navigator Object In JavaScript</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                   <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSix">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    JQUERY
                                </button>
                            </h2>
                            <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                         <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Introduction to jQuery</li>
                                                <li>How to download and setup jQuery</li>
                                                <li>CDN in jQuery</li>
                                                <li>Mouse Events jQuery</li>
                                                <li>Keyboard Window Events</li>
                                                <li>Form Events</li>
                                                <li>Fading Events Show Hide and Toggle Events</li>
                                            </ul>
                                        </div>
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>Slide Events jQuery</li>
                                                <li>Animation jQuery</li>
                                                <li>Chaining Call Back jQuery</li>
                                                <li>Getter and Setter Method</li>
                                                <li>Insert Content in jQuery</li>
                                                <li>Remove Elements and Attributes</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                   <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSeven">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    BOOTSTRAP
                                </button>
                            </h2>
                            <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Introduction to Bootstrap</li>
                                                <li>Using Grids in Bootstrap</li>
                                                <li>Bootstrap CDN</li>
                                                <li>Bootstrap Text Background Classes</li>
                                                <li>Rounded Image Borders</li>
                                                <li>Table Classes</li>
                                                <li>Container Class Bootstrap</li>
                                                <li>Bootstrap Alert</li>
                                                <li>Bootstrap Buttons</li>
                                                <li>Glyphicon Bootstrap</li>
                                                <li>Wells in Bootstrap</li>
                                                <li>Pagination in Bootstrap</li>
                                                <li>Progress Bar Bootstrap</li>
                                                <li>Badges in Bootstrap</li>
                                                <li>Bread Crumbes Bootstrap</li>
                                                <li>Panels in Bootstrap</li>
                                                <li>Form in Bootstrap</li>
                                                <li>Cards in Bootstrap</li>
                                                <li>Cards in Bootstrap 2</li>
                                            </ul>
                                        </div>
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks">

                                                <li>Horizontal Cards in Bootstrap</li>
                                                <li>Cards with Stretched Links and Lists Group</li>
                                                <li>Text Over Image in Card</li>
                                                <li>Text Align in Card Bootstrap</li>
                                                <li>Card Decks in Bootstrap</li>
                                                <li>Create Card Group in Bootstrap</li>
                                                <li>Spacing Classes in Bootstrap</li>
                                                <li>Spinners in Bootstrap</li>
                                                <li>Media Objects Bootstrap</li>
                                                <li>Button Groups in Bootstrap</li>
                                                <li>Button Group Explained</li>
                                                <li>Dropdown With Data Attributes</li>
                                                <li>Dropdown Within a Navbar Bootstrap</li>
                                                <li>Button Groups With Dropdown</li>
                                                <li>Dropdown Right Left Header</li>
                                                <li>Disable Items in Bootstrap</li>
                                                <li>Carousels in Bootstrap</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                   <div class="col-md-4 my-1">

                        <div class="accordion-item">

                            <h2 class="accordion-header" id="headingNine">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                    A COMPLETE WEB PAGE DESIGN
                                </button>
                            </h2>
                            <div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <ul class="welcomeLinks">
                                        <li>Web Page Template-Part1</li>
                                        <li>Web Page Template-Part2</li>
                                        <li>Responsive Web Page Design</li>
                                        <li>Source Code Files</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTen">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                    FREE THEMES AND PLUGINS
                                </button>
                            </h2>
                            <div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                         <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Premium Newspaper WordPress Theme</li>
                                                <li>Yoast Premium SEO Plugin</li>
                                                <li>Elementor Pro</li>
                                                <li>WP Rocket</li>
                                                <li>WP Fastest Cache Premium</li>
                                                <li>iThemes Security Pro</li>
                                                <li>Divi Theme</li>
                                                <li>Slider Revolution</li>
                                                <li>Impreza Theme</li>
                                                <li>Shopkeeper WordPress Theme</li>
                                                <li>Kleo WordPress Theme</li>
                                                <li>Herald Theme</li>
                                                <li>Astra Theme</li>
                                                <li>Calafate Theme</li>
                                                <li>Constructo Theme</li>
                                                <li>Coupon Theme</li>
                                                <li>Crypto Theme</li>
                                                <li>Eduma Theme</li>
                                                <li>Flatsome Theme</li>
                                                <li>Genesis Theme</li>
                                                <li>Hestia Pro Theme</li>
                                                <li>Woomobify Theme</li>


                                            </ul>
                                        </div>
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>Woondershop Theme</li>
                                                <li>WP Quiz Pro</li>
                                                <li>WP Schema Pro Plugin</li>
                                                <li>AR Forms Plugin</li>
                                                <li>Advanced Custom Fields</li>
                                                <li>Advanced Custom Fields for Woocommerce</li>
                                                <li>Unicase Theme</li>
                                                <li>Avada Theme</li>
                                                <li>Buddy Boss Theme</li>
                                                <li>Coaching WP Theme</li>
                                                <li>Adifier Theme</li>
                                                <li>Ask Me Theme</li>
                                                <li>Farmworld Theme</li>
                                                <li>Zeen Theme</li>
                                                <li>Ewebot Theme</li>
                                                <li>Blo Theme</li>
                                                <li>Yosemite Theme</li>
                                                <li>Travel Wordpress Theme</li>
                                                <li>Xtra Theme</li>
                                                <li>SimpleMag Theme</li>
                                            </ul>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingEleven">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEleven" aria-expanded="false" aria-controls="collapseEleven">
                                    WORDPRESS CMS
                                </button>
                            </h2>
                            <div id="collapseEleven" class="accordion-collapse collapse" aria-labelledby="headingEleven" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="welcomeLinks mb-0">
                                                <li>Introduction to WordPress</li>
                                                <li>How to Buy Domain and Web Hosting (Hostinger)</li>
                                                <li>How to install WordPress</li>
                                                <li>WordPress Dashboard</li>
                                                <li>WordPress Theme Installation</li>
                                                <li>WordPress Menu</li>
                                                <li>WordPress Pages</li>
                                                <li>Widgets in WordPress</li>
                                                <li>Posts in WordPress</li>
                                                <li>How to install plugin In WordPress</li>
                                                <li>Contact Form 7 Plugin</li>
                                                <li>Smartslider 3 Plugin in WordPress</li>
                                                <li>Elementor Plugin Part 1</li>
                                                <li>Elementor Plugin Part 2</li>
                                                <li>Elementor - How to Design a Webpage</li>
                                                <li>Elementor - How to Design a Webpage Part-2</li>
                                                <li>Elementor - How to add video to a Webpage and more features</li>
                                                <li>Elementor - More on Elementor</li>
                                                <li>Elementor Basic Email Setup</li>
                                                <li>Form in Elementor Part 2</li>
                                                <li>Motion Effects in Elementor</li>
                                                <li>Image Attributes in Elementor</li>
                                                <li>Shape Divider in Elementor</li>
                                                <li>How to edit section in Elementor</li>
                                                <li>Navmenu in Elementor</li>
                                                <li>Elementor More Features</li>
                                            </ul>
                                        </div>
                                         <div class="col-md-12">
                                            <ul class="welcomeLinks">
                                                <li>Portfolio In Elementor</li>
                                                <li>Animated Headlines in Elementor</li>
                                                <li>More Elementor Features Part1</li>
                                                <li>More Elementor Features Part2</li>
                                                <li>Carousels in Elementor</li>
                                                <li>Accordian in Elementor</li>
                                                <li>Rounded</li>
                                                <li>Sharebutton in Elementor</li>
                                                <li>Table of Contents With Margin and Border in Elementor</li>
                                                <li>Toggle In Elementor</li>
                                                <li>Tabs In Elementor</li>
                                                <li>Alert in Elementor</li>
                                                <li>Call To Action in Elementor</li>
                                                <li>Countdown in Elementor</li>
                                                <li>Elementor Site Logo</li>
                                                <li>Woocommerce Set Up</li>
                                                <li>Woocommerce Part 2</li>
                                                <li>Products in Woocommerce</li>
                                                <li>Shopping Cart in WooCommerce</li>
                                                <li>Convert HTML to WordPress</li>
                                                <li>DIVI Theme Installation</li>
                                                <li>How to Use DIVI Theme Part1</li>
                                                <li>DIVI Theme More Options</li>

                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwele">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwele" aria-expanded="false" aria-controls="collapseTwele">
                                    FREELANCING
                                </button>
                            </h2>
                            <div id="collapseTwele" class="accordion-collapse collapse" aria-labelledby="headingTwele" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <ul class="welcomeLinks">
                                        <li>What is Freelancing</li>
                                        <li>How to Create an Upwork Account</li>
                                        <li>How to Create a Fiverr Account</li>
                                        <li>How to create a Guru Account</li>

                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 my-1">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThirteen">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThirteen" aria-expanded="false" aria-controls="collapseThirteen">
                                    INTERVIEWS PRAPERTION
                                </button>
                            </h2>
                            <div id="collapseThirteen" class="accordion-collapse collapse" aria-labelledby="headingThirteen" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <ul class="welcomeLinks">
                                        <li>Frequently Asked Questions during Job Interviews</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                      

                    <div class="col-md-4 my-1 d-md-none">

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFourteen">
                                <button class="accordion-button collapsed bg-e0f0fc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFourteen" aria-expanded="false" aria-controls="collapseThirteen">
                                    JOB SEARCH MODULE
                                </button>
                            </h2>
                            <div id="collapseFourteen" class="accordion-collapse collapse" aria-labelledby="headingFourteen" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <ul class="welcomeLinks">
                                        <li>How to Create an Account or Build your Resume on Indeed</li>
                                        <li>How to Create an Account on Indeed</li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                    </div>

                              <div class="col-12 text-center">
                   
                    <p><br /></p>
                   
               <a href="BroucherDownload.aspx?data=Digital Marketing Broucher" onclick="broucherdownload();" target="broucher" class="btn-warning text-dark rounded px-4 py-3 h4 mt-3">Download Syllabus <i class="fa fa-download"></i></a>
                    </div>


                </div>
                    </div>
                </div>
            </div>

     
    </section>

    <section class="bg-light py-5">
        <br>
        <div class="container">
            <div class="row">


                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Advanced Java Training In Chandigarh Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Advanced Java Training In Chandigarh Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Advanced Java Training In Chandigarh Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Advanced Java Training In Chandigarh Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>


    <section class="py-5" style="background: #07294d;">
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                    <li>Advanced Java Training from 6 Times National Level Award Winner Company</li>
                    <li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
                    <li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
                    <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                    <li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                    <li>Advanced Java Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                    <li>Advanced Java Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
                    <li>Advanced Java Training from 11+ Years old company</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>
                            
                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Advanced Java Training In Chandigarh Mohali" title="Advanced Java Training In Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </section>


    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

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
                <a href="https://thinknexttraining.com/web-designing-training-in-chandigarh.aspx"><b>Advanced Java Training In Chandigarh Mohali</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-chandigarh.aspx"><b>Advanced Java Training In Chandigarh Mohali</b></a>,  
                <a href="https://thinknexttraining.com/topics/web-designing-institutes-in-chandigarh.aspx"><b>web designing institutes in chandigarh</b></a>, 
                <a href="https://thinknexttraining.com/topics/how-to-learn-web-designing.aspx"><b>how to learn web designing</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-mohali.aspx"><b>web designing course in mohali</b></a>,
                <a href="https://thinknexttraining.com/top-10-companies-providing-web-designing-training-in-chandigarh.aspx"><b>Top 10 Companies Providing Advanced Java Training In Chandigarh Mohali</b></a>, 
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

