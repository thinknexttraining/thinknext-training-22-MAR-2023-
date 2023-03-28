<%@ Page Title="6 Months Industrial Training in Chandigarh Mohali" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="6-months-industrial-training-chandigarh.aspx.vb" Inherits="industrial_training_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="6 Months Industrial Training in Chandigarh Mohali - ThinkNEXT is best 6 Months Industrial Training in Chandigarh Company providing 6 Months Industrial Training in Chandigarh Mohali Panchkula India." />
    <meta name="keywords" content="6 Months Industrial Training in Chandigarh Mohali " />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/6-months-industrial-training-chandigarh-min.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/6-months-industrial-training-chandigarh-min.jpg" />
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
        .course-img img{
            width: 70px;
        }
    .course-img{
        list-style:none;
    }
    .course-img li{
        padding:6px;
    }
     .course-img ul{
        list-style:none;
    }
     .accordionopen .collapse {
    display: block !important;
    height: auto !important;
}
.panel-title{
    color:white !important;
}
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image position-relative">
       <img class="d-md-none"  src="images/6-months-industrial-training-chandigarh-min.jpg" alt="6 Months Industrial Training in Chandigarh Mohali" />            
     <img class="d-none d-md-block" src="images/6-months-industrial-training-chandigarh-min.jpg" alt="6 Months Industrial Training in Chandigarh Mohali" />

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
                           <h1>6 Months Industrial Training in Chandigarh Mohali</h1>
                        </div>
                        <p>6 Months Industrial training is essential now a days for engineering (B.Tech), Polytechnic diploma and Management students as part of their curriculum. Industrial Training plays a vital role for the professional growth of the students. 6 Months Industrial Training provides students, an opportunity of gaining real-world exposure in their relevant fields. When the students will be facing their first job interview, 6 Months Industrial training will be one of the most important experience that is usually taken into account.</p>
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

    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Animation and Multimedia Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Animation and Multimedia Training in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="45 Days Animation and Multimedia Training in Chandigarh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Animation and Multimedia Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Summer Training Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Animation and Multimedia Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Animation and Multimedia Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img style="width: 89%;" src="images/summer-training-in-mohali-1.jpg" alt="45 Days Animation and Multimedia Training in Chandigarh" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-8 text-justify">
                    <h2 class="text-danger fw-bold">Importance of 6 Months Industrial Training</h2>
                   <ul class="welcomeLinks">
                       <li>  Students can get to learn about the practical aspects of implementation under the guidance and mentorship of industry experts.</li>
                       <li>  6 Months Industrial Training is the best way to acquire and clear your concepts about your relevant fields.</li>
                       <li>  6 Months Industrial training helps to enhance technical skills in real time environment.</li>
                       <li>  Project developed during Industrial training also helps to judge trainee’s capabilities and skills</li>
                       <li>  During the tenure of 6 months Industrial training, students are exposed with the actual organizational culture of an environment and also with industrial projects.</li>
                       <li>  Employers are much more likely to hire someone with industrial training/internships rather than someone with a generic resume, lacking 6 Months industrial training or internship</li>
                   </ul>
                </div>
                                   
                <div class="col-lg-4 text-justify">

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
        <div class="container text-justify">
            <h3 class="fw-bold text-danger">Are you looking for best company for 6 weeks/6 months/45 days Industrial training in Chandigarh Mohali Panchkula region?</h3>
            <p><strong>Your future, largely depends on what you do today. Let's shape it with ThinkNEXT Industrial Training Program</strong></p>
            <p>ThinkNEXT Technologies Private Limited offers best 6 Months Industrial training in Chandigarh, Mohali, Panchkula (Tricity) region. ThinkNEXT offers Industrial training for 6 months, 6 weeks, 45 days, 1 Month or 2 Months to engineering (B.Tech), Polytechnic Diploma and Management Students. For Engineering and Polytechnic students, ThinkNEXT offers industrial training to CSE, IT, ECE, Civil, Mechanical, Electrical, Aeronautical, MCA, BCA, M.Sc (IT), B.Sc (IT) etc. students. ThinkNEXT also offers Management Training or Management Internship for 6 months, 6 weeks, 2 months, 45 days to MBA, BBA, B.Com etc. students.</p>
            <p>Over the years, with its hardwork, dedication, commitment, honesty and teamwork, ThinkNEXT has become one of the biggest brand among industrial training students, job seekers and professionals in India. Students from many countries and states opt ThinkNEXT for their growth in their professional career.</p>
            <p><strong>Best 6 Months Industrial Training programs for B.Tech. (All Branches, Engineering Students), Polytechnic Diploma (All Branches), Managementand other Graduate/Postgraduate students are:</strong></p>
        </div>
    

    <div class=" container panel-group accordionopen" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="text-white btnn collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1"> Computer / IT / MCA / CSE / B.Tech (CSE)</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">

        <div class="row panel-body">
            <div class="col-lg-4 col-md-4">
      <ul>
          <li><a href="SAP-training-in-chandigarh.aspx"><img src="images/App-icon/SAP.png" alt="Sap" /> SAP</a></li>
  <li><a href="dot-net-training-in-chandigarh.aspx"><img src="images/App-icon/net-logo.png" alt="Dot Net" /> Dot Net</a></li>
