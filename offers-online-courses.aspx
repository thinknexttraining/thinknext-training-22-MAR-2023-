<%@ Page Title="Offers Online Courses" Language="VB" MasterPageFile="~/MasterPage5.master" AutoEventWireup="false" CodeFile="offers-online-courses.aspx.vb" Inherits="offers_online_courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .form-control {
            height:40px;
            font-size: 17px;
        }
   
        .btnSubmit{
        background: #ff9800;
    padding: 10px 30px;
    font-size: 19px;
    border-radius: 4px;
    }
       
        #offerform {
            background: #ececec;
        }
        .formdiv{
          
               background-image: url(images/offer-bg-img.jpg);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
        }
          .formdiv::before {
    content: ""; 
      background: #006796;
    opacity: 0.7;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: 0;
}
        .thinknextwhy {
            background: #060e1e;
            background-size: cover;
        }
        #coursesoffer{
            display:none;
        }
        .thinknext-edge-section h4 {
            color: #fff;
            font-weight: bold;
            font-size: 30px;
        }

        .thinknext-edge-section p {
            font-size: 15px;
            color: #fff;
            letter-spacing: 0.2pt;
        }

        .thknxt-edge p span {
            float: right;
            width: 95%;
            color: #fff !important;
        }


        #profiles .profile {
            padding: 10px;
            border: 4px solid #fff;
        }

        .offer-discount {
            position: absolute;
            background: #FF9800;
            color: #fff;
            padding: 6px 11px;
            font-size: 15px;
            font-weight: bold;
        }

        .bg-grey {
            background: #efeeee;
        }

        .shadow-lg {
            box-shadow: 0 1rem 3rem rgba(0,0,0,.175) !important;
        }
      

        @media screen and (max-width:768px) {
            .main-head {
                font-size: 30px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image">

        <img src="images/online-sale-course.jpg" title="Online Training Course in India" alt="Online Training Course in India" />
    </div>

    <section class="ptb-20 ">
        <div class="container-fluid">
             <br>           
            <p class="threetimesaward text-light">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 ptb-10">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Six Weeks Photography Course in Chandigarh" title="Six Weeks Photography Course in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 ptb-10">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Six Weeks Photography Course in Chandigarh" title="Six Weeks Photography Course in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 ptb-10">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Six Weeks Photography Course in Chandigarh" title="Six Weeks Photography Course in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 ptb-10">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Six Weeks Photography Course in Chandigarh" title="Six Weeks Photography Course in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 ptb-10">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Six Weeks Photography Course in Chandigarh" title="Six Weeks Photography Course in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 ptb-10">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Six Weeks Photography Course in Chandigarh" title="Six Weeks Photography Course in Chandigarh">
                </div>

            </div>
        </div>
    </section>
    <section id="offerform" class="ptb-30">
        <div class="container register">
            <div class="col-md-10 float-none m-auto">
                <div class="d-flex d-xs-block">
                    <div class="col-md-6 d-flex  pd-0">
                        <div class="display-none">
                            <h2 class="text-white">Fill the Form to see All Offers</h2>
                            <ul class="welcomeLinks">
                                <li>Under Graduates, Graduates, Job &amp; Career Seekers</li>
                                <li>MBA Marketing &amp; Marketing Heads</li>
                                <li>Media Advertising Professionals</li>
                                <li>Small, Medium &amp; Large Business Owners</li>
                                <li>Entrepreneurs &amp; CEO’s</li>
                                <li>Business Development Managers</li>
                                <li>Freelancers, Bloggers &amp; Web Designers</li>
                            </ul>
                        </div>

                        <img src="images/offer-image11.jpg" alt="Online Courses" />

                    </div>


                    <div class="col-md-6 d-flex ptb-30 plr-40 formdiv" id="formsub">
                        <div style="z-index: 1;">
                            <h2 class="text-white text-center">Fill the Form to see all Offers</h2>
                            <br />
                            <p class="text-center"><strong><span class="text-danger" id="SuccessMsg"></span></strong></p>
                            <div class="row register-form">
                                <div class="col-md-12">
                                  <form id="form1" runat="server">
                                         <div class="form-group">
                                             <%--<input type="text" name="PersonName" class="form-control form-control-lg" placeholder="Your Name *" value="" required="">--%>
                                             <asp:TextBox ID="PersonName" runat="server" class="form-control form-control-lg" placeholder="Your Name *"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PersonName" ErrorMessage="Please Enter Your Name" CssClass="required"></asp:RequiredFieldValidator>
                                         </div>
                                        
                                         <div class="form-group">
                                             <%-- <input type="email" name="PersonEmail" class="form-control form-control-lg" placeholder="Your Email *" value="" id="Email" required="">--%>
                                             <asp:TextBox ID="PersonEmail" runat="server" class="form-control form-control-lg" placeholder="Your Email *"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PersonEmail" ErrorMessage="Please Enter Your Email" CssClass="required"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                 ErrorMessage=" Email invalid" ControlToValidate="PersonEmail"
                                                 Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"
                                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                         </div>
                                        <div class="form-group">
                                            <%--<input type="number" name="MobileNo" class="form-control form-control-lg" placeholder="Your Contact Number *" value="" id="Phone" onkeypress="if(this.value.length==10) return false;" required="">--%>
                                         <asp:TextBox ID="MobileNo" runat="server" class="form-control form-control-lg" placeholder="Your Contact Number *" ></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileNo" ErrorMessage="Please Enter Your Contact Number" CssClass="required"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage=" Phone number Invalid" ControlToValidate="MobileNo" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ></asp:RegularExpressionValidator> 
                                        </div>
										
										
                                        <div class="form-group text-center">
                                            <asp:Button ID="SubmitButton"   runat="server" Text="Submit" class="btnSubmit bg-dark border-0 text-white"/>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>


    <section style="background: #38b7be;" class="pd-30 d-none">
        <div class="container">

            <div class="col-lg-6 col-md-6">
                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/six-months-industrial-training-mohali-thinknext.jpg" title="Six Months Industrial Training in Chandigarh" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>

            <div class="col-lg-6 col-md-6">

                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/industrial-training-course-mohali-krishma.jpg" title="Best Industrial Training in Chandigarh" alt="Best Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>

            <div class="col-lg-6 col-md-6">

                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/best-industrial-training-company-mohali-sunil.jpg" title="6 Months Industrial Training in Chandigarh" alt="6 Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>

            <div class="col-lg-6 col-md-6">

                <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                    <img class="main-video" src="images/industrial-training-mohali-award-surinder.jpg" title="Six Months Industrial Training in Chandigarh" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
            </div>
        </div>
        <div id="video-view-curtain">
            <div id="video-view"></div>
        </div>
    </section>
    <div class="clear-both"></div>


    <section class="thinknext-edge-section thinknextwhy pd-30 d-none">
        <div class="thknxt-edge">
            <h4 class="text-center">Why Online Training from ThinkNEXT</h4>
            <br>
            <div class="col-lg-6 col-md-6 col-sm-6">

                <p><i class="fa fa-square"></i><span><strong>4 Times National Award Winning Institute: ThinkNEXT </strong>is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020  </span></p>
                <p><i class="fa fa-square"></i><span><strong>Online Training Courses</strong> from Google Partner, Facebook Blueprint Certified, Hubspot Certified and Bing Certified Institute  </span></p>
                <p><i class="fa fa-square"></i><span><strong>Industry Expert Trainers:</strong>  We have highly experienced and certified Professionals/Trainers equipped with in-depth knowledge  </span></p>
                <p><i class="fa fa-square"></i><span><strong>Affordable Fees:</strong> Join our Online Training Courses with the lowest fees  </span></p>
                <p><i class="fa fa-square"></i><span><strong>Professional Online Course in India at ThinkNEXT with International Certifications from Microsoft and Hewlett Packard </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Step-by-step live demonstrations for each software/technology </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Enjoy the undivided attention of the mentor to learn faster </strong></span></p>

            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">
                <p><i class="fa fa-square"></i><span><strong>Personalized study and training plans are provided as you progress through the course </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Have the exact same learning experience as being in a traditional classroom training </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Same projects and evaluation techniques will be followed like classroom courses </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Learn new technologies from the comfort of your home </strong></span></p>
                <p><i class="fa fa-square"></i><span><strong>Interview Question Answer Preparation:</strong>  Assistance is provided for the basic interview questions answers. Get all the tips and tricks to crack the interview </span></p>
                <p><i class="fa fa-square"></i><span><strong>100% Placement Support: </strong>We have an expert team to line up your placement calls until you get the job  </span></p>
                <p><i class="fa fa-square"></i><span><strong>Grooming Sessions:</strong> Spoken English, Personality Development  </span></p>

            </div>
            <div class="clear-both"></div>

        </div>

    </section>
    <section class="pd-30 d-none">
        <div class="container">
            <div class="col-md-3 text-center"></div>
            <div class="col-md-6 col-sm-12 text-center">
                <a href="#formsub">
                    <img src="images/offers-online-courses-min.jpg" alt="Online Course" title="Online Courses"></a>
            </div>
            <div class="col-md-3 text-center"></div>
        </div>
    </section>
  

</asp:Content>



