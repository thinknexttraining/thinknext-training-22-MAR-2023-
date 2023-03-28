<%@ Page Title="Oracle Java Certification Course - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="oracle-java-certification.aspx.vb" Inherits="ccna_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<meta name="description" content="Oracle Java Certification Course - ThinkNEXT is one of the best IT company providing Oracle Java Certification. Oracle Java Certification helps you launch and advance your IT career" />
<meta name="keywords" content="Oracle Java Certification Course, java Course" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">
  
 <%-- <img src="images/ccna-training-in-chandigarh-mohali.jpg" alt="CCNA Training Course in Chandigarh Mohali Panchkula" />--%>
     
     </div>
    <div class="page-div text-justify">
             
        <div class="col-lg-8 col-md-8">
                  <div class="col-md-12">
                       <div class="gdl-header-wrapper">
        <h1 class="gdl-header-title">Oracle Java Certification Course</h1>
                       </div>
                      <img style="width:100%;" src="images/java-oracle-certification.jpg" alt="Oracle Java certification course in Chandigarh" title="Oracle Java certification course" />
     <p></p>
                      <h2>Oracle Certified Associate (OCA)</h2>

<p>Strengthen your knowledge in Java programming (Java SE 8) and raise your earning potential in the Job market with the Oracle Certified Associate Java Programmer (OCAJP 8) certification. In order to be a Professional Java Developer, candidates&nbsp;need the skills covered in both exams&nbsp;Java SE 8 Programmer I&nbsp;and&nbsp;Java SE 8 Programmer II. Our Company provides the best training among all the Chandigarh Mohali institutes as we work on live projects.</p>

<h2>Oracle certified professional(OCP)</h2>

<p>Oracle Certified Professional Java Programmer (OCPJP 8) is a professional-level certification that validates your knowledge and skills of Java code development in Java SE 8 version.</p>

<h2>Oracle certified professional(OCM)</h2>

<p>Prove your skills to analyze and define requirements, create the blueprint, and oversee the execution of Java applications with Oracle Certified Master, Java EE 6 Enterprise Architect certification. Our organization takes full responsibility to provide expert level java training at your own city Chandigarh Mohali.</p>

<p>&nbsp;</p>

<h3>Let&#39;s start the journey by becoming java certified</h3>

<h3><strong>Java Certification in Mohali Chandigarh</strong></h3>

<p>What are you waiting for? Invest in your career as soon as you get certificates.</p>

<p>All these international certifications require passing certain exams, which also include undertaking some kind of good training. However, ThinkNEXT Provides the&nbsp;Best Java&nbsp;Training in Mohali Chandigarh that has made this process extremely simple for you.</p> 
                         </div>
             
                   
     
             <div class="clear-both"></div>
     
  
</div>
     

    
           





 <div class="col-lg-4 col-md-4"">
    
    <div class="right_box margin-top">
        <div class="without_border dwl" >
          <div class="brochiframe"  id="brochiframe">
          
            <iframe name="broucher"></iframe>
        
            <img class="closebrochureiframe" alt="Close" src="images/close.png"  onclick="clsifrm()"  /> 
               
          </div>

        <a title="ThinkNEXT Brochure"  href="BroucherDownload.aspx?data=CCNA Broucher" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" alt="CCNA" border="0"  /> </a>
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait. <br />--%>
   
    <img src="images/loader.gif" alt="CCNA Training in Chandigarh Mohali" />
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
                                <asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox>              
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
         <div class="right_box margin-top" >
     <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=244&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" scrolling="no" ></iframe>
       </div>

     </div>
     <%--   <img class="img-responsive" src="images/java1.png" alt="pdf"  style="float:right;"/>--%>
             <br />
            <span class="abythknxt-hdng">Other Popular Courses/Training Programs </span>
