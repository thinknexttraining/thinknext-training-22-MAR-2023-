<%@ Page Title="Android App Development Course in Mohali - ThinkNEXT" Language="VB" MasterPageFile="~/course/MasterPage-Course-New.master" AutoEventWireup="false" CodeFile="android-app-development-course-in-mohali.aspx.vb" Inherits="android_app_development_course_in_mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <meta name="description" content="Android App Development Course in Mohali - ThinkNEXT is best Android Training Company providing Android App Development Training in Mohali  India. ThinkNEXT " />
    <meta name="keywords" content="Android App Development Course in Mohali" />
      <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/share-images/android-training.png" />
     <meta property="og:image" content="http://www.thinknexttraining.com/share-images/android-training.png" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
    <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, , Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after" />
    <meta name="robots" content="index, follow" /> 
    <meta name="copyright" content="ThinkNEXT" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="main-image">  
         <img class="d-md-none"  src="../images/Androind-Training-in-Chandigarh-mob.jpg" alt="Android App Development Training in Mohali " />

     <img class="d-none d-md-block" src="../images/Androind-Training-in-Chandigarh-banner.jpg" alt="Android App Development Training in Mohali " />
     
      <div class="downloadsyllabus-banner px-2 py-3 rounded">
            <div class="downloadsyllabus w-100 border-0">
                <h4 class="text-dark fw-bold text-center">Download Syllabus</h4>
                <p class="text-center mb-4">Fill up the below form and you will get the complete course syllabus</p>

                <asp:Label class="label5" ID="Label5" runat="server"></asp:Label>
                <asp:Label ID="msg" runat="server" Visible="false" Text="" CssClass="text-danger"></asp:Label>
                <div class="row m-0">
                    <div class="col-12 mb-4">
                        <asp:TextBox ID="NameSyl" runat="server" class="form-control" placeholder="Your Name*"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="DSyllabusValidatorName" CssClass="text-danger position-absolute" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Name" ControlToValidate="NameSyl" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="DSyllabusGroup1"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredDSyllabusdValidatorName" CssClass="text-danger position-absolute" runat="server" ControlToValidate="NameSyl" ErrorMessage="Enter Name" ValidationGroup="DSyllabusGroup"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-12 mb-4">
                        <asp:TextBox ID="PhonenoSyl" runat="server" class="form-control" Type="text" placeholder="Mobile No."></asp:TextBox>
                        <asp:RegularExpressionValidator ID="DSyllabusValidatorPhone" CssClass="text-danger position-absolute" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="PhonenoSyl" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ValidationGroup="DSyllabusGroup1"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredDSyllabusValidatorPhone" CssClass="text-danger position-absolute" runat="server" ControlToValidate="PhonenoSyl" ErrorMessage="Enter Mobile No." ValidationGroup="DSyllabusGroup"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-12 mb-4">
                        <asp:TextBox ID="EmailidSyl" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="DSyllabusValidatorEmail" CssClass="text-danger position-absolute" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="EmailidSyl" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="DSyllabusGroup1"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredDSyllabusValidatorEmail" CssClass="text-danger position-absolute" runat="server" ControlToValidate="EmailidSyl" ErrorMessage="Enter EmailID" ValidationGroup="DSyllabusGroup"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-12 text-center">
                        <span class="buttonicon">
                            <asp:Button ID="btnsyll" runat="server" class="btn btn-dark text-white dnloadbtn" Text="Download Syllabus Now" OnClick="btnsyll_Click" OnClientClick="return SyllValidate()" />
                        </span>
                    </div>
                </div>

            </div>

        </div>
     </div>
             
    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-7">
                    <div class="p-2 border text-justify position-sticky top-0">
                       <div class="gdl-header-wrapper">
                        <h1>Android App Development Course in Mohali</h1>
                    </div>
                     <p>Android is the very big raised  area for those students which are interested to make their career in the world  of Android. In the android course, you will learn how to make apps. Today's era  is android era. Everyone wants a smart phone which will fulfill their  requirements. In Mohali, a lot of companies provide the android course  training; ThinkNEXT Technologies Pvt. Ltd is one of the top rated company. ThinkNEXT  offers <strong>Android App development course in  Mohali.</strong></p>
                 </div>
                </div>
                <div class="col-md-5">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">                      

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
               
                </div>
            </div>
        </section>
               
    <section class="py-4 bg-ececec">
        <div class="container">
            <div class="row m-0 p-2">
                <div class="col-lg-6">
                    <div class="position-sticky top-0">
                          <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/3D180RWkpzo" data-bs-target="#VideoModal">
                            <img src="https://i.ytimg.com/vi_webp/3D180RWkpzo/maxresdefault.webp" alt="Android App Development Training in Mohali">
                            <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/3D180RWkpzo" data-bs-target="#VideoModal"></span>
                        </div>
                    
                </div>
                    </div>
                <div class="col-lg-6 text-justify">
                     <div class="position-sticky top-0">                    
                         
                            <h2 class="text-danger"><b>Android</b></h2>
                    <p>Android is a Mobile Operating System developed by Google, based on the Linux kernel and designed primarily
                         for Touchscreen Mobile Devices such as Smartphones and Tablets. Android was initially developed by Android Inc., 
                        which Google bought in 2005 and later the OHA (Open Handset Alliances) and other companies.</p>
                       <br />
                        <strong class="text-danger h4"><b>Duration of Android Course</b></strong>
                    <ul class="welcomeLinks">
                        <li><strong>6 Weeks/Months Android Course</strong></li>                      
                    </ul>   
                       
                </div>
                    </div>


            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="../images/industrial-training-comapny-chandigarh.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div>
                    <img src="../images/six-weeks-summer-training-chandigarh.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div>
                    <img src="../images/summer-training-in-mohali.jpg" alt="Android App Development Course in Mohali" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="../images/industrial-training-comapny-chandigarh-1.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div class="text-center">
                    <img src="../images/industrial-training-comapny-chandigarh-2.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div class="text-center">
                    <img src="../images/six-weeks-summer-training-chandigarh-1.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div class="text-center">
                    <img src="../images/six-weeks-summer-training-chandigarh-2.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div class="text-center">
                    <img src="../images/summer-training-in-mohali-1.jpg" alt="Android App Development Course in Mohali" />
                </div>
                <div class="text-center">
                    <img src="../images/summer-training-in-mohali-2.jpg" alt="Android App Development Course in Mohali" />
                </div>
            </div>
        </div>

    </section>
    
    
    <section class="py-4 bg-ececec pb-0">

        <div class="container-fluid">
             <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="../images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Android App Development Course in Mohali" title="Android App Development Course in Mohali">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="../images/national-icon-award-suniel-shetty-min.webp" alt="Android App Development Course in Mohali" title="Android App Development Course in Mohali">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="../images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Android App Development Course in Mohali" title="Android App Development Course in Mohali">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="../images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Android App Development Course in Mohali" title="Android App Development Course in Mohali">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="../images/business-leaders-award-surendra-pal-min.webp" alt="Android App Development Course in Mohali" title="Android App Development Course in Mohali">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="../images/Nations-Pride-Award-faggan-min.webp" alt="Android App Development Course in Mohali" title="Android App Development Course in Mohali">
                </div>

            </div>
        </div>




    </section>


    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-8 text-justify">
                    <div class="d-inline-block pt-2 ">
                        <br />
                        <h2 class="text-danger"><b>Why Android Training?</b></h2>
                        <br>
                        <p>
                            Android is evolving very fast and new releases are coming like a flash. This makes our job of
