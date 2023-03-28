<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="stipend-based-internship-in-chandigarh-mohali.aspx.vb" Inherits="stipend_based_industrial_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <title>Stipend based Internship Training in Chandigarh Mohali Panchkula</title>
      <meta name="description" content="ThinkNEXT is Providing Stipend based Internship in Chandigarh Mohali through Aptitude-Cum-Technical Test." />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="https://www.thinknexttraining.com/share-images/stipend-based.png" />
    <meta property="og:image" content="https://www.thinknexttraining.com/share-images/stipend-based.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    <meta itemprop="name" content="Stipend based Internship Training in Chandigarh Mohali Panchkula" />
    <meta itemprop="description" content="ThinkNEXT is Providing Stipend based Internship in Chandigarh Mohali through Aptitude-Cum-Technical Test." />
    <meta itemprop="image" content="https://www.thinknexttraining.com/share-images/stipend-based.png" />
   <!--  End// Google+ -->
     <link href="css/div.css" type ="text/css" rel="stylesheet" />
    <style>
    .form-group {margin-bottom: 1rem;}        
        .text-justify{ text-align:justify; }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image">
        <img src="images/Stipend-Based-Industrial-Training-min.jpg" class="border" alt="Stipend based Industrial Training in Chandigarh Mohali" />

    </div>


     <section class="py-4">
        <div class="container">

             <div class="text-center backgroundmaroon p-3">
                Register for Stipend based 6 Months/6 Weeks Industrial Training/Internship in Chandigarh/Mohali through Aptitude-Cum-Technical Test   
            </div>
            <br />
            <div class="row">
                <div class="col-md-7 mb-3">
                    <div class="p-2 border">
                          <h1>Stipend Based Internship in Chandigarh Mohali&nbsp;</h1>
                        <div class="text-justify">
                          <p>ThinkNEXT Technologies Private Limited, Mohali (Chandigarh) offers 6 Months/3 Months/6 weeks Stipend Based Internship for B.Tech (All Branches)/MCA/M.Sc (IT)/Diploma and other graduate students. Students who are interested to get free Internship and 100% placement assistance with Free Spoken English, Personality Development and Interview Preparation (HR+Technical Round) classes are required to register and enroll for Aptitude-cum-Technical Test. Students clearing the exam may get Stipend upto Rs. 10000/- per Month or scholarship upto 100% depending upon the marks they are getting in this test.</p>
                        </div>
                    </div>
                      <div class="pad-top-bot0 pd-lft-rght-5prcnt">
                        <div class="right_box margin-top">
                            <div class="without_border dwl">
                                <div class="brochiframe" id="brochiframe">

                                    <iframe name="broucher"></iframe>

                                    <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()" />

                                </div>

                                <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher">
                                    <img src="images/download_brochure.png" alt="Sap ABAP Training">
                                </a>

                            </div>
                        </div>


                    </div>
                </div>
                <div class="col-md-5">
                    <div class="py-3 px-4 bg-black">
                        <h3 class="text-white text-center"><strong>Register for Stipend Based Industrial Training</strong></h3>
                        <div class="mt-3">
                           <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"  Visible="False"></asp:Label>

                            <div class="form-group">
                                    <asp:TextBox ID="txtNameR" runat="server" class="form-control" placeholder="Name" name="field1"></asp:TextBox>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtNameR" ValidationExpression="[a-zA-Z ]*$" ForeColor="red"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                              <asp:TextBox ID="txtEmailR" runat="server" name="field2" class="form-control"  placeholder="Email"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailR" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                           <asp:TextBox ID="txtContectR" runat="server" name="field3" class="form-control" placeholder="Mobile No." MaxLength="10"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtContectR" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="red"></asp:RegularExpressionValidator>
                            </div>

                             <div class="d-none">
                            <asp:TextBox ID="txtcollege" runat="server" class="form-control" Style="margin: 0; text-transform: capitalize;"></asp:TextBox>
                            </div>

                            <%--<asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox> --%>
                            <div class="form-group text-center">
                             <asp:Button ID="btnSave" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4" Text="Register" OnClick="btnSave_Click" />
                                   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="py-5" style="background: #171425;">
        <div class="container">
           <div class="row m-0">

                        <%--  <p style="text-align: justify;"><font style="font-size:medium;font-weight:bold;color:Black; "> Students clearing the scholarship exam will be provided Free 6 Months Industrial Training and Dual Certification of ThinkNEXT and Govt. of India (under Digital India Government) Project. Apart from that these students will be provided FREE Spoken English, Personality Development, IELTS and Interview Preparation Classes on daily basis. These students will also be given preference for placement in ThinkNEXT after their training. </font></p>--%>


                        <%-- Thinknext Technologies detail view (20-09-2016) --%>

                        <h2 class="display-none">Limited Seats Available</h2>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p>
                                <strong class="text-warning">Test Dates</strong>

                            </p>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                              <p class="text-white">
                                <strong><span>20/03/2023 to 04/04/2023
                                    <asp:Label ID="lblnewssss" runat="server" Visible="false"></asp:Label><asp:Label ID="lblweekmonth" runat="server" Visible="false" Text="Free 6 Months/6 Weeks"></asp:Label></span></strong>
                            </p>
                        </div>
                        <div class="clear-both"></div>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p>
                                <strong class="text-warning">Timings</strong>
                            </p>

                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                                <p class="text-white">
                                <strong>Between 10:00 AM to 5:00 PM (Any Time)</strong>
                            </p>
                        </div>
                        <div class="clear-both"></div>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p><strong class="text-warning">Test Duration</strong></p>

                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                              <p class="text-white">
                                <strong>20 Minute</strong>
                            </p>
                        </div>
                        <div class="clear-both"></div>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p>
                                <strong class="text-warning">Venue</strong>
                            </p>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                               <p class="text-white">
                                <strong>ThinkNEXT Technologies Private Limited<br />
                                    SCF 113, Sector 65, Phase-XI, Mohali (Chandigarh)<br />
                                    <a href="http://www.thinknext.co.in">www.thinknext.co.in</a></strong>
                            </p>
                        </div>
                        <div class="clear-both"></div>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p>
                                <strong class="text-warning">Contact</strong>
                            </p>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                               <p class="text-white">
                                <strong>0172-4656197, 7837401000, 7837402000, 7837404000</strong>
                                <br />
                                <strong>Toll Free: 1800-102-4102 &nbsp; &nbsp;
                                    <img src="wp-content/themes/bluediamond/images/icon/social-icon/Whatsapp.png" alt="Whatsapp" />
                                    78374-04000</strong>

                            </p>
                        </div>
                        <div class="clear-both"></div>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p>
                                <strong class="text-warning">Certification</strong>
                            </p>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                               <p class="text-white">
                                <strong>Dual Certification i.e. Govt. of India and ThinkNEXT</strong>
                            </p>
                        </div>
                        <div class="clear-both"></div>

                        <div class="col-lg-2 col-md-3 col-sm-3">
                            <p>
                                <strong class="text-warning">Description</strong>
                            </p>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                            <p class="text-white">
                                <strong>Apart from Stipend Based Internship, Students will be provided free Spoken English, Personality Development with training on daily basis</strong>
                            </p>
                        </div>
                        <div class="clear-both"></div>

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
    
    <section class="py-4">
        <div class="container">
            <h3 class="textred mb-1"><strong>Why ThinkNEXT for Stipend Based Internship in Chandigarh Mohali </strong></h3>
            <div class="row">
                <div class="col-12">
                    <ul class="welcomeLinks">
                        <li>Stipend based Industrial Training from National Gratitude Award 2020 Winner Company (Award for Best Digital Marketing and Industrial Training Company)</li>
                         <li>Stipend based Industrial Training from Asia's Quality & Entrepreneurship Award 2019 Winner Company (Award for Best Web Development and Industrial Training Company)</li>
                        <li>Stipend based Industrial Training from Business Leaders Award 2019 Winner Company (Award for Best Digital Marketing and Industrial Training Company)</li>
                        <li>Stipend based Industrial Training from National Award Winner 2018 Company. ThinkNEXT got National Icon Award from Bollywood Film Actor Sunil Shetty on 20-07-2018 at New Delhi for "Best Web Development and Industrial Training Company"</li>
                        <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes on Daily basis so that students need not to struggle for jobs as a fresher.</li>
                        <li>Convenient Timings, Weekend Batches & doubt sessions.</li>
                        <li>Part-Time/Full-Time Job offer for each student during training</li>
                        <li>In case you miss a few classes we can provide you, backup Classes.</li>
                        <li>ThinkNEXT training certificates are globally accepted and recognized.</li>
                        <li>Industrial Training from Google/Microsoft/Facebook/Hubspot Certified Company.</li>
                        <li>100% Job Placement assistance.</li>
                       
                    </ul>
                </div>

            </div>
        </div>
    </section>

        <section style="background: #eaeaea;">
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

    <div class="page-div">

        <br />



       
      
        <div class="col-sm-12">
            <h5>Top Search</h5>
            <a href="stipend-based-internship-in-chandigarh-mohali.aspx">Stipend based internship in chandigarh</a>, <a href="stipend-based-training-in-mohali.aspx">Stipend based training in mohali</a>
            <br />
            <br />
        </div>

        <div class="clear-both"></div>

    </div>

</asp:Content>