<li><a href="java-training-in-chandigarh.aspx"><img src="images/App-icon/java-logo.png" alt="Java Training" /> JAVA</a></li>
<li><a href="Android-training-in-chandigarh.aspx"><img src="images/android.png" alt="android" /> Android</a></li>
<li><a href="iphone-training-in-chandigarh.aspx"><img src="images/iphone-icon.jpg" alt="Iphone" /> iPhone</a></li>
<li><a href="ccnp-training-institutions-chandigarh.aspx"><img src="images/ccnp.png" alt="CCNP Logo"  /> CCNP</a></li>
<li><a href="big-data-hadoop-course-chandigarh.aspx"><img src="images/big-data.jpg" alt="Big Data Hadoop"  /> Big Data Hadoop</a></li>
<li><a href="laravel-php-framework-training-in-chandigarh-mohali.aspx"><img src="images/LaravelLogo.png" alt="Laravel Training"  /> Laravel</a></li>
<li><a href="computer-courses-in-chandigarh-mohali.aspx"><img src="images/computer-logo.jpg" alt="Computer Courses"  /> Computer Courses</a></li>
<li><a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx"> <img src="images/machine-learning-training-in-chandiarh.png" alt="Data Science Training in Chandigarh" /> Machine Learning & AI</a></li>  
</ul>
</div>
          <div class="col-lg-4 col-md-4">
              <ul>
<li><a href="digital-marketing-course-training-in-chandigarh.aspx"><img src="images/dm.jpg" alt="Digital Marketing Course in Chandigarh" />Digital Marketing</a></li>
<li><a href="c-and-c-training-in-chandigarh.aspx"><img src="images/cplus.jpg" alt="C/C++" />C/C++</a></li>
<li><a href="online-bidding-freelancing.aspx">Online Bidding(Freelancing)</a> </li>
<li><a href="#"><img src="images/oracle-server.jpg" alt="Oracle / SQL Server" />Oracle / SQL Server</a></li>	
<li><a href="Animation-and-Multimedia-training-in-chandigarh.aspx"><img src="images/animation.jpg" alt="pdf" /> Animation &amp; Multimedia</a></li>
<li><a href="cloud-computing-training-in-chandigarh-mohali.aspx"><img src="images/cloud-computing.jpg" alt="pdf" />Cloud Computing</a></li>
<li><a href="python-training-in-chandigarh-mohali.aspx"><img src="images/python-training-in-chandigarh.png" alt="Python Training in Chandigarh Mohali" />Python</a></li>
<li><a href="#"><img src="images/ethical-hacking.png" alt="pdf" /> Ethical Hacking</a></li>  
<li><a href="AngularJS-training-course-chandigarh-mohali.aspx"> <img src="images/angularjs-logo.jpg" alt="AngularJS Training in Chandigarh" /> AngularJS </a></li>  
<li><a href="data-science-with-python-course-training-chandigarh-mohali.aspx"> <img src="images/data-science-training-in-chandigarh.png" alt="Data Science Training in Chandigarh" /> Data Science</a></li>  

  </ul>
              </div>


          <div class="col-lg-4 col-md-4">
              <ul>
                 <li><a href="php-training-in-chandigarh.aspx"><img src="images/App-icon/PHP-Mysql.png" alt="PHP-MySQL" /> PHP / MySQL</a></li>
<li><a href="web-designing-training-in-chandigarh.aspx"><img src="images/web-designing.jpg" alt="Web designing" /> Web Designing</a></li>

<li><a href="software-testing-training-in-chandigarh.aspx"><img src="images/software-testing.jpg" alt="software testing"  /> Software Testing</a></li>