providing android training challenging and interesting. The growth in the number of mobile
internet users has exceeded a whopping 10,000 million users which is nearly 10 times more
than that of Internet PC. As per an estimate, there are around 5 billion mobile phones and the

mobile industry is evaluated to be at $1,000,000,000,000 by creating a lot of job opportunities. Android become the best platform for those who are related to IT professional or for those who
want to switch their jobs. It is the best opportunity for the job seekers too. Well, this will be
possible only when you will start the Android training course in Chandigarh. ThinkNEXT
presents the best professional and skilled based Android training course in Chandigarh.
                        </p>
                        <p>
                            <strong class="text-danger h3"><b>Who Can Learn Android</b></strong><br />
                            Any B.E/ B.Tech/ M.C.A/ M.Sc computers/ M.Tech student in any stream can choose android
training as his career.
                        </p>

                    </div>



                </div>

                <div class="col-lg-4 text-justify">
                    <div class="position-sticky top-0">
                   
                        <div class="py-3 px-4 bg-black">
                            <h3 class="text-white text-center"><strong>Book My Free Demo Class Now!</strong></h3>
                            <div class="mt-3">
                                <asp:Label ID="Label1" runat="server"></asp:Label>

                                <div class="form-group">
                                    <asp:TextBox ID="txtdemoName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdemoMblno" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank." ControlToValidate="txtdemomblno" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdemoEmail" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />
                                </div>

                                <div class="form-group d-none">
                                    <asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101"></asp:TextBox>
                                </div>

                                <div class="form-group text-center">
                                    <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-warning px-3 h4" Text="Book Now" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-ececec py-4">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Android - Course Contents</strong></h3>
            </div>
            
            <div class="row">
                 <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">JAVA</strong>

                    <ul class="welcomeLinks">
                      <li>Introduction to Java</li>
                      <li>Installation - Environment Setup</li>
                      <li>First Java Program</li>
                      <li>Syntax of Java Program</li>
                      <li>Netbeans IDE</li>
                      <li>Variables Identifiers</li>
                      <li>Types of Variables</li>
                      <li>Datatypes</li>
                      <li>String</li>
                      <li>Type Casting</li>
                      <li>Arithmetic Operators</li>
                      <li>Assignment Operators</li>
                      <li>Comparison Operators</li>
                      <li>Logical Operators</li>
                      <li>String Class Methods</li>
                      <li>Math Class</li>
                      <li>Boolean Expression in Java</li>
                      <li>If Else</li>
                      <li>Ternary Operator</li>
                      <li>Switch Case</li>
                      <li>While Loop</li>
                      <li>For Loop</li>
                      <li>Break and Continue</li>
                      <li>Array	</li>
                      <li>Object Oriented Programming</li>
                      <li>Classes and Objects</li>
                      <li>Class Attributes	</li>
                      <li>Method-Functions</li>
                      <li>Static and Non Static</li>
                      <li>Java Scope of Variables	</li>
                      <li>Recursion	</li>
                      <li>Special Characters</li>
                      <li>Method Overloading</li>
                      <li>This Keyword		</li>
                      <li>Modifiers		</li>
                      <li>Encapsulation		</li>
                      <li>Inheritance		</li>
                      <li>Method Overriding		</li>
                      <li>Inner Class		</li>
                      <li>Polymorphism		</li>
                      <li>Abstraction		</li>
                      <li>Interface		</li>
                      <li>Scanner Class		</li>
                      <li>Date and Time		</li>
                      <li>Calendar Class		</li>
                      <li>Array List		</li>
                      <li>Hash Map		</li>
                      <li>Wrapper Class		</li>
                      <li>Naming Convension		</li>
                      <li>Thread		</li>
                      <li>Try Catch</li>

                  </ul> 
   <strong class="textred">ANDROID</strong>
                      <ul class="welcomeLinks">
                      
                          <li>Android Basics		</li>
                          <li>Android Environment Setup		</li>
                          <li>First Android App		</li>
                          <li>Android Project Structure		</li>
                          <li>Views and View Groups		</li>
                          <li>Linear Layout		</li>
                          <li>Relative Layout		</li>
                             <li>TextView	</li>
                          <li>EditText		</li>
                          <li>Frontend and Backend		</li>
                          
                          <li>Working With TextView and EditText		</li>
                          <li>Toast		</li>
                        
                          </ul>
                </div>

                 <div class="col-lg-4 col-md-4 mt-3 text-justify">
                  <ul class="welcomeLinks">
                        <li>Button		</li>
                       
                          <li>CheckBox		</li>
                          <li>Working With CheckBoxes		</li>
                          <li>RadioGroup and RadioButton		</li>
                          <li>Working With Radio Buttons		</li>
                          <li>ImageView and ImageButton		</li>
                          <li>Toggle Buttons		</li>
                          <li>Switch		</li>
                          <li>RatingBar		</li>
                          <li>SeekBar		</li>
                          <li>SnackBar		</li>
                          <li>Floating Labels		</li>
                          <li>Floating Action Button		</li>
                          <li>CardView		</li>
                          <li>Text Watcher		</li>
                          <li>Adapter, AdapterView and ListView		</li>
                          <li>Spinner		</li>
                          <li>Autocomplete Textview		</li>
                          <li>ScrollView		</li>
                          <li>TextClock		</li>
                          <li>App Title, App Icon and Theme Color		</li>
                          <li>Action Bar		</li>
                          <li>Option Menu Part 1		</li>
                          <li>Option Menu Part 2		</li>
                          <li>SubMenu		</li>
                          <li>SearchView		</li>
                          <li>PopupMenu Part 1		</li>
                          <li>PopupMenu Part 2		</li>
                          <li>Context Menu Part 1		</li>
                          <li>Context Menu Part 2		</li>
                          <li>ListDialog		</li>
                          <li>Context Menu on List View		</li>
                          <li>AlertDialog		</li>
                          <li>ListDialog with RadioButtons		</li>
                          <li>ListDialog with CheckBoxes		</li>
                          <li>Progress Dialog		</li>
                          <li>Date Picker Dialog		</li>
                          <li>Time Picker Dialog		</li>
                          <li>Explicit Intent		</li>
                          <li>Implicit Intent		</li>
                          <li>Permissions		</li>
                          <li>Runtime Permission Handling		</li>
                          <li>Phone Call		</li>
                          <li>Send Sms		</li>
                          <li>Send Email		</li>
                          <li>Clipboard		</li>
                          <li>Bluetooth		</li>
                          <li>Wi-Fi		</li>
                          <li>Check Internet Connection		</li>
                          <li>WebView		</li>
                          <li>Text To Speech		</li>
                          <li>Google Voice Typing-Speech To Text		</li>
                          <li>Countdown Timer		</li>
                          <li>Press Back Again To Exit		</li>
                          <li>Custom Fonts		</li>
                          <li>Custom Designed UI Controls		</li>
                          <li>Sensors		</li>
                          <li>Notifications		</li>
                          <li>Read Contacts		</li>
                          <li>Read All Music Files		</li>
                          <li>Pick Image From Gallery		</li>
                          <li>Pick Music and Video From Storage		</li>
                          <li>Capture Image From Camera		</li>
                          <li>Capture Video From Camera		</li>
                        
                         
                         
                          
                     
                  </ul> 
                </div>
                <div class="col-lg-3 col-md-4 mt-3 text-justify">
                    <ul class="welcomeLinks">
                          <li>Video View		</li>
                          <li>Media Player		</li>
                          <li>Voice Recorder		</li>
                          <li>Flashlight		</li>
                          <li>Shared Preferences		</li>
                         <li>Session Management		</li>
                          <li>Running Task in Background Thread		</li>
                          <li>Volley Library		</li>
                          <li>JSON Parsing		</li>
                          <li>Recycler View		</li>
                         <li>Swipe Refresh Layout		</li>
                          <li>Screen Orientation		</li>
                          <li>Glide - Picasso		</li>
                          <li>Biometric Authentication		</li>
                        <li>Firebase Cloud Messaging		</li>
                          <li>Splash Screen		</li>
                          <li>Google Sign in Integration		</li>
                          <li>YouTube Player API		</li>
                          <li>Tabhost		</li>
                          <li>View Pager		</li>
                          <li>Tab Layout with Swipe Able Pages		</li>
                          <li>Navigation Drawer		</li>
                          <li>Google Maps		</li>
                          <li>Google Maps Part 2		</li>
                             <li>Firebase Phone Authentication		</li>
                          <li>Export and Import Android Studio Project		</li>
                          <li>Debugging		</li>
                          <li>Local History		</li>
                          <li>Updating Project		</li>
                          <li>Generate Signed APK		</li>
                          <li>Publish App On Play Store</li>
                    
                    </ul>
                       <strong class="textred">Android Projects</strong>
                  <ul class="welcomeLinks">
                      <li>Lost And Found		</li>
                      <li>Multimedia Player		</li>
                      <li>Smart Attendance		</li>
                      <li>Smart Gatekeeper		</li>
                      <li>Weather Forecasting		</li>
                      <li>Taxi Cab on Demand Project</li>

                  </ul> 
                     <strong class="textred">INTERVIEW PREPARATION</strong>
                  <ul class="welcomeLinks">
                    <li>Frequently Asked Questions during Job Interviews</li>

                  </ul> 
                  
                  
                     
                  
                   <p><strong class="textred">Job Search Module</strong></p>
                  <ul class="welcomeLinks">
                      <li>How to Create an Account or Create your Resume on Indeed		</li>
                      <li>How to Create an Account on Indeed		</li>
                      <li>How to Create a Good Linkedin Profile to Get Job in Your Own City		</li>
                      <li>How to Apply for a Job in Your Own City Using Linkdin Profile		</li>
                      <li>How to Create a Good Profile on Shine to Get Job in Your Own City		</li>
                      <li>How to Apply For a Job in Your Own City Using Shine		</li>
                      <li>How to Create a Good Naukaricom Profile to Get Job in Your Own City		</li>
                      <li>How to Apply For Job in Your Own City Using Naukaricom Profile</li>

                  </ul> 
 <br />
                   <p><strong class="textred">CERTIFICATION</strong></p>
                  <ul class="welcomeLinks">
                      <li>Android Certification</li>
                     
                  </ul> 
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
                        <img class="w-100" src="../images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Android App Development Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="../images/industrial-training-course-chandigarh-krishma.jpg" alt="Android App Development Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="../images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Android App Development Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="../images/top-15-reason-to-join-thinknext.jpg" alt="Android App Development Training in Mohali">
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
                                    <img class="img-thumbnail" src="../images/it-sangathan-dm-award-thumb.jpg" alt="Android App Development Training in Mohali" data-image="../images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Android App Development Training in Mohali" data-image="../images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/AajSamaj-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/mohali-sithith-dm-award-thumbn.jpg" alt="Android App Development Training in Mohali" data-image="../images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/DivyaHimachal20-03-2020-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/DivyaHimachal20-03-2020.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Android App Development Training in Mohali" data-image="../images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/DainikBhaskar19-03-2020-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/thinknext-got-award-honor-thumb.jpg" alt="Android App Development Training in Mohali" data-image="../images/thinknext-got-award-honor-thumb.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/HimachalDastak-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/Himprabha-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/it-sangathan-dm-award-chd-thumb.jpg" alt="Android App Development Training in Mohali" data-image="../images/it-sangathan-dm-award-chd.jpeg" />
                               </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/HT-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/thinknext-got-award-mohali-thumb.jpg" alt="Android App Development Training in Mohali" data-image="../images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="../images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Android App Development Training in Mohali" data-image="../images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
    

    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 30 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                   
