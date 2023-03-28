<%@ Page Title="Stipend based Industrial Training in Chandigarh Mohali." Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="stipend-based-industrial-training.aspx.vb" Inherits="stipend_based_industrial_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <meta name="description" content="ThinkNEXT is Providing Best 6 Months/3 Months/6 weeks stipend based Industrial training for B.Tech (All Branches)/MCA/M.Sc (IT)/Diploma and other graduate students. Students, who are interested to get stipend based or Free training/internship and 100% placement assistance" />   
    <meta content="stipend based industrial training in mohali, stipend based training in mohali, stipend based internship training in chandigarh, stipend based training in chandigarh, stipend based training, stipend based industrial training, stipend based internship training in mohali, 6 months internship training in chandigarh, 6 months internship in mohali" name="keywords">
 <link rel="canonical" href="https://www.thinknexttraining.com/stipend-based-industrial-training.aspx" />
    <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/stipend-based.png" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/stipend-based.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->

    <!-- google+ sharing image,Title,Description show  -->
    <meta itemprop="name" content="Stipend based 6 weeks/six months Industrial Training in Chandigarh, Mohali." />
    <meta itemprop="description" content="ThinkNEXT is Providing Stipend based 6 Months/6 Weeks Industrial Training/Internship in Chandigarh/Mohali through Aptitude-Cum-Technical Test." />
    <meta itemprop="image" content="http://www.thinknexttraining.com/share-images/stipend-based.png" />
     <!--  End// Google+ -->
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image">
       <a href="#regform"> <img src="images/Stipend-Based-Industrial-Training-min.jpg" class="border" alt="Stipend based Industrial Training in Chandigarh Mohali" /></a>

    </div>
    <section class="py-4">
        <div class="container">
            <div class="text-center backgroundmaroon p-3">
                Register for Stipend based 6 Months/6 Weeks Industrial Training in Chandigarh/Mohali through Aptitude-Cum-Technical Test
            </div>
            <br />
            <div class="row">
                <div class="col-md-7 mb-3 m-md-0">
                    <div class="p-2 border">
                        <h1>Stipend Based Industrial Training in Chandigarh Mohali</h1>
                        <div class="text-justify">
                            <p>ThinkNEXT Technologies Private Limited, Mohali (Chandigarh) offers 6 Months/3 Months/6 weeks stipend based Industrial training for B.Tech (All Branches)/MCA/M.Sc (IT)/Diploma and other graduate students. Students, who are interested to get stipend based or Free training and 100% placement assistance with Free Spoken English, Personality Development and Interview Preparation (HR+Technical Round) classes, are required to register and enroll for Aptitude-cum-Technical Test. Students clearing the exam may get Stipend upto Rs. 10000/- per Month or scholarship upto 100% depending upon the marks they are getting in this test.</p>
                        </div>
                    </div>
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt">
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


                    </div>
                </div>
                <div class="col-md-5"">
                    <div class="py-3 px-4 bg-black" id="regform">
                        <h3 class="text-white text-center"><strong>Register for Stipend Based Industrial Training</strong></h3>
                        <div class="mt-3">
                            <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label>

                            <div class="form-group">
                                <asp:TextBox ID="txtNameR" runat="server" class="form-control" placeholder="Name" name="field1"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtNameR" ValidationExpression="[a-zA-Z ]*$" ForeColor="red"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtEmailR" runat="server" name="field2" class="form-control" placeholder="Email"></asp:TextBox>
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
                <div>
                    <asp:Label ID="lblnewssss" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lblweekmonth" runat="server" Visible="false" Text="Free 6 Months/6 Weeks"></asp:Label>
                </div>
                <table class="table table-borderless align-middle text-white" border="0">
                    <tbody>
                        <tr>
                            <td class="width25"><strong class="text-warning">Test Dates</strong></td>
                            <td><strong><span>20/03/2023 to 04/04/2023</span></strong></td>
                        </tr>
                        <tr>
                            <td><strong class="text-warning">Timings</strong></td>
                            <td><strong>Between 10:00 AM to 5:00 PM (Any Time)</strong></td>
                        </tr>
                        <tr>
                            <td><strong class="text-warning">Test Duration</strong></td>
                            <td><strong>20 Minute</strong></td>
                        </tr>
                        <tr>
                            <td><strong class="text-warning">Venue</strong></td>
                            <td><strong>ThinkNEXT Technologies Private Limited<br>
                                SCF 113, Sector 65, Phase-XI, Mohali (Chandigarh)<br>
                                <a href="http://www.thinknext.co.in">www.thinknext.co.in</a></strong></td>
                        </tr>
                        <tr>
                            <td>
                                <strong class="text-warning">Contact</strong>
                            </td>
                            <td>
                                <strong>0172-4656197, 7837401000, 7837402000, 7837404000</strong>
                                <br>
                                <strong>Toll Free: 1800-102-4102 &nbsp; &nbsp;
                                    <img src="wp-content/themes/bluediamond/images/icon/social-icon/Whatsapp.png" alt="Whatsapp">
                                    78374-04000</strong>
                            </td>

                        </tr>
                        <tr>
                            <td><strong class="text-warning">Certification</strong></td>
                            <td><strong>Dual Certification i.e. Govt. of India and ThinkNEXT</strong></td>
                        </tr>
                        <tr>
                            <td>
                                <strong class="text-warning">Description</strong>
                            </td>
                            <td>
                                <strong>Apart from Stipend Based Industrial Training, Students will be provided free Spoken English, Personality Development with training on daily basis</strong>
                            </td>

                        </tr>


                    </tbody>
                </table>


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
            <h3 class="text-danger mb-1"><strong>Why ThinkNEXT for Stipend Based Industrial Training in Chandigarh </strong></h3>
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
