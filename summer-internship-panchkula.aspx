 <%@ Page Title="Summer Internship in Panchkula - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="summer-internship-panchkula.aspx.vb" Inherits="summer_training_in_panchkula" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
    <meta name="description" content="Summer Internship in Panchkula - ThinkNEXT is best Summer Internship Company providing top-noth Summer Internship in Panchkula India." />
    <meta name="keywords" content="Summer Internship Companies in Panchkula, Summer Internship in Panchkula, Summer Internship Companies in Panchkula, Summer Internship Companies in Panchkula" />
      <!-- Facebook sharing image show  -->
   <%-- <link rel="image_src" href="http://www.thinknexttraining.com/share-images/android-training.png" />
     <meta property="og:image" content="http://www.thinknexttraining.com/share-images/android-training.png" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />--%>
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
    <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after" />
    <meta name="robots " content="index, follow" />
 
    <meta name="copyright" content="ThinkNEXT" />
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">  
   <img src="images/summer-internship-in-chandigarh-mohali-min.jpg"  alt="Summer Internship in Chandigarh Mohali" title="Summer Internship in Chandigarh Mohali" />
     </div>
             
          

    <section class="py-4 ">
        <div class="container register">
            <div class="row m-0">
            <div class="col-md-8">
                <h1>Summer Internship in Panchkula</h1>
              
                <div class="text-justify">
                  <p><strong>ThinkNEXT Technologies Private Limited,</strong>&nbsp;which is a <strong>6 times National Award Winning</strong> and <strong>ISO Accredited Company for 9001:2015</strong>, is providing an exciting opportunity for&nbsp;<strong>Engineering, Polytechnic and Management</strong>&nbsp;students to get&nbsp;<strong>an internship in the summer in Panchkula</strong> <strong>ThinkNEXT</strong> has launched an <a href="https://www.thinknexttraining.com/lp/online-summer-internship-training.aspx">online summer internship program</a>, so that students can access it even from <strong>Panchkula</strong>.</p>
<p><strong>Internships held in the summer</strong>&nbsp;are a key part in the professional growth of students.&nbsp;They give students the opportunity to gain hands-on experiences in their fields of study.&nbsp;If students are in stage of getting their first interview for a job in their life,&nbsp;<strong>summer internships</strong>&nbsp;are among the most important experiences that are commonly regarded as.</p>
<p>Over the course of&nbsp;<strong>6 weeks of summer internship, </strong>students will be exposed to the culture of the company at work along with industrial and commercial projects.&nbsp;Students will get to know the specifics of the process under the supervision and guidance of specialists in this area.</p>
<h2 class="text-danger h4 fw-bold">Are you in search of one of the most reputable summer internship companies within Panchkula?</h2>
<p><strong>ThinkNEXT</strong>&nbsp;provides the most enjoyable&nbsp;<strong>summer work experience</strong>&nbsp;for students who study in&nbsp;<strong>Panchkula</strong>.&nbsp;For <strong>Engineering and Polytechnic students</strong>, ThinkNEXT offers&nbsp;<strong>summer internship</strong>&nbsp;that are suitable for&nbsp;<strong>CSE, IT, ECE, Civil, Mechanical, Electrical, Aeronautical, MCA, BCA, M.Sc (IT), B.Sc (IT) and other students</strong>.&nbsp;ThinkNEXT also offers <strong>Management Internships</strong> of up to <strong>six weeks</strong> for <strong>MBA, BBA, MBA as well as B.Com.&nbsp;students</strong>.</p>

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

                <div class="col-12 mt-2">
                      <div class="text-justify">     
                 <p>Over time, with the dedication and commitment, integrity, as well as teamwork, <strong>ThinkNEXT</strong> has become one of the&nbsp;<strong>most sought-after brands among college students, industrial professionals and job seeking applicants in India</strong>.&nbsp;Students from all across the globe and from all the states choose <strong>ThinkNEXT</strong> to boost their career prospects.</p>
                   
                </div>
                </div>
                </div>
        </div>
    </section>
  <section class="ptb-20 ">
        <div class="container-fluid">
            <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward text-light">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" />
                </div>

            </div>
        </div>
    </section>
  
    <section class="py-4">
        <div class="container">
                        <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Summer Training in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Summer Internship in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="45 Days Summer Training in Chandigarh Mohali" />
                </div>
            </div>
             <div class="d-md-none">
                   <div class="text-center">
            <img style="width:89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Summer Training in Chandigarh Mohali" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Summer Training Course in Chandigarh" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Summer Internship in Chandigarh" />
        </div>
              <div class="text-center">
            <img style="width:89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Summer Internship in Mohali" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/summer-training-in-mohali-1.jpg" alt="45 Days Summer Training in Chandigarh Mohali" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/summer-training-in-mohali-2.jpg" alt="6 Weeks Industrial Training in Chandigarh Mohali" />
        </div>
                 </div>
        </div>
                   <div class="awards-achiements-desktop">
    
            </div>
        <div class="awards-achiements-mobile d-none">
            

        </div>
               </section>
    <section class="bg-dark py-4">
        <div class="container">
            <div class="row">
                 <div class="col-lg-7 text-justify text-white">
            <h3 class="text-warning"><strong>Importance of Summer Internship</strong></h3>
            <div class="text-justify">
                <ul class="welcomeLinks">

