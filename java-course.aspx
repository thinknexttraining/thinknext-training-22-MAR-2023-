<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="~/java-course.aspx.vb" Inherits="javatraining" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <title>Java Course in Chandigarh</title>
    <meta name="description" content="Best java training in Chandigarh Mohali Panchkula. ThinkNEXT is top java training company that provides Java training in Core & Advance Java, Java Course, Java Coaching, Advance Java" />
    <meta name="keywords" content="Java Training in Chandigarh, Java Training in Mohali, Java Tutorial, Learn Java, Java Training in Panchkula." />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/java-training.png" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/java-training.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
     <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after">
    <meta name="robots" content="index, follow" />
    <meta name="copyright" content="ThinkNEXT" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel='stylesheet' id='Link2' href="bootstrap/css/bootstrap.css" type='text/css' media='all' />
    <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
    <link rel="stylesheet" href="lightbox2/dist/css/lightbox.min.css" type='text/css' media='all' >
    <style type="text/css">
           #particles-js2 canvas {position:absolute;height: 94% !important;

            }

                body * {
    border-color: #b7b7b7;
}
        #form2{    background: #f2f2f2 !important;}
        .panel-group#accordion {
    padding:0;
}
        .col-lg-12, .col-md-12 {
                background: white;
    padding-top: 11px;
    box-shadow: 0px 0px 4px 0px;
   margin-bottom: 16px;
    margin-top: 20px;
        }
    
        div.gdl-header-wrapper{padding-right:0;}
         .dwl{width:100%;text-align:center;}
        .bkmydemo{
                  font-size: 25px;
                  background: red;
                  padding: 13px;
                  font-weight: bold;
                  color:#fff;

        }
          .fb-ifrme-270{
            border:none;
            overflow:hidden;
             margin:auto;
            display:none;
}
             .fb-ifrme-460{
            border:none;
            overflow:hidden;
             margin:auto;
            display:block;
}
        @media screen and (max-width: 460px) {
            .bkmydemo {
                font-size: 15px;
                padding: 13px 9px;
            }
            .container{
                padding-right: 5px;
    padding-left: 5px;

            }
            .fb-ifrme-270{
            display:block !important;
}
             .fb-ifrme-460{
            display:none !important;
}
        }


     
        #matter ul
        {
            font-family: arial, Helvetica, sans-serif;
            font-size: 12px;
            width: 500px;
        }

        #matter h3
        {
            font-family: arial, Helvetica, sans-serif;
            font-size: 14px;
            color: Green;
        }

        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 17px;
            color: #DE1904;
        }

        #image2
        {
            margin-top: 215px;
        }

            #image2 img
            {
                float: left;
            }

            #image2 a
            {
                color: Red;
                font-weight: bold;
                font-size: 16px;
                line-height: 48px;
                margin-left: 10px;
            }

                #image2 a:hover
                {
                    color: Green;
                }

                
    .head1 {
            background:url('images/White-Background-9B1.jpg');
    font-family:'Times New Roman';
    font-size: 18px;
    font-weight: 300;
    overflow: hidden;
    padding: 20px 0 0px 23px;
    position: relative;
    width:98%;
   box-shadow: 7px 7px 5px #d7d0d0;
        }


        .ryt {
            float:right;
            background-color:#DE1904;
            padding:7px;
            color:#FFF;
        }
         .modal
    {
        position: fixed;
        top: -3;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family: Arial;
font-size: 10pt;
/*border: 5px solid #060608CC;*/
width: 292px;
height: 136px;
display: none;
position: fixed;
background-color: #51121200;
z-index: 999;
    }

     .grid_4 {
    width: 25%;
    float: left;
    display: inline;
    margin: 10px 0 0 0;
    padding: 0;
}   
       .img-bord {
    padding: 6px;
    border: 5px solid #fff;
    margin-right: 1px;
}

            .img-bord img {
    height: 250px;
    width:100%
} 
    </style>

     <script type="text/javascript">
         function ShowProgress() {
             setTimeout(function () {
                 var modal = $('<div />');
                 modal.addClass("modal");
                 $('body').append(modal);
                 var loading = $(".loading");
                 loading.show();
                 var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                 var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                 loading.css({ top: top, left: left });
             }, 1);
         }

         $('form').live("submit", function () {
             ShowProgress();
         });

         function RefreshParent() {
             window.opener.document.getElementById('Button3').click();
             window.close();
         }