<li><a href="networking-training-in-chandigarh.aspx"><img src="images/App-icon/hardwre.png" alt="Hardware Networking" /> Networking</a></li>
<li><a href="ccna-training-in-chandigarh.aspx"><img src="images/ccna_large.png" alt="pdf" /> CCNA</a></li>

<li><a href="mcitp-training-in-chandigarh.aspx"><img src="images/App-icon/mcitp.png" alt="MCITP" /> MCITP</a></li>
          <li><a href="linux-training-in-chandigarh-mohali.aspx"><img src="images/linux-training-logo.png" alt="Linux" /> Linux</a></li>         
              <li><a href="wordpress-training-in-chandigarh-mohali.aspx"><img src="images/WordPress-Logo.png" alt="Wordpress" /> Wordpress</a></li>         
                   <li><a href="Asp-Net-MVC-training-in-chandigarh-mohali.aspx"><img src="images/asp-net-mvc-logo.jpg" alt="ASP.NET MVC Training In Chandigarh" /> MVC</a></li>         
   

  </ul>
              </div>  

        </div>
    
      </div>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="text-white btnn collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2"> Electronics/Communication</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="row panel-body">

               <div class="col-lg-6 col-md-6">
        <ul>
            
            <li><a href="industrial Automation.aspx"><img src="images/industrial-automation-control.jpg" alt="Embedded" />Industrial Automation</a>  </li>
                
            <li><a href="embedded-systems-training-in-chandigarh.aspx"><img src="images/embedded-system.jpg" alt="Embedded" />Embedded System</a> & <a href= "Robotics-training-in-chandigarh.aspx"> Robotics</a> </li>
            <li><a href="Android-training-in-chandigarh.aspx"><img src="images/android.png" alt="Embedded" />Android</a></li>
            <li><a href="networking-training-in-chandigarh.aspx"><img src="images/App-icon/hardwre.png" alt="Networking"  /> Networking</a> </li>
            <li><a href="ccnp-training-institutions-chandigarh.aspx"><img src="images/ccnp.png" alt="CCNP Logo" />CCNP</a></li> 
            <li><a href="ccna-training-in-chandigarh.aspx"><img src="images/ccna_large.png" alt="CCNA" />CCNA</a> </li>
              </ul>
              </div>
            <div class="col-lg-6 col-md-6">
                <ul>
                 <li><a href="SAP-training-in-chandigarh.aspx"><img src="images/App-icon/SAP.png" alt="Sap" />SAP</a></li>
                 <li><a href="mcitp-training-in-chandigarh.aspx"><img src="images/App-icon/mcitp.png" alt="MCITP" />MCITP</a></li>
                 <li> <a href="telecom-training-in-chandigarh.aspx"><img src="images/telecom.png" alt="telecom" />Telecom</a>  </li>
                 <li><a href="python-training-in-chandigarh-mohali.aspx"><img src="images/python-training-in-chandigarh.png" alt="Python Training in Chandigarh Mohali" />Python</a></li>
                 <li><a href="linux-training-in-chandigarh-mohali.aspx"><img src="images/linux-training-logo.png" alt="Linux" />Linux</a></li>         
                </ul>
              </div>
          <div class="clear-both"></div>
         <div><br /></div>

        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="text-white btnn collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3"> Civil Engineering</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="row panel-body">
              <div class="col-lg-6">
        	<ul> 
              <li><a href="STAADpro-training-in-chandigarh.aspx"><img src="images/staad.pro.jpg" alt="Staad.pro" />STAADPro</a></li>    
              <li><a href="Autocad-training-in-chandigarh.aspx"><img src="images/autocad.png" alt="Autocad" />AutoCad </a>  </li>
              <li><a href="RevitArchitecture.aspx"><img src="images/Reviticon.jpg" alt="Revit" />Autodesk Revit</a></li>
              
                 </ul>
                </div>
             <div class="col-lg-6 col-md-6">
                <ul>
                 <li><a href="SAP-training-in-chandigarh.aspx"><img src="images/App-icon/SAP.png" alt="Sap" />SAP</a></li>
                 <li><a href="Primavera.aspx"><img src="images/primavera.jpg" alt="Primavera" />Primavera</a> </li>
                <li><a href="3dmax.aspx"><img src="images/3dsmax.jpg" alt="3DS MAX" />3Ds MAX</a></li>          
                </ul>
              </div>

            <div class="clear-both"></div>

        </div>
      </div>
 
  </div> 

     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="text-white btnn collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4">Electrical Engineering</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="row panel-body">
              <div class="col-lg-6">
        	

                <ul>
                   <li><a href="SAP-training-in-chandigarh.aspx"><img src="images/App-icon/SAP.png" alt="Sap" />SAP</a></li>
                   <li><a href="industrial Automation.aspx"><img src="images/industrial-automation-control.jpg" alt="Automation" />Industrial Automation</a></li>
                   <li><a href="embedded-systems-training-in-chandigarh.aspx"><img src="images/embedded-system.jpg" alt="Embedded" />Embedded System</a> </li>             
                   <li><a href="Autocad-training-in-chandigarh.aspx"><img src="images/autocad.png" alt="Autocad" />Autocad</a></li>

 
  
