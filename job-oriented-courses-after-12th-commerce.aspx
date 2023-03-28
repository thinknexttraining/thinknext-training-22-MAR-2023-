<%@ Page Title="Job Oriented Courses after 12th Commerce" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="job-oriented-courses-after-12th-commerce.aspx.vb" Inherits="job_oriented_courses_after_12th_commerce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="Job Oriented Courses after 12th Commerce. ThinkNEXT is top training company that provides job oriented courses after 12th Commerce" />
    <meta name="keywords" content="Job Oriented Courses after 12th Commerce" />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/job-oriented-courses-after-12th-science-mob.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/job-oriented-courses-after-12th-science-mob.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
    <style>
        .fs-24{
            font-size:24px !important;
        }
        
.thknxtytube {
    width: 100%;
    height: 400px !important;
}
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image position-relative">
        <img class="d-md-none" src="images/job-oriented-courses-after-12th-science-mob.jpg" alt="Job Oriented Courses After 12th Commerce" title="Job Oriented Courses After 12th Commerece" />
        <img class="d-md-block d-none" src="images/job-oriented-courses-after-12th-science.jpg" alt="Job Oriented Courses After 12th Commerce" title="Job Oriented Courses After 12th commerece" />

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
                            <h1>Job Oriented Courses after 12th Commerce</h1>
                        </div>                   
                               <p class="text-danger fw-bold">What are the best Job Oriented Courses after 12th for Commerce students?</p>
                        <p class="text-primary fw-bold">If this question is puzzling your mind, then you have arrived at the right place. </p>
                        <p class="text-primary fw-bold">Your search ends here. Finally, You are at the RIGHT PLACE </p>
                       <p>This is the most common question that young people ask after completing their 12th. Not all courses are right for everyone. It is important that students are aware of their abilities and the requirements for the course they choose to take.</p>                
                      <p>The traditional 10+2+3/4 education system is no more in use. Today's students are open-minded and diverse when it comes down to choosing their career path. Their entire life is in front of them. We are here to help you learn more about the top Job Oriented Courses after 12th, especially for Commerce students, along with their financial benefits.</p>     
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
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Job Oriented Courses after 12th Commerce" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-1.jpg" alt="45 Days Job Oriented Courses after 12th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-2.jpg" alt="6 Weeks Industrial Training in Chandigarh Mohali" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0 align-items-center">
                <div class="col-lg-7 text-justify">
                    <h2 class="h3 text-danger fw-bold">List of Job Oriented Courses after 12th Commerce</h2>
                 
                    <p>Here are the top We have prepared a list of the top <strong>Job Oriented Courses after 12th for Commerce students</strong> to guide them on this tough path.</p>
                    <ul class="welcomeLinks">
                        <li>Tally Course</li>
                        <li>Digital Marketing Course</li>
                        <li>Web Development using Java</li>
                        <li>Web Development using PHP</li>
                        <li>Web Development using .NET</li>
                        <li>Data Science Course</li>
                        <li>Graphics and Web Designing Course</li>
                        <li>Mobile Application Development using Android and Flutter</li>
                        <li>Interior Designing Course</li>
                        <li>Software Testing Course</li>
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Job Oriented Courses after 12th Commerce">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Job Oriented Courses after 12th Commerce">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Job Oriented Courses after 12th Commerce">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Job Oriented Courses after 12th Commerce">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>


    <section class="py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Job Oriented Courses after 12th for Commerce</strong></h3>
            </div>
            <br>

                <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">1. Tally Course</h4>             
                <div class="text-justify">
                    <p>Tally is accounting software that makes collecting and organizing accounting data so easy that you'll be in complete charge of your business in no time, from invoicing to key business insights necessary for business growth.</p>
                    <p>Students will be taught about Tally software and will be offered training, customization, support, and integration of Tally training with other software like Microsoft Dynamics, SAP, and any other third party software.</p>
                    <p>Today, online courses for Tally are also available. So commerce students can take this <strong>Job Oriented Course</strong> Online as well and can increase the value of their resume. Plus, by doing this course, students can do part-time jobs in any firm managing their accounts.</p>
                    <p>Individuals who are familiar with Tally may be able to move jobs or departments, get lucrative job options as a fresher, change careers, or run their own business professionally.</p>
                    <p>Tally is widely used because of its simplicity, ease of use, and low cost of implementation and maintenance. Tally is really wonderful and simple piece of software for whole business solutions that is very simple to learn and use.</p>
                    <h4 class="fw-bold">Top Institutes that offer Tally Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Ica Edu Skills Pvt. Ltd.</li>
                        <li>I Tech Computer Education</li>
                    </ul>
                    <p class="h4 fw-bold">Eligibility:</p>
                    <p>Commerce students must pursue this <strong>Job Oriented Training Course after 12th</strong> grade as it can provide the opportunity to advance in their career.</p>
                     <p class="h4 fw-bold">Salary:</p>
                    <p>The average income of a Tally Expert (Accountant) is Rs. 2,33,899 annually.</p>
                </div>
            </div>
            <br>

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">2.Digital Marketing Course</h4>            
                <div class="text-justify">
                    <p>The digital market is dominating the world as it is one of the most vibrant areas. India and its cities have also benefited from the digital revolution. This has opened up a variety of opportunities for students and provides them with a wealth of employment options. This is one of the most rewarding and financially lucrative options that students can have.</p>
                    <p>Advertising done using digital channels such as websites, search engines, social media, email, and mobile apps is referred to as digital marketing. Digital marketing is the process of endorsing services, goods, and brands through the use of these online media platforms.</p>
                    <h4 class="fw-bold">Top Institutes that offer Digital Marketing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>TIDM</li>
                        <li>School of Digital Marketing</li>
                        <li>Freelancers Academy</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Commerce students can take this <strong>Job Oriented Course after 12th</strong>. This can help them get ahead in their careers.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A professional in Digital Marketing could make as much as Rs. 5,50,000 annually.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">3. Web Development using Java</h4>
                <div class="text-justify">
                    <p>Java is a key IT innovation, so there is a constant demand for Java developers. Java is essential for technological advancement, and Java is the second most commonly used language among programmers.</p>
                    <p>Java allows you to create multiple applications that work on various mobile devices and computers. Java is used for all the processes, including creating, adding, testing, and releasing beta versions to the market.</p>
                    <p>There are many things to learn in Java. Java is the most popular programming language in the world and it employs almost a quarter of the population. You don't need to worry about what you will be doing after you complete this course. Java is used by almost every computer-related company.</p>
                    <p>Because of its reliability and security, Java environment is preferred by businesses. Java experts are highly sought after, with particular certifications from reliable institutions.</p>
                    <h4 class="fw-bold">Top Institutes that offer Java Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Besant Technologies</li>
                        <li>Simplilearn Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>This <strong>Job Oriented Course after 12th</strong> is for commerce students who wish to learn while they work.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Java Programmer could earn as much as Rs. 4.2 Lakhs per annum.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">4. Web Development using PHP</h4>
                <div class="text-justify">
                    <p>PHP developers are highly in demand today because of the PHP language’s popularity and its utility on mobile phones.</p>
                    <p>PHP is a server side programming language that powers some of the most popular websites in the world. PHP is used in conjunction with front-end technologies such as HTML and CSS. These technologies determine how a website appears to the user regarding fonts and other elements. </p>
                    <p>PHP is an excellent choice for students who have completed 12th grade and are looking for a Job Oriented Course. Highly skilled PHP developers are highly desired by companies. You could earn a lot of money if you could learn it well. There are many jobs available because of the wide acceptance of PHP on various platforms. </p>
                    <p>PHP can also be used with other languages, which makes it more attractive for job opportunities.</p>
                    <h4 class="fw-bold">Top Institutes that offer PHP Web Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>FITA Academy</li>
                        <li>Quick Xpert Infotech</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>This <strong>Job Oriented Course after 12th</strong> is for students in commerce and will help them make a career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A PHP Web Developer could earn Rs. 4,00,000 per year.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">5. Web Development using .NET</h4>
                <div class="text-justify">
                    <p>.NET is an object-oriented programming model (OOP), which was created to help developers create Web based systems for distributed computing.</p>
                    <p>It provides a framework independent of any other platform for managing and deploying web-based, smart client, and XML Web service applications. The ability to work on different platforms allows businesses to easily communicate their information and to easily connect with other systems and devices.</p>
                    <p>.NET is becoming more popular every day. You will be more creative, skilled, and sought-after as a programmer if you choose to work in the .Net stream. Many CIOs are facing difficulty in finding suitable candidates for .NET programming.</p>
                    <h4 class="fw-bold">Top Institutes providing .NET Web Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Image Creative Education Pvt. Ltd.</li>
                        <li>Srihari Technologies</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Commerce students can enroll in the <strong>Job Oriented Course after 12th</strong> to enhance their careers.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A .NET Developer could easily earn Rs. 5,20,000 annually.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">6. Data Science Course</h4>
                <div class="text-justify">
                    <p>Data Science is a study that deals with large amounts of data. Data Science uses the most sophisticated tools and techniques to identify patterns in data, which can be used to generate valuable data that can be used to make business decisions. </p>
                    <p>This Data Science course will teach you how to store and modify data as well as Data Science tools that can help you start and understand data analysis using various techniques.</p>
                    <p>This course is for you, if you are interested in pursuing employment in Data Science or Data Analytics. It will teach you the basics of data science, and prepare you for interviews.</p>
                    <p>Data Science is a rewarding career path that offers many opportunities to grow. The demand for this course is high, and there are many benefits. Data Science is a promising career choice for young people.</p>
                    <h4 class="fw-bold">Top Institutes providing Data Science Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Techgyan Institute</li>
                        <li>Technophilia Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students in Commerce stream should not be afraid to take this <strong>Job Oriented Course after 12th</strong> and improve their career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Data Science expert can easily earn up to Rs. 6,00,000 annually.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">7. Graphics and Web Designing Course</h4>
                <div class="text-justify">
                    <p>The IT industry is dominated by Graphics and Web Designer. It is an attractive Job Oriented Course after 12th for Commerce students.</p>
                    <p>Many large companies and industries require highly skilled workers with the necessary knowledge in Graphics and Web Design. Graphics and Web Designing will teach you the basics of HTML, Java Script, and other things required to be a Graphics and Web Designer.</p>
                    <p>This course will combine your creativity with your business knowledge to create a stunning website design that makes the brand stand out and highlights all the other features. Learn how to create a web page that is both functional and nice looking.</p>
                    <h4 class="fw-bold">Top Institutes Offering Graphics and Web Designing Courses:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Karmisc Institute</li>
                        <li>Arena Animation Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Commerce students shouldn't be afraid to enroll in this <strong>Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>Graphics and Web Designers could make as much as Rs. 3,60,000 per annum.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">8. Mobile Application Development: Android, Flutter</h4>
                <div class="text-justify">
                    <p>India is on the verge of becoming the world's largest developer base. The nation will surpass the United States in 2024 as the largest development hub in the world. This sector will continue to offer plenty of employment opportunities.</p>
                    <p>You can become a Mobile App Developer even if you have no programming experience. However, you can still pursue the best Android or Flutter courses.</p>
                    <p>Android and Flutter are the most popular platforms for IT professionals looking to change careers and students looking to start their careers. This platform is a great choice for anyone looking for work.</p>
                    <p>You'll be able to choose from many job options after you complete this job oriented course, as Mobile App Developers are highly sought-after. </p>
                    <h4 class="fw-bold">Top Institutes imparting Mobile Application Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Lifeboat Technologies</li>
                        <li>AndroidManifester</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You can take the <strong>Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Mobile App Developer can earn as much as 5,31,000 per year.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">9. Interior designing</h4>
                <div class="text-justify">
                    <p>Interior design is the science and art that makes your house, office, or any new building useful and functional for those who live or work there.</p>
                    <p>Interior Design is a rewarding career for those who want to express their creativity in a functional manner. Interior design is a great career if you enjoy decorating rooms and organizing space. This allows people to express their creativity while also providing a high level of satisfaction at work.</p>
                    <p>Interior design is a promising field in today's world. This discipline will continue to gain popularity, particularly in India and other developing countries. It is a highly artistic and creative field. It is one of the most rewarding courses that can lead to a highly paid job.</p>
                    <h4 class="fw-bold">Top Institutes imparting Interior Designing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Ivs School of Design</li>
                        <li>The Design Institute of India</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You can enroll in this <strong>Job Oriented Course after 12th- Commerce.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>An Interior Designer could easily earn Rs. 3,50,000 annually.</p>
                </div>
            </div>
            <br />

             <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">10. Software Testing Course</h4>
                <div class="text-justify">
                    <p>After completing the 12th standard, software testing is also a popular course. Software Quality Testing training covers topics like software quality assurance and manual testing. Students are taught about a variety of testing strategies and methods.</p>
                    <p>Software testing can be a rewarding career. You will get promoted as you acquire more expertise. This industry is home to many well-known IT companies. The future opportunities for this course in jobs are endless, which ensures a steady and growing career.</p>                    
                    <h4 class="fw-bold">Top Institutes offering Software Testing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>QacircleTechnologies</li>
                        <li>VSS Innovative Technology</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students studying in the commerce stream may choose to take this <strong>Job Oriented Course after 12th</strong> in order to boost their careers.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>Software Tester salaries range from 1.5 lakhs to 8.4 lakhs per year, with an average yearly income of 3.6 lakhs.</p>
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Job Oriented Courses after 12th Commerce" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Job Oriented Courses after 12th Commerce" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Job Oriented Courses after 12th Commerce" title="Job Oriented Courses after 12th Commerce" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
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