</script>

    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

   

     <div class="head1">
    <h3 style="color:#000;" > <img src="images/App-icon/java-logo.png" alt="Dot Net" style="width:50px" />Java Course in Chandigarh &nbsp;&nbsp; </h3>
    <div class="ryt">

 You Are Here / Java Course

       </div>
          </div>
   
 
    <br />
    
         
        <br />
        <br />
       
    
        <div class="panel-group col-md-8 text-justify" id="accordion">
            
              <div class="col-lg-12">
        <div class="gdl-header-wrapper">
                <h1>Java Course in Chandigarh Mohali Panchkula &nbsp; </h1>
            </div>
      
             <p>Java is one of the most  important courses in these days. To <strong>learn  java course in Chandigarh</strong> is one of the best options. <strong>ThinkNEXT Technologies Private Limited</strong> is the very <strong>famous company in Chandigarh.</strong> <strong>ThinkNEXT Provide the Best Java Course in  Chandigarh.</strong> The whole facility of this company is very excellent. They  teach their students with practical and live training. After completing your  training, you can get your desired job. ThinkNEXT company is also very famous  for the reason of its placements. This company provides the chance of best  placements. This institute also works on the students speaking skills and  personality development skills. It provides free English and personality  classes to their students.</p>
            
           

            <br />
      
             </div>
   
            
            <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Why Java Training from ThinkNEXT</h3>
                <i class="fa fa-hand-o-right"></i>&nbsp Industrial Training from a software development company. Therefore you can also have the opportunity to work as java developer in ThinkNEXT also  <br />
                <i class="fa fa-hand-o-right"></i>&nbsp Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes on Daily basis so that students need not to struggle for jobs as a fresher<br />
            <i class="fa fa-hand-o-right"></i>&nbsp Part Time / Full Time Job Offer for each student during training (Earn while you learn) <br />
                                
                <i class="fa fa-hand-o-right"></i>&nbsp Life-Time Validity Learning and Placement Card<br />
                <i class="fa fa-hand-o-right"></i>&nbsp Java Training from top industry experts having more than 5 years of experience <br />
                <i class="fa fa-hand-o-right"></i>&nbsp Java demo class is also offered by ThinkNEXT <br />
            <i class="fa fa-hand-o-right"></i>&nbsp Java Training and Project Certificate By ThinkNEXT<br />
            <i class="fa fa-hand-o-right"></i>&nbsp Java Experience Certificate by ThinkNEXT<br />
            <i class="fa fa-hand-o-right"></i>&nbsp 100% Practical, Personalized training with Live Projects<br />
            <i class="fa fa-hand-o-right"></i>&nbsp Multiple Job Interviews + 100% Job Assistance<br />
            <i class="fa fa-hand-o-right"></i>&nbsp Opportunity to work on live projects<br />
            <i class="fa fa-hand-o-right"></i>&nbsp One-to-one Project and Project will be made Live and to make it Live, ThinkNEXT will provide sub-domain and hosting worth Rs. 3000/- absolutely free to each student for web based Project.<br />
                <i class="fa fa-hand-o-right"></i>&nbsp Free Study Material<br />
                <i class="fa fa-hand-o-right"></i>&nbsp Highest level of Infratsructure in Chandigarh Mohali Panchkula with 200+ computers and 16+ Labs<br />
                       
        <br />
                </div>


           
             <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=408&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="408" height="180" scrolling="no" class="fb-ifrme-460" ></iframe>
 <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=244&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="244" height="180" scrolling="no" class="fb-ifrme-270" ></iframe>



            
              

            
             </div>


 <div class="right" style="padding-top:12px;">
    
    <div class="right_box margin-top" style="background: #fff; box-shadow: 0px 0px 4px 0px;">
        <div class="without_border dwl" >
          <div class="brochiframe"  id="brochiframe">
          
            <iframe name="broucher" style="height:500px; width :650px;"></iframe>
            <a href="#" onclick="clsifrm()"; >
            <img alt="Close" src="images/close.png" style="margin-top:-67%; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a>
               
          </div>

           <a href="BroucherDownload.aspx?data=Java Broucher" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0" alt="Brochure Download Image" /></a>     
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="" />
</div>

         
     <div class="right_box margin-top">
 <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;"> Arrange a Call Back</h1>
 <div class="rounded_box" style="background-color:white;">

