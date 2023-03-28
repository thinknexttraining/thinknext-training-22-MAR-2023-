<%@ Page Title="Data Structures and Algorithms Course" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="data-structures-and-algorithms-course.aspx.vb" Inherits="data_structures_algorithms_course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="Data Structures and Algorithms Course - ThinkNEXT is top DSA Training Institute that provides Data Structures and Algorithms training with 100% job placement assistance" />
    <meta name="keywords" content="Data Structures and Algorithms Course, DSA Course" />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/data-structues-and-algorithms-mob.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/data-structues-and-algorithms-mob.jpg" />
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
        <img class="d-md-none" src="images/data-structues-and-algorithms-mob.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
        <img class="d-md-block d-none" src="images/data-structures-and-algorithms-min.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />

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
                            <h1>Data Structures and Algorithms Course</h1>
                        </div>
                        <p class="text-danger fw-bold">Looking for the best company for Data Structures and Algorithms Course?</p>
                        <p class="text-primary fw-bold">If Yes, then </p>
                        <p class="text-primary fw-bold">Your search ends here. Finally, You are at the RIGHT PLACE </p>
                        <p class="text-primary fw-bold">You are at ThinkNEXT Technologies Private Limited</p>
                     
                        <p><strong>ThinkNEXT</strong> is a professional ISO 9001:2015 Certified <strong>Data Structures and Algorithms Training Institute.</strong> <strong>ThinkNEXT</strong> is a <strong>6 time National Award Winner Company</strong> in the field of Industrial Training, Web Development and Digital Marketing. </p>
                       <p> <strong>Data Structure</strong> is used to organize and store data so that it can be used effectively during the time of data operation.</p>
