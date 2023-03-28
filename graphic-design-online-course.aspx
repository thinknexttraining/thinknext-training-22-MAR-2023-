<%@ Page Title="Graphic Design Online Course - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="graphic-design-online-course.aspx.vb" Inherits="online_graphic_design_course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
   <meta name="description" content="Graphic Design Online Course  - Join Digital Marketing Certificate Program Online at ThinkNEXT and learn Digital Marketing Online from the biggest brand.">
   <meta name="keywords" content="Digital Marketing Online Course, digital marketing courses online, best online digital marketing courses, digital marketing training online, best online marketing courses, learn digital marketing online, online marketing courses with certificates, digital marketing classes online, digital marketing certificate programs online">
    <link rel="canonical" href="https://www.thinknexttraining.com/digital-marketing-online-course.aspx" />
    
    <!-- Facebook sharing image show  --> 
    <meta property="og:title" content="Graphic Design Online Course">
<meta property="og:site_name" content="Online Digital Marketing Course - ThinkNEXT">
<meta property="og:url" content="https://www.thinknexttraining.com/digital-marketing-online-course.aspx">
<meta property="og:description" content="Graphic Design Online Course - Join Digital Marketing Certificate Program Online at ThinkNEXT and learn Digital Marketing Online from the biggest brand.">
<meta property="og:type" content="website">
<meta property="og:image" content="http://www.thinknexttraining.com/share-images/digital-marketing-course.jpg">
 <link rel="image_src" href="http://www.thinknexttraining.com/share-images/digital-marketing-course.jpg" />
 <meta property="og:image:width" content="600" />
 <meta property="og:image:height" content="315" />
    <!--  End// Facebook --> 

<style>
   
      
    .thinknextwhy {
         background: #060e1e;
     background-size: cover;
    }

  
 .whythinknext {
    display: table-cell;
    color: white;
    padding: 45px;
    background-size: cover;
} 

      .faq ul{
        font-size:17px;
    }
      .faq h3{
          color:#000;
          font-size:19px;
      }
      
   
    @media screen and (max-width: 768px) {
     
        .whythinknext p span {
            width: 90%;
        }

         .main-head {
            font-size: 30px;
        }
    }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <section class="py-5" style="background-image: url('images/technology-blue-background.jpg'); background-size: cover;">
        <div class="container">
           <div class="row m-0  pt-md-5 mt-md-5">
                <div class="col-lg-8 col-md-7 text-justify">
                    <div class="mb-3"><span class="bg-info plr-20 ptb-10">Certified Training</span></div>
                    <h2 class="fa-5x text-white main-head text-start"><strong>Graphic Design Online Course </strong></h2>
                    <div class="bg-warning p-1"></div>
                    <br />
                    <p class="text-white"><strong>Become Graphic Design Expert and Boost your Career. Enroll Now </strong></p>
                     <br />
                    <div class=" row pd-0 ">
                        <div class="col-4 col-lg-2 text-center">
                            <p><strong class="bg-white pd-10 img-rounded"><span><i class="fa fa-star text-orange"></i> 4.9</span></strong></p>
                            <br />
                        </div>
                        <div class="col-8 col-lg-4 text-center">
                            <p><strong class="bg-white pd-10 img-rounded"><span><i class="fa fa-users text-orange"></i> 4,032  Enrolled</span></strong></p>
                             <br />
                        </div><div class="col-12 col-lg-6 text-center">
                            <p><strong class="bg-white pd-10 img-rounded"><span><i class="fa fa-handshake-o text-orange"></i> Placement Assistance</span></strong></p>
                            <br />
                        </div>
                        
                    
                    </div>
     
                </div>

                 <div class="col-lg-4 col-md-5">
                    <div class="bg-warning px-2 py-3 rounded">
            <div class="w-100 border-0">
                <h4 class="text-dark fw-bold text-center">Download Syllabus</h4>
                <p class="text-center mb-4">Fill up the below form and you will get the complete course syllabus</p>

                <asp:Label class="label5" ID="Label5" runat="server"></asp:Label>
                <asp:Label ID="msg" runat="server" Visible="false" Text="" CssClass="text-danger"></asp:Label>
                <div class="row m-0">
                    <div class="col-12 mb-4">
                        <asp:TextBox ID="NameSyl" runat="server" class="form-control" placeholder="Your Name*"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="DSyllabusValidatorName" CssClass="text-danger position-absolute" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Name"  ControlToValidate="NameSyl" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="DSyllabusGroup1" ></asp:RegularExpressionValidator>                            
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


            </div>

        </div>
    </section>
    <section class="pd-20">
        <div class="container">

            <div class="row">
                <div class="col-md-7">
                    <div class="text-justify position-sticky top-0">
                     <h1>Online Graphic Designing Course</h1>
                
                <p><strong class="heading-red">Are You Looking for an Online Graphic Design Course?</strong></p>
                        <p><strong class="heading-red">Are You Looking for an Online Graphic Design Course with Certification?</strong></p>               
                <p><strong class="text-primary">If Yes, then</strong></p>
                <p><strong class="text-primary">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                <p><strong class="text-primary">You are at ThinkNEXT Technologies Private Limited </strong></p>
                <p><strong class="text-primary">&nbsp; -Biggest brand for the best Online Graphic Design Training</strong></p>                
                       <p><strong>ThinkNEXT Technologies Private Limited</strong> offers an <strong>online Graphic Design course</strong> where you can learn the best techniques to create stunning visual graphics. Our comprehensive <strong>Graphic Designing Online Course</strong> provides the perfect platform to gain the skills and knowledge required to <strong>become a successful graphic designer. </strong></p>
