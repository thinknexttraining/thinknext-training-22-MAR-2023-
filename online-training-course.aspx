<%@ Page Title="Online Training Courses - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="online-training-course.aspx.vb" Inherits="digital_marketing_course_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
    
       <meta name="description" content="Online Training Courses in India - Join the best Online Certification Courses for your Online Training. Check out our best Online Courses in India." />
    <meta name="keywords" content="online courses in india, best online courses in india, Online summer training, best online summer training, online summer training in india, best online summer training in india, online summer training courses, online training courses, best online training courses, online training courses in india, online training program, online training in india, online training institute in india, online certification courses in india, online certification courses, online certificate programs, best online courses with certificates, online courses with certificates, best free online courses with certificates, free online courses with certificates, free online courses with certificates in india" />
     <link rel="canonical" href="https://www.thinknexttraining.com/online-training-course.aspx" /> 

    <link rel="image_src" href="http://www.thinknexttraining.com/images/online-training-share-img.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/online-training-share-img.jpg" />
     <meta property="og:image:width" content="256" />
    <meta property="og:image:height" content="256" />
     <!--  End// Facebook -->

  
<style>
  
      .thinknextwhy {
         background: #060e1e;
     background-size: cover;
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
    .offer-discount{
    position: absolute;
    background: #FF9800;
    color: #fff;
    padding: 6px 11px;
    font-size: 15px;
    font-weight:bold;
  
}
  
     .bg-grey{ background: #efeeee;}
       .shadow-lg{box-shadow: 0 1rem 3rem rgba(0,0,0,.175)!important;}
         @media screen and (max-width:768px) {
        .main-head {
            font-size: 30px;
        }
    }
</style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   
      <div class="main-image">
  
   <img src="images/online-training-course-min.jpg"  title="Online Training Course in India" alt="Online Training Course in India" />
     </div>

    <section class="pd-30 d-none" style="background-image: url('images/technology-blue-background.jpg'); background-size:cover;">
         <div class="container">
        <div class="col-lg-7 col-md-7 col-sm-6 text-justify ptb-50">              
          <span class="bg-info plr-20 ptb-10">Certified Training</span>
              <h2 class="fa-5x text-white main-head text-start"><strong>Online Training Courses</strong></h2>
            <div style="border:3px solid orange;"></div>
            <br />
            <p class="text-white"><strong>You will become familiar with the course, your classmates and our learning environment. </strong></p>
             
         
</div>


 <div class="col-lg-5 col-md-5 col-sm-6">
    
               <div class="rounded_box bg-light text-center">
                   <h4><strong>Scholarship Form</strong></h4>
                   <strong>(Register to get scholarship upto 100%)</strong>
                  <table class="table2" id="tb2">
    <tr>
       <td>
    <asp:Label ID="Label4" runat="server" ForeColor="red"></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td class="ptb-10">
                                <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                     <asp:TextBox ID="txtNameScholar" runat="server" class="mtb-0 border" placeholder="Name" AutoPostBack="false" ></asp:TextBox>                             
                                            
                                </div>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtNameScholar" ValidationExpression="[a-zA-Z ]*$" ></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td  class="ptb-10">
                                  <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-phone text-info"></i></div>
                                    <asp:TextBox ID="txtMobileScholar" runat="server" class="mtb-0 border" MaxLength="10"  Placeholder="Mobile No." AutoPostBack="false" ></asp:TextBox>      
                                  </div>                                   
							<asp:RegularExpressionValidator ID="RegularExpressionValidator8" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobileScholar" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                        <tr>
             
                            <td  class="ptb-10">
                                  <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                                       <asp:TextBox ID="txtEmailIdScholar"  runat="server" class="mtb-0 border"  placeholder="Email ID" AutoPostBack="false" ></asp:TextBox> 
                                   </div>                              
							<asp:RegularExpressionValidator ID="RegularExpressionValidator9" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"  ControlToValidate="txtEmailIdScholar" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                       <tr>
                           <td  class="ptb-10">
                            <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-graduation-cap text-info"></i></div>
                                  <asp:TextBox ID="txtCoursesScholar"  runat="server" class="mtb-0 border"  placeholder="Training / Program interested in"  ></asp:TextBox>
                               </div>                                           
							  <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator10" runat="server" ErrorMessage="Only Charactors are allowed" ValidationExpression="[a-zA-Z ]*$" ControlToValidate="txtCoursesScholar"></asp:RegularExpressionValidator>
                               
                           </td>
                            </tr>
                        <asp:TextBox ID="TextBox6" runat="server" Visible="False" Text="TNK101" ></asp:TextBox>
                      <tr>

                                              
                            <td>                             
                                
                                <asp:Button ID="Button2" runat="server"  Text="Submit" CssClass ="search_submit_button trans_200" ValidationGroup="submit" OnClientClick="Button2_Click"  />                             
                                </td>
                        </tr>
                   </table>

     
    </div>


          </div>


        <div class="clear-both"></div>
             </div>
  </section>
             
    <section>  
    <div class="page-div d-none">
         
       <div class="col-lg-8 col-md-8 col-sm-8 text-justify">              
          
               <div class="col-lg-12">                 
            <div class="gdl-header-wrapper">
                <h1>Online Training Courses in India</h1>
            </div>
                    <p class="textred"><strong>Are you looking for the Online Training Courses?</strong></p>
                     <p class="textred"><strong>Are you looking for the Online Summer Training?</strong></p>
                     <p class="textred"><strong>Are you interested in Online Certification Courses?</strong></p>    
    <p><strong class="text-info">If Yes, then</strong></p>
    <p><strong class="text-info"> Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
    <p><strong class="text-info"> You are at ThinkNEXT Technologies Private Limited </strong></p>
    <p><strong class="text-info"> &nbsp; -Biggest brand for quality Online Courses in India</strong></p>
     <p><strong class="text-info"> &nbsp; -Best free Online Courses with Certificates</strong></p>
           
              <p><strong>ThinkNEXT Technologies Private Limited</strong>&nbsp;has introduced the <strong>best</strong> <strong>Online Training Courses in India</strong> for those students who can easily avail the <strong>Online Certificate programs</strong> anywhere in India. The motive of this <strong>Online Summer Training </strong>is to reach out to as many students as we can and help them to study independently, from home and be fundamentally and practically strong in their chosen <strong>online courses with certificates</strong>. ThinkNEXT&rsquo;s <strong>online courses in India</strong> will provide its students the <strong>best online summer training</strong> with the help of real time examples and scenarios.</p>                 
                   <p class="text-center textred"><strong>ThinkNEXT Courses - The best way to learn anything, ONLINE</strong></p>
 <p><strong>ThinkNEXT</strong> is a professional ISO 9001:2015 Certified <strong>online training institute in India </strong>which has been imparting 
     training over a decade now.We have also been felicitated 6 times with the <strong><a href="https://www.youtube.com/watch?v=FO8mzUt7Et4">
         National Awards</a> </strong>in the field of Digital Marketing, Industrial Training and Web Development.</p>
<p><strong>ThinkNEXT </strong>is recognized all over <strong>India</strong> for providing an intensive <strong>online courses with certificates</strong>
      for new-age learners, thus exploring effective ways of learning.</p>

               <h2 class="mt-0">Online Summer Training - ThinkNEXT</h2>
<p class="textred"><strong> Finding it impossible to join any institute for summer training in India?</strong></p>
<p class="textred"><strong> Do you have a desire to enhance your current skills or expand the horizons?</strong></p>
 <p>The one solution of all your difficulties is joining our <strong>online summer training courses.</strong></p>
                   <p><strong class="text-info">All you need is an internet connection and you can study with us – no matter where you live!</strong></p>
              <p>As we cannot reach to every student of India, we thought this would the greatest idea to provide <strong>Online summer training</strong>
                   which helps the student to get training from <strong>certified training institute in India</strong>.</p>
                    <img class="width-100" src="images/online-summer-training-in-india.jpg" title="Online Summer Training in India" alt="Online Summer Training in India">
               <p><strong>ThinkNEXT’s online summer training programs</strong>&nbsp;gives you a great prospect to join any course in the arena
                    of Multimedia, Web, Graphics, CAD, Digital Marketing or Animation.</p>
<p>We provide the highest quality live online training offered in the industry. With our&nbsp;<strong>Online certificate training courses</strong>,
     our goal is to produce the exact same learning experience as in our traditional classroom based courses.</p>
<p>Finally, a course completion certificate will be awarded to all the trainees after successful completion of this <strong>Online</strong> <strong>Summer Training program</strong>. So enroll now in our best <strong>online summer training courses</strong> and be the master in your respective field</p>

               </div>

              
            
            <div class="clear-both"></div>
</div>

 <div class="col-lg-4 col-md-4 col-sm-4">
    
    <div class="right_box margin-top">
        <div class="without_border dwl" >
          <div class="brochiframe"  id="brochiframe">
          
            <iframe name="broucher"></iframe>
        
            <img class="closebrochureiframe" alt="Online Course Training in India" src="images/close.png"  onclick="clsifrm()"  /> 
               
          </div>

        <a href="BroucherDownload.aspx?data=Digital Marketing Broucher" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0" alt="Brochure" /> </a>
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="Online Course Training in India" />
</div>

         
     <div class="right_box margin-top">
 <span class="abythknxt-hdng">Arrange a Call Back</span>
 <div class="rounded_box">

<table class="table2" id="tb1">
    <tr>
       <td>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtName" runat="server" class="input" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" class="input" 
                                    MaxLength="10" Placeholder="Mobile No." ></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtEmailId"  runat="server" class="input" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                        <tr>                           
                            <td>                               
                                <%--<asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox> --%>                              
                                </td>
                        </tr>
                       
                        <tr>                         
                            <td>                             
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass ="buton" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />                              
                                </td>
                        </tr>
                   </table>              
</div>
</div>      
     <span class="abythknxt-hdng"> Book My Free Demo Class Now! </span>

               <div class="rounded_box">
                  <table class="table2" id="tb2">
    <tr>
       <td>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoName" runat="server" class="input" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoMblno" runat="server" class="input" 
                                    MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtdemoEmail"  runat="server" class="input" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                       <tr>
                           <td>
                              <asp:TextBox id="txtdemoMsg" class="input" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />

                           </td>
</tr>
                      <tr>
                                              
                            <td>                             
                                <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass ="buton" />                              
                                </td>
                        </tr>
                   </table>

     
    </div>


<span class="abythknxt-hdng">Career Counselling</span>
                  
<div class="rounded_box career-counseling">
     
<div class="contt"> 

              <div class="person-img"><img src="images/Munish-Mittal.jpg" alt="Munish Mittal ThinkNEXT" /></div>
                 <div> Speak to the Munish Mittal to know what's the best course for your career. Just call us on Munish Mittal  personal number for free career guidance. <br/> <br/>Thankyou!
                                                               </div>               
                            
     <div class="career-counseling-number"><span>+91 8360 052 717</span></div>

</div>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>
       
            <br />
        <div class="rounded_box course-video text-center">
         <div class="right_box margin-top">
     <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&amp;tabs=Thinknext&amp;width=244&amp;height=380&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId" scrolling="no"></iframe>
       </div>

     </div>
          </div>


        <div class="clear-both"></div>
  </div>
</section>

    <section style="background: #e8edf2;padding:20px;">
        <div class="container text-center">
            <h2 style="color: #2d3192; font-weight: bold;">20000+ STUDENTS TRUST OUR ONLINE COURSES</h2>
        </div>
    </section>

    <section class="plr-30 ptb-10">
        <div class="">
            <br>
     
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 margin-bottom20 ">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Online Course Training in India" title="Online Course Training in India" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 margin-bottom20 ">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Online Course Training in India" title="Online Course Training in India" />
                </div>

               <div class="col-sm-6 col-md-4 col-lg-4 margin-bottom20 ">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Online Course Training in India" title="Online Course Training in India" />
                </div>

               <div class="col-sm-6 col-md-4 col-lg-4 margin-bottom20 ">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Online Course Training in India" title="Online Course Training in India" />
                </div>

               <div class="col-sm-6 col-md-4 col-lg-4 margin-bottom20 ">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Online Course Training in India" title="Online Course Training in India" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 margin-bottom20 ">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Online Course Training in India" title="Online Course Training in India" />
                </div>

            </div>
        </div>
    </section>

    <section>
        <div class="container text-center">
    <h2 class="heading-red text-center"><strong>Online Training Courses with ThinkNEXT</strong></h2>
            <br />
            </div>
    </section>
    <section class="px-5">
         <h3 class="text-center"><strong>CSE/IT</strong></h3>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/php-online-course-thinknext-thumbnail.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/lp/php-online-course.html" class="text-decoration-none" target="_blank">PHP Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/php-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/android-online-course-thinknext-thumbnail1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/lp/android-course.html" class="text-decoration-none" target="_blank">Android Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/android-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/java-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/java-online-course.html" class="text-decoration-none" target="_blank">Java </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/java-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/digitalmarketing1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/digital-marketing-online-course.html" class="text-decoration-none" target="_blank">Digital Marketing Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/digital-marketing-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/web-designing-course-thumbnail1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/web-designing-course.html" class="text-decoration-none" target="_blank">Web Designing Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 699.00 </strong></span><del><strong>Rs 6990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/web-designing-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">95% OFF</div>
                    <img class="width-100" src="images/online-ai-course.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" class="text-decoration-none" target="_blank">Artificial intelligence </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">95% OFF</div>
                    <img class="width-100" src="images/python1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" class="text-decoration-none" target="_blank">Python Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">95% OFF</div>
                    <img class="width-100" src="images/machinelearning-usingpython-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" class="text-decoration-none" target="_blank">ML and DL Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">95% OFF</div>
                    <img class="width-100" src="images/data-science-withpython-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" class="text-decoration-none" target="_blank">Data Science using Python </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 30000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/wordpress-online-course-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">WordPress Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/excel-online-course.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">MS Excel </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/c-and-c-plus-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">C and C++ </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">75% OFF</div>
                    <img class="width-100" src="images/mean-stack.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/lp/mean-stack-online-course.html" class="text-decoration-none" target="_blank">MEAN Stack </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 4999.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/mean-stack-online-course.html" target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">75% OFF</div>
                    <img class="width-100" src="images/mern-stack.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/lp/mern-stack-online-course.html" class="text-decoration-none" target="_blank">MERN Stack </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 1499.00 </strong></span><del><strong>Rs 4999.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/mern-stack-online-course.html" target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/laravel.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">Laravel</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/reactjs.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">ReactJs</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

           <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/nodejs.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">NodeJs</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/flutter.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">Flutter</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/dot-net.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">.Net</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/cyber-security.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">Cyber Security</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/aws.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">AWS</a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            
        </div>

    </section>

    <hr />
    <br />
    <section class="px-5">
        <h3 class="text-center"><strong>ELECTRONICS/ELECTRICAL</strong></h3>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/thumbnail21-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/iot-robotics-online-course.html" class="text-decoration-none" target="_blank">IOT and Robotics </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/iot-robotics-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/industrialautomation-plc-scada-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">PLC-SCADA Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/autocad-electrical-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">AutoCAD Course </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">80% OFF</div>
                    <img class="width-100" src="images/embedded-systems1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="#" class="text-decoration-none" target="_blank">Embedded Systems </a></h4>
                    </div>
                    <div class="bg-white text-start pd-20"><span><strong>Rs 2000.00 </strong></span><del><strong>Rs 10000.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>

        </div>

    </section>
  
      <hr />
    <br />

    <section class="px-5">
        <h3 class="text-center"><strong>MECHANICAL</strong></h3>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/solidworks-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/SolidWorks-online-course.html" class="text-decoration-none" target="_blank">SolidWorks Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/SolidWorks-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/Catia-Online-Course-1-ThinkNEXT-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/online-catia-course.html" class="text-decoration-none" target="_blank">CATIA Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/online-catia-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/autocad_cnc.jpeg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html" class="text-decoration-none" target="_blank">AutoCAD CNC Programming  </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/autocad1-min.png" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html" class="text-decoration-none" target="_blank">AutoCAD Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
        </div>

    </section>

       <hr />
    <br />

    <section class="px-5">
        <h3 class="text-center"><strong>CIVIL</strong></h3>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/staadpro-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/staad-pro-online-course.html" class="text-decoration-none" target="_blank">STAAD Pro Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/staad-pro-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/revit-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/revit-online-course.html" class="text-decoration-none" target="_blank">Revit Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/revit-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/autocad-3dmax-onlinecourse.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html" class="text-decoration-none" target="_blank">AutoCAD and 3DS MAX  </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="text-center shadow-lg mb-4 bg-white rounded">
                    <div class="offer-discount">90% OFF</div>
                    <img class="width-100" src="images/autocad-online-course-thinknext1-min.jpg" alt="Online Course Training in India"><div class="pd-10 bg-grey">
                        <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html" class="text-decoration-none" target="_blank">AutoCAD Course </a></h4>
                    </div>
                    <div class="bg-white text-left pd-20"><span><strong>Rs 999.00 </strong></span><del><strong>Rs 9990.00 </strong></del><strong><a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html " target="_blank">Buy Now </a></strong></div>
                </div>
            </div>
        </div>

    </section>


    <section class="pd-30 page-div">
        <div class="col-sm-12">
            <h3 class="text-center"><strong>Management Training (MBA/BBA/B.Com)</strong></h3>
            <br />
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/human-resources-online-training.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/hr-management-online-course.html" class="text-decoration-none" target="_blank">HR Management Course</a></h4>

                </div>
            </div>
            <div class="col-lg-3">
                <div class=" border border-secondary margin-bottom20">

                    <img class="w-100" src="images/marketing-online-training.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/marketing-management-online-course.html" class="text-decoration-none" target="_blank">Marketing  Course</a></h4>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/finance-online-training.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/finance-management-online-course.html" class="text-decoration-none" target="_blank">Finance Management Course</a></h4>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/tally-online-training.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="tally-online-course.aspx" class="text-decoration-none" target="_blank">View Course Detail</a></h4>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/excel-online-course.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="advance-excel-course-training-in-chandigarh-mohali.aspx" class="text-decoration-none" target="_blank">View Course Detail</a></h4>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/digital-marketing-online-course-1.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/digital-marketing-online-course.html" class="text-decoration-none" target="_blank">Digital Marketing Course</a></h4>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/sales-distribution-online-course.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="sap-sd-training.aspx" class="text-decoration-none" target="_blank">View Course Detail</a></h4>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="border border-secondary margin-bottom20">

                    <img class="w-100" src="images/international-business.jpg" alt="Online Course Training in India">
                    <h4 class="text-center ptb-10"><a href="international-business-online-course.aspx" class="text-decoration-none" target="_blank">View Course Detail</a></h4>
                </div>
            </div>
        </div>
    </section>



    <section>

        <div id="contentDiv" class="d-none" runat="server">
        </div>

        <div id="divElectricalContain" class="d-none" runat="server">
        </div>

        <div id="containDivMechanical" class="d-none" runat="server"></div>

        <div id="divContainCivil" class="d-none" runat="server"></div>

    </section>

    <section class="bg-light py-5">
        <br>
        <div class="container">
            <div class="row">


                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Online Training Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Online Training Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Online Training Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Online Training Course">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>



    <section class="thinknext-edge-section thinknextwhy pd-30 ">
        <div class="thknxt-edge">
            <h4 class="text-center">Why Online Training from ThinkNEXT</h4>
            <br>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">

                    <p><i class="fa fa-square"></i><span><strong>6 Times National Award Winning Institute: ThinkNEXT </strong>is the winner of National Icon Award 2018, Asia Quality and Entrepreneurship Award 2019, Leadership Award 2019, National Gratitude Award 2020, Iconic Business Summit Award 2021, Nation's Business Pride Award 2021  </span></p>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Online Training Course" title="Java Training in Ch   igarh" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Online Training Course" title="Online Training Course" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>

    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>
          

        </asp:Content>
