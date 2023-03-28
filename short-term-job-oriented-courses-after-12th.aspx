<%@ Page Title="Short Term Job Oriented Courses after 12th" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="short-term-job-oriented-courses-after-12th.aspx.vb" Inherits="short_term_job_oriented_courses_after_12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="Short Term Job Oriented Courses after 12th . ThinkNEXT is top training company that provides short term job oriented courses after 12th" />
    <meta name="keywords" content="Short Term Job Oriented Courses after 12th" />
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
        <img class="d-md-none" src="images/job-oriented-courses-after-12th-science-mob.jpg" alt="Short Term Job Oriented Courses After 12th" title="Short Term Job Oriented Courses After 12th" />
        <img class="d-md-block d-none" src="images/job-oriented-courses-after-12th-science.jpg" alt="Short Term Job Oriented Courses After 12th" title="Short Term Job Oriented Courses After 12th" />

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
                            <h1>Short Term Job Oriented Courses after 12th</h1>
                        </div>                   
                               <p class="text-danger fw-bold">Which are the foremost <strong>Short Term Job Oriented Courses after 12th</strong> grade for students? </p>
                        <p class="text-primary fw-bold">If you are searching answer to this question, then you are at the right place.</p>
                        <p>The minds of many students have been puzzled by this question from time-to-time, and yet there has never been a clear answer.</p>
                       <p>It's a challenge to be in the position of having to choose between all of the options for your career after 12th, particularly when you're facing contradicting advice from anyone you ask. </p>                
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
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Short Term Job Oriented Courses after 12th" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Short Term Job Oriented Courses after 12th" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Short Term Job Oriented Courses after 12th" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Short Term Job Oriented Courses after 12th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Short Term Job Oriented Courses after 12th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Short Term Job Oriented Courses after 12th" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Short Term Job Oriented Courses after 12th" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Short Term Job Oriented Courses after 12th" title="Short Term Job Oriented Courses after 12th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Short Term Job Oriented Courses after 12th" title="Short Term Job Oriented Courses after 12th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Short Term Job Oriented Courses after 12th" title="Short Term Job Oriented Courses after 12th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Short Term Job Oriented Courses after 12th" title="Short Term Job Oriented Courses after 12th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Short Term Job Oriented Courses after 12th" title="Short Term Job Oriented Courses after 12th" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Short Term Job Oriented Courses after 12th" title="Short Term Job Oriented Courses after 12th" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0 align-items-center">
                <div class="col-lg-7 text-justify">
                    <h2 class="h3 text-danger fw-bold">Short Term Job Oriented Courses after 12th</h2>
                    <p>We are here to offer the most effective career guidance that you are in need of. Below is a list of the top <strong>Short Term Job Oriented Courses after 12th</strong> grade, as well as their financial merits:</p>     
                    <p>Here are the top We have prepared a list of the top <strong>Short Term Job Oriented Courses after 12th</strong> students to guide them on this tough path.</p>
                    <ul class="welcomeLinks">
                        <li>Digital Marketing Course</li>
                        <li>Web Development using Java</li>
                        <li>Web Development using .NET</li>
                        <li>Data Science Course</li>
                        <li>Interior Designing Course</li>
                        <li>Mobile Application Development using Android and Flutter</li>
                        <li>WordPress Course</li>
                        <li>Graphics and Web Designing Course</li>
                        <li>Photography and Videography Courses</li>
                        <li>Web Development using PHP</li>
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Job Oriented Courses after 12th Science">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Job Oriented Courses after 12th Science">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Job Oriented Courses after 12th Science">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Job Oriented Courses after 12th Science">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>


    <section class="py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Short Term Job Oriented Courses after 12th</strong></h3>                
            </div>
            <br>

                <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">1. Digital Marketing Course</h4>             
                <div class="text-justify">
                    <p>The world has been dominated by digital marketing, which is among the most flourishing areas. India and the major cities aren't the only ones gaining in a myriad of ways, thanks to the digital revolution and providing plenty of employment opportunities for students. This is among the most financially and economically effective options you can choose from.</p>
                    <p>Digital Marketing, generally referred to as internet-based marketing, is the marketing of brands to prospective customers via the application of the internet as well as other electronic communications. This does not just include emails, online-based marketing and online advertising but also includes multimedia messages as a form of networked advertising.</p>
                    <h4 class="fw-bold">Top Institutes that offer Digital Marketing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>TIDM</li>
                        <li>School of Digital Marketing</li>
                        <li>Freelancers Academy</li>
                    </ul>
                    <p class="h4 fw-bold">Eligibility:</p>
                    <p>You can take this <strong>Short Term Job Oriented Course after 12th</strong> grade and it can provide an edge to your career.</p>
                     <p class="h4 fw-bold">Salary:</p>
                    <p>A Digital Marketing professional can earn Rs. 5,50,000 annually in India.</p>
                </div>
            </div>
            <br>

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">2. Web Development using Java</h4>            
                <div class="text-justify">
                    <p>Java is one of the most crucial IT advancements, and has an unending demand in the market space. Java is needed for the advancement of technology. Java is the 2nd well-known programming language that is used by programmers.</p>
                    <p>Java is a programming language that can be used to produce numerous applications that run on different devices like computers. All of the work is performed in Java, from creating to adding features, testing beta versions, and then releasing them to the market.</p>
                    <p>In Java, there is a lot to learn. Java is also known as the fastest-growing programming language and employs greater than a quarter of the world's population. This means that you do not have to be concerned about where you'll end up upon completion of this course because Java is employed by nearly every computer-related business.</p>
                    <p>Businesses prefer working in a Java environment due to its security and dependability. Java experts are largely sought-after and are particularly sought-after for those who have certification from reliable institutions.</p>
                    <h4 class="fw-bold">Top Institutes providing Java Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Besant Technologies</li>
                        <li>Simplilearn Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students who want to learn along with work may take this <strong>Short Term Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Java Programmer could earn as much as Rs. 4.2 Lakhs per annum.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">3. Web Development using .NET</h4>
                <div class="text-justify">
                    <p>.NET is an object-oriented programming (OOP) model designed to assist developers in creating internet-based, distributed applications. It offers an open platform framework for designing, developing, managing, and deploying Web-based apps, smart client apps, as well as XML Web service applications.</p>
                    <p>Every moment, .NET is growing in popularity. Choosing career opportunities within the .Net stream can make you innovative, skilled, and the most sought-after programmer. .NET programmers are in high demand and various CIOs are struggling to find candidates who are qualified and have the skills.</p>
                    <h4 class="fw-bold">Top Institutes providing .NET Web Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Image Creative Education Pvt. Ltd.</li>
                        <li>Srihari Technologies</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You can take this <strong>Short Term Job Oriented Course after 12th</strong> grade to further develop your career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A .NET Developer can easily earn Rs. 5,20,000 annually.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">4. Data Science Course</h4>
                <div class="text-justify">
                    <p>Data Science is a field of study that works with massive quantities of data. It utilizes the most advanced tools and techniques to search for patterns that are not uncovered in order to induce precious data, and make effective business decisions.</p>
                    <p>One will learn about important patterns and methods to store and alter data and will also learn about new data tools that will allow you to begin data analysis using many techniques within this Data Science course. </p>
                    <p>If you're looking to pursue employment in Data Science field, then this course will allow you to learn the basics of data science and help you prepare for interviews with confidence. </p>
                    <p>It is not a mistake to take the Data Science course since the field of Data Science has a lot of potential to grow in the future. Demand for the course is high, benefits are generous and the pay is appealing, which is the reason Data Science is the most promising profession for youths today.</p>
                    <h4 class="fw-bold">Top Institutes providing Data Science Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Techgyan Institute</li>
                        <li>Technophilia Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>There is no reason to be concerned about pursuing this <strong>Short Term Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>An expert in Data Science can earn an amount of Rs. 6,00,000 per year easily.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">5. Interior Designing Course</h4>
                <div class="text-justify">
                    <p>The art of interior design involves the process of making your office, house, or building, whether new or old, useful and beneficial to those who live or work in it.</p>
                    <p>Interior Design is a great career choice for those who wish to show their skills in the most introductory ways. If you are an addict of decorating and organizing spaces, then the career of Interior Design might be a perfect fit for you. It lets people use their talents while offering a high degree of satisfaction at work.</p>
                    <p>As we move through the present developments, interior design holds lots of potential in the future. The discipline has gained popularity, especially in developing countries such as India that have an extremely artistic and creative zone. It is among the most popular Short Term Job Oriented Courses.</p>
                    <h4 class="fw-bold">Top Institutes imparting Interior Designing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Ivs School of Design</li>
                        <li>The Design Institute of India</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>You can take this <strong>Short Term Job Oriented Course after 12th</strong> grade to further develop your career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>An Interior Designer could easily earn as much as Rs. 3,50,000 per year.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">6. Mobile Application Development: Android and Flutter</h4>
                <div class="text-justify">
                    <p>India is on its journey towards transforming into the world's largest developer base, with the nation being predicted to cross the United States as the world's biggest developer base in 2024. This means that there will always be plenty of career options in this field. </p>
                    <p>If you don't have any previous experience with programming but would like to be an app developer for mobile, you can do so by taking the most effective Android or Flutter coaching.</p>
                    <p>For IT professionals looking to change their careers, or students searching for the top Short Term Job Oriented Course after 12th grade, Android and Flutter has become the most sought-after platforms. It's a great option for those who are looking for jobs.</p>
                    <p>Following the completion of this Short Term Job Oriented Course after 12th, a range of job opportunities are waiting for you since Mobile App Developers are highly sought-after.</p>
                    <h4 class="fw-bold">Top Institutes imparting Mobile Application Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Lifeboat Technologies</li>
                        <li>AndroidManifester</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>It is possible to do this <strong>Short Term Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Mobile App Developer's average annual pay is Rs. 5,31,000.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">7. WordPress Course</h4>
                <div class="text-justify">
                    <p>WordPress is a well-known and widely accepted blogging platform. Because it's simple to set up and use, almost every web based business uses WordPress. WordPress experts are highly sought-after nowadays, so it's not necessary to worry about finding work after completing this course.</p>
                    <p>WordPress is a web-based publishing platform to build a website or blog. WordPress is among the most well-known web-based publishing systems. It is now used by nearly 30 percent of the web, including personal blogs and many of the world's most well-known websites.</p>
                    <h4 class="fw-bold">Top Institutes that offer WordPress Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>SourceKode Institute</li>
                        <li>Technogeekscs Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students can enroll in this <strong>Short Term Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>The earnings of WordPress Developers in India vary between 1.0 from 6.0 lakhs annually, with an average of 2.6 lakhs.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">8. Graphics and Web Designing Course</h4>
                <div class="text-justify">
                    <p>Graphic and Web designing and development are key aspects of the IT sector and are an appealing Short Term Job Oriented Course after 12th. Numerous large companies and industries require skilled personnel who have obtained knowledge in the field of Graphics and Web Design. </p>
                    <p>Graphics and Web Design course will provide you with the basics of Java scripting, HTML, Adobe Premiere, Photoshop, and Web Page Design. It blends your creativity together with your business expertise to create an impressive corporate design that lets the brand shine while representing all other features as well. </p>
                    <h4 class="fw-bold">Top Institutes that offer Graphics and Web Designing Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Karmisc Institute</li>
                        <li>Arena Animation Institute</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>One should not be hesitant about enrolling in this <strong>Short Term Job Oriented Course after 12th</strong> to be able to study and earn at the same time.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Web Designer could earn as much as Rs. 3,60,000 per year.</p>
                </div>
            </div>
            <br />

            <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">9. Photography and Videography Course</h4>
                <div class="text-justify">
                    <p>The word "Photography" actually means 'to draw with light' and originates in the Greek word "photo", which means graph and light, which is a reference to drawing. </p>
                    <p>A Photography course will teach students everything from the basics to advanced level photography, which includes exposures, ISO levels, camera settings, lens settings, lighting, aperture, and shutter speed. Students will also learn about how to click professional photographs using cameras, studio lighting, portfolio design, portrait photography and much more.</p>
                    <p>Photography and Videography courses are nowadays among most attractive and lucrative job offering fields for a lot of Indian young people, due to the rapid growth of media, advertising, as well as the fashion industry and in recent years, it has gained a lot of attention.</p>
                     <p>The photographers and videographers have a promising future ahead of their careers. Videography and Photography are flourishing industries that will not be able to disappear any time in the near future. This is the perfect time to learn how to become an expert Photographer or Videographer from India.</p>
                    <h4 class="fw-bold">Top Institutes that offer Photo along with Videography Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>Hamstech Institute</li>
                        <li>Xposephotography</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Students looking to get some work while they are learning can enroll in this job <strong>Short Term Job Oriented Course after 12th.</strong></p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>A Photographer or Videographer could easily earn Rs. 3,56,000 annually on an average.</p>
                </div>
            </div>
            <br />

             <div class="digitalmarketing">
                <h4 class="h3 text-danger fw-bold">10. Web Development using PHP</h4>
                <div class="text-justify">
                    <p>PHP is a server-side scripting language that powers a vast majority of popular websites on the internet. PHP is utilized together with front-end languages and other technologies like HTML and CSS and decide the way a site appears to visitors with regard to fonts and other components of a page. PHP is also utilized on web servers.</p>
                    <p>Due to its widespread use and its practicality in mobile and web app creation, PHP courses are in the spotlight these days.</p> 
                    <p>PHP is a great job option and Short Term Job Oriented Course after 12th because highly competent PHP developers are highly sought-after and, if you are able to learn it well, you will make a decent amount of cash. </p> 
                    <p>Because of its popularity and advancement, there are a lot of jobs to choose from. Another reason to be proficient in PHP is the fact that it can work well with different languages and skills, which means more job opportunities.</p>  
                    <h4 class="fw-bold">Top Institutes that offer PHP Web Development Course:</h4>
                    <ul class="welcomeLinks">
                        <li>ThinkNEXT Technologies Pvt. Ltd.</li>
                        <li>FITA Academy</li>
                        <li>Quick Xpert Infotech</li>
                    </ul>
                    <p class="h5 fw-bold">Eligibility:</p>
                    <p>Anyone can join this <strong>Short Term Job Oriented Course after 12th</strong> and progress in their professional career.</p>
                    <p class="h5 fw-bold">Salary:</p>
                    <p>The PHP Web Developer could earn a sum of Rs. 4,00,000 per year on an average basis.</p>
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Job Oriented Courses after 12th Science" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Job Oriented Courses after 12th Science" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Job Oriented Courses after 12th Science" title="Job Oriented Courses after 12th Science" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
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
