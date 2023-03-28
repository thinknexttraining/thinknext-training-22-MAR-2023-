<%@ Page Title="Internship in Chandigarh for MCA - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="mca-Internship.aspx.vb" Inherits="stipend_based_industrial_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <meta name="description" content="Internship in Chandigarh for MCA - ThinkNEXT offers a MCA management program for students or a free  6 months, 3 months, or 6 weeks Internship Program  " />
        <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="main-image">  
   <img src="images/internship-in-chandigarh-for-mca.jpg"  alt="Internship in Chandigarh for MCA" title="Internship in Chandigarh for MCA" />
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
                <h1>MCA Internship in Chandigarh Mohali</h1>

                <p class="mb-1"><strong class="textred">Are you interested in Internship for MCA Students in Chandigarh Mohali with Certificate?</strong> </p>
               

                <p class="mb-1"><strong class="text-primary">If Yes, then</strong> </p>
                <p class="mb-1"><strong class="text-primary">Your search ends here. Finally, You are at the RIGHT PLACE</strong> </p>
                <p class="mb-1"><strong class="text-primary">You are at ThinkNEXT Technologies Private Limited </strong> </p>
                <p class="mb-1"><strong class="text-primary">&nbsp; -Biggest brand for MCA Internship</strong> </p>
                <p><strong class="text-primary">&nbsp; -Best Internship in Chandigarh Mohali for MCA</strong> </p>
                <div class="text-justify">
                    <p>ThinkNEXT Technologies Pvt. Ltd. is a professional ISO 9001:2015 certified company driven by a passion to provide the <strong>best Internship for MCA students in Chandigarh Mohali</strong>. </p>
                    <p>Join <strong>Stipend Based/Free MCA Internship in Chandigarh Mohali</strong>, conducted by certified professionals having 10+ years of experience in both online/offline modes. ThinkNEXT will provide you an opportunity to work with the team of our Software Developers under the guidance of Project Managers.</p>
                    <p>Interns will be offered with a deep understanding and development of several programming languages and database like Digital Marketing, Web Designing, Android, Java, PHP, Dot Net, Ethical Hacking, Cyber Security, Python, Machine Learning, Data Science, Artificial Intelligence, Big Data, Cloud Computing, IoT, Networking, CCNA etc. in our MCA internship program. Once you learn the language and database, you will put on the project.</p>
                    
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
                                    <img src="images/download_brochure.png" alt="Free Online Internship with Certificate">
                                </a>

                            </div>
                        </div>

                      <div class="py-3 px-4 bg-black" id="regform">
                        <h3 class="text-white text-center"><strong>Arrange a Call Back</strong></h3>
                        <div class="mt-3">
                           <asp:Label ID="lblmsg" runat="server" ></asp:Label>

                            <div class="form-group mb-0">
                               <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="arrangecallbackGroup1" ></asp:RegularExpressionValidator>                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name First" Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-0">
                                 <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No." ></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile No." Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-0">
                               <asp:TextBox ID="txtEmailId"  runat="server" class="form-control" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>                           
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Enter EmailID" Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                            </div>
                                        
                            <div class="form-group text-center">
                                <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

                            </div>
                        </div>
                    </div>

                           </div>
                </div>

                  <div class="col-md-12 ">
                      <div class="text-justify">
                          <p>Our main focus is to provide the students with hand on experience on Live Projects and to make them well verse with the different cycles of Software Development.</p>
                         <p>ThinkNEXT is felicitated <strong>6 times with the National Awards</strong> in the field of Industrial Training, Web Development & Digital Marketing.</p>
                          <p>Join ThinkNEXT today for <strong>MCA Internship in Chandigarh Mohali</strong> and start your legacy!</p>
                      </div>
                      </div>
            
                </div>
        </div>
    </section>

    <section class="bg-ececec py-4">
        <div class="container">
            <div class="text-justify">
                <h2 class="text-danger"><strong>6 Months/3 Months/6 Weeks Internship for MCA Students in Chandigarh Mohali</strong></h2>
               ThinkNEXT Technologies Private Limited provides the <strong>best 6 months/3 months/6 weeks internship</strong> opportunity to MCA students in Chandigarh Mohali in various techniques and technologies so that you could build your IT career.</p>

              <div class="row">

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="digital-marketing-course-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/digital-marketing-internship-course-min.jpg" alt="Digital Marketing Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="digital-marketing-course-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">Digital Marketing</a></div>
                            </div>
                    </div>


                    <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="web-designing-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/web-designing-internship-course-min.jpg" alt="Web Designing Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="web-designing-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">Web Designing</a></div>
                            </div>

                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="php-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/php-web-development-course-min.jpg" alt="PHP Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="php-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">PHP Web Development</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="Android-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/android-app-development-course-min.jpg" alt="Android App Development Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="Android-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">Android App Development</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="java-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/java-interntern-training-course-min.jpg" alt="Java Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="java-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4"> Java</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="python-training-in-chandigarh-mohali.aspx"><img class="border-bottom border-1 border-secondary" src="images/python-internship-course-min.jpg" alt="Python Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="python-training-in-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">Python</a></div>
                            </div>
                    </div>

                    
                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx"><img class="border-bottom border-1 border-secondary" src="images/machine-learning-using-python-internship-min.jpg" alt="Machine Learning Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">Machine Learning</a></div>
                            </div>
                    </div>

                    
                   <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="data-science-with-python-course-training-chandigarh-mohali.aspx"><img class="border-bottom border-1 border-secondary" src="images/data-science-using-python-internship-min.jpg" alt="Data Science Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="data-science-with-python-course-training-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">Data Science</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="mean-stack-course-training-chandigarh-mohali.aspx"><img class="border-bottom border-1 border-secondary" src="images/mean-stack-internship-course-min.jpg" alt="MEAN Stack Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="mean-stack-course-training-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">MEAN Stack</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="mern-stack-development-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/mern-stack-internship-course-min.jpg" alt="MERN Stack Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="mern-stack-development-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">MERN Stack</a></div>
                            </div>
                    </div>

                      <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="reactjs-training-course-chandigarh-mohali.aspx"><img class="border-bottom border-1 border-secondary" src="images/reactjs-internship-course-min.jpg" alt="ReactJS Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="reactjs-training-course-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">ReactJS</a></div>
                            </div>
                    </div>

                    
                      <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="c-and-c-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/c-and-c-plus-internship-course-min.jpg" alt="C and C++ Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="c-and-c-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">C/C++</a></div>
                            </div>
                    </div>


                   <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="software-testing-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/software-testing-internship-course-min.jpg" alt="Software Testing Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="software-testing-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">Software Testing</a></div>
                            </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="networking-training-in-chandigarh.aspx"><img class="border-bottom border-1 border-secondary" src="images/hardware-networking-internship-course-min.jpg" alt="Networking Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="networking-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">Hardware and Networking</a></div>
                            </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="ethical-hacking-training-in-chandigarh-mohali.aspx"><img class="border-bottom border-1 border-secondary" src="images/ethical-hacking-internship-course-min.jpg" alt="Ethical Internship in Chandigarh Mohali"></a></div>
                        <div class="p-3 text-center"><a href="ethical-hacking-training-in-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">Ethical Hacking</a></div>
                            </div>
                    </div>

                </div>

                <br />
               Programming knowledge and skills are well nurtured in our <strong>MCA internship program</strong> for the long and progressive career of the students. </p>

                <ul class="welcomeLinks mt-3">
    <li>Get complete core knowledge of fundamental principles of science and engineering</li>
