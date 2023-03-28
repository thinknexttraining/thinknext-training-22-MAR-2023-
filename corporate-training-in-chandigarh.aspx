<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="corporate-training-in-chandigarh.aspx.vb" Inherits="embedded_systems_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Corporate Training in Chandigarh - ThinkNEXT Technologies </title>
    <meta name="description" content=" Corporate Training - ThinkNEXT is one of the best IT company providing Corporate Training in Chandigarh Mohali panchkula INIDA. Corporate Training institute/company in Mohali Chandigarh." />
  
         <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/slider-new.png" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/slider-new.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
      <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">
  
 <%--<img src="images/Embeded-Syestem-training-in-chandigarh-mohali.jpg" alt="Embeded System Training Course in Chandigarh Mohali Panchkula" />--%>
     
     </div>
             
 
    <div class="page-div text-justify">
             
        <div class="col-lg-8 col-md-8">
                  <div class="col-md-12">
                       <div class="gdl-header-wrapper">
        <h1 class="gdl-header-title">Corporate Training</h1>

                       </div>
      
            <p>
         <strong>
    Companies usually require corporate training for skill enhancement of their 
    employees. ThinkNEXT Technologies Private Limited </strong>provides Corporate 
    Training according to their requirements and standards. Our 
    developers-cum-trainers/industry experts are well versed with technologies so 
    they can deliver according to live environment. We have provided corporate 
    training to number of companies.
                </p>

   

         
      <p><strong class="textred">For more details, you can contact us at 0172-4656197, 78374-33594</strong></p>
       <p>    
      <i class="fa fa-hand-o-right"></i>&nbsp;.NET MVC<br/>
  <i class="fa fa-hand-o-right"></i>&nbsp;SAP Crystal Reports<br/>
  <i class="fa fa-hand-o-right"></i>&nbsp;Advance Java<br/>
  <i class="fa fa-hand-o-right"></i>&nbsp;Android Apps connectivity with database servers<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;Advanced Android Apps Development<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;Multiple SMS Gateway Support<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;Advance iOS (iPhone) Application Development<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;Cake PHP<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;PHP-MVC<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;Three tier Architecture for software development<br/>
<i class="fa fa-hand-o-right"></i>&nbsp;SQL Server Database Administration<br/>
   <br /></p>
            </div>
             <div class="clear-both"></div>
          <br />
        <br />
<p class="text-center"><span class="bkmydemo"> <a href="free-demo-class.aspx" > Book My Free Demo Class Now! </a></span></p>
        <br />
        <div class="text-center">
         <div class="col-lg-7 company-vid">
<iframe  class="thknxtytube" src="https://www.youtube.com/embed/FvkfHjQttTg?&autoplay=1&loop=1&rel=0&showinfo=0&color=white&iv_load_policy=3" frameborder="0" allowfullscreen></iframe>
    </div>
       <div class="clear-both"></div>
            </div>

    
             </div>





 <div class="col-lg-4 col-md-4"">
    
    <div class="right_box margin-top">
        <div class="without_border dwl" >
          <div class="brochiframe"  id="brochiframe">
          
            <iframe name="broucher"></iframe>
        
            <img class="closebrochureiframe" alt="Close" src="images/close.png"  onclick="clsifrm()"  /> 
               
          </div>

        <a title="ThinkNEXT Brochure"  href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" alt="Embedded System" border="0"  /> </a>
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="Corporate Training in Chandigarh Mohali" />
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

          <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

          </div>


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
  
    url: "http://www.thinknexttraining.com/corporate-training-in-chandigarh.aspx"
  });
</script>

</asp:Content>
