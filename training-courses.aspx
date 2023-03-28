<%@ Page Title="Industrial Training in Chandigarh" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="training-courses.aspx.vb" Inherits="summer_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <meta name="description" content="Android Training in Chandigarh Mohali - ThinkNEXT is best Android Training Company providing Android Training in Chandigarh Mohali Panchkula India. ThinkNEXT " />
    <meta name="keywords" content="Android Training Companies in Chandigarh, Android Training in Chandigarh, Android Training Companies in Mohali, Android Training Companies in panchkula INDIA, Android App Development Training in Chandigarh, Android App Development Training in Mohali, Android App Development Training in panchkula INDIA." />
      <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/share-images/android-training.png" />
     <meta property="og:image" content="http://www.thinknexttraining.com/share-images/android-training.png" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
    <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after" />
    <meta name="robots" content="index, follow" /> 
    <meta name="copyright" content="ThinkNEXT" />
  <style>
      .accordion-button:not(.collapsed) {
    color: #ffffff;
    background-color: #073c84;
}
       .accordion-button {
    color: #ffffff;
    background-color: #073c84;
}
       .accordion-button {
    border: 1px solid rgb(226 226 226 / 60%);
}

  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     
    
     <div class="main-image">   
     <img src="images/job-oriented-trainging-courses.jpg" alt="Training Courses in Chandigarh Mohali Panchkula" />
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
                <div class="col-md-7">
                    <div class="p-2 border text-justify position-sticky top-0">
                       <div class="gdl-header-wrapper">
                        <h1>Best Training in chandigarh Mohali</h1>
                    </div>
                        <p><strong class="textred">Are you looking for best Training in Chandigarh?</strong></p>
            
<p>ThinkNEXT Technologies Private Limited offers <strong>Industrial training</strong> to Engineering,  Polytechnic and Management students at Mohali (Chandigarh). We provide 
    <strong>Summer Industrial training</strong> to Computer  Science, IT, Electronics, Mechanical, Civil, Electrical Engineering and  Management students such as MBA, BBA, etc.
    Our mission and aim are very clear  and we want our students to enhance their abilities to the core and become  successful professionals. We intend them to work on various projects 
    independently and hence, we provide them a Professional Work Environment&rdquo; for  completion of the <strong>6 months/ 6 Weeks Industrial  training in Chandigarh Mohali.</strong><br />
 Live project-based  industrial training is also linked to employment assistance and is specifically  designed for B.Tech /BE/MBA/BBA/BCA/MCA/Polytechnic students to ensure that  
    they have completed the training and are ready for the immediately eligible  jobs. <br />
  </p>

                    </div>
                </div>
                <div class="col-md-5">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">                      

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
               
                </div>
            </div>
        </section>
               
    <section class="py-4 bg-ececec d-none">
        <div class="container">
            <div class="row m-0 p-2">
                <div class="col-lg-6">
                    <div class="position-sticky top-0">
                    <iframe class="thknxtytube" src="https://www.youtube.com/embed/ohgIIHxgBCg?autoplay=1&rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                </div>
                    </div>
                <div class="col-lg-6 text-justify">
                     <div class="position-sticky top-0">
                         <strong>Six Weeks/Six Months Industrial Training in Chandigarh Mohali Panchkula</strong>
                       <p>ThinkNEXT Technologies Private Limited&nbsp;is giving  you an opportunity to learn with the Industry experienced professionals. <strong>Summer Industrial training in Chandigarh  Mohali</strong>&nbsp;naturally gives you an edge over your peers and makes you stand  out from the crowd. The knowledge gained through summer Industrial training prepares  you for the challenges that you are likely to face in the corporate world and  also tells that you are ready to face them.</p>  
                          