<li>Android Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Android Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Android Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
<li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
<li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
<li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
<li>Free online courses for class-room/offline students undergoing Android Training</li>
<li>Get Android Training in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
<li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
<li>Guaranteed Job Interviews and 100% Placement Assistance</li>
<li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
<li>Android Training on Live-Projects </li>
<li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
<li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
<li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
<li>Android Training from 10+ Years old company</li>
<li>Customized Syllabus (You can add your own relevant topics) and Backup Classes (in case you miss some classes)</li>
<li>Free Subdomain and Web Hosting to host projects.</li>
<li>Numerous Tie-up with IT / Electronics / Mechanical / Civil / Electrical / Retail / Textile etc. companies for Placements</li>
<li>Lifetime Validity Learning and Placement Assistance</li>
<li>Member of CII (Confederation of Indian Industry). Membership No. N5238P</li>
</ul>
            </div>         
            
          </div>

    </section>


     <section class="py-5 px-2 tstmnl-ytbe">
    <div class="container">
        <p class="hcntr"><span class="htitl">Student Testimonials</span></p>
        <div class="row m-0">
   

               <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/nHC_psTD4z8" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/nHC_psTD4z8/maxresdefault.webp" alt="Android App Development Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/nHC_psTD4z8" data-bs-target="#VideoModal"></span>
                </div>
            </div>

              <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/VrojFoI8Eig" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/VrojFoI8Eig/maxresdefault.webp" alt="Android App Development Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/VrojFoI8Eig" data-bs-target="#VideoModal"></span>
                </div>
            </div>
          
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/KojGboJuUUk" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/KojGboJuUUk/maxresdefault.webp" alt="Android App Development Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/KojGboJuUUk" data-bs-target="#VideoModal"></span>
                </div>
            </div>    
            
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mhtGmZauink" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/mhtGmZauink/maxresdefault.webp" alt="Android App Development Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mhtGmZauink" data-bs-target="#VideoModal"></span>
                </div>
            </div>    

             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/5yRNWhzKHjM" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/5yRNWhzKHjM/maxresdefault.webp" alt="Android App Development Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/5yRNWhzKHjM" data-bs-target="#VideoModal"></span>
                </div>
            </div> 
            
         
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/XMlzXvuncr4" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/XMlzXvuncr4/maxresdefault.webp" alt="Android App Development Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/XMlzXvuncr4" data-bs-target="#VideoModal"></span>
                </div>
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
                                <img src="../images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded" data-image="../images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="../images/asia-quality-entreprenuership-award.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="../images/award-image11.webp" alt="Android App Development Training in Mohali" title="Best Android App Development Training in Mohali" class="img-responsive img-rounded" data-image="../images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="../images/summer-training-in-chandigarh-mohali-2.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="../images/best-industrial-training-company-chandigarh1.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="../images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="../images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="../images/awards-1.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="../images/awards-2.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="../images/Leadership-Summit-2019-Award.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="../images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="../images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="../images/6-weeks-industrial-training-company-chandigarh.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="../images/six-months-industrial-training-company-chandigarh.jpeg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/ThinkNEXT-Frontdesk.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/galleryjob-fair7.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="../images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/page-5_img-4-b.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/THINKNEXT-b.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/industial-training-in-chandigarh-group.webp" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/tally-course-in-chandigarh-mohali-min.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="../images/softwere-testing-training-in-chadigarh.jpg" alt="Android App Development Training in Mohali" title="Android App Development Training in Mohali" class="img-responsive img-rounded"  data-image="../images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>
	
	
    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

	
       
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
