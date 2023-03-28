<%@ Page Title="Job Oriented Courses after 10th" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="job-oriented-courses-after-10th.aspx.vb" Inherits="job_oriented_courses_after_10th" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Job Oriented Courses after 10th. ThinkNEXT is top training company that provides job oriented courses after 10th" />
    <meta name="keywords" content="Job Oriented Courses after 10th" />
    <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/images/images/job-oriented-courses-after-12th-mob.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/images/job-oriented-courses-after-12th-mob.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->

    <style>
        .fs-24 {
            font-size: 24px !important;
        }

        .thknxtytube {
            width: 100%;
            height: 400px !important;
        }
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image position-relative">
       <img class="d-md-none" src="images/job-oriented-courses-after-12th-mob.jpg" alt="Job Oriented Courses After 10th" title="Job Oriented Courses After 10th" />
        <img class="d-md-block d-none" src="images/job-oriented-courses-after-12th.jpg" alt="Job Oriented Courses After 10th" title="Job Oriented Courses After 10th" />

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
                        <asp:TextBox ID="PhonenoSyl" runat="server" class="form-control" Type="Number" MaxLength="10" placeholder="Mobile No."></asp:TextBox>
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
                            <h1>Job Oriented Courses after 10th</h1>
                        </div>                   
                               <p class="text-danger fw-bold">Are you searching for Job Oriented Courses after 10th?</p>
                        <p class="text-primary fw-bold">If yes, then you've come to the right place.  </p>
                        <p>If students want to pursue something practical, and they don't want to attend college in order to get a degree, then there are many Job Oriented Courses after 10th that will help you get a job.</p>
                        <p>People who desire to pursue a career after finishing Class 10 have a range of possibilities. However, this also causes people to be perplexed. So, here is a list of the best Job Oriented Courses after 10th. You can choose from these courses to have a successful career.</p>
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
                                    <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4 w-100 fw-bold" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

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
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Job Oriented Courses after 10th" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Job Oriented Courses after 10th" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="45 Days Job Oriented Courses after 10th" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Job Oriented Courses after 10th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Summer Training Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Job Oriented Courses after 10th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Job Oriented Courses after 10th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-1.jpg" alt="45 Days Job Oriented Courses after 10th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-2.jpg" alt="Job Oriented Courses after 10th" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Job Oriented Courses after 10th" title="Job Oriented Courses after 10th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Job Oriented Courses after 10th" title="Job Oriented Courses after 10th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Job Oriented Courses after 10th" title="Job Oriented Courses after 10th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Job Oriented Courses after 10th" title="Job Oriented Courses after 10th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Job Oriented Courses after 10th" title="Job Oriented Courses after 10th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Job Oriented Courses after 10th" title="Job Oriented Courses after 10th" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0 align-items-center">
                <div class="col-lg-7 text-justify">
                    <h2 class="h3 text-danger fw-bold">List of Job Oriented Courses after 10th</h2>
                    <ul class="welcomeLinks">
                        <li>Digital Marketing Course</li>
                        <li>Graphics and Web Designing Course</li>
                        <li>Web Development using Java</li>
                        <li>Web Development using PHP</li>
                        <li>Web Development using .NET</li>
                        <li>Photography and Videography Courses</li>
                        <li>Machine Learning and AI Course</li>
                        <li>Mobile Application Development using Android and Flutter</li>
                        <li>Interior Designing Course</li>
                        <li>MEAN Stack Course</li>
                    </ul>


                </div>

                <div class="col-lg-5 text-justify">

                    <div class="py-3 px-4 bg-black position-sticky top-0">
                        <h4 class="text-white text-center fs-24"><strong>Book My Free Demo Class Now!</strong></h4>
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
                                <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Course Interested in" />
                            </div>


                            <div class="form-group text-center">
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-warning px-3 h4 w-100 fw-bold" Text="Book Now" />

                            </div>
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Job Oriented Courses after 10th">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Job Oriented Courses after 10th">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Job Oriented Courses after 10th">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Job Oriented Courses after 10th">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>


    <section class="py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Job Oriented Courses after 10th</strong></h3>
            </div>
            <br>

                <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">1. Digital Marketing Course</h4>             
                <div class="text-justify">
                    <p>India and other major cities aren’t the only ones growing due to this digital revolution. Digital Marketing has created many job opportunities as Digital Marketing is a booming field. Digital Marketing field is offering one of the highest paid jobs to students. This is one of the most lucrative and financially rewarding options.</p>
                    <p>Digital Marketing is also known by the name of Internet Marketing. This involves the marketing of brands to potential clients via the internet and other electronic communication. Digital Marketing Course covers a variety of topics, including SEO, SEM, Social Media Marketing, Mobile Marketing, Content Marketing, Web Analytics, Email Marketing, PPC, Affiliate Marketing, etc.</p>
                    <h4 class="fw-bold">Best Institutes that offer Digital Marketing Course are</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>TIDM</li>
                        <li>School of Digital Marketing</li>
                        <li>Freelancers Academy</li>
                    </ul>
                    <p class="h4 fw-bold">Eligibility:</p>
                    <p>It is possible to enroll in this <strong>Job Oriented Course after 10th</strong>. This will assist you in your professional growth.</p>
                     <p class="h4 fw-bold">Salary:</p>
                    <p>A Digital Marketing professional from India could earn Rs. 5,50,000 per annum.</p>
                </div>
            </div>
            <br>

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">2. Graphics and Web Designing Course</h4>            
                <div class="text-justify">
                    <p>Graphics and Web Designers and Developers are dominating the IT industry. It is an attractive <strong>Job Oriented Course after 10th</strong>. Large companies and industries need skilled professionals in Graphics and Web Designing. Graphics and Web Designing course will cover the basics of HTML, Adobe Premiere, and Photoshop, as well as Web Page Design.</p>
                    <p>This course will allow you to combine your creativity and business knowledge to design a website that stands out. It also highlights the other features.</p>
                    <p>Graphics and Web Designers have many opportunities to work on a variety of new and fascinating projects because design is needed in every business.</p>
                    <h4 class="fw-bold">Best Institutes offering Graphics and Web Designing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Karmisc Institute</li>
                        <li>Arena Animation Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You should not hesitate enrolling in this <strong>Job Oriented Course after 10th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>On an average basis, Graphics and Web Designers can make up to Rs. 3,60,000 per year.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">3. Web Development using Java</h4>
                <div class="text-justify">
                    <p>Java is an important IT innovation, and there is a constant demand for it in the market. Java is vital for the future development of technology. 95% of companies use Java.</p>
                    <p>Java is a programming language that lets you create programs that can run on different gadgets and computers. Java is the heart of all work: from design to testing beta versions, adding features, and finally releasing final products.</p>
                    <p>Java is the fastest growing programming language and employs nearly a quarter of the world's population. Java is used by almost every computer-related business.</p>
                    <p>Businesses prefer working in Java because of its security and reliability. Java experts are highly sought-after and are in high demand if they have been certified by reliable institutions.</p>
                    <h4 class="fw-bold">Best Institutes providing Java Course are</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Besant Technologies</li>
                        <li>Simplilearn Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students who want to work can enroll in this <strong>Job Oriented Course after 10th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>Java Programmers could easily earn as much as Rs. 4.2 lakhs annually on an average.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">4. Web Development using PHP</h4>
                <div class="text-justify">
                    <p>Because of its wide use and utility in developing mobile and web apps, the PHP course is highly in demand.</p>
                    <p>PHP is a server-side scripting language that powers many of the most popular websites on the internet. PHP can be used with HTML and CSS, which are front-end technologies. These technologies control how a website looks to visitors. PHP is used by the vast majority of web servers.</p>
                    <p>Students successfully completing this course will become PHP developers and will be highly sought after as PHP Developers are highly in demand and can earn decent money.</p>
                      <p>Because PHP is so popular, there are many career options. PHP can be used in conjunction with other languages, which is yet another reason to learn PHP and advance in your career.</p>
                    <h4 class="fw-bold">Best Institutes imparting PHP Web Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>FITA Academy</li>
                        <li>Quick Xpert Infotech</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Anyone can enroll in this <strong>Job Oriented Course after 10th</strong> and start a career in their chosen field.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>The annual salary of a PHP Web Developer is Rs. 4,00,000. </p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">5. Web Development using .NET</h4>
                <div class="text-justify">
                    <p>.NET allows developers to create distributed and internet-based applications using object-oriented programming (OOP). It is a framework that allows users to manage and deploy web-based applications. With .NET's ability to function platform independently, companies can quickly communicate with their customers and connect to their systems and devices. This allows people to communicate and collaborate better.</p>
                    <p>Every year, .NET is growing in popularity. The .Net is a great tool to help you become a creative, skilled, and highly sought-after programmer with high pay. Many CIOs have difficulty finding qualified candidates to be .NET developers.</p>
                    <h4 class="fw-bold">Best Institutes providing .NET Web Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Image Creative Education Pvt. Ltd.</li>
                        <li>Srihari Technologies</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You may enroll in this <strong>Job Oriented Course after 10th</strong> for furtherance in your career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A .NET developer can make Rs. 5,20,000 annually on an average basis.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">6. Photography and Videography</h4>
                <div class="text-justify">
                    <p>Photography is defined as "to draw with light", and it originates from the Greek word "photo", which literally means graph and light. A camera and light-sensitive film is used to create a photograph.</p>
                    <p>The Photography Course will teach you everything about photography. The course will teach you how to frame photos, how to use studio lighting, portfolio design, and other photography techniques.</p>
                    <p>Videography is a path that goes beyond photography. Videography is the art and science of creating moving images using electronic media. This Videography course will help you learn advanced lighting techniques as well as how to capture sound. You will learn how to use the equipment to achieve the best results.</p>
                    <p>Videography and Photography are both lucrative career options that many young Indian adults are interested in. This is because of the growth in media, advertising, and the fashion industry.</p>
                    <p>Both Photographers and Videographers have bright futures as both are booming fields. Photography and Videography will continue to grow in the future, offering more opportunities. Now is the perfect time to be a Photographer or Videographer.</p>
                    <h4 class="fw-bold">Best Institutes offering Videography and Photography Courses</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Hamstech Institute</li>
                        <li>Xposephotography</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students can take on this <strong>Job Oriented Course after 10th</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>On an average, Photographers and Videographers can easily earn Rs. 3,60,000 per year.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">7. Machine Learning and AI Course</h4>
                <div class="text-justify">
                    <p>Machine learning is an application of Artificial Intelligence, which allow machines or systems to learn from their experiences and make improvements without having to be programmed again and again.</p>
                    <p>Artificial Intelligence (AI), a subfield of Computer Science, is concerned with the creation of intelligent machines that behave and act like humans. It has turned into an integral part of the IT Industry.</p>
                    <p>Machine Learning security is a promising market. Machine learning and AI specialists are highly sought after and hard to find. Universities are unable to keep up with the growing demand.</p>
                    <p>JP Morgan, Aricent, Accenture, Fiserv, Sutherland, Intel, AIG, Bosch, and Qualcomm are among the top MNCs that are hiring Machine Learning and AI specialists.</p>
                    <h4 class="fw-bold">Best Institutes that offer Machine Learning and AI Course are</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Simplilearn Institute</li>
                        <li>Excelr Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students can pursue this <streong>Job Oriented Course after 10th</strong> and can get ahead in their careers.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>The average annual salary for an entry level Machine Learning and AI expert is 8 lakhs.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">8. Mobile Application Development: Android, Flutter</h4>
                <div class="text-justify">
                    <p>India is on its way towards being the world’s top developer base, as the country is anticipated to overtake the United States as the world's largest developer base by 2024. As a result, there will always be lots of job openings in this industry.</p>
                    <p>Enroll in an Android or Flutter course to learn programming and develop apps for mobile devices. Flutter and Android are the most popular platforms for students who want to take a <strong>Job Oriented Course after 10th</strong>. This platform is also great for job seekers.</p>
                    <p>You will be able to find many jobs after completing the <strong>Job Oriented Course after 10th</strong>. This is because Mobile App Developers are in high demand.</p>
                    <h4 class="fw-bold">Best Institutes imparting Mobile Application Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Lifeboat Technologies</li>
                        <li>AndroidManifester</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You can enroll in this <strong>Job Oriented Course after 10th</strong> to advance in your career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>On an average basis, a Mobile App Developer can earn up to Rs. 5,31,000 annually.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">9. Interior designing</h4>
                <div class="text-justify">
                    <p>Interior Design is science and art that causes a home, office, or other new building to be more useful and comfortable for those who work or live in that place.</p>
                    <p>Interior Design is a great way to express yourself in a straightforward way. If you enjoy decorating rooms and organizing furniture, then Interior Design is the job for you. This job is a great way to express your creativity and gives you job satisfaction.</p>
                    <p>Recent developments have opened up new opportunities in Interior Design. This field is expected to increase in popularity, especially in India, which has a creative and artistic sector and offering many job opportunities for the upcoming youth. It is one of the most lucrative <strong>Job Oriented Courses after 10th.</strong></p>
                    <h4 class="fw-bold">Best Institutes Offering Interior Designing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Ivs School of Design</li>
                        <li>The Design Institute of India</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You can take on this <strong>Job Oriented Course after 10th</strong> to enhance your career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>Interior Designers can easily earn Rs. 3,50,000 per annum.</p>
                </div>
            </div>
            <br />

             <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">10. MEAN Stack Course</h4>
                <div class="text-justify">
                    <p>MEAN Stack Course will allow students to advance in their careers as web developers. MEAN Stack Course will help students become experts in the most popular front-end and back-end JavaScript technologies, i.e., MEAN (MongoDB, Express.js, AngularJS, and Node.js) Stack.</p>
                    <p>MEAN Stack continues to use a modern approach for developing applications, and its support is increased through its active communities. Experts around the globe deem MEAN Stack to be the future technology of web app development.</p> 
                     <p>MEAN Stack developers are in high demand because of its ability to build a mobile or web application that is stable, fast, and easy to maintain.</p>  
                    <h4 class="fw-bold">Best Institutes offering MEAN Stack Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Karmick Institute</li>
                        <li>Web Skitters Academy</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Interested students can do this <strong>Job Oriented Course after 10th</strong> as it assist them advance in their careers.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>The average salary of a Mean Stack Developer in India is Rs 4.2 lakhs per annum.</p>
                </div>
            </div>
            <br />


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
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Job Oriented Courses after 12th" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Job Oriented Courses after 12th" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Job Oriented Courses after 12th" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Job Oriented Courses after 12th" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Job Oriented Courses after 12th" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Job Oriented Courses after 12th" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Job Oriented Courses after 12th" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Job Oriented Courses after 12th" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
        
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                    <li>Job Oriented Course from 6 Times National Level Award Winner Company:</li>
                    <li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress &amp; Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
                    <li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
                    <li>Asia’s Quality &amp; Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                    <li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                    <li>Job Oriented Course from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                    <li>Job Oriented Course from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
                    <li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
                    <li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
                    <li>Free pre-recorded video Courses.</li>
                    <li>Get Industrial Training/Internship in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
                    <li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
                    <li>Guaranteed Job Interviews and 100% Placement Assistance</li>
                    <li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
                    <li>Training on Live-Projects </li>
                    <li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
                    <li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
                    <li>Affiliated to Indian Testing Board &amp; ISTQB (International Software Testing Qualifications Board)</li>
                    <li>Job Oriented Course from 10+ Years old company</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Job Oriented Courses after 12th" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Job Oriented Courses after 12th" title="Job Oriented Courses after 12th" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>


    <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

 

    

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
