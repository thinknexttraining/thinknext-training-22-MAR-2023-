<%@ Page Title="MEAN Stack Training in Chandigarh Mohali - MEAN Stack Developer Course" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="mean-stack-course-training-chandigarh-mohali.aspx.vb" Inherits="mean_stack_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="description" content="MEAN Stack Training in Chandigarh Mohali - ThinkNEXT provides the best MEAN Stack Development Training in Chandigarh Mohali. Join the best MEAN Stack Developer Course." />
   <meta name="keywords" content="MEAN Stack Training in Chandigarh, MEAN Stack Training in Mohali, MEAN Stack Development Training in Chandigarh, MEAN Stack Development Training in Mohali, MEAN Stack Developer Course, Best MEAN Stack Development Tutorial, MEAN Stack Institute in Chandigarh, MEAN Stack Institute in Mohali, MEAN Stack Course in Chandigarh, MEAN Stack Course in Mohali " />
    <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/mean-stack-course-in-chandigarh-mohali.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/mean-stack-course-in-chandigarh-mohali.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
     <div class="main-image position-relative">
          <img class="d-md-none" src="images/mean-stack-mob-min.jpg" alt="MEAN Stack Training Course in Chandigarh Mohali" title="MEAN Stack Training Course in Chandigarh Mohali" />
           <img  class="d-md-block d-none " src="images/mean-stack-min.jpg" alt="MEAN Stack Training Course in Chandigarh Mohali" />
        
          
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

    <section class="bg-ececec py-3 px-2 text-md-center">
        <div class="container">
            <div class="row m-0">
                <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                    <a href="stipend-based-industrial-training.aspx" class="btn bg-0f54bb text-white w-100 mt-md-3 mt-lg-0"><strong>Stipend Based Industrial Training</strong></a>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="free-industrial-training-in-chandigarh.aspx" class="btn bg-0f54bb text-white w-100 mt-3 mt-lg-0"><strong>Free Industrial Training</strong> </a>
                </div>

                <div class="col-12 col-sm-6 col-md-6 col-lg-2">
                    <a href="online-training-course.aspx" class="btn bg-0f54bb text-white  w-100 mt-3 mt-lg-0"><strong>Online Courses</strong> </a>
                </div>

                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="#" class="btn bg-0f54bb text-white  w-100 mt-3 mt-lg-0"><strong>Free Demo Class </strong></a>
                </div>
            </div>
        </div>
    </section>

    <section class="py-4 ">
        <div class="container register">
            <div class="row m-0">
                <div class="col-md-8">
                    <h1>MEAN Stack Training in Chandigarh Mohali</h1>

                    <p class="text-danger fw-bold">Are you interested in pursuing <strong>MEAN Stack Training in Chandigarh Mohali?</strong> </p>
                    <p class="text-danger fw-bold">Has ever <strong>MEAN Stack Developer Course</strong> fascinated you? </p>
                    <p class="text-danger fw-bold">Do you want to know about <strong>MEAN Stack Development Training in Chandigarh Mohali?</strong> </p>

                    <p class="text-primary fw-bold">If Yes, then </p>
                    <p class="text-primary fw-bold">Your search ends here. Finally, You are at the RIGHT PLACE </p>
                    <p class="text-primary fw-bold">You are at <strong>ThinkNEXT Technologies Private Limited </strong></p>
                    <p class="text-primary fw-bold">&nbsp; -Biggest brand for <strong>MEAN Stack Course</strong> </p>
                    <p class="text-primary fw-bold"><strong>&nbsp; -Best MEAN Stack Development Tutorial</strong> </p>
                    <div class="text-justify">
                        <p><strong>ThinkNEXT Technologies Private Limited</strong> is one of the top-notch companies that carries expertise in delivering best <strong>MEAN Stack Training in Chandigarh Mohali.</strong> <strong>ThinkNEXT</strong> offers 6 months/3 months/45 days well-structured <strong>MEAN Stack Course</strong> with an objective of helping students to enhance their skill set, so that they could secure their dream jobs at MNCs. ThinkNEXT’s <strong>MEAN Stack Development Tutorial</strong> provides its students with hands-on practical knowledge on projects.</p>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">
                        <div class="right_box margin-top">
                            <div class="without_border dwl1 text-center">
                                <div class="brochiframe" id="brochiframe">
                                    <iframe name="broucher"></iframe>
                                    <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()" />

                                </div>
                                <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher">
                                    <img src="images/download_brochure.png" alt="Stipend based Industrial Training in Chandigarh Mohali">
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
                                    <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 mt-2">
                    <div class="text-justify">
                        <p><strong>ThinkNEXT</strong> is a professional ISO 9001:2015 Certified <strong>MEAN Stack Institute in Chandigarh Mohali</strong> with high-tech infrastructure and lab facilities. Our <strong>MEAN Stack Developer Course</strong> is delivered from basic to advanced level with popular web development technologies, thus helping students to become professionals at the end of the <strong>MEAN Stack Development Course in Chandigarh Mohali.</strong> </p>
                        <p>At ThinkNEXT, <strong>MEAN Stack Training </strong>is conducted by certified professionals having 10+ years of experience in implementing real-time MEAN Stack.</p>
                        <p>MEAN Stack Developer Certification will be provided at ThinkNEXT at the end of MEAN Stack Course.</p>
                        <p>ThinkNEXT has been honored 4 times with the <a href="https://www.youtube.com/watch?v=FO8mzUt7Et4">National Awards</a> in the field of Industrial Training, Web Development & Digital Marketing.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 bg-07294d">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-10">
                    <h3 class="text-warning mb-4 text-center" style="font-size: 36px;"><strong>3 Modes of Industrial Training/Internship</strong></h3>

                    <div class="row text-center">
                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded bg-8ca94a">
                                <img class="w-50" src="images/classroom-training.png" alt="Classroom Training">
                                <h4 class="mt-3" style="color: #fff;">Classroom/Offline Training</h4>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded bg-fd6e6f">
                                <img class="w-50" src="images/instructor-led.png" alt="Classroom Training">
                                <h4 class="mt-3 text-white">Instructor-Led Online Live Training</h4>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded bg-5789e8">
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


    <section class="py-5">
        <div class="container">
            <div class="order-1 text-justify">
                <h3 class="text-danger"><strong>MEAN Stack Course – ThinkNEXT</strong></h3>
                <div class="text-justify">
                    <p><strong>MEAN Stack Course</strong> at <strong>ThinkNEXT</strong> will help students to take their career to the next level as a web developer. Through MEAN Stack Tutorial for beginners, students will become an expert at the front-end and back-end JavaScript technologies of the most popular MEAN (<strong>MongoDB</strong>, <strong>Express.js</strong>, <strong>AngularJS</strong>, <strong>Node.js</strong>) Stack.</p>
                    <p>MEAN Stack refers to a collection of JavaScript technologies used to develop web applications. MEAN stands for MongoDB, Express.js, AngularJS, Node.js, whose description is penned below:</p>
                    <ul class="welcomeLinks">
                        <li><strong class="text-danger">MongoDB</strong> is a database management system. MongoDB saves data in binary JSON format which makes it easier to pass data between client and server.</li>
                        <li><strong class="text-danger">Express.js</strong> is lightweight framework used to build web applications in Node. It provides a number of robust features for building single and multi-page web application.</li>
                        <li><strong class="text-danger">AngularJS</strong> is a JavaScript framework developed by Google. It’s a complete solution for rapid and awesome front-end development.</li>
                        <li><strong class="text-danger">Node.js</strong> is a server-side JavaScript execution environment. It helps in building highly scalable and concurrent applications rapidly.</li>
                    </ul>
                    <p>In <strong>MEAN Stack Developer Course</strong>, candidates will implement the concepts under MongoDB, Express.js, AngularJS & Node.js on real-time projects.</p>
                    <p><strong>MEAN Stack Course</strong> at <strong>ThinkNEXT</strong> is blended with IT industry experience where even a fresher can start building web application in very less time with highly dynamic and interactive UI.</p>
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Mean Stack Training Course in Chandigarh Mohali" title="Mean Stack JS Training Course in Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Mean Stack Training Course in Chandigarh Mohali" title="Mean Stack Training Course in Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Mean Stack Training Course in Chandigarh Mohali" title="Mean Stack Training Course in Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Mean Stack Training Course in Chandigarh Mohali" title="Mean Stack Training Course in Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Mean Stack Training Course in Chandigarh Mohali" title="Mean Stack Training Course in Chandigarh Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Mean Stack Training Course in Chandigarh Mohali" title="Mean Stack Training Course in Chandigarh Mohali" />
                </div>

            </div>
        </div>
    </section>

    
    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/mean-stack-developer-course-chandigarh-logo1.jpg" alt="MEAN Stack Training in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/mean-stack-developer-course-chandigarh-logo2.jpg" alt="MERN Stack Development Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/mean-stack-developer-course-chandigarh-logo3.jpg" alt="45 Days MEAN Stack Training in Chandigarh Mohali" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/mean-stack-training-chandigarh-mobile1.jpg" alt="MEAN Stack Training in Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/mean-stack-training-chandigarh-mobile2.jpg" alt="MEAN Stack Training in Mohali" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/mean-stack-training-chandigarh-mobile3.jpg" alt="MEAN Stack Training in Mohali" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/mean-stack-course-chandigarh-mobile4.jpg" alt="MEAN Stack Training in Mohali" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/mean-stack-course-chandigarh-mobile5.jpg" alt="45 Days MEAN Stack Training in Chandigarh Mohali" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/mean-stack-course-chandigarh-mobile6.jpg" alt="6 Weeks Industrial Training in Chandigarh Mohali" />
                </div>
            </div>
        </div>

    </section>
    <section class="bg-dark py-4">
        <div class="container">
            <div class="row">

                <div class="col-lg-7 text-justify text-white">

                    <h3 class="text-warning h4"><strong>Job Opportunities after completing MEAN Stack Course </strong></h3>
                    <div class="text-justify">
                        <p>Let’s take a look at what job roles you can take after the completion of MEAN Stack Development Course in Chandigarh Mohali:</p>
                        <ul class="welcomeLinks">
                            <li><strong class="text-warning">MEAN Stack Developer:</strong> You can utilize the skills you have learned at ThinkNEXT to become the mean stack developer. You would be assigned with working with both the front and the back-end frameworks. </li>
                            <li><strong class="text-warning">Back-end Developer:</strong> You can use your skills of server-side languages such as Python, Ruby, Java, and PHP to the server-side scripting for the organization which employs you.</li>
                            <li><strong class="text-warning">Front-end Developer:</strong> Using HTML, CSS, JAVASCIPT you can design an effective website along with working on back-end development.</li>
                            <li><strong class="text-warning">Web Developer:</strong> Web developer makes the website dynamic by utilizing languages such as Python, Ruby, etc. </li>
                            <li><strong class="text-warning">Web Designers:</strong> Web designers are responsible for making the website attractive and effective.</li>
                        </ul>

                    </div>
                </div>


                <div class="col-lg-5 order-md-2 text-justify">

                    <div class="py-3 px-4 bg-light">
                        <h3 class="text-center"><strong>Book My Free Demo Class Now!</strong></h3>
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
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-warning px-3 h4" Text="Book Now" />

                            </div>
                        </div>
                    </div>


                </div>



            </div>

        </div>
    </section>


    <section class="py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>MEAN Stack Course Syllabus</strong></h3>
            </div>
            <h3 class="text-danger text-md-center mt-4 mt-md-5"><strong>MongoDB</strong></h3>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Introduction</li>
                        <li>Advantages</li>
                        <li>Environment</li>
                        <li>Data Modeling</li>
                        <li>Create Database</li>
                        <li>Drop Database</li>
                        <li>Create Collection</li>
                        <li>Drop Collection</li>


                    </ul>

                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">

                        <li>Data Types</li>
                        <li>Insert Document</li>
                        <li>Query Document</li>
                        <li>Update Document</li>
                        <li>Delete Document</li>
                        <li>Projection</li>
                        <li>Limiting Records</li>
                        <li>Sorting Records</li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">

                        <li>Indexing</li>
                        <li>Aggregation</li>
                        <li>Replication</li>
                        <li>Sharding</li>
                        <li>Create Backup</li>
                        <li>Deployment</li>
                        <li>Java</li>
                        <li>PHP</li>

                    </ul>
                </div>
                <div class="col-12">
                    <h3 class="text-danger text-md-center mt-4 mt-md-5"><strong>Advance MongoDB</strong></h3>
                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Relationships</li>
                        <li>Database References</li>
                        <li>Covered Queries</li>
                        <li>Analyzing Queries</li>
                        <li>Atomic Operations</li>
                        <li>Advanced Indexing</li>



                    </ul>
                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Indexing Limitations</li>
                        <li>ObjectId</li>
                        <li>Map Reduce</li>
                        <li>Text Search</li>
                        <li>Regular Expression</li>

                    </ul>
                </div>

                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Working with Rockmongo</li>
                        <li>GridFS</li>
                        <li>Capped Collections</li>
                        <li>Auto-Increment Sequence</li>
                    </ul>
                </div>


                <div class="col-12">
                    <h3 class="text-danger text-md-center mt-4 mt-md-5"><strong>ExpressJS</strong></h3>
                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Introduction</li>
                        <li>Environment</li>
                        <li>Routing </li>
                        <li>HTTP Methods </li>
                        <li>URL Building </li>
                        <li>Middleware </li>
                        <li>Templating </li>

                    </ul>

                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Static Files </li>
                        <li>Form Data </li>
                        <li>Database </li>
                        <li>Cookies </li>
                        <li>Sessions </li>
                        <li>Authentication </li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                        <li>RESTful APIs </li>
                        <li>Scaffolding </li>
                        <li>Error handling </li>
                        <li>Debugging </li>
                        <li>Best Practices </li>
                        <li>Resources </li>
                    </ul>
                </div>

                <div class="col-12">
                    <h3 class="text-danger text-md-center mt-4 mt-md-5"><strong>AngularJS</strong></h3>
                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Introduction to JS </li>
                        <li>Traditional methods with JS </li>
                        <li>Introduction to AngularJS </li>
                        <li>MVC Architecture </li>
                        <li>Conceptual Overview </li>
                        <li>Setting up the Environment </li>
                        <li>Introduction to AngularJS </li>
                    </ul>

                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>MVC Architecture </li>
                        <li>Conceptual Overview </li>
                        <li>Setting up the Environment </li>
                        <li>Working with Directives </li>
                        <li>Controller </li>
                        <li>Filters </li>
                        <li>Forms </li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                        <li>Modules </li>
                        <li>Services </li>
                        <li>Ajax </li>
                        <li>Routing </li>
                        <li>Creating HTML Templates </li>
                        <li>Bootstrap </li>
                        <li>Configure Route Provider </li>
                    </ul>
                </div>

                <div class="col-12">
                    <h3 class="text-danger text-md-center mt-4 mt-md-5"><strong>Node.js</strong></h3>
                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Introduction</li>
                        <li>Introduction to Node.js </li>
                        <li>Setup Dev Environment </li>
                        <li>Node.js Modules </li>
                    </ul>

                </div>
                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks mb-0">
                        <li>Node Package</li>
                        <li>Manager </li>
                        <li>Creating Web server </li>
                        <li>File System </li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                        <li>Debugging Node.js Application </li>
                        <li>Node.js Events </li>
                        <li>Database connectivity </li>
                        <li>Template Engine </li>
                    </ul>
                </div>

            </div>
        </div>
    </section>


    <section class="py-5" style='background-image: url("english/img/score-bg.jpg");'>
        <div class="container">
            <h4 class="text-center h3 text-warning"><strong>Why should you choose MEAN Stack Course?</strong></h4>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 text-justify">
                    <ul class="checklist text-white fw-bold mb-0">
                        <li>Organizations around the world recruit engineers who are familiar with JavaScript-based Technologies </li>
                        <li>Considering speed metric, Node.js performs better than Apache</li>
                        <li>MEAN Stack is effective in the sense that its API structure allows communication between client and server without any mix-ups</li>
                    </ul>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-6 text-justify">
                    <ul class="checklist text-white fw-bold">
                        <li>Better suited to multi-device responsive designs</li>
                        <li>The cost of developing a website using MEAN Stack technologies is minimal because company doesn’t have to hire specialists of different programming languages- MEAN Stack is purely based on JavaScript. </li>
                    </ul>
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
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="MEAN Stack Training in Chandigarh Mohali"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="MEAN Stack Training in Chandigarh Mohali"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="MEAN Stack Training in Chandigarh Mohali"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="MEAN Stack Training in Chandigarh Mohali"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain">
                <div id="video-view"></div>
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="text-justify">
                        <h4 class="h4"><strong>MEAN Stack Developer Certification at ThinkNEXT</strong></h4>
                        <p>
                            Commence your career with an Industry Recognised MEAN Stack Developer Certification from ThinkNEXT. Our certification at ThinkNEXT is accredited worldwide.
                        </p>
                        <ul class="welcomeLinks">
                            <li>IMPROVE YOUR CV: Having the MEAN Stack Developer Certification at the time of the Interview creates a positive impact and it adds value to your resume and on yourself.</li>
                            <li>GROW YOUR CAREER: Certificates will broaden the student’s knowledge in the JavaScript technologies so that they can find a job or get promoted.</li>
                            <li>FIND A JOB: MEAN Stack Developer Certification from ThinkNEXT generates confidence in the students, thus helping them into attaining leading job posts in leading MNC’s of the world projects.</li>

                        </ul>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="images/sample-certificate-min.jpg" title="Sample Certificate" alt="MEAN Stack Course in Chandigarh" />
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/mohali-sithith-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-honor-thumb.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award-chd.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-mohali.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>




                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="AngularJS Training in Chandigarh">
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
    
    <section class="py-5">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 30 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>

            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                   
