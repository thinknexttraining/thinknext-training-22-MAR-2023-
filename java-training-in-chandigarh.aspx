<%@ Page Title="Java Training in Chandigarh" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="java-training-in-chandigarh.aspx.vb" Inherits="java_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="Java training in Chandigarh. ThinkNEXT is top java training company that provides Java training in Core and Advance Java, Java Course Coaching" />
    <meta name="keywords" content="Java Training in Chandigarh, Java Training in Mohali, Java Tutorial, Learn Java, Java Training in Panchkula." />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/Java-Training-course-in-Chandigarh-mob-min.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/Java-Training-course-in-Chandigarh-mob-min.jpg" />
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
        <img class="d-md-none" src="images/Java-Training-course-in-Chandigarh-mob-min.jpg" alt="Java Training Course in Chandigarh" title="Java Training Course in Chandigarh" />
        <img class="d-md-block d-none" src="images/Java-Training-course-in-Chandigarh-min.jpg" alt="Java Training Course in Chandigarh" title="Java Training Course in Chandigarh" />

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
                            <h1>Java Training in Chandigarh</h1>
                        </div>
                        <p class="text-danger fw-bold">Looking for the best institute for Java training in Chandigarh?</p>
                        <p class="text-primary fw-bold">If Yes, then </p>
                        <p class="text-primary fw-bold">Your search ends here. Finally, You are at the RIGHT PLACE </p>
                        <p class="text-primary fw-bold">“Best Java Classes in Chandigarh region and India”</p>
                        <p><strong>ThinkNEXT Technologies Private Limited</strong> is the best Company/Institute that carries expertise in delivering the <strong>best Java training in Chandigarh</strong> India. ThinkNEXT offers 6 months/3 months/6 weeks well-structured Java Course for candidates belonging to different colleges of B.Tech, Polytechnic Diploma, MCA, M.Sc. (IT), BCA etc.</p>
                        <p><strong>ThinkNEXT</strong> is a professional ISO 9001:2015 Certified <strong>Java Training Institute in Chandigarh</strong> with the top-notch infrastructure and lab facilities. <strong>ThinkNEXT</strong> is a <strong>6 time National Award Winner Company</strong> in the field of Industrial Training, Web Development and Digital Marketing.</p>
                        <p>With its sheer hardwork, dedication and aim to deliver top quality coaching all these years, <strong>ThinkNEXT</strong> continues to be NO.1 choice for <strong>Java training in Chandigarh</strong> among all other top notch companies.</p>
                        <p><strong>ThinkNEXT</strong> is having a highly expertized and experienced team consisting of more than 10 professionals, who will train you to the core with detailed information about the basics and then onto the next level. The team is highly goal oriented towards making the students best in the field they choose to opt for and to accomplish good things.</p>
                        <p><strong>ThinkNEXT’s</strong> advanced <strong>Java Course in Chandigarh</strong>, provides detailed expertise with basics, advanced topics and Frameworks like hibernate, Struts, Springs. Syllabus will be fully covered under the given period of time with regular evaluations of performances in class and 100% practical knowledge and guaranteed certification.</p>
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

    <section class="py-4 bg-ececec">
        <div class="container">
            <div class="row m-0 p-2 align-items-center">
                <div class="col-lg-6">
                    <div class="position-sticky top-0">
                        <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/0pP7imTPlPI" data-bs-target="#VideoModal">
                            <img class="w-100" src="https://i.ytimg.com/vi_webp/0pP7imTPlPI/maxresdefault.webp" alt="Java Training in Chandigarh">
                            <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/0pP7imTPlPI" data-bs-target="#VideoModal"></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 text-justify">
                    <div class="position-sticky top-0">

                        <h4 class="mb-3 h3 text-danger"><strong>Future scope and Career opportunities</strong></h4>
                        <p>
                            Java is one of the most crucial developments in the IT sector, with a never ending demand. There is no future of technology without java.
                        </p>

                        <ul class="welcomeLinks">
                            <li>There is a lot to explore in java. Java is the fastest growing computer language in the world, nearly providing employment to more than one fourth of the population.</li>
                            <li>It is a highly secured programming language. Experts in the Java field are getting paid about 100,000 to 500,000 monthly on a starting basis.</li>
                            <li>A large proportion of multinational companies are hunting for Java professionals around the world.  </li>
                            <li>Huge firms like Infosys, IBM, Microsoft, Google, Linkedin and many more are desperately looking for java professionals and offering high salary packages.</li>
                        </ul>


                    </div>
                </div>


            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Java Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Java Training in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="45 Days Java Training in Chandigarh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Java Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Summer Training Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Java Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Java Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-1.jpg" alt="45 Days Java Training in Chandigarh" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-7 text-justify">
                    <h2 class="text-danger fw-bold">About Java </h2>
                    <p>
                        Entry to Java, is entry to the technological world itself, renowned for its security, quick performance and high reliability. Java is a language designed in the shadow of C++, but simpler to use
                    </p>
                    <p>It can be used to create different types of applications that can run on a variety of computers and other devices as well. From designing to adding features to testing beta versions to releasing in market, everything is under the java language. Over the period of time, it has been re-developed, refined and continuously evolving. It works as a key tool towards development of high performance apps, to be used on a wide range of computing platforms. It has proved itself to be an undeniable asset, improvising along the way, motivating coders to develop their code time after time, breaking limitations and promoting competitive spirit and earning its name throughout the globe. </p>


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


    <section>
        <div class="row m-0">
            <div class="col-md-6" style="background: #060e1e">
                <div class="p-4">
                    <h4 class="text-warning h3"><strong>Why Choose Java?</strong></h4>
                    <ul class="checklist fw-bold text-justify text-white">

                        <li>Java is broadly used all over the world and is the basic code to create an application.</li>
                        <li>Easy to learn and a highly interesting language</li>
                        <li>Helps in creating dynamic applications, easy to use and giving high profits</li>
                        <li>Job offers in Java is ranks the highest in India, top companies like Infosys, Microsoft, Google, IBM and Facebook offer high salary packages for people in coding field like Java</li>
                        <li>It has a very high scope in the future than any other language. </li>
                        <li>It is everywhere; the working of the entire world is dependent on Java.</li>


                    </ul>

                </div>
            </div>
            <div class="col-md-6" style="background: #409292;">
                <div class="p-4">
                    <h4 class="h3" style="color: #fff5ab;"><strong>Benefits of learning Java</strong></h4>
                    <p class="text-white"><strong>Everything can be done under java, every application ever built, primarily because of java.</strong></p>
                    <ul class="squarelist fw-bold text-justify text-white">
                        <li>It is the most widely used computer language in the world. A person with experience in Java, is capable enough to work in any part of the world.</li>
                        <li>Being the most important language in the world, it has a very strong hold on the community.</li>
                        <li>It is one of the fastest languages in the world with a high priority standard and multi threat programming.</li>
                        <li>Post 2020, the importance of java has touch enormous heights because of the versatility it offers to the world and its extremely powerful hold on the digital world.</li>

                    </ul>
                </div>
            </div>

        </div>
    </section>


    <section class="py-5" style="background: #eaefff;">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                     <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/72elO5SFESE" data-bs-target="#VideoModal">
                        <img class="w-100" src="https://i.ytimg.com/vi_webp/72elO5SFESE/maxresdefault.webp" alt="Java Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/72elO5SFESE" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                     <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="https://i.ytimg.com/vi_webp/mgQy9ZCqc50/maxresdefault.webp" alt="Java Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>                                       
                </div>

            </div>

        </div>
    </section>


    <section class="py-5">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Java Industrial Training - Course Contents</strong></h3>
            </div>
            <br>
            <div class="row">

                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">Introduction</strong>


                    <ul class="welcomeLinks">
                        <li>Why Java </li>
                        <li>Paradigms </li>
                        <li>Diff b/w Java & Other (C,C++) </li>
                        <li>Java history </li>
                        <li>Java features </li>
                        <li>Java First Program </li>

                    </ul>

                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">
                    <strong class="textred">Language Fundamentals</strong>

                    <ul class="welcomeLinks">
                        <li>Identifiers </li>
                        <li>Reserved Words </li>
                        <li>Data Types </li>
                        <li>Literals </li>
                        <li>Type of variables </li>
                        <li>Arrays </li>
                        <li>main method </li>
                        <li>var-arg method </li>
                        <li>Command Line arguments </li>
                        <li>Java coding Standards </li>
                    </ul>


                </div>
                <div class="col-lg-3 col-md-4 mt-3 text-justify">
                    <strong class="textred">Operators & Assignments </strong>


                    <ul class="welcomeLinks">
                        <li>increment & decrement operators </li>
                        <li>arithmetic operators </li>
                        <li>string concatenation operators </li>
                        <li>Relational operators </li>
                        <li>Equality operators </li>
                        <li>Bitwise Operators </li>
                        <li>Logical operators </li>
                        <li>instance of operators </li>
                        <li>assignment operators </li>
                        <li>new operators </li>
                    </ul>


                </div>

                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">Flow Control</strong>

                    <ul class="welcomeLinks">
                        <li>Introduction </li>
                        <li>Selection Statements </li>
                        <li>Iterative statements</li>
                        <li>Transfer statements  </li>


                    </ul>
                    <div class="mt-4">
                        <strong class="textred">Declaration and access control</strong>

                        <ul class="welcomeLinks">
                            <li>Introduction</li>
                            <li>java source file structure</li>
                            <li>class modifiers</li>
                            <li>member modifiers</li>

                        </ul>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">

                    <strong class="textred">Interface and Abstract Class</strong>

                    <ul class="welcomeLinks">
                        <li>Introduction </li>
                        <li>declaring interface </li>
                        <li>interface methods </li>
                        <li>interface variables </li>
                        <li>naming conflicts in interface </li>
                        <li>declaring abstract class </li>
                        <li>declared methods </li>
                        <li>define variables </li>


                    </ul>


                </div>

                <div class="col-lg-3 col-md-4 mt-3 text-justify">
                    <strong class="textred">Keywords</strong>
                    <ul class="welcomeLinks">
                        <li>this </li>
                        <li>super </li>
                    </ul>
                    <div class="mt-4">
                        <strong class="textred">String Manipulations</strong>
                        <ul class="welcomeLinks">
                            <li>String </li>
                            <li>String Buffer</li>
                            <li>String Tokenizer </li>
                        </ul>
                    </div>

                </div>





                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">OOPS</strong>

                    <ul class="welcomeLinks">
                        <li>Class </li>
                        <li>Object </li>
                        <li>data hiding </li>
                        <li>Abstraction </li>
                        <li>Encapsulation </li>
                        <li>Pure Encapsulated Class </li>
                        <li>Polymorphism </li>
                        <li>Over Loading </li>
                        <li>Over Riding </li>
                        <li>Constructors </li>
                        <li>Is A Relationship(Inheritance) </li>
                        <li>Has A Relationship </li>
                        <li>Instance Control flow </li>
                        <li>Static control flow </li>
                        <li>Method hiding </li>
                        <li>Type Casting </li>
                    </ul>


                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">

                    <strong class="textred">Exception Handling</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction </li>
                        <li>Real time Stack Mechanism </li>
                        <li>Default Exception Handling </li>
                        <li>Exception Hierarchy </li>
                        <li>Customized Exception Handling by using try-catch </li>
                        <li>Control flow in try-catch </li>
                        <li>Methods to print Exception Information </li>
                        <li>try with Multiple catch block </li>
                        <li>finally blocks </li>
                        <li>difference between final & finally & finalized </li>
                        <li>control flow in try catch and finally </li>
                        <li>various combinations of try catch finally </li>
                        <li>throw keywords </li>
                        <li>throws keywords </li>
                        <li>Top 10 Exceptions </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 mt-3 text-justify">



                    <strong class="textred">Packages</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction to all predefined package </li>
                        <li>User Defined Packages </li>
                        <li>Access Specifiers </li>

                    </ul>
                    <div class="mt-4">
                        <strong class="textred  ">Multi Threading</strong>
                        <ul class="welcomeLinks">

                            <li>Introduction </li>
                            <li>Defining Instantiating starting the Thread </li>
                            <li>Getting and Setting name of the Thread </li>
                            <li>Thread Priorities </li>
                            <li>Method to prevent Thread Execution </li>
                            <li>Synchronized</li>
                            <li>Inter Thread Communication </li>
                            <li>Deadlock </li>
                            <li>Demon Thread</li>
                        </ul>
                    </div>
                </div>


                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">I/O Streams</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction </li>
                        <li>File </li>
                        <li>FileReader and FileWriter </li>
                        <li>BufferWriter and BufferReader </li>
                        <li>PrintWriter </li>
                        <li>Serialization </li>
                    </ul>
                    <div class="mt-4">
                        <strong class="textred">Wrapper Classes</strong>
                        <ul class="welcomeLinks">
                            <li>Introduction </li>
                            <li>Byte, Short, Integer, Long, Float, Double, Character, Boolean classes. </li>

                        </ul>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">

                    <strong class="textred">Collection Frame Work</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction </li>
                        <li>Util Package interfaces, List, Set, Map</li>
                        <li>List interface</li>
                        <li>Set interface</li>
                        <li>Map interface</li>
                        <li>Property</li>
                        <li>Hashtable</li>
                        <li>Curser</li>
                        <li>Comparable</li>
                        <li>Comparator</li>
                        <li>Arrays</li>
                        <li>Collections</li>

                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 mt-3 text-justify">
                    <strong class="textred">Inner Classes</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction</li>
                        <li>Member inner class</li>
                        <li>Static inner class</li>
                        <li>Local inner class</li>
                        <li>Anonymous inner class</li>
                    </ul>

                    <div class="mt-4">
                        <strong class="textred">Swings(JFC)</strong>
                        <ul class="welcomeLinks">
                            <li>Introduction Diff b/w awt and swing</li>
                            <li>Components hierarchy</li>
                            <li>Panels</li>
                            <li>Individual Swings components Jlabel</li>
                            <li>JButton, JTextField, JTextAres.</li>
                        </ul>
                    </div>

                </div>

                <div class="col-lg-5 col-md-4 mt-3 text-justify">
                    <strong class="textred">Java Regex API and Reflection API</strong>
                    <div class="mt-4">

                        <strong class="textred">JSP </strong>
                        <ul class="welcomeLinks">
                            <li>Introduction</li>
                            <li>Jsp LifeCycle</li>
                            <li>Jsp Implicit Objects & Scopes</li>
                            <li>Jsp Directives</li>
                            <li>page</li>
                            <li>include</li>
                            <li>taglib</li>

                        </ul>
                        <strong class="textred">Jsp Scripting Elements</strong>
                        <ul class="welcomeLinks">
                            <li>declaratives</li>
                            <li>scriptlets</li>
                            <li>expressions</li>
                        </ul>
                    </div>
                </div>


                <div class="col-lg-4 col-md-4 mt-3 text-justify">

                    <strong class="textred">JSP Actions</strong>
                    <ul class="welcomeLinks">
                        <li>Standard Actions</li>
                        <li>useBean  tag</li>
                        <li>setProperty tag</li>
                        <li>getProperty tag</li>
                        <li>include  tag</li>
                        <li>forward  tag</li>
                        <li>param  tag</li>
                        <li>plug-in  tag</li>
                        <li>params tag</li>
                        <li>fallback tag</li>
                        <li>directives tag</li>
                        <li>scriptlet tag</li>
                        <li>expression tag</li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 mt-3 text-justify">
                    <strong class="textred">Servlets</strong>
                    <ul>
                        <li>Servlet Interface</li>
                        <li>Servlet Life Cycle</li>
                        <li>Servlet Config</li>
                        <li>Servlet Context</li>
                        <li>Servlet Communication</li>
                    </ul>
                    <strong class="textred">Servlet-Browser Communication</strong>

                    <strong class="textred">Database Connectivity</strong>
                    <ul class="welcomeLinks">
                        <li>Statement</li>
                        <li>Prepared Statement</li>
                        <li>Callable Statement</li>
                        <li>Result Set</li>
                    </ul>
                    <strong class="textred">Project in Swings with MVC Pattern</strong>
                </div>



            </div>
        </div>
    </section>


    <section class="py-5 px-2 tstmnl-ytbe">
    <div class="container">
        <p class="h3 text-warning text-center"><strong>Student Testimonials</strong></p>
        <div class="row m-0">

               <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/wkv-cc_16qA" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/wkv-cc_16qA/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/wkv-cc_16qA" data-bs-target="#VideoModal"></span>
                </div>
            </div>

              <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/ps5hCDVpW7o" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/ps5hCDVpW7o/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/ps5hCDVpW7o" data-bs-target="#VideoModal"></span>
                </div>
            </div>
        
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/TCUFVA_IWv8" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/TCUFVA_IWv8/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/TCUFVA_IWv8" data-bs-target="#VideoModal"></span>
                </div>
            </div>    

             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/m-oaTzkSeFA" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/m-oaTzkSeFA/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/m-oaTzkSeFA" data-bs-target="#VideoModal"></span>
                </div>
            </div>    
           
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/t1TKtR-YbnI" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/t1TKtR-YbnI/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/t1TKtR-YbnI" data-bs-target="#VideoModal"></span>
                </div>
            </div> 
            
       
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/J03nEStF5MY" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/J03nEStF5MY/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/J03nEStF5MY" data-bs-target="#VideoModal"></span>
                </div>
            </div> 

               <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/PrCq2raHJf8" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/PrCq2raHJf8/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/PrCq2raHJf8" data-bs-target="#VideoModal"></span>
                </div>
            </div>    

             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/1Nyiu2RVhYU" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/1Nyiu2RVhYU/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/1Nyiu2RVhYU" data-bs-target="#VideoModal"></span>
                </div>
            </div> 
                  
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/inUBnY-8oRQ" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/inUBnY-8oRQ/maxresdefault.webp" alt="Java Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/inUBnY-8oRQ" data-bs-target="#VideoModal"></span>
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Java Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Java Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Java Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Java Training in Chandigarh">
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Java Training in Chandigarh" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Java Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Java Training in Chandigarh" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Java Training in Chandigarh" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Java Training in Chandigarh" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Java Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Java Training in Chandigarh" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Java Training in Chandigarh" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Java Training in Chandigarh" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Java Training in Chandigarh" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Java Training in Chandigarh" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Java Training in Chandigarh" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Java Training in Chandigarh" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Java Training in Chandigarh" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Java Training in Chandigarh" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                   
<li>Java Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Java Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Java Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
<li>Industrial Training/Internship from 11+ Years old company</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Java Training in Chandigarh" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Java Training in Chandigarh" title="Java Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>

    <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

 

    <section class="py-5">
        <div class="container">
            <div class="faq">
                <h4 class="h3 fw-bold mb-4 text-danger">FAQ’S</h4>
                <div>
                    <h4 class="fw-bold">Q1. What do you think are the advantages of using Java? </h4>
                    <p><strong>Ans.</strong> Java is a high-level object-oriented programming language used for developing games, device systems, and applications throughout the world. It is very secure, quick, reliable, portable and platform independent. It can be used in creating any type of application.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q2. Will I be getting a certification after completing my course? </h4>
                    <p><strong>Ans.</strong> Yes, you will be getting a 100% authentic certification after completing your course and the certificate will be applicable all over the world.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q3. Java courses are very expensive nowadays, how will I afford one? </h4>
                    <p><strong>Ans.</strong> ThinkNEXT offers java programming courses at an optimum price, so that the student is not pressurized by the unending expenses and can focus more on studies and performance in class.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q4. How is the teaching faculty and other staff?</h4>
                    <p><strong>Ans.</strong> The teaching staff and the other faculty comprises of professionals, teachers themselves having an elite record in their subject with national recognition.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q5. Can this course be taken online?</h4>
                    <p><strong>Ans.</strong> Yes, this course can be taken online and full support of teachers will be provided with extra doubt sessions and individual attention as well.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q6. Do I need to carry my own laptop with me if I opt for this session?</h4>
                    <p><strong>Ans.</strong> We suggest everyone carry their own devices for the purpose of maintaining hygiene and privacy. However, if you don’t have one, don’t worry, we will allocate a system to you.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q7. Do I need any other specific skills before joining the course?</h4>
                    <p><strong>Ans.</strong> Besides basic knowledge about how to use a computer and the search engine, no other additional skill is required to pursue this course. We will teach you everything from basic to advanced level.</p>
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