<p>Our certified team of <strong>Graphic Design</strong> experts teaches the course syllabus with up-to-date trends and technologies, in addition to providing numerous exercises, mock tests, hands-on sessions, and projects to ensure mastery of the relevant topics. </p>

                </div>
                    </div>
                <div class="col-md-5">
                    <div class="position-sticky top-0">
                          <div class="right_box margin-top">
                            <div class="without_border dwl1 text-center">
                                <div class="brochiframe" id="brochiframe">
                                    <iframe name="broucher"></iframe>
                                    <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()" />

                                </div>
                                <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher">
                                    <img src="images/download_brochure.png" alt="Online Digital Marketing Course" />
                                </a>

                            </div>
                        </div>
                    <div class="py-3 px-4 bg-black text-center ">
                            <h3 class="text-white text-center"><b>Arrange a Call Back</b></h3>
                            <div class="mt-3">

                                <asp:Label ID="lblmsg" runat="server"></asp:Label>

                                <div class="form-group">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"
                                        ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>


                                <div class="form-group text-center">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn bg-warning px-3 h4 w-100" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />
                                </div>
                            </div>



                        </div>
                        </div>

                </div>

            </div>
            <div class="col-lg-12 mt-3">                
            
               <p><strong>ThinkNEXT</strong> is an <strong>ISO 9001:2015</strong> certified and <strong>6 Times National Award Winning company </strong>that provides the highest quality live <strong>Graphic Designing Online course with Certification</strong> and combines theoretical knowledge with practical experience in Graphic Designing. </p>
<p>No matter your level of experience or knowledge, this <strong>certified Online Graphic Designing course</strong> is suitable for everyone. With the proper guidance and dedication, anyone can become an accomplished and successful Graphic Designer.</p>
                
            </div>
        </div>
    </section>


    <section class="py-4 training-highlights">

          <div class="container py-5">
            <h2 class="section-heading text-center mb-3"><strong>Training Highlights</strong></h2>
            <div class="row mx-auto">
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/learn-from-home.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                      
                        <div class="content-container">
                            <h4 class="title fw-bold">Learn from home</h4>
                            <p class="description">Stay safe indoors</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/video-tutorials.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Professional videos</h4>
                            <p class="description">Learn anytime, anywhere</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/projects.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Build projects</h4>
                            <p class="description">For hands-on practice</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/doubt-clearing.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Doubt clearing</h4>
                            <p class="description">Through Q&amp;A forum</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/beginner-friendly.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Beginner friendly</h4>
                            <p class="description">No prior knowledge required</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/weeks-access.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">6 weeks access</h4>
                            <p class="description">To the platform</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/downloadable-content.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Downloadable content</h4>
                            <p class="description">With lifetime access</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/placement-assistance.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Placement assistance</h4>
                            <p class="description">To build your career</p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 p-2">
                    <div class="item-container d-flex align-items-center">
                        <div class="image-container pd-10">
                            <img class="image" src="images/certificate-training.png" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" />
                        </div>
                        <div class="content-container">
                            <h4 class="title fw-bold">Certificate of Training</h4>
                            <p class="description">From ThinkNEXT Technologies</p>
                        </div>
                    </div>
                </div>
                            </div>
        </div>
          
            </section>

    
     
    <section class="ptb-20 bg-light ">
        <div class="container-fluid">
            <br />
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Online Digital Marketing Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Online Digital Marketing Course"  />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Online Digital Marketing Course"  />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Online Digital Marketing Course"  />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Online Digital Marketing Course" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Online Digital Marketing Course"  />
                </div>

            </div>
        </div>
    </section>
         
       

    

      
    <section class="bg-light pd-20">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-8 text-justify">
                    <h3 class="heading-red"><strong>What is Graphic Design?</strong></h3>
                   <p>Graphic design is the process of creating visual elements with the intention to communicate a message or inspire a reaction. Graphic designers work with various software and tools to create logos, posters, web designs, and other visual materials. Graphic design plays an integral role in the marketing and communication world and is an ever-evolving field. As digital technology evolves, so does graphic design and its career scope.</p>
                    <p>We mainly focus on providing personalized attention and the quality education for our students. Also, we aim to create a friendly and comfortable environment to work in, which helps our students to excel in their work.
