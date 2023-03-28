<%@ Page Title="Computer Institute in Chandigarh - ThinkNEXT" Language="VB"  MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="computer-institute-in-chandigarh.aspx.vb" Inherits="computer_institute_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   

<meta name="description" content="Computer Institute in Chandigarh, Computer Institute in Mohali, Computer Training Institute in Chandigarh, Computer Training Company in Chandigarh Computer Course Institute in Chandigarh" />
   
      <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/images/computer-institute-in-chandigarh-min.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/computer-institute-in-chandigarh-min.jpg" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="main-image">  
             <img class="d-md-none"  src="images/computer-institute-in-chandigarh-min.jpg" alt="Computer Institute in Chandigarh" />
       <img src="images/computer-institute-in-chandigarh-min.jpg" alt="Computer Institute in Chandigarh"  />
           
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
    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-8">
                    <div class="p-2 border text-justify position-sticky top-0">
                       
                        <div class="gdl-header-wrapper">
                      <h1>Computer Institute in Chandigarh</h1>
                        </div>
          
    <p>ThinkNEXT is the computer institute in Chandigarh, here we are providing you all the skill-based and job oriented courses in Multimedia Technology, Web Development, Web Designing, Visual Effects, 2D & 3D Animation, Gaming Development and Designing, Mobile Development and Designing, Graphic Designing and Advertisement, and many other courses are offering to you at ThinkNEXT – a computer institute in Chandigarh.</p>
    <p>It is a platform for those who want to make their career bright and want to prepare for all kinds of career challenges in their lives. It is designed to teach students in the field of development, design, and media. A team of industry experts took responsibility for the academy and their students, so students will receive training from IT professionals (technical people from the field).</p>
    <p>ThinkNEXT is a computer institute in Chandigarh where members are full of knowledge, enthusiasm, and Zeal and transfer the same quality to students to train here. The company's assets are an experienced team.</p>
    <p>Under their guidance, the student will be polished in the field of design and development. We at ThinkNEXT computer institute in Chandigarh offer one of the top professional programs. Our courses are designed in such a way that individuals will certainly develop their creativity and transform from an ordinary artist to well-qualified designers and media artists.</p>
    <p>ThinkNEXT computer institute in Chandigarh offers all types of programs such as certificate programs, entrepreneurship program, and short-term courses. We offer training in various forms such as income-based scholarships, corporate training, industrial training, customized training, outdoor classes, hobby classes, summer</p>
    <p>ThinkNEXT is an ISO 9001:2018 Certified Computer institute in Chandigarh which provides the best computer courses training in Chandigarh. Our courses are specially designed and updated as per the current market needs as well as different student level which make us the best it training institute in Chandigarh. ThinkNEXT is the leading institute across Chandigarh in the field of Computer Courses with government recognition. ThinkNEXT provides the best faculty for every single course of computer vacation classes.</p>           
   
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
               
                </div>
            </div>
        </section>

     <section class="ptb-20 bg-light ">
        <div class="container-fluid">
             <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh" />
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

    <section class="py-4 bg-ececec">
        <div class="container">
            <div class="row m-0 p-2">

                <div class="col-lg-7">

                    <div class="position-sticky top-0">
                        <h2 class="text-danger">Why choose ThinkNEXT for computer training in Chandigarh?</h2>
                        <ul class="welcomeLinks">
                            <li> Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes on Daily basis so that students need not to struggle for jobs as a fresher</li>
                            <li> Life-Time Learning and Placement Card </li>
                            <li> 6 Months/6 Weeks Training+ Project Certificate By ThinkNEXT </li>
                            <li> Computer training Experience Certificate by ThinkNEXT</li>
                            <li> Job Interview Preparation</li>
                            <li> Multiple Job Interviews + 100% Job Assistance</li>
                            <li> Part Time / Full Time Job Offer for each student during training (Earn while you learn)</li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-5">
                    <div class="position-sticky top-0">
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
        </div>
    </section>    
    
    <section class="py-4">
        <div class="container">

            <h2 class="text-danger"><strong>Our vision</strong></h2>
                        <p>To be the leading provider of education in computer training courses worldwide, we want to be a great platform for students where they are inspired to do their best. Through the quality and best services, we will meet the wishes and needs of students. Our vision is also to provide the best students in their field because we are responsible citizens and we want to make a difference by helping to develop educated minds and proactive personalities, providing educational intelligence and preparing national environmental leaders around the world.</p>

                        <h2 class="text-danger"><strong>Our Mission</strong></h2>
                        <p>The mission of the ThinkNEXT computer institute in Chandigarh is to make professionals transfer professionals through training. We teach design concepts and make our students creative rather than just the operator. Our mission is to train students so that after completing their course they can challenge anyone with respect to work and the quality of work will equate to a candidate with one year experience.</p>
                        <p>Our teaching methodology is unique and we focus on skills and offer 100% practical training. We are technical people from the industry and therefore know what is teaching, what is required and what is newest in the industry. We make our students so qualified that their work creates room for them.</p>
                        <p>As we all know that in today's world we need many other skills to survive, so at ThinkNEXT computer institute in Chandigarh we train our students not only in the technical part but we also work on personal growth of personality, confidence, and therefore our mission also includes the overall growth of our students such as A sense of responsibility, the ability to handle pressure intelligently, self-discipline and problem-solving.</p>


                        <h3 class="text-danger"><strong>Animation and Multimedia Training - Course Contents</strong></h3>
                        <p>Color theory overview, Background of art, sketching and illustration, Storyboarding. It includes many of the modules in the training. They are given as follow: Graphics & Publishing, Corel Draw, Adobe illustrator, 2D Animation, Audio-Video Editing, Adobe Premiere Pro, Project Work, Website Design.</p>

                        <h3 class="text-danger"><strong>Web Development:</strong></h3>
                        <p>Web development is the work involved in developing a Web site or intranet. Web development can range from developing one simple static page for plain text to complex web-based Internet applications, e-business, and social networking services. core PHP: Introduction to PHP, PHP Language Fundamentals, Data Operators, Embedding forms with PHP code, String Handling, Error Handling and Debugging, Control Structure Statements, Arrays, Database Programming, Guidelines for Secure PHP – MVC, Sessions & Cookie Management, Sending e-mail using PHP, Reading, Writing & Copy files with PHP, File handling in PHP, Using Filters & Strings Functions in PHP. It covers MySQL, Advance PHP, and CMS WordPress framework.</p>

                        <h3 class="text-danger"><strong>Web Designing:</strong></h3>
                        <p>Designing is the course to design the web site. Web design includes many different skills and specialties in the production and maintenance of websites. Different areas of web design include web design and interface design; authoring, including standard code and proprietary software; user experience design; and search engine optimization.</p>
                        <p>There are various modules cover in this course. They are: Adobe Photoshop, CorelDraw, HTML & DHTML, Introduction to CSS, Adobe Dreamweaver, JavaScript, How to Create Website, Web Hosting (By FTP), Testing and Implementation, Jquery, Responsive Web Design, Bootstrap, Adobe Illustrator.</p>
                        
                        <h3 class="text-danger"><strong>Gaming Development and Designing</strong></h3>
                        <p>Game design is a subset of the field of video game development. An individual who provides a comprehensive technical vision, while also possessing the technical skill to oversee and contribute to programming, image quality and design, digital editing and other aspects of game design.</p>

                        <h3 class="text-danger"><strong>Mobile App Development and Designing</strong></h3>
                        <p>Mobile app development is the procedure or process by which a mobile app is developed for mobile devices, such as PDAs, enterprise assistants, or mobile phones. ... As part of the development process, UI design is also essential in creating mobile applications.</p>

                        <h3 class="text-danger"><strong>Graphic Designing and Advertisement</strong></h3>
                        <p>Graphic designers are professional creators; they use their skills to represent brands. Creative can be considered a combination of marketing and design. Graphic design will focus a little more on logos, printing, labels, etc. ... while ads are designed only to sell a product or service.</p>

                        <h3 class="text-danger"><strong>Visual Effects:</strong></h3>
                        <p>Visual effects include the integration of live shots (special effects) and generated images (digital or visual effects) to create environments, inanimate objects, animals, or objects that appear realistic but will be dangerous, expensive, impractical, time-consuming, or impossible to capture.</p>

                        <h3 class="text-danger"><strong>2D & 3D Animation:</strong></h3>
                        <p>2D animation means that the object is two-dimensional. ... 3D animation includes objects in length, width, and depth. In other words, the characters will be more realistically contradictory to 2D characters. 2D animation objects are created in the traditional drawing way.</p>


           

                         
              

             
                      

                    </div>
             
            </div>
      
    </section>


    <section class="bg-dark py-4 d-none">
        <div class="container">
            <h3 class="text-warning text-center"><strong>OUR SUCCESS STORIES</strong></h3>
            <div class="row">
                <div class="col-sm-6 col-md-4 mb-3">
                     <span class="abythknxt-hdng"> Aditi Jindal</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
           <img src="images/software-testing-training-in-chandigarh-aditi.jpg" />
         </div>
     </div>
                </div>

                 <div class="col-sm-6 col-md-4 mb-3">
                       <span class="abythknxt-hdng">Annu Sharma</span>
  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
           <img src="images/software-testing-course-in-chandigarh-annu.jpg" />
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3">
               <span class="abythknxt-hdng"> Udit Singh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
            <img src="images/software-testing-training-in-chandigarh-udit.jpg" />
         </div>
     </div>
                </div>


                  <div class="col-sm-6 col-md-4 mb-3 d-none">
            <span class="abythknxt-hdng"> PHP Course in Chandigarh Mohali</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/OBtD0MB-I3Y?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3 d-none">
            <span class="abythknxt-hdng"> PHP Course in Chandigarh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/KavQ6b4DEsk?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3 d-none">
              <span class="abythknxt-hdng"> PHP Training in Chandigarh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/SEiBF2w8m8M?rel=0" frameborder="0" allowfullscreen></iframe>
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
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/WCpCT22tiig" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Laravel Training in Mohali"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/mgQy9ZCqc50" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/top-15-reason-to-join-thinknext.jpg" alt="Laravel Training in Mohali"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain" style="display: none;">
                <div id="video-view"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><div class="class-video"><iframe allowfullscreen="" src="https://www.youtube.com/embed/WCpCT22tiig"></iframe></div></div>
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
      
    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 30 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                   
