<%@ Page Title="HR Training Institute in Chandigarh Mhoali" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Hr-training-institute-in-Chandigarh-Mohali.aspx.vb" Inherits="hr_training_institute_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description" content="HR Training Institute in Chandigarh - Mhoali. ThinkNEXT Technologies Private Limited provides Best HR Training in Chandigarh Mohali Panchkula" />
<meta name="keywords" content="HR Training Institute in Chandigarh - Mhoali. ThinkNEXT Technologies Private Limited provides Best HR Training in Chandigarh Mohali Panchkula" />
<link rel="image_src" href="https://www.thinknexttraining.com/images/hr-training-institue-chandigarh.jpg"/>
<meta property="og:image" content="https://www.thinknexttraining.com/images/hr-training-institue-chandigarh.jpg" />
     <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
  <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
  
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">
<meta name="copyright" content="ThinkNEXT"/>
<link rel="canonical" href="https://www.thinknexttraining.com/Hr-training-institute-in-Chandigarh-Mohali.aspx" /> 
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="main-image position-relative">

        <img class="d-md-none" src="images/hr-training-institue-chandigarh.jpg" alt="Web Designing Training Course in Chandigarh Mohali Panchkula">
        <img class="d-none d-md-block" src="images/hr-training-institue-chandigarh.jpg" alt="Web Designing Training Course in Chandigarh Mohali Panchkula">

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
                            <h1>HR TRAINING INSTITUTE IN CHANDIGARH MOHALI</h1>
                        </div>
                        <p><strong>ThinkNEXT Technologies Private Limited</strong> provides Best <strong>HR Training in Chandigarh Mohali Panchkula</strong> as per the current industry standards. ThinkNEXT is one of the most recommended <strong>HR Training Institute in Chandigarh Mohali</strong> that offers hands-on practical knowledge on live projects and will ensure the job with the help of advance level <strong>HR Training Courses</strong>. At <strong>ThinkNEXT HR certification courses in Chandigarh Mohali</strong> is conducted by specialist working certified corporate professionals having 5+ years of experience in implementing real-time HR.</p>
                        <p><strong>ThinkNEXT</strong> is a well-equipped <strong>HR training center in Chandigarh Mohali Panchkula</strong>. Candidates will implement the following concepts: labor laws, legal compliance, payroll processing, interview, process session etc. in real-time projects as well as human resource recruitment training modules.</p>
                        <p><strong><a class="text-decoration-none" href="https://www.thinknexttraining.com/">ThinkNEXT</a></strong> is one of the best <strong>HR Training Institutes in Chandigarh Mohali</strong> with 100% placement support. We are following the Placement Preparation Process to ensure the placement of our candidates.</p>
                        <p>Our strong associations with top organizations make us capable to place our students in top MNCs across the globe. We have placed thousands of students according to their skills and area of interest that makes us the best <strong>Institute for HR internship in Chandigarh Mohali Panchkula.</strong></p>
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
                                    <img src="images/download_brochure.png" alt="HR Training in Chandigarh">
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

    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="HR Training in Chandigarh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="HR Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="HR Training in Chandigarh" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" />
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="HR Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="HR Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="HR Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="HR Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>

    <section class="py-4 bg-black">
          <div class="container">
            <div class="row m-0">
              <div class="col-lg-8 text-justify">                
                    <h3 class="text-warning">HR Training Introduction</h3>
                  <div>                  
                    <p class="text-white">HR is responsible for a variety of HR functions. This training program will give you the tools to enhance your knowledge and expand your understanding of the role’s core competencies</p>
                    <p class="text-white">HR manages the day-to-day operations of the office of Human Resources. The human resources specialist manages human resource policy management, procedures, and programs. The Human Resources Section has responsibilities in the following functional areas: human resources information systems (HRIS), departmental development, training and development, benefits, staff relations, compensation, organizational development, and employment.</p>
                    <p class="text-white">You will learn writing essentials for business writing, interpersonal communication, effective communication, building team which works for achieving targets and success with difficult people. </p>

                      <h4 class="text-warning">Why do learn HR Training Course?</h4>
                        <ul class="welcomeLinks">
                           <li class="text-white"> Human Resource Management has a wide scope of jobs.</li>
                           <li class="text-white"> No company can work for long without an HR Department.</li>
                           <li class="text-white"> HR jobs pay well and have steady career growth options.</li>
                           <li class="text-white"> The HR Department is considered as an asset by the management of all companies.</li>
                        </ul>
                  </div>
             </div>

                  <div class="col-lg-4 text-justify">
                      <div class="position-sticky top-0">
                                      
                      <div class="py-3 px-4 bg-warning">
                          <h3 class="text-dark text-center"><strong>Book My Free Demo Class Now!</strong></h3>
                          <div class="mt-3">
                             <asp:Label ID="Label1" runat="server" ></asp:Label>

                              <div class="form-group">
                                  <asp:TextBox ID="txtdemoName" runat="server" class="form-control" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                              </div>
                              <div class="form-group">
                                    <asp:TextBox ID="txtdemoMblno" runat="server" class="form-control"  MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."  ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                              </div>
                              <div class="form-group">
                                   <asp:TextBox ID="txtdemoEmail"  runat="server" class="form-control" placeholder="E-mail ID" ></asp:TextBox>
                                  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                              </div>

                              <div class="form-group">
                                   <asp:TextBox id="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />
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

    <section class="py-4 bg-ececec">
        <div class="container">   
                <div class="mt-3 text-justify">
                   <h3 class="fw-bold text-danger">Who should join HR Training?</h3>
                    <ul class="welcomeLinks">
                       <li>  Graduate / Post Graduate freshers willing to make a career in HR Management.</li>
                       <li>  Professionals working in other fields who want to work as an HR.</li>
                       <li>  Professionals working as HR who are not getting profession growth.</li>
                       <li>  The housewife who looks for a respected job.</li>
                    </ul>
                   <h3 class="fw-bold text-danger">Highlights of the HR Training Program</h3>
                    <ul class="welcomeLinks">
                       <li>  HR Training will be provided by the trainers who have worked in the Corporate World.</li>
                       <li>  You will get access to all software and hardware tools important to learn HR skills.</li>
                       <li>  You will get a widely recognized certificate.</li>
                       <li>  You will get 100% job placement opportunities.</li>
                       <li>  You will get the doubts session throughout the program.</li>
                    </ul>
                   <h3 class="fw-bold text-danger">Job Opportunities after HR training</h3>
                    <ul class="welcomeLinks">
                       <li>  Human Resource Manager.</li>
                       <li>  Human Resource Assistance Manager.</li>
                       <li>  Employee Relation Officer.</li>
                       <li>  HR Consultant.</li>
                       <li>  International HR Professional.</li>
                       <li>  Employee Education Consultant.</li>
                       <li>  Recruitment Officer.</li>
                       <li>  HR Generalist.</li>
                       <li>  Compensation and Benefits Analysts.</li>
                       <li>  HR Training Administrator.</li>
                       <li>  HR Training and Development Manager.</li>
                       <li>  HR back office Administrator.</li>
                       <li>  Payroll Officer.</li>
                    </ul>
                   <h3 class="fw-bold text-danger">Total HR Course Concepts</h3>
                    <p><strong>Module 1- The Recruitment Process</strong></p>
                    <ul class="welcomeLinks">
                       <li>  Identify Vacancy</li>
                       <li>  Prepare Job Description and Person Specification</li>
                       <li>  Advertise</li>
                       <li>  Managing the Response</li>
                       <li>  Short-listing</li>
                       <li>  References</li>
                       <li>  Arrange Interviews</li>
                       <li>  Conduct The Interview</li>
                       <li>  Decision Making</li>
                       <li>  Convey the Decision</li>
                       <li>  Appointment Action</li>
                    </ul>
                    <p><strong>Module 2- Payroll</strong></p>
                    <ul class="welcomeLinks">
                       <li>  Salary restructuring</li>
                       <li>  Reimbursement but not limited to Medical & LTA, conveyance etc, and includes the expenses made in delivering the Job.</li>
                       <li>  Collection of Attendance & leave Data/ Unauthorized absenteeism from various locations from the concerns officers.</li>
                       <li>  Integration of Salary statement to various interlinked Policies.</li>
                       <li>  Generate standardized reports to accounts & finance for payroll processing.</li>
                       <li>  Processing the salaries to the Employees along with the pay slips (soft formats).</li>
                       <li>  Attends & answers salary and other queries relating to payroll (Turnaround time of 72 hours).</li>
                       <li>  Creates Payroll help desk/email account to handle all Employee correspondence along with voice.</li>
                    </ul>
                   <p><strong>Module 3- Report Generation while processing Payroll</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Standardization of formats along with the Management.</li>
                      <li>  Payroll statement with the detailed break up to the Finance Department.</li>
                      <li>  Annual payroll statement in MIS format to the Management</li>
                   </ul>
                   <p><strong>Module 4- Provident fund</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Generate monthly calculation and Challan</li>
                      <li>  On the generation of the Challan, the total amount including administrative charges would be informed to the accounts department.</li>
                      <li>  File the monthly returns i.e. Form 5, 10 and 12A</li>
                      <li>  File annual returns i.e. Form 3A and 6A</li>
                      <li>  File Form 2 for nominations as and when required</li>
                      <li>  Supporting with necessary data during an inspection by the authority</li>
                      <li>  The Challan amount would be intimated to the accounts department by the 5th of every month.</li>
                      <li>  The returns would be filed by 12th of every month</li>
                   </ul>
                   <p><strong>Module 5 -ESI – As per the need</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Generate monthly calculation and Challan</li>
                      <li>  File monthly Challan</li>
                      <li>  Filing of returns including half yearly returns</li>
                      <li>  Filing of Form 3 for nominations as and when required</li>
                      <li>  Facilitate in issuing related forms and guidelines for service through ESI</li>
                      <li>  Support in providing the data during the inspection by the authority</li>
                   </ul>
                   <p><strong>Module 6- Professional Tax</strong></p>
                   <ul class="welcomeLinks">
                      <li>Generate monthly calculation and Challan</li>
                       <li>Filing of returns i.e. Form V</li>
                   </ul>
                   <p><strong>Module 7- Income Tax</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Generate monthly TDS statement</li>
                      <li>  TDS statement would be submitted to accounts department by the 4th of every month</li>
                      <li>  TDS would be filed on a monthly basis</li>
                      <li>  File Quarterly TDS returns, FBT returns (eTDS Returns)</li>
                      <li>  File Annual TDS returns, FBT returns</li>
                      <li>  Support employees in planning the Income Tax for the financial year handles queries of employees</li>
                   </ul>
                   <p><strong>Module 8- Background Verification</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Required docs and experience and Relieving docs from new joiners</li>
                      <li>  How to Maintain a record of all BGV reports</li>
                      <li>  Address Check</li>
                      <li>  Database Check for defaulters</li>
                      <li>  Reference Check</li>
                      <li>  Education Check</li>
                      <li>  Previous Employment Check</li>
                      <li>  Criminal Check</li>
                   </ul>
                   <p><strong>Module 9- MIS Reports</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Preparation project analysis, profit analysis, cost analysis</li>
                      <li>  Generating reports Monthly / quarterly/half yearly / annually for PF, ESI, PT, TDS.</li>
                      <li>  Consolidated report to the management and generated all HR administration reports</li>
                      <li>  Comparison reports with Previous Month/Year</li> 
                   </ul>
                   <p><strong>Module 10- Other HR Topics</strong></p>
                   <ul class="welcomeLinks">
                      <li>  Training and Development</li>
                      <li>  Onboarding formalities</li>
                      <li>  Exit Formalities</li>
                      <li>  Performance Appraisal</li>
                      <li>  Employee engagement</li>
                      <li>  Fun at work</li>
                      <li>  Insurance</li>
                      <li>  Policies</li>
                      <li>  Induction</li>
                      <li>  Auditing</li>
                      <li>  Rewards and recognition</li>
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="HR Training in Chandigarh" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="HR Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="HR Training in Chandigarh" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="HR Training in Chandigarh" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="HR Training in Chandigarh" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="HR Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="HR Training in Chandigarh" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="HR Training in Chandigarh" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="HR Training in Chandigarh" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="HR Training in Chandigarh" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="HR Training in Chandigarh" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="HR Training in Chandigarh" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="HR Training in Chandigarh" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="HR Training in Chandigarh" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="HR Training in Chandigarh" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                    <li>HR Training from 6 Times National Level Award Winner Company</li>
                    <li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
                    <li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
                    <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                    <li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                    <li>HR Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                    <li>HR Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
                    <li>HR Training from 11+ Years old company</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="HR Training in Chandigarh" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>
                            
                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="HR Training in Chandigarh" title="HR Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
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
                <a href="https://thinknexttraining.com/web-designing-training-in-chandigarh.aspx"><b>HR Training in Chandigarh</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-chandigarh.aspx"><b>HR Training in Chandigarh</b></a>,  
                <a href="https://thinknexttraining.com/topics/web-designing-institutes-in-chandigarh.aspx"><b>web designing institutes in chandigarh</b></a>, 
                <a href="https://thinknexttraining.com/topics/how-to-learn-web-designing.aspx"><b>how to learn web designing</b></a>,
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-mohali.aspx"><b>web designing course in mohali</b></a>,
                <a href="https://thinknexttraining.com/top-10-companies-providing-web-designing-training-in-chandigarh.aspx"><b>Top 10 Companies Providing HR Training in Chandigarh</b></a>, 
                <a href="https://thinknexttraining.com/top-5-web-designing-training-institutes-chandigarh-mohali.aspx"><b>Top 5 Web Designing Training Institute in Chandigarh Mohali</b></a>,                
                <a href="https://thinknexttraining.com/topics/web-designing-course-in-panchkula.aspx"><b>web designing course in panchkula</b></a>, 
                         
              <br />
                <br />
            </div>
        </div>

    </section>


    
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