</ul>
                </div>
             

            <div class="clear-both"></div>

        </div>
      </div>

  </div>

     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="text-white btnn collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5">Mechanical / Production / Automobile / Aeronautical </a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse">
        <div class="row panel-body">
              <div class="col-lg-6">
       <ul> 
           <li><a href="SAP-training-in-chandigarh.aspx"><img src="images/App-icon/SAP.png" alt="Sap" />SAP</a></li>
           <li> <a href="CNC-training-in-chandigarh.aspx"><img src="images/CNC-Logo.png" alt="Sap" />CNC Programming</a>  </li> 
           <li><a href= "Pro-Engineer-Training-in-chandigarh.aspx"><img src="images/creo.jpg" alt="Pro-E" />CREO(Pro-E) </a>  </li>
           <li><a href="solid-works-training-in-chandigarh.aspx"><img src="images/SolidWorks.jpg" alt="Autocad" />Solidworks</a> </li>
      </ul>
 </div>
           <div class="col-lg-6">
               <ul>
                 <li><a href="Piping-Design.aspx"><img src="images/pdms.png" alt="PDMS" />PDMS</a></li>
                 <li> <a href="catia-training-Chandigarh.aspx"><img src="images/SolidWorks.jpg" alt="Autocad" />CATIA</a></li>
                 <li><a href="Autocad-training-in-chandigarh.aspx"><img src="images/autocad.png" alt="Autocad" />Autocad</a></li>
              </ul>

               </div>
             

            <div class="clear-both"></div>

        </div>
      </div>
 

   
  

  </div>


     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="text-white btnn collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6">Management Internship / Training (MBA/BBA/B.Com)</a>
        </h4>
      </div>
      <div id="collapse6" class="panel-collapse collapse">
        <div class="row panel-body">
          <div class="col-lg-6">
       <ul> 
          
<li> <a href="HR-training-in-chandigarh-with-management-internship.aspx"><img src="images/hr-icon-f.png" alt="HR Training Internship in Chandigarh" /> HR</a>  </li>
 
 <li><a href="marketing-training-internship-in-chandigarh-mohali.aspx"><img src="images/marketing-icon-f.png" alt="Marketing Training Internship in Chandigarh" /> Marketing </a>  </li>
           <li><a href="finance-training-internship-in-chandigarh-mohali.aspx"><img src="images/finance-icon-f.png" alt="Finance Training Internship in Chandigarh" /> Finance</a> </li>         
           <li><a href="it-training-internship-in-chandigarh-mohali.aspx"><img src="images/it-icon-f.png" alt="IT Training Internship in Chandigarh" /> IT (Information Technology)</a></li>
		  <li><a href="international-business-training-internship-in-chandigarh-mohali.aspx"><img src="images/IB-icon-f.png" alt="IB Training Internship in Chandigarh" /> International Business</a></li>
            <li><a href="SAP-training-in-chandigarh.aspx"><img src="images/App-icon/SAP.png" alt="Sap Training in Chandigarh" /> SAP</a></li>
            <li><a href="digital-marketing-course-training-in-chandigarh.aspx"><img src="images/dm.jpg" alt="Digital Marketing Course in Chandigarh" />Digital Marketing</a></li>
           <li><a href="industrial-training-internship-mba-bba-students-chandigarh-mohali.aspx">MBA/BBA Training Internship</a></li>
</ul>
 </div>

            <div class="clear-both"></div>

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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Animation and Multimedia Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Animation and Multimedia Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Animation and Multimedia Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Animation and Multimedia Training in Chandigarh">
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Animation and Multimedia Training in Chandigarh" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                   
<li>Industrial Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Industrial Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Industrial Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
                            <div class="popmedia" title="Iconic Business Summit & Awards 2021">
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Animation and Multimedia Training in Chandigarh" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Animation and Multimedia Training in Chandigarh" title="Animation and Multimedia Training in Chandigarh" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
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