<li>Students will be taught about the specific aspects they need to consider under supervision and guidance of experts in the area.</li>
<li><strong>A summer internship </strong>could be the best method to gain your thoughts on relevant areas of study.</li>
<li><strong>The summer internship</strong>&nbsp;assists to develop technical abilities in a live-action environment.</li>
<li>The research that is created through&nbsp;<strong>internship program</strong>&nbsp;could be utilized to measure the skills and capabilities of <strong>interns</strong>.</li>
<li>In the period of&nbsp;<strong>six weeks of summer internship in Panchkula,</strong>&nbsp;students get exposed to their working environment's culture as well being involved in <strong>industrial projects</strong>.</li>
<li>Companies are more likely hire applicants with previous working experience than those who has a standard resume that does not contain an <strong>internship</strong>.</li>
</ul>          
               <p class="text-justify text-warning fw-bold">Your future will be determined by the choices you make today.&nbsp;We can make that happen by taking part in ThinkNEXT&nbsp;<strong>Summer</strong> <strong>Training Program in Panchkula.</strong></p>
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
    

    

     <section class="bg-light">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Summer Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Summer Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Summer Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="Summer Internship in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
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
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/mohali-sithith-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-honor-thumb.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award-chd.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-mohali.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Summer Internship in Chandigarh Mohali">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Summer Internship in Chandigarh Mohali">
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

    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons to think about Summer Internship in Panchkula under ThinkNEXT?</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Summer Internship for Engineering/Polytechnic (All Branches), Management and other students</strong></h4>

            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                   