<li>Industrial Training/Internship from 6 Times National Level Award Winner Company:</li>
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
                                    <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                    <img src="images/asia-quality-entreprenuership-award.webp" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="images/award-image11.webp" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                    <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                       <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                    <img src="/php-images/php-industrial-training.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                      <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                    <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                    <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">   
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.webp" alt="Laravel Training in Mohali" title="Laravel Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                 
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Laravel Training in Mohali" title="Laravel Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                    <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Laravel Training in Chandigarh" title="Laravel Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Laravel Training in Chandigarh" title="Laravel Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/ThinkNEXT-Frontdesk.webp" alt="Laravel Training in Chandigarh" title="Laravel Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                   <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Industrial Training Company in Chandigarh Mohali" title="6 Month Industrial Training Company in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/galleryjob-fair7.jpg" alt="Laravel Training in Chandigarh Mohali" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                    <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Laravel Training in Chandigarh" title="Laravel Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/page-5_img-4-b.jpg" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/THINKNEXT-b.jpg" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industial-training-in-chandigarh-group.webp" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>
                    
                             <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                      <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Laravel Training in Chandigarh" title="Laravel Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                </div>
        </div>


	</section>



	
	

    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

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
    <section class="py-3 d-none">
        <div class="container">
            <div class="col-lg-12">
               <h5>Top Search</h5>
               <a href="php-training.aspx">PHP Training</a>, <a href="learn-php.aspx">learn php</a>, <a href="php-learning-in-chandigarh.aspx">php learning</a>, <a href="php-classes.aspx">PHP class</a>, <a href="php-industrial-training.aspx">php industrial training</a>, 
                <a href="how-to-learn-php.aspx">how to learn php</a>, <a href="php-training-institute.aspx">php training institute</a>, <a href="php-course-syllabus.aspx">php course syllabus</a>, <a href="php-tutorial.aspx">php tutorial</a>,  
                <a href="php-programming-course.aspx">php programming course</a>, <a href="php-training-in-chandigarh.aspx">php training chandigarh</a>, <a href="php-internship-in-chandigarh.aspx">php internship</a>, <a href="php-training-course.aspx">php training course</a>, <a href="php-training-company-in-chandigarh.aspx">php training company in chandigarh</a>, <a href="http://thinkenglish.in" target="_blank">Best IELTS Coaching Institute in Chandigarh Mohali</a>, 
                <a href="php-industrial-training-in-chandigarh.aspx">php industrial training in chandigarh</a>, <a href="php-institute-in-mohali.aspx">php institute in mohali</a>, <a href="php-course-in-panchkula.aspx">php course in panchkula</a>, <a href="php-classes-in-chandigarh.aspx">php classes in chandigarh</a>,  <a href="top-10-companies-providing-php-training-in-chandigarh.aspx">Top 10 Companies Providing PHP Training  in Chandigarh</a>, <a href="top-5-php-training-institutes-chandigarh-mohali.aspx">Top 5 PHP Training Institute in Chandigarh Mohali</a>,  <a href="php-training-in-mohali.aspx">php training in mohali</a>, 
               <a href="php-cms-course-in-chandigarh.aspx">php cms course in chandigarh</a> <br /><br />
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
