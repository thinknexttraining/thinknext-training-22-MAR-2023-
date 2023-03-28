<%@ Page Title="AutoCAD Civil Training in Chandigarh - ThinkNEXT" Language="VB"  MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="autocad-civil-training.aspx.vb" Inherits="python_training_in_chandigarh_mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   

   <meta name="description" content="AutoCAD Civil Training in Chandigarh - ThinkNEXT is the Best AutoCAD Training Company to provide the basic and advance knowledge about AutoCAD 2D and 3D design tools." />
<meta name="keywords" content="AutoCAD Training in Chandigarh, AutoCAD Training in Mohali, AutoCAD Training in Panchkula, AutoCAD Course in Chandigarh, Six Months Industrial Training in Chandigarh" />
<meta name="author" content=" Munish Mittal, mittalmunish@thinknext.co.in " />
    
    <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/share-images/autocad-course-chandigarh.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/autocad-course-chandigarh.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="main-image">  
        <img src="images/autoCAD-Civil.jpg" alt="AutoCAD Training Course in Chandigarh Mohali Panchkula" />
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
    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-md-7">
                    <div class="p-2 border text-justify position-sticky top-0">
                       <div class="gdl-header-wrapper">
                        <h1>Best AutoCAD Training in Chandigarh Mohali Panchkula (India)</h1>
                    </div>
                        <p><strong class="textred">Are you looking for best  AutoCAD Training in Chandigarh?</strong></p>
                        <p><strong class="text-info">  If Yes, then</strong></p>
                        <p><strong class="text-info">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                        <p><strong class="text-info">You are at ThinkNEXT Technologies Private Limited.</strong></p>
                        <p><strong>AutoCAD</strong>, a  product from Autodesk is a Computer Aided Design (CAD) program used by just  about every 
                            engineering and designing center in the world. Even there are  different CAD packages, but AutoCAD is the most widely used software in the world.
                            </p>
                        <p><strong>AutoCAD </strong>software is manufacture by  Autodesk. Autodesk&rsquo;s <strong>AutoCAD i</strong>s the  industry leader in CAD packages, Used by <strong>Civil  Engineers, Mechanical, Architects </strong>etc. </p>
                    
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">
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

                      <div class="py-3 px-4 bg-black" id="regform">
                        <h3 class="text-white text-center"><strong>Arrange a Call Back</strong></h3>
                          <div class="mt-3">
                              <asp:Label ID="lblmsg" runat="server"></asp:Label>

                              <div class="form-group mb-0">
                                  <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name First" Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                              </div>
                              <div class="form-group mb-0">
                                  <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                                  <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile No." Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                              </div>
                              <div class="form-group mb-0">
                                  <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
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
    

    <section class="py-4 bg-ececec pb-0">


        <div class="jackopt-offer-img ">           
            <p class="threetimesaward">4 Times National Award Winner Company</p>
          
            <img src="images/six-weeks-summer-training-chandigarh-3.jpg" alt="Stipend based Industrial Training in Chandigarh" title="Stipend based Industrial Training in Chandigarh">
            <img src="images/45-days-summer-training-chandigarh.jpg" alt="Stipend based Industrial Training in mohali" title="Stipend based Industrial Training in Mohali">
            <img src="images/6-weeks-summer-training-chandigarh-1.jpg" alt="Stipend based Industrial Training in Chandigarh" title="Stipend based Industrial Training in Chandigarh">
            <img src="images/3-months-industrial-training-chandigarh.jpg" alt="Stipend based Industrial Training in Mohali" title="Stipend based Industrial Training in Mohali">

            <div class="clear-both"></div>
        </div>


    </section>

    <section class="py-4">
        <div class="container">
                        <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Summer Training in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Summer Internship in Chandigarh Mohali" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="45 Days Summer Training in Chandigarh Mohali" />
                </div>
            </div>
             <div class="d-md-none">
                   <div class="text-center">
            <img style="width:89%;" src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Summer Training in Chandigarh Mohali" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Summer Training Course in Chandigarh" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Summer Internship in Chandigarh" />
        </div>
              <div class="text-center">
            <img style="width:89%;" src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Summer Internship in Mohali" />
        </div>
          <div class="text-center">
            <img style="width:89%;" src="images/summer-training-in-mohali-1.jpg" alt="45 Days Summer Training in Chandigarh Mohali" />
        </div>
             <div class="text-center">
            <img style="width:89%;" src="images/summer-training-in-mohali-2.jpg" alt="6 Weeks Industrial Training in Chandigarh Mohali" />
        </div>
                 </div>
        </div>
                   <div class="awards-achiements-desktop">
    
            </div>
        <div class="awards-achiements-mobile d-none">
            

        </div>
               </section>
               
    <section class="py-4 bg-ececec">
        <div class="container">
            <div class="row m-0 p-2">

                <div class="col-lg-7">

                    <div class="position-sticky top-0">
                       <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pP42tulWqbk" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="https://i.ytimg.com/vi/pP42tulWqbk/maxresdefault.jpg" alt="Six Months Industrial Training in Chandigarh">
<svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8">
</path><path d="M 45,24 27,14 27,34" fill="#fff">
</path>
</svg>
</a>

                    </div>
                </div>

                <div class="col-lg-5">
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
    
    <section class="py-5" style="background: #07294d;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-10">
                    <h3 class="text-warning mb-4 text-center" style="font-size: 36px;"><strong> 3 Modes of Industrial Training/Internship</strong></h3>

                    <div class="row text-center">
                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded" style="background: #8ca94a;">
                                <img class="w-50" src="images/classroom-training.png" alt="Classroom Training">
                                <h4 class="mt-3" style="color: #fff;">Classroom/Offline Training</h4>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded" style="background: #fd6e6f;">
                                <img class="w-50" src="images/instructor-led.png" alt="Classroom Training">
                                <h4 class="mt-3 text-white">Instructor-Led Online Live Training</h4>
                            </div>
                        </div>

                        <div class="col-md-4 mb-3 mb-md-0">
                            <div class="h-100 p-4 rounded" style="background: #5789e8;">
                                <a href="online-training-course.aspx">
                                    <img class="w-50" src="images/instructor-less.png" alt="Classroom Training"></a>
                                <h4 class="mt-3 text-white"><a href="online-training-course.aspx" class="text-white">Instructor-less Online Training</a></h4>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-lg-1">
                </div>
            </div>


        </div>
    </section>
    
    <section class="py-4">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>AutoCAD 2D</strong></h3>
            </div>
            <br>
            <h4 class="text-danger">Module 1: First 3 settings in AutoCAD</h4>
            <div class="row">

                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Units settings </li>
                        <li>Limits setting </li>
                        <li>Grid settings, </li>


                    </ul>
                    <h4 class="text-danger">Module 2: Function Draw </h4>
                    <ul class="welcomeLinks">
                        <%--<li> Shortcut  Menu </li>--%>
                        <li>Line </li>
                        <li>Polyline </li>
                        <li>Circle </li>
                        <li>Arc</li>
                        <li>Rectangle</li>
                        <li>Inscribed polygon</li>
                        <li>Circular polygon </li>


                    </ul>
                </div>

                <div class="col-lg-5 col-md-4 text-justify">
                    <h4 class="text-danger">Quires of students</h4>
                    <ul class="welcomeLinks">
                        <%--<li> Shortcut  Menu </li>--%>
                        <li>Ellipse </li>
                        <li>Center ellipse </li>
                        <li>Axis end ellipse </li>
                        <li>Elliptical ellipse</li>
                        <li>Hatch command</li>
                        <li>Gradient  command</li>
                        <li>Boundary </li>
                        <li>Spline fit</li>
                        <li>Spline cv </li>
                        <li>Construction line</li>
                        <li>Ray line  </li>
                        <li>Multiple points </li>

                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                        <li>Divide</li>
                        <li>Measure  </li>
                        <li>Region</li>
                        <li>Wipeout</li>
                        <li>Helix</li>
                        <li>3d polyline</li>
                        <li>Donut</li>
                        <li>Revision cloud</li>
                    </ul>
                </div>

            </div>

            <br />
            <h4 class="text-danger">Module 2: Modify function:-</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Move</li>
                        <li>Copy</li>
                        <li>Rotate </li>
                        <li>Scale </li>
                        <li>Mirror</li>
                        <li>Stretch</li>
                        <li>Trim  </li>
                        <li>Extend</li>
                        <li>Fillet</li>


                    </ul>




                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Chamfer</li>
                        <li>Blend curves </li>
                        <li>Array</li>
                        <li>Rectangular array</li>
                        <li>Path array </li>
                        <li>Polar array</li>
                        <li>Erase </li>
                        <li>Explode</li>
                        <li>Offset</li>
                        <li>Break command</li>
                        <li>Join command

                        </li>

                    </ul>



                </div>

                <div class="col-lg-3 col-md-4 text-justify">
                    <h4 class="text-danger">Annotation</h4>
                    <ul class="welcomeLinks">
                        <li>Single text</li>
                        <li>Multiple text </li>
                        <li>Dimensions </li>
                        <li>Dimension style</li>
                        <li>Leader</li>
                        <li>Table </li>
                        <li>Layers properties</li>
                        <li>Insert</li>
                        <li>Properties </li>
                        <li>Clipboard</li>
                        <li>Groups</li>
                        <li>Utilities</li>
                        <li>View</li>
                    </ul>
                </div>
            </div>

            <br />
             <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>AutoCAD 3D</strong></h3>
            </div>
            <div class="row">

                <div class="col-lg-4 col-md-4 text-justify">
                      <h4 class="text-danger">3D modeling:-</h4>
                    <ul class="welcomeLinks">
                        <li>Box</li>
                        <li>Cylinder</li>
                        <li>Sphere </li>
                        <li>Cone</li>
                        <li>Pyramid</li>
                        <li>Wedge</li>
                         <li>Torus </li>
                        <li>Extrude </li>
                    </ul>
                </div>
                <div class="col-lg-5 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                       
                        <li>Loft</li>
                        <li>Revolve</li>
                        <li>Sweep</li>
                        <li>Polysolid</li>
                        <li>Press pull.</li>
                        <li>Smooth object.</li>
                        <li>More smooth </li>
                        <li>Less smooth</li>
                          <li>Mesh refine.</li>
                        <li>Solid union .</li>
                        <li>Solid subtract.</li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                      
                          <li>Solid intersect.</li>
                        <li>Interfere </li>
                        <li>Slice </li>
                        <li>Thicken</li>
                        <li>Extract edge .</li>
                        <li>Extrude faces.</li>
                        <li>3d move .</li>
                        <li>3d scale.</li>
                        <li>3d rotate.</li>
                        <li>Material</li>
                        <li>Camera</li>
                        <li>Anipath</li>
                    </ul>
                </div>

            </div>

            <br />
           
            



        </div>
      
    </section>




    <section class="bg-dark py-4 d-none">
        <div class="container">
            <h3 class="text-warning text-center"><strong>OUR SUCCESS STORIES</strong></h3>
            <div class="row">
                <div class="col-sm-6 col-md-4 mb-3">
                     <span class="abythknxt-hdng"> Aditi Jindal</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
           <img src="images/software-testing-training-in-chandigarh-aditi.jpg" />
         </div>
     </div>
                </div>

                 <div class="col-sm-6 col-md-4 mb-3">
                       <span class="abythknxt-hdng">Annu Sharma</span>
  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
           <img src="images/software-testing-course-in-chandigarh-annu.jpg" />
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3">
               <span class="abythknxt-hdng"> Udit Singh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
            <img src="images/software-testing-training-in-chandigarh-udit.jpg" />
         </div>
     </div>
                </div>


                  <div class="col-sm-6 col-md-4 mb-3 d-none">
            <span class="abythknxt-hdng"> PHP Course in Chandigarh Mohali</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/OBtD0MB-I3Y?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3 d-none">
            <span class="abythknxt-hdng"> PHP Course in Chandigarh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/KavQ6b4DEsk?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>

                    <div class="col-sm-6 col-md-4 mb-3 d-none">
              <span class="abythknxt-hdng"> PHP Training in Chandigarh</span>  
     <div class="rounded_box course-video text-center">
         <div class="right_box margin-top" >
             <iframe src="https://www.youtube.com/embed/SEiBF2w8m8M?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>
                </div>


            </div>
        </div>
    </section>
    <section class="bg-light py-5">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/WCpCT22tiig" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Best Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/mgQy9ZCqc50" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/top-15-reason-to-join-thinknext.jpg" alt="Digital Marketing Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain" style="display: none;">
                <div id="video-view"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><div class="class-video"><iframe allowfullscreen="" src="https://www.youtube.com/embed/WCpCT22tiig"></iframe></div></div>
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
    
    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                    <li> Industrial Training/Internship from 4 times National Award Winner Company:
                        <ol type="1">
                            <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial training Company </li>
                             <li>Asia’s Quality &amp; Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                            <li>Business Leaders Award 2019 Winner Company for Best Digital Marketing and Industrial Training Company</li>
                            <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                        </ol>
                    </li>
                <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                <li>Industrial training/internship from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT Technologies Private Limited is registered as a Pvt. Ltd. Company under  Companies Act 1956.</li>
                <li>ThinkNEXT offers Part-Time/Full-Time Job offers during training/internship so that students can earn while they learn.</li>
                <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                <li>Industrial Training/Internship from ISO 9001:2015 certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
               <li>Authorized Pearson Testing Center for International Exams/Certifications.
                 <br>
                Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.                 
               </li>
                    <li>30000+ Students trust our courses/training/internship programs</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
                    <li>Free online courses for class-room/offline students undergoing Training/Internship.</li>
                    <li>Get industrial training/internship in 3 modes:
                        <ol>
                            <li>Classroom training/Offline training</li>
                            <li>Instructor-led online live training</li>
                            <li>Instructor-less online training with pre-recorded videos and doubt clearing support</li>
                            </ol>
                    </li>
                    <li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements</li>
                    <li>Lifetime membership to ThinkNEXT VIP Telegram Group for Community Support</li>
                    <li>Guaranteed Job Interviews and 100% Placement Assistance</li>
                    <li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized. </li>
                    <li>Training on Live-Projects through certified trainers. (ThinkNEXT is having its clients in India and Abroad. Students can work on ThinkNEXT Live Projects also.)</li>
                    <li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
                    <li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc. </li>
                    <li>Affiliated to Indian Testing Board &amp; ISTQB (International Software Testing Qualifications Board)</li>
                    <li>Industrial Training/Internship from 9+ Years old company</li>
                    <li>Customized Syllabus (You can add your own relevant topics) and Backup Classes (in case you miss some classes)</li>
                    <li>Free Subdomain and Web Hosting to host projects.   </li>
                    <li class="text-start">Numerous Tie-up with IT / Electronics / Mechanical / Civil / Electrical / Retail / Textile etc. companies for Placements</li>
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
				          		<img  src="php-images/software-testing.jpg" title="AutoCAD Training in Chandigarh" alt="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

				
               
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/php-training-in-chandigarh-mohali-panchkula.jpg" title="AutoCAD Course in Chandigarh" alt="php training in chandigarh mohali panchkula" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>
                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/softwere-testing-training-in-chadigarh.jpg" title="AutoCAD Training in Chandigarh" alt="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                  
