<%@ Page Title="Life-Time Validity Learning and Placement Card - ThinkNEXT Technologies" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="lifetime-validity-cards.aspx.vb" Inherits="java_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta name="description" content="Life-Time Validity Learning and Placement Card - ThinkNEXT Provide Life-Time Validity and Placement Card after Training completes" />
    <meta name="keywords" content="Life-Time Validity Learning and Placement Card" />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg" />
   <meta property="og:image" content="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg"/>
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
     <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after" />
    <meta name="robots" content="index, follow" />
    <meta name="copyright" content="ThinkNEXT" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">
  <%--  <img src="java-images/Java-Training-in-Chandigarh-Mohali.jpg" alt="Java Training Course in Chandigarh Mohali Panchkula" />--%>
    </div>
             
 
    <div class="page-div">
       
   
    
        <div class="col-lg-8 col-md-8">
            
              <div class="col-lg-12 text-justify">
        <div class="gdl-header-wrapper">
                <h1>Life-Time Validity Learning and Placement Card</h1>
            </div>
      

        <p>
            ThinkNEXT offers Life-Time Validity Learning and Placement Card to each student undergoing 6 Months Industrial Training. The benefit of this card is that the student does not need to pay again and again for the same course. Students have to pay only once for any course and they can take classes for the life-time period whenever they need it by showing this card. This card also enables each student for Life-Time support for ThinkNEXT Placement Services.
        </p>
                  
            <br />
      <div class="text-center">
          <img src="images/lmc.png" style="height: 180px;width: 300px;"/>
      </div>
                  <br />
             </div>

        

           
             <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=408&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="408" height="180" scrolling="no" class="fb-ifrme-460" ></iframe>
 <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=244&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="244" height="180" scrolling="no" class="fb-ifrme-270" ></iframe>



                                  
        <div class="clear-both"></div>
          <br />
        <br />
<p class="text-center"><span class="bkmydemo"> <a href="free-demo-class.aspx" > Book My Free Demo Class Now! </a></span></p>
        <br />
       <div class="col-sm-6 col-md-6 con-vid">
<iframe  class="thknxtytube" src="https://www.youtube.com/embed/HrI9DlsnT3s?autoplay=1&rel=0" frameborder="0" allowfullscreen></iframe>
    </div>
<div class="col-lg-6 col-md-6 abtus-contnt pd-rght-0 con-vid pd-lft-0" >
    <!-- Your like button code -->
<iframe  class="thknxtytube" src="https://www.youtube.com/embed/FvkfHjQttTg?rel=0" frameborder="0" allowfullscreen></iframe>

  
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

           <a href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" alt="Industrial Training in Chandigarh" border="0" /></a>     
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="Industrial Training in Chandigarh Mohali" />
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
       


       
     <%--   <img class="img-responsive" src="images/java1.png" alt="pdf"  style="float:right;"/>--%>
            <br />
            <span class="abythknxt-hdng">Other Popular Courses/Training Programs </span>
<div class="rounded_box popular-courses">
 
 <asp:Label ID="lblmessgaelogin" runat="server"  >
                                <a href="digital-marketing-course-training-in-chandigarh.aspx"> Digital Marketing Course</a><br /> 
                              <a href="php-training-in-chandigarh.aspx">PHP\MySQL Course</a><br /> 
                            <a href="web-designing-training-in-chandigarh.aspx">Web Designing Course</a><br /> 
                              <a href="dot-net-training-in-chandigarh.aspx">.Net Course</a><br />                            
                            <a href="Android-training-in-chandigarh.aspx">Android Course</a><br /> 
                            <a href="iphone-training-in-chandigarh.aspx">iPhone Course</a><br /> 
                            <a href="software-testing-training-in-chandigarh.aspx"> Software Testing Course</a><br /> 
                            <a href="networking-training-in-chandigarh.aspx">Networking Course</a><br /> 
                            <a href="ccna-training-in-chandigarh.aspx">CCNA Course</a><br /> 
                            <a href="ccnp-training-institutions-chandigarh.aspx"> CCNP Course</a><br /> 
                            <a href="mcitp-training-in-chandigarh.aspx">MCITP Course</a><br /> 
                            <a href="seo-training-in-chandigarh.aspx">SEO,SMO &amp; Bidding  Course</a><br /> 
                            <a href="c-and-c-training-in-chandigarh.aspx">C\C++ Course</a><br /> 
                            <a href="online-bidding-freelancing.aspx">Online Bidding(FreeLancing) Course</a><br /> 
                            <a href="sql-server-database-dba-training-in-chandigarh-mohali.aspx">Oracle\SQL Server Course</a><br /> 
                            <a href="IoT-training-chandigarh-mohali-india.aspx"> IoT (Internet of Things) Course</a><br /> 
                            <a href="Animation-and-Multimedia-training-in-chandigarh.aspx">Animation &amp; Multimedia Course</a><br />     
                            <a href="matlab-training-institute-in-chandigarh.aspx">MATLAB Course</a><br /> 
                            <a href="big-data-hadoop-course-chandigarh.aspx">BigData Course</a><br /> 
                           <a href="tally-erp-training-coaching-institute-in-chandigarh-mohali.aspx"> Tally Course</a> <br />
                         <a href="default.aspx">Ethical Hacking Course</a><br /> 
                      <a href="cloud-computing-training-in-chandigarh-mohali.aspx"> Cloud Computing Course</a> <br />
                       <a href="advance-excel-course-training-in-chandigarh-mohali.aspx"> Advance Excel Course</a> <br /> <a href="summer-training-in-chandigarh-mohali.aspx">Summer Training</a><br /> <a href="computer-courses-in-chandigarh-mohali.aspx">Computer Courses</a> <br /> <a href="industrial-training-in-mohali.aspx">Industrial Training in Mohali</a> <br /> <a href="wordpress-training-in-chandigarh-mohali.aspx">WordPress Training</a> <br /> <a href="Asp-Net-MVC-training-in-chandigarh-mohali.aspx">Asp .Net MVC Training</a> <br /> <a href="laravel-php-framework-training-in-chandigarh-mohali.aspx">Laravel PHP Framework Training</a> <br /> <a href="AngularJS-training-course-chandigarh-mohali.aspx">AngularJS Training Course</a> <br /> <a href="nodejs-training-course-chandigarh-mohali.aspx">Node.js Training Course</a> <br /> <a href="reactjs-training-course-chandigarh-mohali.aspx">ReactJS Training Course</a> <br /> <a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx">Machine Learning & AI with Python</a> <br /> <a href="data-science-with-python-course-training-chandigarh-mohali.aspx">Data Science with Python</a> <br />


</asp:Label>


     
    </div>
          </div>

   
      


   <div class="clear-both"></div>
                            
<br />


    
   
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
  
    url: "http://www.thinknexttraining.com/lifetime-validity-cards.aspx"
  });
</script>

</asp:Content>