<li>Mean Stack Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Industrial Training/Internship from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Industrial Training/Internship from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
<li>Industrial Training/Internship from 10+ Years old company</li>
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
                            <a href="#" title="Iconic Business Summit & Awards 2021" class="thumb">
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                <img src="images/award-image11.webp" alt="Node JS Training Course in Chandigarh Mohali" title=" Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                <img src="/php-images/php-industrial-training.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-1.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-2.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Node JS Training Course in Chandigarh Mohali Mohali" title="6 Month Node JS Training Course in Chandigarh Mohali Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/galleryjob-fair7.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/page-5_img-4-b.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/THINKNEXT-b.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Node JS Training Course in Chandigarh Mohali" title="Node JS Training Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>


    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-justify">
                    <h3 class="text-danger"><strong>FAQs</strong></h3>
                    <h4><strong>Will I get support at the end of MEAN Stack Course at ThinkNEXT? </strong></h4>
                    <p>
                        <strong>Ans.</strong> Of course, we have an expert team to provide you the following help after the MEAN Stack Course completion: 
                        <ul class="welcomeLinks">
                            <li>Building a proper resume</li>
                            <li>Share top interview questions and answers </li>
                            <li>Share some insights about the real-world projects</li>
                        </ul>
                    </p>
                    <h4><strong>Q2.  What are the benefits while undergoing MEAN Stack Training in Chandigarh Mohali at ThinkNEXT?</strong></h4>
                    <p>
                        <strong>Ans.</strong> You can enjoy the following given benefits under MEAN stack tutorials for beginners at ThinkNEXT:
                    <ul class="welcomeLinks">
                        <li>Utilize high speed free internet</li>
                        <li>Separate doubt session class on Saturdays</li>
                        <li>Get industry exposure</li>
                        <li>Get training under MEAN Stack professionals having more than 10 years of experience</li>
                        <li>Free Interview Preparation, Spoken English and Personality Development classes under MEAN Stack Course</li>
                    </ul>
                    </p>
                    <h4><strong>Q3. What payment modes are accepted for MEAN Stack Course at ThinkNEXT?</strong></h4>
                    <p><strong>Ans.</strong> We accept all major kinds of payment modes like Cash, Google Pay, Paytm, NetBanking etc.</p>
                    <h4><strong>Q4. Will we get placed after pursuing MEAN Stack Development Training at ThinkNEXT?</strong></h4>
                    <p><strong>Ans.</strong> Yes, we proudly state that we at ThinkNEXT provide placement assurance to our students with 100% job assistance to crack interviews.</p>
                    <h4><strong>Q5. How can we enroll for MEAN Stack tutorials for beginners at ThinkNEXT?</strong></h4>
                    <p><strong>Ans.</strong> You can enroll for MEAN Stack Tutorials for beginners by contacting us on our support numbers (78374-01000, 78374-02000, and 78374-03000) or you can also directly walk into our branch office (SCF 113, Sector 65, Mohali (Chandigarh)).</p>
                    <h4><strong>Q6. Do we get to work on Projects in MEAN Stack Development Course in Chandigarh Mohali at ThinkNEXT?</strong></h4>
                    <p><strong>Ans.</strong> Yes of course, students will get hands-on Experience with Industry Projects which will help you to build a strong resume.</p>
                    <h4><strong>Q7. Are training certificates provided at ThinkNEXT?</strong></h4>
                    <p><strong>Ans.</strong> After completing the MEAN Stack Course, you will receive MEAN Stack Developer certification from ThinkNEXT to add to your resume as well.</p>
                    <h4><strong>Q8. How is MEAN Stack Course so helpful for career?</strong></h4>
                    <p><strong>Ans.</strong> MEAN Stack tools are widely use in front end and back end web and application development. Therefore, most of the biggest IT giants are employing these tools, thus creating more job opportunities in this field.</p>
                    <h4><strong>Q9. Can freshers also join MEAN Stack Course at ThinkNEXT?</strong></h4>
                    <p><strong>Ans.</strong> Absolutely! Whether you’re a fresher or a working professional, we provide MEAN Stack Development Course in Chandigarh Mohali to everyone.</p>
                </div>
            </div>
        </div>
    </section>

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
                    <img id="image-gallery-image" class="img-responsive col-md-12" src="" alt="MEAN Stack Training in Chandigarh Mohali">
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