<div class="col-sm-4 col-md-3 col-xs-12 profile">
				        <div class="panel panel-default">
				          <div class="panel-thumbnail">
				          	<a href="#" title="ThinkNEXT Technologies" class="thumb">
				          		<img  src="php-images/softwere-testing-in-chandigarh.jpg" title="AutoCAD Training in Chandigarh" alt="AutoCAD Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
				          	</a>
				          </div>
				         
				        </div>
				    </div>

                  



                   
   			
			</div>
        </div>


	</section>
	

    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

	<!-- light-box modelBox -->
	<div class="modal fade modal-profile gallerylightbox" tabindex="-1" role="dialog" aria-labelledby="modalProfile" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal">X</button>
						<h3 class="modal-title"></h3>
					</div>
					<div class="modal-body">
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
        
			</div>
		</div>
	<!--/// End light-box modelBox -->
    <section class="py-3 d-none">
        <div class="container">
            <div class="col-lg-12">
               <h5>Top Search</h5>
               <a href="php-training.aspx">PHP Training</a>, <a href="learn-php.aspx">learn php</a>, <a href="php-learning-in-chandigarh.aspx">php learning</a>, <a href="php-classes.aspx">PHP class</a>, <a href="php-industrial-training.aspx">php industrial training</a>, 
                <a href="how-to-learn-php.aspx">how to learn php</a>, <a href="php-training-institute.aspx">php training institute</a>, <a href="php-course-syllabus.aspx">php course syllabus</a>, <a href="php-tutorial.aspx">php tutorial</a>,  
                <a href="php-programming-course.aspx">php programming course</a>, <a href="php-training-in-chandigarh.aspx">php training chandigarh</a>, <a href="php-internship-in-chandigarh.aspx">php internship</a>, <a href="php-training-course.aspx">php training course</a>, <a href="php-training-company-in-chandigarh.aspx">php training company in chandigarh</a>, <a href="http://thinkenglish.in" target="_blank">Best IELTS Coaching Institute in Chandigarh Mohali</a>, 
                <a href="php-industrial-training-in-chandigarh.aspx">php industrial training in chandigarh</a>, <a href="php-institute-in-mohali.aspx">php institute in mohali</a>, <a href="php-course-in-panchkula.aspx">php course in panchkula</a>, <a href="php-classes-in-chandigarh.aspx">php classes in chandigarh</a>,  <a href="top-10-companies-providing-php-training-in-chandigarh.aspx">Top 10 Companies Providing PHP Training  in Chandigarh</a>, <a href="top-5-php-training-institutes-chandigarh-mohali.aspx">Top 5 PHP Training Institute in Chandigarh Mohali</a>,  <a href="php-training-in-mohali.aspx">php training in mohali</a>, 
               <a href="php-cms-course-in-chandigarh.aspx">php cms course in chandigarh</a> <br /><br />
            </div>
        </div>
    
    </section>


    
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

     <!-- light-box modelBox -->

    <div class="modal fade gallerylightbox" id="image-gallery" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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

</asp:Content>