<li>Get ThinkNEXT Certification after completion of <strong>MCA Internship Program</strong></li>
<li>Get your desired job with the help of ThinkNEXT Certificatecate</li>
<li>Experience the company’s professional work atmosphere</li>
<li>Development of important skills such as good technical knowledge, management, leadership and entrepreneurship skills</li>
<li>Get a chance to witness how the companies actually work </li>

  
          </ul>
     
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" />
                </div>

            </div>
        </div>
    </section>
    <section class="py-4">
        <div class="container">
                        <div class="d-none d-md-block">
                <div>
                    <img src="images/free-internship-certificate-online-award13.jpg" alt="Free online internship" />
                </div>
                <div>
                    <img src="images/free-internship-certificate-online-award12.jpg" alt="Free online internship" />
                </div>
                <div>
                    <img src="images/free-internship-certificate-online-award.jpg" alt="Free online internship" />
                </div>
            </div>
             <div class="d-md-none">
                   <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award6.jpg" alt="Free online internship" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award5.jpg" alt="Free online internship" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award4.jpg" alt="Free online internship" />
        </div>
              <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award3.jpg" alt="Free online internship" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award2.jpg" alt="Free online internship" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award1.jpg" alt="Free online internship" />
        </div>
                 </div>
        </div>
               </section>




    <section class="bg-dark py-4">
        <div class="container">
            <div class="text-white">
                    <h3 class="text-warning"><strong>Eligibility for enrollment in MCA Internship program</strong></h3>
                <p>Any graduate candidate who is pursuing or has pursued an MCA professional degree is eligible for <strong>6 months/3 months/6 weeks MCA internship</strong>.</p>

                <h4 class="text-warning"><strong>Internship Program for MCA Jobs In Chandigarh Mohali</strong></h4>
                <ul class="welcomeLinks">
                    <li><strong>MCA Internship</strong> provides a real life experience and exposure for the students on the latest and trending technologies in the core companies.</li>
                    <li>Below given are some of the most popular job profiles after <strong>MCA Internship in Chandigarh Mohali</strong>:
                        <ul>
						<li><i class="fa fa-hand-o-right"></i>&nbsp; Web Application Developer</li>
							<li><i class="fa fa-hand-o-right"></i>&nbsp; Web Designers</li>
							<li><i class="fa fa-hand-o-right"></i>&nbsp; Digital Marketers</li>
         <li><i class="fa fa-hand-o-right"></i>&nbsp; Software Developers – Good in Python, Machine Learning, Data Science and AI programming</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; BlockChain Administrators</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; IOT Specialists</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Cyber Security</li>