<p>An <strong>Algorithm</strong> is a set of rules or step-by-step procedures which are needed to be executed in a specific time and order to solve specific problems and to get desired output.</p>
<p>If you are looking to enroll in a <strong>Data structures and Algorithms course</strong> then consider ThinkNEXT as it is one of the <strong>best institutes for Data Structures and Algorithms course.</strong></p>

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
                                    <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4 w-100 fw-bold" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

                                </div>
                            </div>
                        </div>

                    </div>
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-7 text-justify">
                    <h4 class="mb-3 text-danger"><strong>The benefit of learning Data Structures and Algorithms</strong></h4>
                    <ul class="welcomeLinks">
                        <li>Learning Data Structures and Algorithms will help in building a programmer's portfolio.</li>
                        <li>By the time you complete the learning, there is a chance that you will get hired.</li>
                        <li>This is an important present and future skill.</li>
                        <li>Companies are interested in those who are experts in Data Structure and Algorithms</li>
                        <li>Data Structures and Algorithms are used in various fields.</li>
                    </ul>
                    <h4 class="mb-3 text-danger"><strong>The demand for Data Structures and Algorithms</strong></h4>
                    <p>The demand for Data Structures and Algorithms is always there. It is the identity of a good software developer. Most reputed companies hire those candidates who have good knowledge of Data Structures and Algorithms. It will increase the chances of getting hired.</p>

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
                                <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />
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

   <section class="py-5 bg-dark">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-6 text-justify text-white">
                    <h4 class="mb-3 text-warning"><strong>Scope of Data Structures and Algorithms</strong></h4>
                    <p>No matter how advanced technology will become, Data Structures will always travel with it. It is known that in the future software will change but the hardware remains the same even more storage will be required as the data size will increase.</p>
                     <p>Candidates who are looking to work in IT companies must have knowledge of Data Structures and Algorithms.</p>
                    <p>A software developer is incomplete without having knowledge of Data Structures and Algorithms. Big giants like Google, Amazon, Flipkart, etc focused more on knowledge of Data Structures and Algorithms.</p>
                </div>

                  <div class="col-md-6 ">
                      <img src="images/future-scope-dsa-course.jpg" class="border border-1" alt="Data Structures and Algorithms Course" title="Scope of Data Structures and Algorithms Course" />
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Data Structures and Algorithms Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Data Structures and Algorithms Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Data Structures and Algorithms Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Data Structures and Algorithms Course">
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

   <section class="py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Data Structures and Algorithms Training - Course Contents</strong></h3>
            </div>
            <br>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Introduction</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Analysis of Algorithm</li>
                            <li>Background analysis through a Program and its functions.</li>
                            <li>Order of Growth&nbsp;</li>
                            <li>A mathematical explanation of the growth analysis through limits and functions.</li>
                            <li>A direct way of calculating the order of growth</li>
                            <li>Asymptotic Notations</li>
                            <li>Best, Average and Worst case explanation through a program.</li>
                            <li>Big O Notation</li>
                            <li>Graphical and mathematical explanation.</li>
                            <li>Calculation</li>
                            <li>Applications at Linear Search</li>
                            <li>Omega Notation</li>
                            <li>Graphical and mathematical explanation.</li>
                        </ul>
                    </div>

                     <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">                           
                            <li>Calculation.</li>
                            <li>Theta Notation</li>
                            <li>Graphical and mathematical explanation.</li>
                            <li>Calculation.</li>
                            <li>Analysis of common loops</li>
                            <li>Single, multiple and nested loops</li>
                            <li>Analysis of Recursion</li>
                            <li>Various calculations through Recursion Tree method</li>
                            <li>Space Complexity&nbsp;</li>
                            <li>Basic Programs</li>
                            <li>Auxiliary Space</li>
                            <li>Space Analysis of Recursion</li>
                            <li>Space Analysis of Fibonacci number</li>

                        </ul>
                    </div>

                </div>
            </div>

           <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Mathematics</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Finding the number of digits in a number.</li>
                            <li>Arithmetic and Geometric Progressions.</li>
                            <li>Quadratic Equations.</li>
                            <li>Mean and Median.</li>
                            <li>Prime Numbers.</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>LCM and HCF</li>
                            <li>Factorials</li>
                            <li>Permutations and Combinations</li>
                            <li>Modular Arithmetic</li>
                            <li>Practice Problems</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Bitmagic</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Bitwise Operators in C++</li>
                            <li>Operation of AND, OR, XOR operators</li>
                            <li>Operation of Left Shift, Right Shift and Bitwise Not</li>
                            <li>Bitwise Operators in Java</li>
                            <li>Operation of AND, OR</li>
                            <li>Operation of Bitwise Not, Left Shift</li>
                            <li>Operation of Right Shift and unsigned Right Shift</li>
                            <li>Problem(With Video Solutions): Check Kth bit is set or not</li>
                            <li>Using the left Shift.</li>
                             <li>Using the right shift</li>                            

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">    
                            <li>Problem(With Video Solutions): Count Set Bits</li>
                            <li>Simple method</li>
                            <li>Brian and Kerningham Algorithm</li>
                            <li>Using Lookup Table</li>
                            <li>Problems(With Video Solutions):</li>
                            <li>To check whether a number is a power of 2 or not</li>
                            <li>Odd occurrences in an array.</li>
                            <li>Two numbers having odd occurrences in an array.</li>
                            <li>Generate power set using bitwise operators.</li>
                            <li>Practice Problems</li>
                        </ul>
                    </div>

                </div>
            </div>
            
            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Recursion</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Writing base cases in Recursion</li>
                            <li>Factorial</li>
                            <li>N-th Fibonacci number</li>
                            <li>Various problems on Recursion(With Video Solutions)</li>
                            <li>Print n to 1</li>
                            <li>Tail Recursion</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Checking Palindrome</li>
                            <li>Sum of digits</li>
                            <li>Rod cutting</li>
                            <li>Subsets of a set</li>
                            <li>Tower of Hanoi Problem</li>
                            <li>Josephus Problem</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Arrays</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction and Advantages</li>
                            <li>Types of Arrays</li>
                            <li>Fixed-sized array</li>
                            <li>Dynamic-sized array</li>
                            <li>Operations on Arrays</li>
                            <li>Searching</li>
                            <li>Insertions</li>
                            <li>Deletion</li>
                            <li>Arrays vs other DS</li>
                            <li>Reversing - Explanation with complexity</li>
                            <li>Left Rotation of the array by 1</li>
                            <li>Left Rotation of the array by D places</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Leaders in an Array</li>
                            <li>Maximum Difference Problem</li>
                            <li>Stock Buy and Sell Problem</li>
                            <li>Trapping Rainwater Problem</li>
                            <li>Maximum subarray sum</li>
                            <li>Longest even-odd subarray</li>
                            <li>Maximum Circular sum subarray.</li>
                            <li>Majority Element</li>
                            <li>Minimum Consecutive Flips</li>
                            <li>Sliding Window Technique</li>
                            <li>Prefix sum technique</li>
                            <li>Practice Problems</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Searching</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Binary Search and various associated problems(With Video Solutions)</li>
                            <li>Leftmost index of an element in an array</li>
                            <li>Count of occurrences of x in sorted element</li>
                            <li>Count of 1s in a binary sorted array</li>
                            <li>Find an element in sorted and rotated array</li>
                            <li>Peak element</li>
                            <li>Find an element in an infinite sized sorted array</li>                            

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>The square root of an integer</li>
                            <li>Two Pointer Approach Problems(With Video Solutions)</li>
                            <li>Find pair in an unsorted array which gives sum X</li>
                            <li>Find pair in a sorted array which gives sum X</li>
                            <li>Find triplet in an array which gives sum X</li>
                            <li>Problems(With Video Solutions)</li>
                            <li>Median of two sorted arrays</li>
                            <li>Majority Element&nbsp;</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Sorting</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Implementation of C++ STL sort() function in Arrays and Vector</li>
                            <li>Time Complexities</li>
                            <li>Sorting in Java</li>
                            <li>Arrays.sort() in Java</li>
                            <li>Collection.sort() in Java</li>
                            <li>Stability in Sorting Algorithms</li>
                            <li>Examples of Stable and Unstable Algos</li>
                            <li>Insertion Sort</li>
                            <li>Merge Sort</li>
                            <li>Problems(With Video Solutions)</li>
                            <li>Intersection of 2 sorted arrays</li>
                            <li>Union of 2 sorted arrays</li>
                            <li>Count Inversions in arrays</li>
                            <li>Partitions(With Video Solutions)</li>
                            <li>Naive</li>
                            <li>Lomuto</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Hoare</li>
                            <li>Quick Sort</li>
                            <li>Using Lomuto and Hoare</li>
                            <li>Time and Space analysis</li>
                            <li>Choice of Pivot and Worst case</li>
                            <li>Tail call elimination</li>
                            <li>Problems(With Video Solutions)</li>
                            <li>Kth Smallest element</li>
                            <li>Chocolate Distribution Problem</li>
                            <li>Sorting arrays with 2 and3 types of elements</li>
                            <li>Merge Overlapping Intervals</li>
                            <li>Meeting the Maximum Guests</li>
                            <li>Cycle Sort</li>
                            <li>Counting Sort</li>
                            <li>Radix Sort</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Matrix</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction to Matrix in C++ and Java</li>
                            <li>Printing matrix in a snake pattern</li>
                            <li>Transposing a matrix</li>
                            <li>Rotating a Matrix</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Check if the element is present in a row and column-wise sorted matrix.</li>
                            <li>Boundary Traversal</li>
                            <li>Spiral Traversal</li>
                            <li>Matrix Multiplication</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Hashing</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction and Time complexity analysis</li>
                            <li>Application of Hashing</li>
                            <li>Discussion on Direct Address Table</li>
                            <li>Working and examples on various Hash Functions</li>
                            <li>Introduction and Various techniques on Collision Handling</li>
                            <li>Chaining and its implementation</li>
                            <li>Open Addressing and its Implementation</li>
                            <li>Chaining V/S Open Addressing</li>
                            <li>Double Hashing</li>
                            <li>C++</li>
                            <li>Unordered Set</li>
                            <li>Unordered Map</li>
                            <li>Java</li>
                            <li>HashSet</li>


                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>HashMap</li>
                            <li>Problems(With Video Solutions):</li>
                            <li>Count Distinct Elements</li>
                            <li>Count of the frequency of array elements</li>
                            <li>The intersection of two arrays</li>
                            <li>Union of two unsorted arrays</li>
                            <li>Pair with given sum in an unsorted array</li>
                            <li>Subarray with zero-sum</li>
                            <li>Subarray with given sum</li>
                            <li>Longest subarray with a given sum</li>
                            <li>Longest subarray with an equal number of 0&rsquo;s and 1&rsquo;s</li>
                            <li>Longest common span with the same sum in a binary array</li>
                            <li>Longest Consecutive Subsequence</li>
                            <li>Count Distinct elements in every window</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">String</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Discussion of String DS</li>
                            <li>Problems(With Video Solutions)</li>
                            <li>Given a string, check if they are an anagram of each other.</li>
                            <li>Given a string, find the leftmost character that repeats.</li>
                            <li>Given a string, find the leftmost character that does not repeat.</li>
                            <li>Given a string, find the lexicographic rank of it in O(n) time.</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Implementation of the previously discussed lexicographic rank problem.</li>
                            <li>Given a text string and a pattern string, find if a permutation of the pattern exists in the text.</li>
                            <li>Given two strings, check if they are rotations of each other or not.</li>
                            <li>Various Pattern Searching Algorithms.</li>
                            <li>Rabin Karp Algorithm</li>
                            <li>KMP Algorithm</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Linked List</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Implementation in CPP</li>
                            <li>Implementation in Java</li>
                            <li>Comparison with Array DS</li>
                            <li>Doubly Linked List</li>
                            <li>Circular Linked List</li>
                            <li>Loop Problems</li>
                            <li>Detecting Loops</li>
                            <li>Detecting loops using Floyd cycle detection</li>
                            <li>Detecting and Removing Loops in Linked List</li>
                            <li>Problems(With Video Solutions):</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Middle of Linked List</li>
                            <li>Nth node from the end of linked list</li>
                            <li>Deleting a Node without accessing Head pointer of&nbsp;Linked List</li>
                            <li>An iterative method to Reverse a linked list</li>
                            <li>Recursive method to reverse a linked list</li>
                            <li>Segregating even-odd nodes of linked list</li>
                            <li>The intersection of two linked list</li>
                            <li>Pairwise swap nodes of linked list</li>
                            <li>Clone a linked list using a random pointer</li>
                            <li>LRU Cache Design</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Linked List</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Implementation in CPP</li>
                            <li>Implementation in Java</li>
                            <li>Comparison with Array DS</li>
                            <li>Doubly Linked List</li>
                            <li>Circular Linked List</li>
                            <li>Loop Problems</li>
                            <li>Detecting Loops</li>
                            <li>Detecting loops using Floyd cycle detection</li>
                            <li>Detecting and Removing Loops in Linked List</li>
                            <li>Problems(With Video Solutions):</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Middle of Linked List</li>
                            <li>Nth node from the end of linked list</li>
                            <li>Deleting a Node without accessing Head pointer of&nbsp;Linked List</li>
                            <li>An iterative method to Reverse a linked list</li>
                            <li>Recursive method to reverse a linked list</li>
                            <li>Segregating even-odd nodes of linked list</li>
                            <li>The intersection of two linked list</li>
                            <li>Pairwise swap nodes of linked list</li>
                            <li>Clone a linked list using a random pointer</li>
                            <li>LRU Cache Design</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Stack</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Understanding the Stack data structure&nbsp;</li>
                            <li>Applications of Stack</li>
                            <li>Implementation of Stack in Array and Linked List</li>
                            <li>In C++</li>
                            <li>In Java&nbsp;</li>
                            <li>Problems(With Video Solutions):</li>
                            <li>Balanced Parenthesis</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Two stacks in an array</li>
                            <li>K Stacks in an array</li>
                            <li>Stock span problem with variations</li>
                            <li>Previous Greater Element</li>
                            <li>Next Greater Element</li>
                            <li>Largest Rectangular Area in a Histogram</li>
                            <li>Understanding getMin() in Stack with O(1)</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Queue</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction and Application</li>
                            <li>Implementation of the queue using array and LinkedList</li>
                            <li>In C++ STL</li>
                            <li>In Java</li>
                            <li>Stack using queue</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Problems(With Video Solutions)</li>
                            <li>Reversing a Queue</li>
                            <li>Generate numbers with given digits</li>
                            <li>Maximums of all subarrays of size k</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Tree</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Tree</li>
                            <li>Application</li>
                            <li>Binary Tree</li>
                            <li>Tree Traversal</li>
                            <li>Implementation of:</li>
                            <li>Inorder Traversal</li>
                            <li>Preorder Traversal</li>
                            <li>Postorder Traversal</li>
                            <li>Level Order Traversal (Line by Line)</li>
                            <li>Tree Traversal in Spiral Form&nbsp;</li>
                            <li>Problems(With Video Solutions):</li>


                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Size of Binary Tree</li>
                            <li>Maximum in Binary Tree</li>
                            <li>Height of Binary Tree</li>
                            <li>Print Nodes at K distance</li>
                            <li>Print Left View of Binary Tree</li>
                            <li>Children Sum Property</li>
                            <li>Check for Balanced Binary Tree</li>
                            <li>Maximum Width of Binary Tree</li>
                            <li>Convert Binary Tree to Doubly Linked List</li>
                            <li>Construct Binary Tree from Inorder and Preorder</li>
                            <li>The diameter of a Binary Tree</li>
                            <li>LCA problem with an efficient solution</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Binary Search Tree</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Background, Introduction and Application</li>
                            <li>Implementation of Search in BST</li>
                            <li>In CPP</li>
                            <li>In Java</li>
                            <li>Insertion in BST</li>
                            <li>In CPP</li>
                            <li>In Java</li>
                            <li>Deletion in BST</li>
                            <li>In CPP</li>
                            <li>In Java</li>
                            <li>Floor in BST</li>
                            <li>In CPP</li>
                            <li>In Java</li>
                            <li>Self Balancing BST&nbsp;</li>
                            <li>AVL Tree&nbsp;</li>
                            <li>Red Black Tree&nbsp;</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Set in C++ STL&nbsp;</li>
                            <li>Map in C++ STL&nbsp;</li>
                            <li>TreeSet in java&nbsp;</li>
                            <li>TreeMap in Java&nbsp;</li>
                            <li>Problems(With Video Solutions):</li>
                            <li>The ceiling of a key in BST</li>
                            <li>Ceiling on the left side in an array</li>
                            <li>Find Kth Smallest in BST</li>
                            <li>Check for BST</li>
                            <li>Fix BST with Two Nodes Swapped</li>
                            <li>Pair Sum with given BST</li>
                            <li>Vertical Sum in a Binary Tree</li>
                            <li>Vertical Traversal of Binary Tree</li>
                            <li>Top View of Binary Tree</li>
                            <li>Bottom View of Binary Tree</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Heap</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction &amp; Implementation</li>
                            <li>Binary Heap</li>
                            <li>Insertion</li>
                            <li>Heapify and Extract</li>
                            <li>Decrease Key, Delete and Build Heap</li>
                            <li>Heap Sort&nbsp;</li>
                            <li>Priority Queue in C++&nbsp;</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>PriorityQueue in Java</li>
                            <li>Problems(With Video Solutions):</li>
                            <li>Sort K-Sorted Array</li>
                            <li>Buy Maximum Items with Given Sum</li>
                            <li>K Largest Elements</li>
                            <li>Merge K Sorted Arrays</li>
                            <li>Median of a Stream</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Graph</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction to Graph&nbsp;</li>
                            <li>Graph Representation&nbsp;</li>
                            <li>Adjacency Matrix</li>
                            <li>Adjacency List in CPP and Java</li>
                            <li>Adjacency Matrix VS List</li>
                            <li>Breadth-First Search&nbsp;</li>
                            <li>Applications</li>
                            <li>Depth First Search&nbsp;</li>
                            <li>Applications</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Problems(With Video Solutions):</li>
                            <li>Shortest Path in an Unweighted Graph&nbsp;</li>
                            <li>Detecting Cycle</li>
                            <li>In the Undirected Graph&nbsp;</li>
                            <li>In the Directed Graph</li>
                            <li>Topological Sorting&nbsp;</li>
                            <li>Kahn's BFS Based Algorithm</li>
                            <li>DFS Based Algorithm</li>
                            <li>Shortest Path in Directed Acyclic Graph<strong>&nbsp;</strong></li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Greedy</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Activity Selection Problem</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Fractional Knapsack&nbsp;</li>
                            <li>Job Sequencing Problem</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Backtracking</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Concepts of Backtracking </li>
                            <li>Rat In a Maze </li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>N Queen Problem </li>
                            <li>Sudoku Problem </li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Dynamic Programming</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction&nbsp;</li>
                            <li>Dynamic Programming</li>
                            <li>Memoization&nbsp;</li>
                            <li>Tabulation</li>
                            <li>Problems(With Video Solutions):</li>
                            <li>Longest Common Subsequence</li>
                            <li>Coin Change Count Combinations&nbsp;</li>
                            <li>Edit Distance Problem</li>
                            <li>Naive Approach</li>
                            <li>DP Approach</li>
                            <li>Longest Increasing Subsequence Problem</li>
                            <li>Naive Approach</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Efficient Approach</li>
                            <li>Maximum Cuts&nbsp;</li>
                            <li>Minimum coins to make a value&nbsp;</li>
                            <li>Minimum Jumps to reach at the end&nbsp;</li>
                            <li>0-1 knapsack problem&nbsp;</li>
                            <li>Naive Approach</li>
                            <li>Efficient Approach</li>
                            <li>Optimal Strategy for a Game&nbsp;</li>
                            <li>Variation of Longest Common Subsequence&nbsp;</li>
                            <li>Variation of Longest Increasing Subsequence&nbsp;</li>
                            <li>Egg Dropping Problem&nbsp;</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Graph Advance</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Prim's Algorithm/Minimum Spanning Tree</li>
                            <li>Dijkstra's Shortest Path Algorithm</li>
                            <li>Bellman-Ford Shortest Path Algorithm</li>
                            <li>Kosaraju's Algorithm</li>

                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Articulation Point</li>
                            <li>Bridges in Graph</li>
                            <li>Tarjan&rsquo;s Algorithm</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Trie</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Representation</li>
                            <li>Search</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                            <li>Insert</li>
                            <li>Delete</li>
                            <li>Count Distinct Rows in a Binary Matrix</li>
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Segment Tree</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Construction</li>                           
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                             <li>Range Query </li>
                            <li>Update Query</li>                           
                        </ul>
                    </div>

                </div>
            </div>

            <div class="mb-4 pb-2">
                <h5 class="text-danger h3 fw-bold">Disjoint Set</h5>
                <div class="row">
                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks mb-0">
                            <li>Introduction</li>
                            <li>Find and Union Operations</li>
                            <li>Union by Rank</li>
                        </ul>
                    </div>

                    <div class="col-md-6 text-justify">
                        <ul class="welcomeLinks">
                             <li>Path Compression</li>
                            <li>Kruskal's Algorithm</li>                           
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
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Data Structures and Algorithms Course" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Data Structures and Algorithms Course" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Data Structures and Algorithms Course" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Data Structures and Algorithms Course" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Data Structures and Algorithms Course" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Data Structures and Algorithms Course" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Data Structures and Algorithms Course" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Data Structures and Algorithms Course" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                    <li>Data Structures and Algorithms Course from 6 Times National Level Award Winner Company:</li>
                    <li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
                    <li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
                    <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                    <li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                    <li>Data Structures and Algorithms Course from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
                    <li>Beginner & Advanced level Classes.</li>
                    <li>Hands-On Learning in Data Structures and Algorithms .</li>
                    <li>Affordable Fees with Best curriculum Designed by Industrial Data Structures and Algorithms Expert.</li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                    <li>Data Structures and Algorithms Course from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
                    <li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
                    <li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
                    <li>Free online courses for class-room/offline students undergoing Industrial Training/Internship</li>
                    <li>Get Data Structures and Algorithms Course in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
                    <li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
                    <li>Guaranteed Job Interviews and 100% Placement Assistance</li>
                    <li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
                    <li>Training on Live-Projects </li>
                    <li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
                    <li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
                    <li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
                    <li>Data Structures and Algorithms Course from 10+ Years old company</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Data Structures and Algorithms Course" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>
                            
                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Data Structures and Algorithms Course" title="Data Structures and Algorithms Course" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
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
                    <h4><strong>Q1. Is Data Structures and Algorithms a good career option?</strong></h4>
                    <p><strong>Ans.</strong> Good companies are looking for software developers who have good knowledge of Data Structures and Algorithms.</p>
                   
                    <h4><strong>Q2. What is the scope of Data Structures and Algorithms in the future?</strong></h4>
                    <p><strong>Ans.</strong> A software developer is incomplete without having knowledge of Data Structures and Algorithms. Big giants like Google, Amazon, Flipkart, etc focused more on knowledge of Data Structures and Algorithms.</p>
                    
                    <h4><strong>Q3. What is the difference between Data Structures and Algorithms?</strong></h4>
                    <p><strong>Ans.</strong> The data structures is used in organizing and storing data so that it can be used at the time of operation whereas Algorithms are the defined steps used to solve specific problems.</p>
                    
                    <h4><strong>Q4. How much time does it take to learn Data Structures and Algorithms?</strong></h4>
                    <p><strong>Ans.</strong> It totally depends on the student and different factors. But generally, it may take 2-3 months.</p>

                     <h4><strong>Q4. Top reason to make a career in Data Structures and Algorithms</strong></h4>
                 <ul class="welcomeLinks">
                     <li>It demonstrates the problem-solving ability of students.</li>
                     <li>It helps in building a strong portfolio for the software developer.</li>
                     <li>Branded companies are looking for a candidate having knowledge of Data Structures and Algorithms.</li>
                     <li>There is a requirement in the present and future.</li>
                 </ul> 
                   
                </div>
            </div>
        </div>
    </section>

      <section class="py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <ul class="welcomeLinks mb-0">
                        <li><a href="data-structures-and-algorithms-course.aspx">Data Structures and Algorithms Course</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="welcomeLinks mb-0">
                        <li><a href="dsa-course.aspx">DSA Course</a></li>
                    </ul>
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
