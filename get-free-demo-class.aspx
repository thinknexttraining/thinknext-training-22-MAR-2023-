<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="get-free-demo-class.aspx.vb" Inherits="get_free_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .form-section {
            background: url('images/companies-background.jpg') no-repeat center;
            background-size: cover;
            position:relative;
        }

        .black-trans {
            background: #000000a6;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
        }

        .form-section p {
            line-height: 2rem;
        }

        .form-section h2, .form-section h3 {
            line-height: 3rem;
        }
        .main-video {
    
    padding: 2px;
    background: #fff;
}
        .left-0{
            left:0;
        }
        @media screen and (min-width: 992px){
.custom-menu .navbar-nav .nav-link {
    color: #000 !important;
}
.custom-menu {
    position: relative;
    background: #fff;
}
}
        @media screen and (max-width: 400px) {
            .demo-submit {
                font-size: 17px;
                font-weight: bold;
            }
        }
    </style>

    <script>

        function Validate4() {
            var isValid = false;
            isValid = Page_ClientValidate('arrangecallbackGroup1');
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup2');
            }
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup3');
            }
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup4');
            }
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup5');
            }
            
            return isValid;
        }

        function Validate5() {
            var isValid = false;
            isValid = Page_ClientValidate('callbackGroup20');
            if (isValid) {
                isValid = Page_ClientValidate('callbackGroup21');
            }
            if (isValid) {
                isValid = Page_ClientValidate('callbackGroup22');
            }
            if (isValid) {
                isValid = Page_ClientValidate('callbackGroup23');
            }
            if (isValid) {
                isValid = Page_ClientValidate('callbackGroup24');
            }

            return isValid;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="d-none">
    <div class="main-image">  
       <img src="images/free-demo-class-banner.jpg" alt="Free Demo Class ">
             </div>
        </section>


    <section class="py-5 form-section">
        <div class="black-trans"></div>
          <div class="container position-relative">
            <div class="row m-0">
              <div class="col-lg-6">                
                              
                  <h2 class=" pb-3 text-center h1"><strong class="text-warning">ThinkNEXT has placed 20,000+ students in reputed companies since 2012.</strong></h2>

                  <h2 class="text-white text-center fw-bold">Live Project Training + Internship + 100% Jobs Placement</h2>
            <p class=" text-white text-center">5+ Years of Experienced Trainer – Full e-Study Materials + 2 Hours Classes + Innovation Oriented Environment. Highest Placements Rate in Chandigarh Tricity. Special PG/ Hostel Facility.</p>
                 <h3 class="pb-2 text-white text-center fw-bold">Join ThinkNEXT and say goodbye to unemployment forever!</h3>
                  <h4 class="text-warning text-center fw-bold">Online and Offline Classes Available*</h4>
                  </div>

                  <div class="col-lg-6 text-justify">
                                                 
                      <div class="pb-2 py-3 px-4 bg-black border border-warning rounded">
                      
                          <h3 class="text-white text-center"><strong>Register For A FREE Counselling Call & FREE Demo class</strong></h3>
                          <div class="pb-3 px-md-4" id="regform">
                              <div class=" position-relative">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                           
                            <br />
                            <div class="form-group mb-0">

                                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtName" ValidationGroup="arrangecallbackGroup2" ErrorMessage="Please Enter The Name " class="text-warning"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group mb-0">

                                <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" placeholder="Mobile No."></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="txtMobile" ValidationGroup="arrangecallbackGroup1" ErrorMessage="Please Enter Valid Mobile No" class="text-warning" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtMobile" ValidationGroup="arrangecallbackGroup4" ErrorMessage="Enter The Mobile No"  CssClass="text-warning position-absolute left-0"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-0">

                                <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtEmailId" ValidationGroup="arrangecallbackGroup3" ErrorMessage="Enter The Valid Email ID" class="text-warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtEmailId" ValidationGroup="arrangecallbackGroup5" ErrorMessage="Enter The Valid Email ID" CssClass="text-warning position-absolute left-0"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-0">
                                <asp:TextBox ID="txtCourses" runat="server" class="form-control" placeholder="Course Interested In"></asp:TextBox>
                            </div>
                            <div class="text-center">
                                <br />

                            </div>
                          

                            <div class="form-group text-center mt-4">
                                <asp:Button ID="btnsubmit" runat="server" Text="BOOK MY DEMO CLASS" CssClass="btn bg-warning px-3 h4 w-100 demo-submit" OnClientClick="return Validate4()" OnClick="btnsubmit_Click" />
                                <asp:TextBox ID="txtfranchisecode" runat="server" CssClass="search_submit_button trans_200" Visible="False" Text="TNK101"></asp:TextBox>

                            </div>

                            <br />
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

    <section class="py-5 bg-black">
        
        <div class="container">
            <h4 class="text-center h2 fw-bold text-warning">Student Testimonials</h4>
            <br />
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/5wnG2Vo_E1A" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/digital-marketing-training-in-chandigarh-muwato.jpg" alt="Six Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/cSgspEz46EA" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/digital-marketing-course-in-chandigarh-suhella.jpg" alt="Best Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/NVyztv3a7aA" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/digital-marketing-course-in-chandigarh-tejasvi.jpg" alt="6 Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

               <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/qSJMg3X_yk0" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/digital-marketing-training-in-chandigarh-pravesh.jpg" alt="Digital Marketing Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain">
                <div id="video-view"></div>
            </div>
        </div>
    </section>

    <section class="py-5" style="background:#eaefff;">
          <div class="container">
              <h4 class="h3 text-center fw-bold text-danger">Apply for a Free Trial Class</h4>
              <p class="text-center">If you would like to take a tour of our facilities and experience the atmosphere first-hand through a free demo lesson, just fill out the form below and we will arrange for a visit at a time convenient to you.</p>
            <div class="row mt-5">
              <div class="col-lg-7 text-center">    
                 <img class="rounded-circle border shadow mb-3" src="images/supportimage2.jpg">
                                <h2 class="text-center text-danger fw-bold mb-3">ThinkNEXT Online Support</h2>
              <h2 class="text-center fw-bold">For queries, feedback & assistance</h2>            
                  <h3 class="mb-1 h3 text-danger fw-bold">(9:30 AM - 6:30 PM)</h3><br />
<h2 class="fw-bold">For Admissions & Career Counselling</h2>
<h2 class="text-danger fw-bold"><a href="tel:7837401000" class="text-decoration-none text-danger">78374-01000</a></h2>
  
                  </div>

                  <div class="col-lg-5 text-justify">
                                                 
                      <div class="py-3 px-4 bg-black" >
                        <h3 class="text-white text-center"><strong>Arrange a Call Back</strong></h3>

                        <div class=" position-relative">
                            <asp:Label ID="LblCbMsg" runat="server"></asp:Label>
                            
                            <br />
                            <div class="form-group mb-0">

                                <asp:TextBox ID="TxtCbName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TxtCbName" ValidationGroup="callbackGroup20" ErrorMessage="Please Enter The Name " class="text-warning"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group mb-0">

                                <asp:TextBox ID="TxtCbPhone" runat="server" class="form-control" MaxLength="10" placeholder="Mobile No."></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ControlToValidate="TxtCbPhone" ValidationGroup="callbackGroup21" ErrorMessage="Please Enter Valid Mobile No" class="text-warning" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TxtCbPhone" ValidationGroup="callbackGroup22" ErrorMessage="Enter The Mobile No" CssClass="text-warning position-absolute left-0"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-0">

                                <asp:TextBox ID="TxtCbEmail" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" ControlToValidate="TxtCbEmail" ValidationGroup="callbackGroup23" ErrorMessage="Enter The Valid Email ID" class="text-warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TxtCbEmail" ValidationGroup="callbackGroup24" ErrorMessage="Enter The Email ID" CssClass="text-warning position-absolute left-0"></asp:RequiredFieldValidator>
                            </div>
                          
                          
                            <div class="form-group text-center mt-3">
                                <asp:Button ID="BtnCallBack" runat="server" Text="Submit" CssClass="btn bg-warning px-3 h4 width-100" OnClientClick="return Validate5()" OnClick="BtnCallBack_Click" />
                               

                            </div>

                            <br />
                        </div>


                    </div>

                    
                  </div>
                </div>
              </div>
    </section>
</asp:Content>

