<%@ Page Title="Industrial Training or Internship for MBA BBA Students in Chandigarh Mohali" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="industrial-training-internship-mba-bba-students-chandigarh-mohali.aspx.vb" Inherits="stipend_based_industrial_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <meta name="description" content="6 Months/Weeks Industrial Training or Internship for MBA/BBA Students in Chandigarh Mohali - ThinkNEXT is top Python training company that provides Python training in chandigarh from ThinkNEXT Company expert as trainers and get details on python classes in Chandigarh" />
        <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">  
 <img src="images/mba-bba-industrial-training-internship-chandigarh-mohali.jpg" alt="Industrial Training Course for MBA BBA" />

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
                <h1>Industrial Training or Internship for MBA BBA Students in Chandigarh Mohali</h1>

                <p class="mb-1"><strong class="textred">Are you interested in Industrial Training/Internship for MBA BBA Students in Chandigarh Mohali?</strong> </p>
              

                <p class="mb-1"><strong class="text-primary">If Yes, then</strong> </p>
                <p class="mb-1"><strong class="text-primary">Your search ends here. Finally, You are at the RIGHT PLACE</strong> </p>
                <p class="mb-1"><strong class="text-primary">You are at ThinkNEXT Technologies Private Limited </strong> </p>
                <p class="mb-1"><strong class="text-primary">&nbsp; -Biggest brand for MBA BBA Training/Internship</strong> </p>
                <p><strong class="text-primary">&nbsp;   -Best Training/Internship in Chandigarh Mohali Mohali for MBA BBA</strong> </p>
                <div class="text-justify">
                    <p>ThinkNEXT Technologies Pvt. Ltd. is a professional ISO 9001:2015 certified company driven by a passion to provide Industrial Training/Internship for MBA BBA students in Chandigarh Mohali in the field of HR, Marketing, Finance, IT, International Business & Digital Marketing.</p>
                    <p>Stipend Based/Free MBA BBA Industrial Training/Internship is also offered to the students so that they can earn while they learn during their internship or training in Chandigarh Mohali.</p>
                    <p>Interns will be offered with a deep understanding and development of important business skills such as leadership, communication skills, critical thinking and decision-making in our MBA BBA training/internship program.</p>
                    
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
                                    <img src="images/download_brochure.png" alt="Free Online Internship with Certificate">
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

                  <div class="col-md-12 mt-3 ">
                      <div class="text-justify">
                          <p>Not only this, interns undertaking MBA BBA training/internship with Certificate at ThinkNEXT will also learn more about business careers in the technology industry and improve their skills. Apart from day-to-day tasks, interns will participate in a program, exposing them to the many aspects of ThinkNEXT’s business.</p>
                      <p>ThinkNEXT is felicitated 4 times with the National Awards in the field of Industrial Training, Web Development & Digital Marketing.</p>    
                          <p>Join ThinkNEXT today for MBA BBA Training/Internship in Chandigarh Mohali and start your legacy!</p>
                      </div>
                      </div>
            
                </div>
        </div>
    </section>

    <section class="bg-ececec py-4">
        <div class="container">
            <div class="text-justify">
                <h2 class="text-danger"><strong>6 Months/3 Months/6 Weeks Industrial Training/Internship for MBA BBA Students in Chandigarh Mohali</strong></h2>
                <p>ThinkNEXT Technologies Private Limited provides the best 6 months/3 months/6 weeks summer training/internship opportunity to MBA BBA students in Chandigarh Mohali in various training programs or courses such as following:</p>
                <div class="row ">
                    <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="HR-training-in-chandigarh-with-management-internship.aspx"><img src="images/human-resources-online-training.jpg" alt="HR Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="HR-training-in-chandigarh-with-management-internship.aspx" class="fw-bolder text-decoration-none h4">HR</a></div>
                            </div>

                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="marketing-training-internship-in-chandigarh-mohali.aspx"><img src="images/marketing-online-training.jpg" alt="Marketing Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="marketing-training-internship-in-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">Marketing</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="finance-training-internship-in-chandigarh-mohali.aspx"><img src="images/finance-online-training.jpg" alt="Finance Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="finance-training-internship-in-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4">Finance</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="it-training-internship-in-chandigarh-mohali.aspx"><img src="images/it-information-technology-min.jpg" alt="IT Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="it-training-internship-in-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4"> IT (Information Technology)</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="international-business-training-internship-in-chandigarh-mohali.aspx"><img src="images/international-business.jpg" alt="IB Training Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="international-business-training-internship-in-chandigarh-mohali.aspx" class="fw-bolder text-decoration-none h4"> International Business</a></div>
                            </div>
                    </div>

                     <div class="col-md-4 mb-4">
                        <div class="bg-white">
                        <div><a href="digital-marketing-course-training-in-chandigarh.aspx"><img src="images/digital-marketing-course-internship-min.jpg" alt="Digital Marketing Internship in Chandigarh"></a></div>
                        <div class="p-3 text-center"><a href="digital-marketing-course-training-in-chandigarh.aspx" class="fw-bolder text-decoration-none h4">Digital Marketing</a></div>
                            </div>
                    </div>
                </div>
                <ul class="welcomeLinks mt-3">
               <li>Get complete core knowledge of Sales, Marketing, HR, Finance, Digital Marketing</li>
 <li>Get ThinkNEXT Certification after completion of MBA BBA Training/Internship Program</li>
 <li>Get your desired jobs with the help of ThinkNEXT Certificate</li>
 <li>Experience the business environment of an organization</li>
 <li>Development of important business skills such as leadership, communication skills, critical thinking and decision-making</li>
 <li>Get a chance to witness how the companies actually work </li>

                </ul>
     
            </div>

        </div>

    </section>

    <section class="ptb-20">
        <div class="jackopt-offer-img ">
            <br>
            <p class="threetimesaward">4 Times National Award Winner Company</p>

            <img src="images/free-online-internship-with-certificate-sunielshetty.jpg" alt="Free online internship with certificate" title="Free online internship with certificate">
            <img src="images/free-online-internship-program-krismak.jpg" alt="Free online internship with certificate" title="Free online internship with certificate">
            <img src="images/online-free-internship-certificate-surindrapal.jpg" alt="Free online internship with certificate" title="Free online internship with certificate">
            <img src="images/free-online-internship-sonalibendre.jpg" alt="Free online internship with certificate" title="Free online internship with certificate">

            <div class="clear-both"></div>
        </div>
    </section>
    <section class="py-4">
        <div class="container">
                        <div class="d-none d-md-block">
                <div>
                    <img src="images/free-internship-certificate-online-award13.jpg" alt="Free online internship" />
                </div>
                <div>
                    <img src="images/free-internship-certificate-online-award12.jpg" alt="Free online internship" />
                </div>
                <div>
                    <img src="images/free-internship-certificate-online-award.jpg" alt="Free online internship" />
                </div>
            </div>
             <div class="d-md-none">
                   <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award6.jpg" alt="Free online internship" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award5.jpg" alt="Free online internship" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award4.jpg" alt="Free online internship" />
        </div>
              <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award3.jpg" alt="Free online internship" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award2.jpg" alt="Free online internship" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/free-internship-certificate-online-award1.jpg" alt="Free online internship" />
        </div>
                 </div>
        </div>
               </section>




    <section class="bg-dark py-4">
        <div class="container">
            <div class="text-white">
                    <h3 class="text-warning"><strong>Eligibility for enrollment in MBA BBA Industrial Training/Internship program</strong></h3>