<li><strong>Summer internship</strong>&nbsp;from <strong>six-times National Award Winner Company</strong>.</li>
<li>ThinkNEXT won the&nbsp;<strong>Iconic Business Summit Award 2021</strong>&nbsp;as "Most Trusted Digital Marketing and Industrial Training Company" by Miss Universe Romania Anca Verma and Jaya Prada, Bollywood Film Actress and Politician.</li>
<li>ThinkNEXT won the&nbsp;<strong>Nation's Business Pride Award 2021</strong>&nbsp;by Shri Faggan Singh Kulaste, Union Minister of State for Steel for Best Digital Marketing and Industrial Training Company.</li>
<li><strong>National Gratitude Award 2020 Winner</strong>: Best Digital Marketing and Industrial Training Company.</li>
<li><strong>Asia's Quality &amp; Entrepreneurship Awards 2019 Winners</strong>&nbsp;for Best Web Development and Industrial Training Company.</li>
<li><strong>Business Leaders Award 2019 Winner</strong>: Best Digital Marketing Company and Industrial Training Company.</li>
<li><strong>National Icon Award Winner Company 2018</strong>&nbsp;for Best Web Development and Industrial Training Company.</li>
<li><strong>ThinkNEXT</strong>&nbsp;has also received many awards and honors in the field of software development, digital marketing and industrial training apart from National Level Awards.</li>
<li><strong>Summer Internship</strong>&nbsp;with a Government Registered Company with Corporate Identification No.U72200PB2011PTCO35677.&nbsp;ThinkNEXT Technologies Private Limited has been registered as a Private Limited Company under Companies Act 1956.</li>
<li>Students just starting their journey don't have to worry about finding a job as <strong>free Spoken English, Personality Development along with preparation for interviews (HR+Technical) training</strong> will be provided.</li>
<li><strong>Summer internship</strong>&nbsp;from ISO 9001:2015 certified, Google Partner, Facebook Blueprint Certified and Microsoft Accredited company.</li>
<li><strong>Authorized Pearson Testing Center</strong> for International Exams/Certifications.</li>
<li><strong>International Certifications</strong> are provided by <strong>Microsoft, SAP and Apple, Adobe, Autodesk EC-Council IC3, W3, Unity and QuickBooks</strong>.</li>
<li>ThinkNEXT can be described as the best and most ingenious LMS, Certificate Portal and Job Portal.&nbsp;This enhances communication, provides quicker access to resources for studying and also provides support to communities.</li>
<li>For Placements, Lifetime Membership is provided in ThinkNEXT VIP Facebook Group.</li>
<li>Lifetime membership in the ThinkNEXT VIP Telegram Group, Community Support.</li>
<li>Guaranteed Job Interviews, 100% Placement Assistance.</li>
<li><strong>Online Certificate Verification facility</strong>&nbsp;with <strong>QR Code</strong>. ThinkNEXT Certificates are globally recognized.</li>
<li><strong>Affiliated Training Partner</strong> for numerous Government Skill Development Projects under NIELIT and NSDC, DoIT Punjab, PMKVY and many others.</li>
<li>Affiliated to Indian Testing Board &amp; ISTQB, International Software Testing Qualifications Board.</li>
<li><strong>Summer internship</strong>&nbsp;with an over 11 decade old company.</li>
<li>Host your site using subdomain hosting for no cost. You can also host them using webhosting.</li>
<li>Many tie-ups with IT/Electronics/Mechanical/Civil/Electrical/Retail/Textile, etc.&nbsp;companies to provide placements.</li>
<li>Lifetime Validity Education and Placement Assistance.</li>
<li>Member of CII (Confederation of Indian Industry).No.N5238P.</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                <img src="images/award-image11.webp" alt="Summer Internship in Chandigarh" title="Best Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                <img src="/php-images/php-industrial-training.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-1.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-2.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Summer Internship in Chandigarh Mohali" title="6 Month Summer Internship in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/galleryjob-fair7.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/page-5_img-4-b.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/THINKNEXT-b.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Summer Internship in Chandigarh" title="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
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
                    <h3 class="text-danger"><strong>Summer Internship - FAQs</strong></h3>
                    

<p><strong>Q1.&nbsp;What is the timeframe for an internship during this summer season in Panchkula?</strong></p>
<p>The summer internshp at Panchkula lasts for 6 weeks from beginning to end.</p>
<p><strong>Q2.&nbsp;Can you assist us in getting Google certification following the course?</strong></p>
<p>You've made the effort to develop your abilities, and now it's time to show that you're worthy of recognition for the work you've put into.&nbsp;We can provide Google confirmations that will allow you to demonstrate your excellence in a manner that is appropriate to you.</p>
<p><strong>Q3.&nbsp;I'm unable to choose an internship that aligns with my personal preferences?&nbsp;What do I do?</strong></p>
<p>It doesn't matter if someone takes part in a wide range of pursuits or who doesn't have the enough time to consider their future before choosing the right path. It's simply an issue of careful analysis.&nbsp;Here are five suggestions to make your decision simpler for you.</p>
<ul class="welcomeLinks">
<li>Do a test (or multiple tests)</li>
<li>Explore and Research</li>
<li>Explore the possibilities</li>
<li>You can find someone who will coach you.</li>
<li>Choose the strategy that will be most effective.</li>
</ul>
<p><strong>Q4.&nbsp;Do you issue any certificates?</strong></p>
<p>Yes!&nbsp;After the internship has ended, we will issue certificates.&nbsp;The QR Code is printed inside the certificates.</p>
<p><strong>Q5.&nbsp;What is the main difference between your experiences and the work of other businesses?</strong></p>
<p><strong>ThinkNEXT</strong> is the most <strong>reputable training company</strong> located at <strong>Panchkula</strong> It was founded to provide modern and specialized general training for all courses.&nbsp;In the summer, it is the ideal time to work on the development and improvement of your technical capabilities by taking part in industrial training.</p>
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
    
    <section>
<div class="container">
    <div class="row">
        <div class="col-md-4">
                    <ul class="welcomeLinks">
                         <li><a href="summer-internship-in-chandigarh-mohali.aspx">Summer Internship in Chandigarh</a></li>
                    </ul>
                </div>
    <div class="col-md-4">
                    <ul class="welcomeLinks">
                        <li><a href="summer-internship-zirakpur.aspx">Summer Internship in Zirakpur</a></li>
                    </ul>
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