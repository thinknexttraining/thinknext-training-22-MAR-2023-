<%@ Page Title="Online Summer Training - Online Summer Training Courses" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="online-summer-training.aspx.vb" Inherits="php_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
<meta name="description" content="Online Summer Training - ThinkNEXT provides one of the best Online Summer Training Courses. Join the best online summer training institute." />
<meta name="keywords" content="Online Summer Training, Online Summer industrial training, Online Summer training institute, Online live projects training, Online summer training courses" />
 <!-- Facebook sharing image show  -->
     <link rel="image_src" href="https://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
    <meta property="og:image" content="https://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after" />
<meta name="robots" content="index, follow" />

<meta name="copyright" content="ThinkNEXT"/>
<link rel="canonical" href="https://www.thinknexttraining.com/online-summer-training.aspx" />



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">  
   <img src="images/online-summer-training-banner.jpg"  alt="Online Summer Training" title="Online Summer Training" />
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
                <h1>Online Summer Training</h1>
                <div class="text-justify">
                     <p >Do you want to pursue <strong>Online Summer Training?</strong> If yes, then welcome to ThinkNEXT Technologies Pvt. Ltd. </p>
                    <p>ThinkNEXT Technologies Pvt. Ltd. is an ISO 9001:2015 certified company that has introduced <strong>Online Summer Training Programs</strong> for those who wish to learn any course from any state in India at any time as per your convenience. <strong>ThinkNEXT</strong> is a <strong>4 Times National Award Winner Company</strong> in the field of Web Development, Digital Marketing and Industrial Training. <strong>ThinkNEXT</strong> has got more than 40 awards under various categories.</p>
                    <p><strong>ThinkNEXT</strong> offers <strong>Online Summer Training</strong> to Engineering B.Tech/B.E. (All Branches), Polytechnic Diploma (All Branches), Management (MBA/BBA/B.Com) and other students. Usually <strong>Online Summer Training</strong> is of 45 days or 6 weeks duration. But in many cases, it can vary from one month to two months. </p>
                <p>The primary motto of this <strong>Online Summer Training</strong> is to reach out to as many students as we can and help them to study independently from home and be fundamentally and practically strong in their chosen online summer training courses.</p>
                <p>Being ranked among the <strong>top 6 Weeks online summer training institute</strong>, we aggressively promote the job-oriented <strong>online summer training programs</strong> involving CSE, MCA, BCA, Computer Science/IT / Civil / Mechanical / ECE / EEE / Electrical Engineering / Automobile etc., in our training portfolio.</p>
                <p>ThinkNEXT’s <strong>online courses</strong> in India will provide its aspiring candidates the <strong>best online summer training</strong> with the help of real-time examples and scenarios.</p>
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
                                    <img src="images/download_brochure.png" alt="Online Industrial Summer Training">
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

                
                </div>
        </div>
    </section>
    <section class="ptb-20">
        <div class="jackopt-offer-img ">
            <br>
            <p class="threetimesaward">4 Times National Award Winner Company</p>

            <img src="images/online-summer-training-sunielshetty.jpg" alt="Online Summer Training" title="Online Summer Training">
            <img src="images/online-summer-training-krismak.jpg" alt="Online Summer Training" title="Online Summer Training">
            <img src="images/online-summer-training-surindrapal.jpg" alt="Online Summer Training" title="Online Summer Training">
            <img src="images/online-summer-training-sonalibendre.jpg" alt="Online Summer Training" title="Online Summer Training">

            <div class="clear-both"></div>
        </div>
    </section>
    <section class="py-4">
        <div class="container">
                        <div class="d-none d-md-block">
                <div>
                    <img src="images/online-summer-training-courses-1.jpg" alt="Online Summer Training Courses" />
                </div>
                <div>
                    <img src="images/online-summer-training-courses-2.jpg" alt="Online Summer Training Courses" />
                </div>
                <div>
                    <img src="images/online-summer-training-courses-3.jpg" alt="Online Summer Training Programs" />
                </div>
            </div>
             <div class="d-md-none">
                   <div class="text-center">
            <img style="width:89%;" src="images/online-summer-training-courses-4.jpg" alt="Online Summer Training Courses" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/online-summer-training-courses-5.jpg" alt="Online Summer Training Institute" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/online-summer-training-courses-6.jpg" alt="Online Summer Training Courses" />
        </div>
              <div class="text-center">
            <img style="width:89%;" src="images/online-summer-training-courses-7.jpg" alt="Online Summer Training Courses" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/online-summer-training-courses-8.jpg" alt="Online Summer Training Programs" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/online-summer-training-courses-9..jpg" alt="Online Summer Training Institute" />
        </div>
                 </div>
        </div>
                   
     
               </section>
    <section class="bg-dark py-4">
        <div class="container">
            <div class="row">
                 <div class="col-lg-7 text-justify text-white">
            <h3 class="text-warning"><strong>Pros of Online Summer Training</strong></h3>
            <div class="text-justify">
                <ul class="welcomeLinks">
                    <li><strong>Online Classes</strong> in India are highly convenient and flexible: The biggest advantage of pursuing <strong>online summer training</strong> is the increase in flexibility. You can study when you want to, how you want to and where you want to. This does not mean that the workload is less for a student pursuing online classes in India, only that they have more flexibility in when, how, and where they study.</li>
                    <li><strong>Online Summer Training Courses</strong> give you real-world skills.</li>
                    <li><strong>Online Summer Courses</strong> will have financial advantages: Although the price of Online Courses in India can be as much, as less or more than an offline course, students can save their pockets by avoiding many fees typical of transport fees,  lab fees, commuting costs, parking, hostels, etc.</li>
                    <li>Online Courses in India makes you self-disciplined. You won’t wait for someone to tell you what you need to do, you just do it.  In your online courses, you’ll check your class portal daily, do all required work and assignments and meet all your deadlines.</li>
                    <li>Many students in classroom environments don’t feel comfortable in public speaking and have some sort of page fear. In an online environment, it can be much easier to share thoughts with others. </li>
                </ul>
                
                <p class="text-justify text-warning fw-bold">Do not wait & register yourself and become an expert!</p>
            </div>

                </div>
            <div class="col-lg-5 text-justify">
                                                 
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
    

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-justify">
                    <h3 class="text-danger"><strong>Key Features of Online Summer Training </strong></h3>
                    <ul class="welcomeLinks">
                        <li>Live Classes </li>
                        <li>Recorded Videos (in case your miss any Class of <strong>Online Summer Training Program</strong>)</li>
                        <li>Certification: Online certificates will be provided (<strong>6 Weeks Online Summer Training</strong> from  (ISO 9001:2008 certified)</li>
                        <li>Real-life Projects to ensure effective learning</li>
                        <li>Training faculties from Corporate Sector</li>
                        <li>Limited students in a batch</li>
                        <li>Internship opportunities (but will invite top performers during a Training session to work in 6 months long Project(s), where they will brush-up their skills learned from Training.) </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

     <section class="bg-light">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/online-summer-training-institute-1.jpg" alt="Online Summer Training institute"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/online-summer-training-institute-karishma.jpg" alt="Online Summer Training institute"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/online-summer-training-institute-suniel.jpg" alt="Online Summer Training institute"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/online-summer-training-institute-2.jpg" alt="Online Summer Training institute           b"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
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
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" title="best online summer training" alt="best online summer training">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" title="best online summer training" alt="best online summer training">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" title="best online summer training classes" alt="best online summer training classes">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" title="best online summer training classes" alt="best online summer training classes">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" title="best online summer training programs" alt="best online summer training programs">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" title="best online summer training institute" alt="best online summer training institute">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" title="best online summer training institute" alt="best online summer training institute">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/Pehredaar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Pehredaar-1.jpg" title="best online summer training institute" alt="best online summer training institute">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" title="best online summer training institute" alt="best online summer training institute">
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

        <div class="clear-both"></div>


    </section>

    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
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
    
    <section id="profiles" class="bg-ececec py-4 px-2">  
			<div class="container-fluid">
				<div class="row m-0" id="profile-grid">

                    
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/asia-quality-entreprenuership-award.jpg" title="6 weeks online summer training" alt="6 weeks online summer training" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                           <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="awards-img/award-image11.jpg" title="Online Summer Training" alt="Online Summer Training" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/online-summer-training-institute-3.jpg" title="Online Summer Training Institute " alt="Online Summer Training Institute" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                         <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/Leadership-Summit-2019-Award.jpg" title="Online Summer Training Institute" alt="Online Summer Training Institute" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
				
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/awards-1.jpg" title="Online Summer Training" alt="Online Summer Training" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
     <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="images/awards-2.jpg" title="Online Summer Training Classes" alt="Online Summer Training Classes" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
          
                    	<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="awards-img/online-summer-training-institute-4.jpg" title="Online summer training institute" alt="Online summer training institute" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

				
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-institute-5.jpg" title="Online summer training institute" alt="Online summer training institute" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-classes.jpg" title="Online summer training classes" alt="Online summer training classes" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

				
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-classes-1.jpg" title="Online summer training classes" alt="Online summer training classes" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-classes-2.jpg" title="Online summer training classes" alt="Online summer training classes" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-classes-3.jpg" title="Online summer training classes" alt="Online summer training classes" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-classes-4.jpg" title="Online summer training classes" alt="Online summer training classes" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-programs.jpg" title="online summer traning programs" alt="online summer traning programs" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-programs-1.jpg" title="online summer traning programs" alt="online summer traning programs" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/online-summer-training-programs-2.jpg" title="online summer traning programs" alt="online summer traning programs" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
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
                    <h4><strong>Q1. Is a hybrid class the same as an online class? </strong></h4>
                    <p><strong>Ans.</strong> Hybrid classes are face-to-face classes that meet half in the classroom and half online. This generally means that you will meet less often on campus, and do a portion of your work in one of our online systems. Hybrid is not the same thing as an 'online class’, because you have to actually come to ThinkNEXT’s classroom at the mentioned time. </p>
                    <h4><strong>Q2.  What is the standard time to complete the course?</strong></h4>
                    <p><strong>Ans.</strong> The time varies depending on the course. You can check the details on the course page. </p>
                    <h4><strong>Q3. Will I receive the Certificate after completion of the Online Summer Training?</strong></h4>
                    <p><strong>Ans.</strong> Yes! We provide certificates to the candidates after the course is completed. The certificate will be available for download in your account after the completion of the course.  </p>
                    <h4><strong>Q4. Who will clarify my doubts in online summer training classes?</strong></h4>
                    <p><strong>Ans.</strong> Your doubts will be cleared at ThinkNEXT’s Chat (on WhatsApp/Telegram), Phone and Email Support.</p>
                     <h4><strong>Q5. Will I get any course study material?</strong></h4>
                    <p><strong>Ans.</strong> Yes, you will get the study material for the Online Summer Training Courses in digital format. You can login to your dashboard and utilize the video content of the course taken, anytime, anywhere you want.</p>
                </div>
            </div>
        </div>
    </section>



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