<table class="table2" id="tb1">
    <tr>
       <td>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtName" runat="server" Width="100%" class="input" style="margin-top:10%; text-transform: capitalize;" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" Width="100%" class="input" 
                                    MaxLength="10" style="margin-top:6%;" Placeholder="Mobile No." ></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtEmailId"  runat="server" Width="100%"  class="input" style="margin-top:5%;" placeholder="E-mail ID" ></asp:TextBox>
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
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass ="buton" style="margin-left:0%; margin-bottom:5%;width:100%;height:35px;font-size:19px;background-color:black;" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />                              
                                </td>
                        </tr>
                   </table>              
</div>
</div>      
     <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;">Book My Free Demo Class Now!  </h1>

               <div class="rounded_box" style="background-color:white;">
                  <table class="table2" id="tb2">
    <tr>
       <td>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoName" runat="server" Width="100%" class="input" style="margin-top:10%; text-transform: capitalize;" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoMblno" runat="server" Width="100%" class="input" 
                                    MaxLength="10" style="margin-top:6%;" Placeholder="Mobile No."></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtdemoEmail"  runat="server" Width="100%"  class="input" style="margin-top:5%;" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                       <tr>
                           <td>
                              <asp:TextBox id="txtdemoMsg" class="input" TextMode="multiline" width="100%" Rows="3" runat="server" style="margin-top:5%;" placeholder="Course Title / Description etc." />

                           </td>
</tr>
                      <tr>
                                              
                            <td>                             
                                <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass ="buton" style="margin-left:0%; margin-bottom:5%;width:100%;height:37px;font-size:19px;background-color:black;"  />                              
                                </td>
                        </tr>
                   </table>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>



                   <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;">Career Counselling</h1>
<div class="rounded_box" style="background-color:white;">
<div style="padding:10px;"> 
 <asp:Label ID="Label2"  style="text-align:center;" runat="server"  Font-Bold="True" Font-Size="9.3">
              <div style="width:100px;float:left;"><img src="images/silhouette.png" style="border-radius:100%;" width="150px" alt="Blank Person image" /></div>
                 <div > Speak to the Munish Mittal to know what's the best course for your career. Just call us on Munish Mittal  personal number for free career guidance. <br/> <br/>Thankyou! </span>
                                                               </div>               
                            
     <div  style="     border-radius: 5px;background: black; color: #fff;font-weight: bold;  font-size: 20px; padding: 9px 0px;"><span>+91 8360 052 717</span></div>

</asp:Label> </div>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>


  <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;"> Java Training in Chandigarh</h1>
  
     <div class="rounded_box">
         <div class="right_box margin-top" style="  text-align: center;">
             <iframe style=" width:95%;height:200px; " src="https://www.youtube.com/embed/kIB3xfYLyqc?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>

       
     <%--   <img class="img-responsive" src="images/java1.png" alt="pdf"  style="float:right;"/>--%>
            <br />
           <%-- <h1 style="width:95%;">Other Popular Courses/Training Programs </h1>