<p>Any graduate candidate who is pursuing or has pursued an MBA BBA professional degree in the fields of HR, Marketing, Finance, IT, International Business & Digital Marketing is eligible for 6 months/3 months/6 weeks MBA BBA training/internship.</p>

                <h3 class="text-warning"><strong>Training/Internship Program For MBA BBA Jobs In Chandigarh Mohali</strong></h3>
                <ul class="welcomeLinks">
                    <li>MBA BBA Training/Internship provides a real life experience and exposure for the students on the latest and trending technologies in the core companies.</li>
                    <li>Below given are some of the most popular job profiles after MBA BBA Training/Internship in Chandigarh Mohali: 
                        <ul>
                            <li><i class="fa fa-hand-o-right"></i>&nbsp; Data Scientist</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Digital Marketer</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Product Manager</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Database Manager</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Graphic Designer</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Marketing Executive</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Human Resource Manager</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Business Development Executive</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Market Research Analyst</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Sales Executive</li>
<li><i class="fa fa-hand-o-right"></i>&nbsp; Management Trainee</li>

                        </ul>
                    </li>

                </ul>

            </div>
        </div>

    </section>



    <section class="bg-dark py-4 d-none">
        <div class="container">
            <div class="row">
                 <div class="col-lg-7 text-justify text-white">
           <div class=" position-sticky top-0">
            <h3 class="text-warning"><strong>What is Online Internship? </strong></h3>
            <div class="text-justify">
                 <p>An online internship is a work experience program where an intern gains hands-on experience while working in a remote professional setting and is not physically present at the job address.</p>
                 <p>Online interns communicate with
                     their supervisor online through various means including email, Skype, Whatsapp, instant messaging, phone conversations, webinars, project management tools, SMS messaging, etc.</p>
                <p class="text-warning">Also read <a href="internship-in-chandigarh.aspx" class="text-white">Internship in Chandigarh</a></p>
            </div>
               </div>

                </div>

                  <div class="col-lg-5 text-justify">
                          <div class="position-sticky top-0">
                      <img src="images/what-is-online-internship.jpg" alt="Free Online Internship with Certificate" title="What is Online Internship" />
                      </div>
                          </div>
               
            <div class="col-lg-12 text-justify d-none">
                                                 
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
                        <img class="main-video" src="images/free-internship-online-with-certificate-thinknext.jpg" alt="Free online internship with Certificate"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/online-free-internship-certificate-krishma.jpg" alt="Free online internship with Certificate"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/free-internship-certificate-online-sunil.jpg" alt="Free online internship with Certificate"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/free-internship-with-certificate-online-surinder.jpg" alt="Free online internship with Certificate"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
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

        <div class="clear-both"></div>


    </section>

    <section class="py-4">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons to join ThinkNEXT for MBA BBA Training/Internship in Chandigarh Mohali</strong></h4>
            
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                    <li>. Training/Internship for MBA BBA students from 4 times National Award Winner Company:
                        <ol type="1">
                            <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial training Company</li>
                            <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                            <li>Business Leaders Award 2019 Winner Company for Best Digital Marketing and Industrial Training Company</li>
                            <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                        </ol>
                    </li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training, and digital marketing services.</li>
                    <li>MBA BBA Training/Internship in Chandigarh Mohali from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT Technologies Private Limited is registered as a Pvt. Ltd. Company under Companies Act 1956. </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offers during MBA BBA training/internship program so that students can earn while they learn.   </li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher.</li>
                    <li>Training/Internship for MBA BBA students from ISO 9001:2015 certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
                    <li>Authorized Pearson Testing Center for International Exams/Certifications.</li>                   
                    <li>30000+ Students trust our Free Online Internship with Certificate programs.</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support. </li>
                    <li>Free online courses for class-room/offline students undergoing Training/Internship for MBA BBA students.  </li>
                    <li>ThinkNEXT is having its clients in India and Abroad. Students can work on ThinkNEXT Live Projects also.</li>
                    <li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements</li>
                    <li>Lifetime membership to ThinkNEXT VIP Telegram Group for Community Support</li>
                    <li>Guaranteed Job Interviews and 100% Placement Assistance</li>
                    <li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized. </li>
                    <li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc. </li>
                    <li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>                                       
                    <li>Training/Internship for MBA BBA students from 9+ Years old company.  </li>
                    <li>Customized Syllabus (You can add your own relevant topics) and Backup Classes (in case you miss some classes).</li>
                    <li>Free Subdomain and Web Hosting to host projects.</li>
                    <li>Numerous Tie-up with IT / Electronics / Mechanical / Civil / Electrical / Retail / Textile etc. companies for Placements  </li>
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
                                <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                    <img src="images/asia-quality-entreprenuership-award.webp" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="images/award-image11.webp" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                    <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="AutoCAD Course in Chandigarh" title="AutoCAD Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                       <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                    <img src="/php-images/php-industrial-training.jpg" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="AutoCAD Course in Chandigarh" title="AutoCAD Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.webp" alt="AutoCAD Course in Chandigarh" title="AutoCAD Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

            

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                    <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="AutoCAD Training Institute in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="AutoCAD Training in Chandigarh" title="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/software-testing.jpg" title="AutoCAD Training in Chandigarh" alt="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

				
               
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/php-training-in-chandigarh-mohali-panchkula.jpg" title="AutoCAD Course in Chandigarh" alt="php training in chandigarh mohali panchkula" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/softwere-testing-training-in-chadigarh.jpg" title="AutoCAD Training in Chandigarh" alt="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/softwere-testing-in-chandigarh.jpg" title="AutoCAD Training in Chandigarh" alt="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                  



                   
   			
			</div>
        </div>

        	
	</section>
	
    


    <section class="py-5 d-none">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-justify">
                    <h3 class="text-warning"><strong>FAQs</strong></h3>
                    <h4><strong>Q1. Do I need previous work experience for online free internship certificate program?</strong></h4>
                    <p><strong>Ans.</strong> ThinkNEXT’s <strong>free online internship with certificate program</strong> has been designed to give all students the opportunity to begin their career exploration journey while developing work experience and a professional network. To join the program you will not need previous work experience as our free online internship with certificate  program is developed to provide you all the support you need during the program, and will help you create your CV  to set you on the path to future work experience. </p>
                    <h4><strong>Q2. What’s the overall interview process for free internship certificate online?</strong></h4>
                    <p><strong>Ans.</strong> The <strong>free internship with certificate</strong> online recruitment process commences with an initial resume screening as roles become available. Depending on available roles, you may receive a follow-up survey. This information is then sent to the recruiting team for evaluation, and if roles match with your specialized skills, the recruiting team will reach out to you directly to schedule phone interviews.  </p>
                    <h4><strong>Q3. How long after I apply will I hear back from the recruiting team?</strong></h4>
                    <p><strong>Ans.</strong> There’s not just one process or experience; timing can vary and is based on role availability. The basic process begins with an initial resume screen as roles become available. Depending on available roles and the opportunity you applied for, you may get a follow-up survey. </p>
                    <h4><strong>Q4. Can I be considered for all of them if I’ve applied for multiple roles?</strong></h4>
                    <p><strong>Ans.</strong> Yes, all applications are assessed for all open internship opportunities. If we feel your skills align with a role other than the one to which you applied, we’ll reach out to you.</p>
                </div>
            </div>
        </div>
    </section>





     <!-- light-box modelBox -->

    <div class="modal fade medialightbox" id="image-gallery" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