<li><i class="fa fa-hand-o-right"></i>&nbsp; Information Security Analyst – Security Specialist</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Network Engineers / Analyst</li>



                        </ul>
                    </li>

                </ul>

            </div>
        </div>

    </section>



    <section class="bg-dark py-4 d-none">
        <div class="container">
            <div class="row">
                 <div class="col-lg-7 text-justify text-white">
           <div class=" position-sticky top-0">
            <h3 class="text-warning"><strong>What is Online Internship? </strong></h3>
            <div class="text-justify">
                 <p>An online internship is a work experience program where an intern gains hands-on experience while working in a remote professional setting and is not physically present at the job address.</p>
                 <p>Online interns communicate with
                     their supervisor online through various means including email, Skype, Whatsapp, instant messaging, phone conversations, webinars, project management tools, SMS messaging, etc.</p>
                <p class="text-warning">Also read <a href="internship-in-chandigarh.aspx" class="text-white">Internship in Chandigarh Mohali</a></p>
            </div>
               </div>

                </div>

                  <div class="col-lg-5 text-justify">
                          <div class="position-sticky top-0">
                      <img src="images/what-is-online-internship.jpg" alt="Free Online Internship with Certificate" title="What is Online Internship" />
                      </div>
                          </div>
               
            <div class="col-lg-12 text-justify d-none">
                                                 
                      <div class="py-3 px-4 bg-light">
                          <h3 class="text-center"><strong>Book My Free Demo Class Now!</strong></h3>
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
                                  <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-dark text-white px-3 h4" Text="Book Now" />

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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="MCA Internship in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="MCA Internship in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="MCA Internship in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="MCA Internship in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="MCA Internship in Chandigarh" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="MCA Internship in Chandigarh" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="MCA Internship in Chandigarh" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="MCA Internship in Chandigarh" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="MCA Internship in Chandigarh" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="MCA Internship in Chandigarh" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="MCA Internship in Chandigarh" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="MCA Internship in Chandigarh" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 30 reasons why you should join ThinkNEXT for MCA Internship in Chandigarh Mohali</strong></h4>
            
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                   
<li>MCA Internship from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>MCA Internship from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during MCA training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>MCA Internship from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
<li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
<li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
<li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
<li>Free online courses for class-room/offline students undergoing MCA Training/Internship</li>
<li>Get MCA Training/Internship in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
<li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
<li>Guaranteed Job Interviews and 100% Placement Assistance</li>
<li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
<li>Training on Live-Projects </li>
<li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
<li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
<li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
<li>MCA Internship from 10+ Years old company</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="MCA Internship in Chandigarh" title="MCA Internship in Chandigarh" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>
	
    


    <section class="py-5 d-none">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-justify">
                    <h3 class="text-warning"><strong>FAQs</strong></h3>
                    <h4><strong>Q1. Do I need previous work experience for online free internship certificate program?</strong></h4>
                    <p><strong>Ans.</strong> ThinkNEXT’s <strong>free online internship with certificate program</strong> has been designed to give all students the opportunity to begin their career exploration journey while developing work experience and a professional network. To join the program you will not need previous work experience as our free online internship with certificate  program is developed to provide you all the support you need during the program, and will help you create your CV  to set you on the path to future work experience. </p>
                    <h4><strong>Q2. What’s the overall interview process for free internship certificate online?</strong></h4>
                    <p><strong>Ans.</strong> The <strong>free internship with certificate</strong> online recruitment process commences with an initial resume screening as roles become available. Depending on available roles, you may receive a follow-up survey. This information is then sent to the recruiting team for evaluation, and if roles match with your specialized skills, the recruiting team will reach out to you directly to schedule phone interviews.  </p>
                    <h4><strong>Q3. How long after I apply will I hear back from the recruiting team?</strong></h4>
                    <p><strong>Ans.</strong> There’s not just one process or experience; timing can vary and is based on role availability. The basic process begins with an initial resume screen as roles become available. Depending on available roles and the opportunity you applied for, you may get a follow-up survey. </p>
                    <h4><strong>Q4. Can I be considered for all of them if I’ve applied for multiple roles?</strong></h4>
                    <p><strong>Ans.</strong> Yes, all applications are assessed for all open internship opportunities. If we feel your skills align with a role other than the one to which you applied, we’ll reach out to you.</p>
                </div>
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