<div class="rounded_box" style="background-color:white;">
<p style="padding-top: 6px; padding-left:8%;"> 
 <asp:Label ID="lblmessgaelogin"  style="text-align:center;" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="9.3">
                                <a href="digital-marketing-course-training-in-chandigarh.aspx"> Digital Marketing Course</a> <br>
                              <a href="php-training-in-chandigarh.aspx">PHP\MySQL Course</a><br>
                            <a href="web-designing-training-in-chandigarh.aspx">Web Designing Course</a><br>
                              <a href="dot-net-training-in-chandigarh.aspx">.Net Course</a><br>                           
                            <a href="Android-training-in-chandigarh.aspx">Android Course</a><br>
                            <a href="iphone-training-in-chandigarh.aspx">iPhone Course</a><br>
                            <a href="software-testing-training-in-chandigarh.aspx"> Software Testing Course</a><br>
                            <a href="networking-training-in-chandigarh.aspx">Networking Course</a><br>
                            <a href="ccna-training-in-chandigarh.aspx">CCNA Course</a><br>
                            <a href="ccnp-training-institutions-chandigarh.aspx"> CCNP Course</a><br>
                            <a href="mcitp-training-in-chandigarh.aspx">MCITP Course</a><br>
                            <a href="seo-training-in-chandigarh.aspx">SEO,SMO &amp; Bidding  Course</a><br>
                            <a href="c-and-c-training-in-chandigarh.aspx">C\C++ Course</a><br>
                            <a href="online-bidding-freelancing.aspx">Online Bidding(FreeLancing) Course</a><br>
                            <a href="sql-server-database-dba-training-in-chandigarh-mohali.aspx">Oracle\SQL Server Course</a><br>
                            <a href="IoT-training-chandigarh-mohali-india.aspx"> IoT (Internet of Things) Course</a> <br>
                            <a href="Animation-and-Multimedia-training-in-chandigarh.aspx">Animation &amp; Multimedia Course</a><br>    
                            <a href="matlab-training-institute-in-chandigarh.aspx">MATLAB Course</a><br>
                            <a href="big-data-hadoop-course-chandigarh.aspx">BigData Course</a><br>
                           <a href="tally-erp-training-coaching-institute-in-chandigarh-mohali.aspx"> Tally Course</a> <br>
                         <a href="ethical-hacking-training-in-chandigarh-mohali.aspx">Ethical Hacking Course</a> <br>
                       <a href="cloud-computing-training-in-chandigarh-mohali.aspx"> Cloud Computing Course</a> <br>
                     <a href="advance-excel-course-training-in-chandigarh-mohali.aspx"> Advance Excel Course</a> <br /> <a href="summer-training-in-chandigarh-mohali.aspx">Summer Training</a><br /> <a href="computer-courses-in-chandigarh-mohali.aspx">Computer Courses</a> <br /> <a href="industrial-training-in-mohali.aspx">Industrial Training in Mohali</a> <br /> <a href="wordpress-training-in-chandigarh-mohali.aspx">WordPress Training</a> <br /> <a href="Asp-Net-MVC-training-in-chandigarh-mohali.aspx">Asp .Net MVC Training</a> <br /> <a href="laravel-php-framework-training-in-chandigarh-mohali.aspx">Laravel PHP Framework Training</a> <br /> <a href="AngularJS-training-course-chandigarh-mohali.aspx">AngularJS Training Course</a> <br /> <a href="nodejs-training-course-chandigarh-mohali.aspx">Node.js Training Course</a> <br /> <a href="reactjs-training-course-chandigarh-mohali.aspx">ReactJS Training Course</a> <br /> <a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx">Machine Learning & AI with Python</a> <br /> <a href="data-science-with-python-course-training-chandigarh-mohali.aspx">Data Science with Python</a> <br />