<p><strong>Best  Industrial summer Training in Chandigarh Mohali</strong></p>
<p>We believe that our Industrial training should result in meaningful career/employment of the candidate. Today lakhs of the engineers  enter the job market, on the other hand, companies do not find the trained manpower. We give the <strong>best summer industrial  training</strong> to our students so that they can get a good job in the I.T sector. We have tie-ups with companies who placed our trained students for their  projects, design, application engineering, service, maintenance operations.</p>

                       
                </div>
                    </div>


            </div>
        </div>
    </section>
  <section class="py-4 bg-ececec pb-0">

        <div class="jackopt-offer-img ">           
            <p class="threetimesaward">4 Times National Award Winner Company</p>          
            <img src="images/six-weeks-summer-training-chandigarh-3.jpg" alt="Web Designing Training in Chandigarh" title="Web Designing Training in Chandigarh">
            <img src="images/45-days-summer-training-chandigarh.jpg" alt="Web Designing Course in Chandigarh" title="Web Designing Course in Chandigarh">
            <img src="images/6-weeks-summer-training-chandigarh-1.jpg" alt="Web Designing Training in Chandigarh" title="Web Designing Training in Chandigarh">
            <img src="images/3-months-industrial-training-chandigarh.jpg" alt="Web Designing Course in Chandigarh" title="Web Designing Course in Chandigarh">

            <div class="clear-both"></div>
        </div>
    </section>
    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
            </div>
        </div>

    </section>
    
  

    <section class="py-4">
          <div class="container">
            <div class="row m-0">
              <div class="col-lg-8 text-justify">                
                    <div class="d-inline-block pt-2 "><br /><br />
                                     <h2 class="text-danger"><b>Industrial Training in Chandigarh Mohali Panchkula</b></h2>
                      <p>Our trainers  are experts in their respective fields with more than 6+ years of industry  experience. The <strong>industrial training  course</strong> is completely job oriented and the courses are designed to give  maximum exposure to the students. This summer Industrial training for B.TECH/  BCA/MCA/MBA/BBA/ BE/Polytechnic and will be for a period of up to 6 months  wherein the student will get to work on live projects with close guidance from  the industry experts. Students are also trained on the real-time scenarios  faced in IT industry to make them ready for interviews after their courses. We  also provide 100% training assistance as we have company tie-ups and we make  sure the students get placed as per their skills and capability. From past many  years the students who are trained underThinkNEXT, most of them are  successfully placed in Multinational Companies like Infosys, TCS, Wipro, etc&nbsp;</p>

              
           <p><strong>Best Industrial Training programs for B.Tech. (All Branches, Engineering Students), Polytechnic Diploma (All Branches), Managementand other Graduate/Postgraduate students are:</strong></p>



            </div> 
                 
             
                 
                  </div>

                  <div class="col-lg-4 text-justify">
                      <div class="position-sticky top-0">
                           <div class="right_box margin-top">
                             <div class="without_border dwl1 text-center">
                                 <div class="brochiframe" id="brochiframe">
                                     <iframe name="broucher"></iframe>
                                     <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()" />

                                 </div>
                                 <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher">
                                     <img src="images/download_brochure.png" alt="Web Designing Training in Chandigarh">
                                 </a>

                             </div>
                         </div>                 
                      <div class="py-3 px-4 bg-black">
                          <h3 class="text-white text-center"><strong>Book My Free Demo Class Now!</strong></h3>
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

                               <div class="form-group d-none">
                                <asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox>              
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
    <section class="plr-30 ptb-10 bg-ececec">
         <div class="col-sm-12">
              
           
              </div>
        <h3 class="text-center"><strong>CSE/IT</strong></h3>
        <br>
        <div id="ContentPlaceHolder1_contentDiv" class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/php-training-course-thinknext.jpg" alt="Online Course Training in India">
                    <div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/php-training-in-chandigarh.aspx" target="_blank">PHP </a>

                        </h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none">
                        <span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del>
                        <strong><a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/php-online-course.html " target="_blank">Buy Now </a></strong>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/android-training-course-thinknext.jpg" alt="Online Course Training in India">
                    <div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/Android-training-in-chandigarh.aspx"
                            target="_blank">Android Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none">
                        <span><strong>Rs 999.00 </strong></span>
                        <del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm"
                            href="https://www.thinknexttraining.com/lp/android-course.html " target="_blank">Buy Now </a></strong>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                  
                    <img class="width-100" src="images/java-training-course-thinknext.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/java-training-in-chandigarh.aspx" target="_blank">Java </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/java-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/digitalmarketing1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/digital-marketing-course-training-in-chandigarh.aspx" target="_blank">Digital Marketing</a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/digital-marketing-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    
                    <img class="width-100" src="images/web-designing-training-course-ThinkNEXT.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/web-designing-training-in-chandigarh.aspx" target="_blank">Web Designing</a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 699.00 </strong></span><del><strong>Rs 6990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/web-designing-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/online-ai-course.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx" target="_blank">Artificial intelligence </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/python1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/python-training-in-chandigarh-mohali.aspx" target="_blank">Python Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/machinelearning-usingpython-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx" target="_blank">Machine Learning </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                  
                    <img class="width-100" src="images/data-science-withpython-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/data-science-with-python-course-training-chandigarh-mohali.aspx" target="_blank">Data Science</a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/wordpress-online-course-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/wordpress-training-in-chandigarh-mohali.aspx" target="_blank">WordPress Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    
                    <img class="width-100" src="images/excel-online-course.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/advance-excel-course-training-in-chandigarh-mohali.aspx" target="_blank">MS Excel </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="images/c-and-c-plus-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/c-and-c-training-in-chandigarh.aspx" target="_blank">C and C++ </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
			 <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                  
                    <img class="width-100 border border-dark" src="https://cdn.ventture.com/18182/coachrack/courses/25804/files/react_js_online_course_thinknext.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/reactjs-training-course-chandigarh-mohali.aspx" target="_blank">React js Detail</a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                   
                    <img class="width-100" src="https://thinknexttraining.com/images/MEAN-Stack-Online-Course-ThinkNEXT-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/mean-stack-course-training-chandigarh-mohali.aspx" target="_blank">MEAN Stack  </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    
                    <img class="width-100" src="https://thinknexttraining.com/images/MERN-Stack-Online-Course-ThinkNEXT-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/mern-stack-development-training-in-chandigarh.aspx" target="_blank">MERN Stack </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
			  <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    
                    <img class="width-100 border border-dark" src="https://thinknexttraining.com/images/training-course-ethical-heacking.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/ethical-hacking-training-in-chandigarh-mohali.aspx" target="_blank">Ethical Heacking </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
          
			
			
			
        </div>
           
        <div class="clear-both"></div>
    
            </section>
    <section class="plr-30 ptb-10">

        <h3 class="text-center"><strong>ELECTRONICS/ELECTRICAL COURSES</strong></h3>
        <br>

        <div id="ContentPlaceHolder1_divElectricalContain" class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/thumbnail21-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/IoT-training-chandigarh-mohali-india.aspx" target="_blank">IoT </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/iot-robotics-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">80% OFF</div>
                    <img class="width-100" src="images/industrialautomation-plc-scada-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/PLC-SCADA-training-in-chandigarh.aspx" target="_blank">PLC-SCADA</a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">80% OFF</div>
                    <img class="width-100" src="images/autocad-electrical-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank">AutoCAD Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">80% OFF</div>
                    <img class="width-100" src="images/embedded-systems-training-course-ThinkNEXT.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/embedded-systems-online-course.aspx" target="_blank">Embedded Systems </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
        </div>


        <div class="clear-both"></div>
        <hr>
    </section>
    <section class="plr-30 ptb-10">

        <h3 class="text-center"><strong>MECHANICAL COURSES</strong></h3>
        <br>
        <div id="ContentPlaceHolder1_containDivMechanical" class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/solidworks-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/solid-works-training-in-chandigarh.aspx" target="_blank">SolidWorks Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/SolidWorks-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/Catia-Online-Course-1-ThinkNEXT-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/catia-training-Chandigarh.aspx" target="_blank">CATIA Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/online-catia-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/cnc-programming-training-course.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/CNC-training-in-chandigarh.aspx" target="_blank">CNC Programming   </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/autocad1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/autocad-mechanical-training.aspx" target="_blank">AutoCAD Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
        </div>


        <div class="clear-both"></div>
        
    </section>
    <section class="plr-30 ptb-10 bg-ececec">
        <h3 class="text-center"><strong>CIVIL</strong></h3>
        <br>
        <div id="ContentPlaceHolder1_divContainCivil" class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/staadpro-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/STAADpro-training-in-chandigarh.aspx" target="_blank">STAAD Pro Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/staad-pro-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/revit-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/revit-training-courses-institute-chandigarh-mohali.aspx" target="_blank">Revit Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/revit-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/training-course-3dsmax.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/3dsmax-training-courses-institute-chandigarh-mohali.aspx" target="_blank">3DS MAX  </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center margin-bottom20 bg-warning shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="offer-discount d-none">90% OFF</div>
                    <img class="width-100" src="images/autocad-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/autocad-civil-training.aspx" target="_blank">AutoCAD Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20 d-none"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
        </div>


        <div class="clear-both"></div>
    </section>

    <section class="pd-30 page-div">
        <div class="col-sm-12">
            <h3 class="text-center"><strong>Management Training (MBA/BBA/B.Com)</strong></h3>
            <br>
        </div>
        <div class="row">
        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/human-resources-online-training.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="https://www.thinknexttraining.com/hr-management-online-course.aspx">HR Management Course</a></h4>

            </div>
        </div>
        <div class="col-lg-3">
            <div class=" border border-secondary margin-bottom20">

                <img class="width-100" src="images/marketing-online-training.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="https://www.thinknexttraining.com/marketing-training-internship-in-chandigarh-mohali.aspx">Marketing  Course</a></h4>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/finance-online-training.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="https://www.thinknexttraining.com/finance-training-internship-in-chandigarh-mohali.aspx">Finance Management Course</a></h4>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/tally-online-training.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="tally-online-course.aspx">View Course Detail</a></h4>
            </div>
        </div>
            </div>

        <div class="row">
        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/excel-online-course.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="advance-excel-course-training-in-chandigarh-mohali.aspx">View Course Detail</a></h4>
            </div>
        </div>

        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/digital-marketing-online-course-1.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/digital-marketing-online-course.html">Digital Marketing Course</a></h4>
            </div>
        </div>

        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/sales-distribution-online-course.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="sap-sd-training.aspx">View Course Detail</a></h4>
            </div>
        </div>

        <div class="col-lg-3">
            <div class="border border-secondary margin-bottom20">

                <img class="width-100" src="images/international-business.jpg" alt="Online Course Training in India">
                <h4 class="text-center ptb-10"><a href="international-business-online-course.aspx">View Course Detail</a></h4>
            </div>
        </div>
            </div>

        <div class="clear-both"></div>
    </section>

    <section class="bg-dark py-4 d-none">
        <div class="container">
            <h3 class="text-warning text-center"><strong>Student Testimonials</strong></h3>
            <div class="row">
                <div class="col-sm-6 col-md-4 mb-3 d-sm-none">
                     <span class="abythknxt-hdng"> Android Training Chandigarh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/_YazygIasRw?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                 <div class="col-sm-6 col-md-4 mb-3">
                       <span class="abythknxt-hdng">Android App Development</span>
  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/znrPAKyoNas?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3">
               <span class="abythknxt-hdng"> Ajeet Singh - Android</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/XMlzXvuncr4?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>


                  <div class="col-sm-6 col-md-4 mb-3">
            <span class="abythknxt-hdng"> Ramanpreet - Android</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/Nc5dVPg888o?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3">
            <span class="abythknxt-hdng">Testimonial by Harish Kumar</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/gOUQSEE_7y8?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3">
              <span class="abythknxt-hdng"> Android  </span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/3D180RWkpzo?autoplay=1&rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                 <div class="col-sm-6 col-md-4 mb-3">
              <span class="abythknxt-hdng">Testimonial by Arjun Singh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/_YazygIasRw?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

            </div>
        </div>
    </section>

    <section class="" style="background:#eaefff;">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Best Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="Digital Marketing Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain">
                <div id="video-view"></div>
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
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/Pehredaar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Pehredaar-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" title="Best Six Months Industrial Training in Chandigarh">
                                </a>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="bg-black px-2 py-4 position-sticky top-0">
                        <h2 class="elecronics">Electronic Media</h2>

                        <ul class="welcomeLinks">
                            <li><a class="text-white" href="http://121newsonlines.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">ThinkNEXT Gets National Recognition-Newsonline</a></li>
                            <li><a class="text-white" href="https://samachardigital.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition</a></li>
                            <li><a class="text-white" href="http://buzzingchandigarh.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020/">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020</a></li>
                            <li><a class="text-white" href="https://www.cityairnews.com/content/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre">Tricity Based Company ThinkNEXT Gets National Gratitude Award-2020 From Bollywood Actress Sonali Bendre </a></li>
                           
                            <li><a class="text-white" href="https://wp.me/p9Qd5a-5gG"></a></li>
                            <li><a class="text-white" href="http://chandigarhtoday.org/?p=35942"></a></li>
                            <li><a class="text-white" href="https://tricitynewsonline.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Tricitynewsonline</a></li>
                            <li><a class="text-white" href="http://indianewscalling.com/news/94819-tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-ben.aspx">Tricity based ThinkNEXT gets national recognition</a></li>
                            <li><a class="text-white" href="http://www.worldwisdomnews.com/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-bollywood-actress-sonali-bendre-at-new-delhi/">ट्राइसिटी के डिजिटल मीडिया स्टार्टअप थंक नेक्स्ट को मिली राष्ट्रीय पहचान मोहाली के डिजिटल मीडिया स्टार्टअप थिंक नेक्स्ट को मिला राष्ट्रीय सम्मान</a></li>
                            <li><a class="text-white" href="https://samacharvishesh.blogspot.com/2020/03/tricity-based-thinknext-gets-national.html">Tricity Based ThinkNEXT Gets National Recognition-Samacharvishesh</a></li>
                            <li><a class="text-white" href="https://www.newsnetnow.com/thinknext-gets-national-gratitude-award-from-sonali-bendre/">Tricity based company ThinkNEXT gets National Gratitude Award 2020 from Bollywood Actress Sonali Bendre at New Delhi</a></li>
                            <li><a class="text-white" href="https://www.showtimechandigarh.com/post/tricity-based-company-thinknext-gets-national-gratitude-award-2020-from-actress-sonali-bendra">Tricity based company ThinkNEXT gets National Gratitude Award 2020 Chief Guest Bollywood Film Actress Sonali Bendre</a></li>
                            <li><a class="text-white" href="https://thenewschronicle.in/f/thinknext-gets-national-gratitude-award-2020-from-sonali-bendre">ThinkNEXT Technologies Private Limited bagged National Gratitude Award from chief guest Bollywood film actress Sonali Bendre</a></li>
                            <li><a class="text-white" href="https://chandigarhpost.com/f/tricity-company-thinknext-bags-national-gratitude-award-2020">Tricity Company ThinkNEXT Bags National Gratitude Award</a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="clear-both"></div>
            <br>
            <p class="hcntr"><span class="htitl"><a href="media.aspx" class="vgalry">View More</a></span></p>

        </div>

     


    </section>


    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks" style="font-weight: bold;">
                    <li> Industrial Training/Internship from 4 times National Award Winner Company:
                        <ol type="1">
                            <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial training Company </li>
                             <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                            <li>Business Leaders Award 2019 Winner Company for Best Digital Marketing and Industrial Training Company</li>
                            <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                        </ol>
                    </li>
                <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                <li>Industrial training/internship from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT Technologies Private Limited is registered as a Pvt. Ltd. Company under  Companies Act 1956.</li>
                <li>ThinkNEXT offers Part-Time/Full-Time Job offers during training/internship so that students can earn while they learn.</li>
                <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                <li>Industrial Training/Internship from ISO 9001:2015 certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
               <li>Authorized Pearson Testing Center for International Exams/Certifications.
                 <br />
                Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.                 
               </li>
                    <li>30000+ Students trust our courses/training/internship programs</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
                    <li>Free online courses for class-room/offline students undergoing Training/Internship.</li>
                    <li>Get industrial training/internship in 3 modes:
                        <ol>
                            <li>Classroom training/Offline training</li>
                            <li>Instructor-led online live training</li>
                            <li>Instructor-less online training with pre-recorded videos and doubt clearing support</li>
                            </ol>
                    </li>
                    <li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements</li>
                    <li>Lifetime membership to ThinkNEXT VIP Telegram Group for Community Support</li>
                    <li>Guaranteed Job Interviews and 100% Placement Assistance</li>
                    <li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized. </li>
                    <li>Training on Live-Projects through certified trainers. (ThinkNEXT is having its clients in India and Abroad. Students can work on ThinkNEXT Live Projects also.)</li>
                    <li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
                    <li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc. </li>
                    <li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
                    <li>Industrial Training/Internship from 9+ Years old company</li>
                    <li>Customized Syllabus (You can add your own relevant topics) and Backup Classes (in case you miss some classes)</li>
                    <li>Free Subdomain and Web Hosting to host projects.   </li>
                    <li class="text-start">Numerous Tie-up with IT / Electronics / Mechanical / Civil / Electrical / Retail / Textile etc. companies for Placements</li>
                    <li>Lifetime Validity Learning and Placement Assistance</li>
                    <li>Member of CII (Confederation of Indian Industry). Membership No. N5238P</li>
                           </ul>
              
            </div>         
            
          </div>

    </section>


        <section id="profiles" class="py-4 px-2">
        <br>
        <div class="col-lg-12">
            <div id="profile-grid">

                <div class="row m-0">
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                    <img src="images/asia-quality-entreprenuership-award.webp" alt="Best Six Months Industrial Training in Chandigarh" title="Best Six Months Industrial Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="images/award-image11.webp" alt="Best Industrial training in chandigarh" title="Best Industrial training in chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                    <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                       <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                    <img src="/php-images/php-industrial-training.jpg" alt="Digital Marketing Course in Chandigarh" title="Digital Marketing Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Digital Marketing Course in chandigarh" title="Digital Marketing Course in chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="Industrial Training Company in chandigarh" title="Industrial Training Company in chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="Summer Training in chandigarh" title="Summer Training in chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.webp" alt="Summer Internship in chandigarh" title="Summer Internship in chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Summer Training in Mohali" title="Summer Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="6 weeks industrial Training in chandigarh" title="6 weeks industrial Training in chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                    <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Summer Internship in Mohali" title="Summer Internship in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Summer Internship in Mohali" title="Six Weeks Industrial Training in Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/ThinkNEXT-Frontdesk.webp" alt="6 Weeks Summer Training in Chandigarh" title="6 Weeks Summer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                   

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/galleryjob-fair7.jpg" alt="45 Days Industrial Training Company in Chandigarh Mohali" title="45 Days Industrial Training Company in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/page-5_img-4-b.jpg" alt="Industrail Training Company In Chandigarh" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/THINKNEXT-b.jpg" alt="45 Days Summer Intenship in Mohali" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>


  
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industial-training-in-chandigarh-group.webp" alt="45 Days Summer Intenship in Mohali" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="45 Days Summer Intenship in Mohali" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>
                    
                             <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="php-images/php-training-in-panchkula.jpg" alt="45 Days Summer Intenship in Mohali" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                      <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="45 Days Summer Intenship in Mohali" title="ThinkNEXT Technologies" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg">
                                </a>
                            </div>

                        </div>
                    </div>

                </div>
                <br>
                <p class="hcntr"><span class="htitl"><a href="photogallery.aspx" class="vgalry">View More</a></span></p>


            </div>
        </div>
        <div class="clear-both"></div>


    </section>
	

    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

	<!-- light-box modelBox -->
	<div class="modal fade modal-profile gallerylightbox" tabindex="-1" role="dialog" aria-labelledby="modalProfile" 
        aria-hidden="true">
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
               <h5 class="text-danger"><b>Top Search</b></h5>
               <a href="course/android-course.aspx"><b>android course,</b></a>, 
                <a href="http://localhost:60902/course/android-development-course.aspx"> <b>android development course</b></a>, 
                <a href="https://thinknexttraining.com/course/android-learning.aspx"> <b>android learning</b></a>,
                 <a href="https://thinknexttraining.com/topics/web-designing-classes.aspx"> <b>android training institute,</b></a>, 
                <a href="https://thinknexttraining.com/course/learn-android-programming.aspx"> <b>learn android programming</b></a>, 
                <a href="https://thinknexttraining.com/course/android-training-course-in-chandigarh.aspx"><b> android training in chandigarh</b>    </a>,
                 <a href="https://thinknexttraining.com/course/android-training-in-mohali.aspx"><b>android training course in mohali</b></a>, 
                <a href="https://thinknexttraining.com/course/best-android-training-in-mohali.aspx"> <b>best android training in mohali</b></a>,
                 <a href="https://thinknexttraining.com/course/app-development-training-course-in-mohali.aspx"> <b>App Development Training Course Mohali,</b></a>,  
                <a href="https://thinknexttraining.com/course/mobile-application-development-training-course-in-chandigarh.aspx"> <b>Mobile Application Development Training Course Chandigarh</b></a>, 
             
                         
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