</p>                  
                </div>
                <div class="col-md-4">
                    <div class="py-3 px-4 bg-black mb-3">
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

                            <div class="form-group d-none">
                                <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Message" />
                            </div>


                            <div class="form-group text-center">
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-warning px-3 h4" Text="Book Now" />

                            </div>
                        </div>
                    </div>
                </div>

               
                <div class="col-md-12 text-justify">
                    <p>ThinkNEXT&rsquo;s <strong>Digital Marketing Courses Online</strong> provides expertise in top 13 digital marketing domains - <a href="http://www.thinknexttraining.com/seo-training-in-chandigarh.aspx">Search Engine Optimization (SEO)</a>,&nbsp;<a href="https://tidm.in/smm-training-chandigarh">Social Media</a>, <a href="https://tidm.in/ppc-training-in-chandigarh">Pay Per Click (PPC),</a> Email Marketing, Google Analytics, YouTube Marketing, Growth Hacking, Affiliate Marketing, Blogging, Google Adsense, Conversion Optimization, Content, Influencer Marketing, Mobile, Online Reputation Management.</p>
                    <p>Finally, each and every topic will be covered practically with live projects and current industry trends.</p>
                    <p>ThinkNEXT provide the highest quality live<strong> digital marketing</strong> <strong>training online</strong> offered in the industry. With our&nbsp;<strong>digital marketing certificate programs online</strong>, our goal is to produce the exact same learning experience as in our traditional classroom based courses.</p>
                </div>
            </div>
        </div>
    </section>
    
    <div class="col">

    </div>
    
    <section style="background: #38b7be;" id="profiles" class="page py-4 px-2">
        <h2 class="elecronics"><strong>ThinkNEXT in Media</strong></h2>
        <div class="col-sm-12">
            <div class="row m-0">
                <div class="col-lg-8">

                    <div id="profile-grid" class="px-2 py-4 position-sticky top-0">
                        <h2 class="h2"><strong>Print Media</strong></h2>

                        <div class="row m-0 text-center">

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/mohali-sithith-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-honor-thumb.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award-chd.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-mohali.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Online Digital Marketing Course">
                                </a>
                            </div>




                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Online Digital Marketing Course">
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
       
            <br>
            <p class="hcntr"><span class="htitl"><a href="media.aspx" class="vgalry">View More</a></span></p>

        </div>

     

    </section>

    
      <section class="bg-light py-5">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/WCpCT22tiig" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Online Digital Marketing Course"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Online Digital Marketing Course"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Online Digital Marketing Course"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/mgQy9ZCqc50" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/top-15-reason-to-join-thinknext.jpg" alt="Online Digital Marketing Course"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain">
                <div id="video-view"></div>
            </div>
        </div>
    </section>

    
    <section class="pd-30">
        <div class="container">
            <h3 class="bg-primary p-3 text-center text-white"><strong>What will be the training syllabus?</strong></h3>
            <br />
            <div class="row m-0">
                <div class="col-md-6">

                    <ul class="welcomeLinks text-justify">
                        <li>Digital Marketing Fundamentals</li>
                        <li>User Experience</li>
                        <li>Website Planning &amp; Creation (WordPress)</li>
                        <li>Content Writing</li>
                        <li>Content Marketing</li>
                        <li>Influencer Marketing</li>
                        <li>Blogging</li>
                        <li>Search Engine Optimization</li>
                        <li>Google Analytics</li>
                        <li>Google Search Console</li>
                        <li>Google Business</li>
                        <li>Email Marketing</li>
                        <li>Online Reputation Management</li>
                        <li>Marketing Automation</li>
                        <li>Photo Making &amp; Editing</li>
                        <li>Video Making &amp; Editing</li>
                        <li>Social Media Optimization</li>
                        <li>Mobile Marketing</li>
                        <li>Search Engine Marketing (PPC, CPC, Paid search ads, Paid search advertising, Google ads and Bing ads)</li>
                        <li>Conversion Rate Optimization</li>
                        <li>Facebook Pixel</li>
                    </ul>

                </div>
                <div class="col-md-6">
                    <ul class="welcomeLinks text-justify">

                        <li>Google Tag Manager</li>
                        <li>App Store Optimization</li>
                        <li>E-commerce Marketing</li>
                        <li>Affiliate Marketing</li>
                        <li>Online Display Advertising</li>
                        <li>Bulk SMS</li>
                        <li>Various SEO/SMO Online Tools</li>
                        <li>Twitter Marketing</li>
                        <li>Facebook Marketing</li>
                        <li>Instagram Marketing</li>
                        <li>Linkedin Marketing</li>
                        <li>Whatsapp Marketing</li>
                        <li>YouTube Marketing</li>
                        <li>Pinterest Marketing</li>
                        <li>Growth Hacking</li>
                        <li>Google AdSense</li>
                        <li>Online Bidding/Freelancing</li>
                        <li>Lead Generation</li>
                        <li>Viral Marketing</li>
                        <li>Native Advertising &amp; Sponsored Content</li>
                        <li>Personality Development</li>
                        <li>Interview Preparation</li>
                    </ul>


                </div>
            </div>
        </div>
    </section>
    

                
         <section class="bg-dark py-5">
            <div class="container text-center">
                <div class="row">

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-users"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>97.99%</strong></h4>
                            <h5>CUSTOMER RETENTION</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-trophy"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>40+</strong></h4>
                            <h5>AWARDS</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-user-plus"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>300+</strong></h4>
                            <h5>CLIENTS</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-coffee"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>30+</strong></h4>
                            <h5>DAILY COFEE</h5>
                        </div>
                    </div>


                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-building"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>11+</strong></h4>
                            <h5>YEARS IN BUSINESS</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-inr"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>25 CR+</strong></h4>
                            <h5>BUDGET MANAGED</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-users"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>85+</strong></h4>
                            <h5>STRONG TEAM</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-certificate"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>20+</strong></h4>
                            <h5>AFFILIATIONS</h5>
                        </div>
                    </div>


                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-facebook"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>42K+</strong></h4>
                            <h5>FACEBOOK LIKES</h5>
                        </div>
                    </div>

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-instagram"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>39K+</strong></h4>
                            <h5>INSTAGRAM FOLLOWERS</h5>
                        </div>
                    </div>
                     

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-youtube"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>5K+</strong></h4>
                            <h5>YOUTUBE SUBSCRIBERS</h5>
                        </div>
                    </div> 

                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 my-3 my-md-4">
                        <div class="customers-icon">
                            <i aria-hidden="true" class="fa fa-google"></i>
                        </div>
                        <div class="text-white">
                            <h4 class="text-warning"><strong>1860+</strong></h4>
                            <h5>GOOGLE REVIEWS</h5>
                        </div>
                    </div>


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
                                    <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                    <img src="images/asia-quality-entreprenuership-award.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="images/award-image11.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                    <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                    <img src="/php-images/php-industrial-training.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                    <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                    <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>



                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                    <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Online Digital Marketing Course" title="Six Weeks Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/ThinkNEXT-Frontdesk.webp" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

               

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/galleryjob-fair7.jpg" alt="45 Days Online Digital Marketing Course" title="45 Days Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                    <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="6 Month Online Digital Marketing Course" title="6 Month Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/page-5_img-4-b.jpg" alt="Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/THINKNEXT-b.jpg" alt="45 Days Online Digital Marketing Course" title="45 Days Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industial-training-in-chandigarh-group.webp" alt="45 Days Online Digital Marketing Course" title="Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="45 Days Online Digital Marketing Course" title="Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="45 Days Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="45 Days Online Digital Marketing Course" title="Online Digital Marketing Course" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>


        </section>


        <!-- light-box modelBox -->
        <div class="modal fade modal-profile gallerylightbox" tabindex="-1" role="dialog" aria-labelledby="modalProfile" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" type="button" data-bs-dismiss="modal">X</button>
                        <h3 class="modal-title"></h3>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <!--/// End light-box modelBox -->

        <div class="modal fade gallerylightbox" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-bs-dismiss="modal">
                            <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive col-md-12" src="" />
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
        <!--/// End gallerylightbox modelBox -->


       
    <section class="py-5 px-3">
        <div class="container">
            <div class="">
                <div class="faq mt-0">
                    <h4 class="h3 fw-bold text-danger">Online Digital Marketing Training - FAQs</h4>

                    <div itemscope itemtype='https://schema.org/FAQPage'>
                        <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                            <h3 itemprop='name'>Q 1. Do I have to be a ThinkNEXT student to take digital marketing online course?</h3>
                            <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                <div itemprop='text'>
                                    <p><strong>Ans.</strong> No, our digital marketing online training programs are open to everyone in India </p>
                                </div>
                            </div>
                        </div>

                        <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                            <h3 itemprop='name'>Q 2. Who can join digital marketing online courses at ThinkNEXT?  </h3>
                            <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                <div itemprop='text'>
                                    <p><strong>Ans. </strong>Students, professionals, freelancers, homepreneurs, entrepreneurs, irrespective of their diverse backgrounds, professions, and age groups, can join our digital marketing online courses</p>
                                </div>
                            </div>
                        </div>

                        <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                            <h3 itemprop='name'>Q 3. Are there any prerequisites or language requirements for digital marketing online classes at ThinkNEXT? </h3>
                            <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                <div itemprop='text'>
                                    <p><strong>Ans.</strong> There are no prerequisites. All courses are conducted in English and Hindi. For better retention, video lectures include English subtitles and the option to slow-down, pause, or replay lectures.</p>
                                </div>
                            </div>
                        </div>

                        <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                            <h3 itemprop='name'>Q 4. Can I take more than one online course at a time at ThinkNEXT?</h3>
                            <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                <div itemprop='text'>
                                    <p><strong>Ans.</strong> If you are new to online learning, we recommend that you begin with one course but you can always come back and continue your studies with one or more topics.</p>
                                </div>
                            </div>
                        </div>

                        <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                            <h3 itemprop='name'>Q 5. Do I need specific equipment to take Digital Marketing Online Courses at ThinkNEXT?</h3>
                            <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                <div itemprop='text'>
                                    <p>
                                        <strong>Ans.</strong> We strongly encourage you to have access to a desktop or laptop computer and reliable internet connection.
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>



    </section>

  

   <div class="clear-both"></div>
                         




   
        <!-- // START Social Share Script-Code with likes ---------->
       <!-- // START Social Share Script  and Css  with Likes-->
 
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javasript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script  and Css with Likes  -->
   <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook", "linkedin", "pinterest", "reddit", "twitter",  "whatsapp"
    ],
  
    url: "http://www.thinknexttraining.com/digital-marketing--course-online.aspx"
  });
</script>
    <script>
        var deadline = new Date("september 1, 2020 23:59:00").getTime();
        var x = setInterval(function () {
            var currentTime = new Date().getTime();
            var t = deadline - currentTime;
            var days = Math.floor(t / (1000 * 60 * 60 * 24));
            var hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((t % (1000 * 60)) / 1000);
            document.getElementById("day").innerHTML = days;
            document.getElementById("hour").innerHTML = hours;
            document.getElementById("minute").innerHTML = minutes;
            document.getElementById("second").innerHTML = seconds;
            if (t < 0) {
                clearInterval(x);
                document.getElementById("time-up").innerHTML = "TIME UP";
                document.getElementById("day").innerHTML = '0';
                document.getElementById("hour").innerHTML = '0';
                document.getElementById("minute").innerHTML = '0';
                document.getElementById("second").innerHTML = '0';
            }
        }, 1000);

    </script>
</asp:Content>