</asp:Label> </p>


     
    </div>--%>

          </div>

           
  <div style="clear:both;"></div>
    
       <div style=" background-image:url(images/backhgjkl.jpg);background-repeat: round; padding-top:15px;padding-bottom: 30px;position:relative;height:100%;">  
       <div id="particles-js2" style="background:#f1f1f1;"></div>
  
             <p style="text-align:center;font-size:18px;"><span style="padding: 5px; background: red; color: white;text-shadow: 2px 2px 3px #969698;  border-radius: 8px;text-decoration: none;text-transform: uppercase;">Student Testimonials</span></p> 
      <div id="jssor_2" style="position:relative;margin:0 auto;top:0px;left:0px;width:1400px;height:300px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
       
 
      
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('logo-slider/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div  data-u="slides" style="cursor:default;position:relative;top:40px;left:22px;width:1400px;height:300px;overflow:hidden;">
             <div class="awrds-ach">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Jqn1fTjZCp8?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>        
            <div class="awrds-ach">
                 <iframe width="100%" height="100%" src="https://www.youtube.com/embed/YR_B5I62IeY?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
           
            <div>
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/dfELP3eM9HY?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
            <div>
                 <iframe width="100%" height="100%" src="https://www.youtube.com/embed/9zZvXZDq6_Q?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
           
          
           
        </div>
      
       
        <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span>
    </div>

             <div><br />
             
          </div>
      </div>
         <div style="clear:both;"></div>
                              <br /><br />
<p style="text-align:center;"><span class="bkmydemo"> <a href="free-demo-class.aspx" style="color: white;"> Book My Free Demo Class Now! </a></span></p>
    <div class="col-lg-7" style="padding-left:0; padding-top:15px;margin:auto;float:none;">
<iframe  class="thknxtytube" style="width:100%;height:450px;" src="https://www.youtube.com/embed/FvkfHjQttTg?&autoplay=1&loop=1&rel=0&showinfo=0&color=white&iv_load_policy=3" frameborder="0" allowfullscreen></iframe>
    </div>

<br />
    <div class="col-lg-12">
               <h5 style="color: #FF0000; font-weight:bold;">Top Search</h5>
                 <a href="learn-java.aspx">learn java</a>, <a href="java-certification.aspx">java certification</a>, <a href="java-course.aspx">java course</a>, <a href="learn-java-programing.aspx">learn java programming</a>, 
                <a href="java-tutorial.aspx">java tutorial</a>, <a href="java-for-beginners.aspx">java for beginners</a>, <a href="advanced-java-training.aspx">advanced java training</a>, <a href="java-programming.aspx">java programming</a>, <a href="core-java-training-in-chandigarh.aspx">core java training in chandigarh</a>, 
                <a href="how-to-learn-java.aspx">how to learn java</a>, <a href="java-training-institute-in-chandigarh.aspx">java training institute</a>, <a href="java-internship-in-chandigarh.aspx">java internship in chandigarh</a>, <a href="java-training-in-chandigarh.aspx">java training in chandigarh</a>, <a href="best-institute-for-core-java-in-chandigarh.aspx">best institute for core java in chandigarh</a>, <a href="java-training-in-mohali.aspx">java training in mohali</a>, 
                <a href="advanced-java-training-in-chandigarh.aspx">advanced java training in chandigarh</a>, <a href="java-training-companies-in-chandigarh.aspx">java training companies in chandigarh</a>, 
                  <a href="java-training-in-panchkula.aspx">java training in panchkula</a>, <a href="java-industrial-training-in-panchkula.aspx">java industrial training in panchkula</a>, <a href="top-5-java-training-institutes-chandigarh-mohali.aspx">Top 5 Java Training Institutes in Chandigarh Mohali</a>, <a href="java-industrial-training-in-mohali.aspx">java industrial training in mohali</a>, <a href="top-10-companies-providing-java-training-in-chandigarh.aspx">Top 10 Companies Providing Java Training  in Chandigarh</a>
                <br /><br />
            </div>

     <div style="clear:both;"></div>
                              <br /><br />
<p style="text-align:center;"><span class="bkmydemo"> <a href="java-tutorial.aspx" style="color: white;"> Java Tutorial </a></span></p>
<br />


       <div class="clear"></div>
    <div>
      <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-industrial-training.jpg" data-lightbox="example-set" data-title="Java Industrial Training in Chandigarh"><img class="example-image" src="java-images/java-industrial-training.jpg" alt="Java Industrial Training in Chandigarh"/></a></div></div>
     <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-course-in-chandigarh.jpg" data-lightbox="example-set" data-title="Java Course in Chandigarh"><img class="example-image" src="java-images/java-course-in-chandigarh.jpg" alt="Java Course in Chandigarh" /></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-Training-in-Chandigarh.jpg" data-lightbox="example-set" data-title="Java Training in Chandigarh"><img class="example-image" src="java-images/java-Training-in-Chandigarh.jpg" alt="Java Training in Chandigarh" /></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-training-in-panchkula.jpg" data-lightbox="example-set" data-title="Java Training in Panchkula"><img class="example-image" src="java-images/java-training-in-panchkula.jpg" alt="Java Training in Panchkula"/></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-training-in-mohali.jpg" data-lightbox="example-set" data-title="Java Training in Mohali"><img class="example-image" src="java-images/java-training-in-mohali.jpg" alt="Java Training in Mohali"/></a></div></div>
     <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-training-in-chandigarh-mohali-panchkula.jpg" data-lightbox="example-set" data-title="Java Training in Chandigarh Mohali Panchkula"><img class="example-image" src="java-images/java-training-in-chandigarh-mohali-panchkula.jpg" alt="Java Training in Chandigarh Mohali Panchkula" /></a></div></div>
   <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-course-in-panchkula.jpg" data-lightbox="example-set" data-title="Java Course in Panchkula"><img class="example-image" src="java-images/java-course-in-panchkula.jpg" alt="Java Course in panchkula" /></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-course-in-mohali.jpg" data-lightbox="example-set" data-title="Java Course in Mohali"><img class="example-image" src="java-images/java-course-in-mohali.jpg" alt="Java Course in mohali" /></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-course.jpg" data-lightbox="example-set" data-title="Java Course"><img class="example-image" src="java-images/java-course.jpg" alt="Java Course"/></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/advanced-java-training-in-chandigarh.jpg" data-lightbox="example-set" data-title="Advanced Java Training in Chandigarh"><img class="example-image" src="java-images/advanced-java-training-in-chandigarh.jpg" alt="Advanced Java Training in Chandigarh Mohali Panchkula" /></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-training-course.jpg" data-lightbox="example-set" data-title="Java Training Course in Chandigarh"><img class="example-image" src="java-images/java-training-course.jpg" alt="Java Trainig Course in Chandigarh" /></a></div></div>
  <div class="grid_4 box-3">
 <div class="img-bord magnifier"> <a class="example-image-link boxer boxer_image" href="java-images/java-tutorial.png" data-lightbox="example-set" data-title="Java Tutorial"><img class="example-image" src="java-images/java-tutorial.png" alt="Java Tutorial" /></a></div></div>
   </div>
   

       <!-- // START Social Share Script-Code with likes ---------->
       <!-- // START Social Share Script  and Css  with Likes-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script  and Css with Likes  -->
    <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook",  "twitter", "linkedin"
    ],
  
    url: "http://thinknexttraining.com/java-training-in-chandigarh.aspx"
  });
</script>
    <!-- // END Social Share Script-Code with likes ---------->



       <script type="text/javascript">
        jssor_2_slider_init = function() {

            var jssor_2_options = {
              $AutoPlay: 1,
              $AutoPlaySteps: 4,
              $SlideDuration: 300,
              $SlideWidth: 300,
              $SlideSpacing: 50,
              $Cols: 4,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $Steps: 4
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 1,
                $SpacingY: 1
              }
            };

            var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1400);
                    jssor_2_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*responsive code end*/
        };





    </script>
        <script type="text/javascript">jssor_1_slider_init();</script>
         <script type="text/javascript">jssor_2_slider_init();</script>

    
 
</asp:Content>