<div class="rounded_box popular-courses">
 
 <asp:Label ID="lblmessgaelogin" runat="server"  >
                                       <a href="digital-marketing-course-training-in-chandigarh.aspx"> Digital Marketing Course</a>  <br /> 
                             <a href="php-training-in-chandigarh.aspx">PHP\MySQL Course</a> <br />
                            <a href="web-designing-training-in-chandigarh.aspx">Web Designing Course</a> <br /> 
                              <a href="dot-net-training-in-chandigarh.aspx">.Net Course</a> <br /> 
                            <a href="java-training-in-chandigarh.aspx">JAVA Course</a> <br /> 
                            <a href="Android-training-in-chandigarh.aspx">Android Course</a> <br /> 
                            <a href="iphone-training-in-chandigarh.aspx">iPhone Course</a> <br /> 
                            <a href="software-testing-training-in-chandigarh.aspx"> Software Testing Course</a> <br /> 
                            <a href="networking-training-in-chandigarh.aspx">Networking Course</a> <br /> 
                            <a href="ccna-training-in-chandigarh.aspx">CCNA Course</a> <br /> 
                            <a href="ccnp-training-institutions-chandigarh.aspx"> CCNP Course</a> <br /> 
                            <a href="mcitp-training-in-chandigarh.aspx">MCITP Course</a> <br /> 
                            <a href="seo-training-in-chandigarh.aspx">SEO,SMO &amp; Bidding  Course</a> <br /> 
                            <a href="c-and-c-training-in-chandigarh.aspx">C\C++ Course</a> <br /> 
                            <a href="online-bidding-freelancing.aspx">Online Bidding(FreeLancing) Course</a> <br /> 
                            <a href="sql-server-database-dba-training-in-chandigarh-mohali.aspx">Oracle\SQL Server Course</a> <br /> 
                            <a href="IoT-training-chandigarh-mohali-india.aspx"> IoT (Internet of Things) Course</a>  <br />
                            <a href="Animation-and-Multimedia-training-in-chandigarh.aspx">Animation &amp; Multimedia Course</a> <br />    
                            <a href="matlab-training-institute-in-chandigarh.aspx">MATLAB Course</a> <br />
                            <a href="big-data-hadoop-course-chandigarh.aspx">BigData Course</a> <br />
                           <a href="tally-erp-training-coaching-institute-in-chandigarh-mohali.aspx"> Tally Course</a>  <br />
                         <a href="ethical-hacking-training-in-chandigarh-mohali.aspx">Ethical Hacking Course</a>  <br />
                       <a href="cloud-computing-training-in-chandigarh-mohali.aspx"> Cloud Computing Course</a>  <br />
                       <a href="advance-excel-course-training-in-chandigarh-mohali.aspx"> Advance Excel Course</a>  <br /> <a href="summer-training-in-chandigarh-mohali.aspx">Summer Training</a> <br /> <a href="computer-courses-in-chandigarh-mohali.aspx">Computer Courses</a>  <br /> <a href="industrial-training-in-mohali.aspx">Industrial Training in Mohali</a>  <br /> <a href="wordpress-training-in-chandigarh-mohali.aspx">WordPress Training</a>  <br /> <a href="Asp-Net-MVC-training-in-chandigarh-mohali.aspx">Asp .Net MVC Training</a>  <br /> <a href="laravel-php-framework-training-in-chandigarh-mohali.aspx">Laravel PHP Framework Training</a>  <br /> <a href="AngularJS-training-course-chandigarh-mohali.aspx">AngularJS Training Course</a>  <br /> <a href="nodejs-training-course-chandigarh-mohali.aspx">Node.js Training Course</a>  <br /> <a href="reactjs-training-course-chandigarh-mohali.aspx">ReactJS Training Course</a>  <br /> <a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx">Machine Learning & AI with Python</a>  <br /> <a href="data-science-with-python-course-training-chandigarh-mohali.aspx">Data Science with Python</a>  <br />


</asp:Label>


     
    </div>
          </div>


        <div class="clear-both"></div>
        

          <br />
<p class="text-center"><span class="bkmydemo"> <a href="free-demo-class.aspx" > Book My Free Demo Class Now! </a></span></p>
         <br />
        
        <section>
<div class="container">
 
     <div class="col-lg-6 col-md-6">
    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/DLMXX6pv0ow" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
     </div>

    <div class="col-lg-6 col-md-6">

   <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/industrial-training-course-chandigarh-mohali-krishma.jpg" alt="Best Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
          </div>

<div class="col-lg-6 col-md-6" >

<a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Industrial Training in Chandigarh" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
</div>

    
<div class="col-lg-6 col-md-6" >

 <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="Six Months Industrial Training in Mohali" /><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a> 
</div>
  </div>
            <div id="video-view-curtain"><div id="video-view"></div></div>
        </section>

          <div class="clear-both"></div>
    </div>
        <!-- // START Social Share Script-Code with likes ---------->
       <!-- // START Social Share Script  and Css  with Likes-->
 
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script  and Css with Likes  -->
    <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook",  "twitter", "linkedin"
    ],
  
    url: "http://www.thinknexttraining.com/oracle-java-certification.aspx"
  });
</script>
      
</asp:Content>