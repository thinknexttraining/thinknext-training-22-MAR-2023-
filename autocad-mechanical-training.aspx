<%@ Page Title="AutoCAD Mechanical Training in Chandigarh - ThinkNEXT" Language="VB"  MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="autocad-mechanical-training.aspx.vb" Inherits="python_training_in_chandigarh_mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   

   <meta name="description" content="AutoCAD Mechanical Training in Chandigarh - ThinkNEXT is the Best AutoCAD Training Company to provide the basic and advance knowledge about AutoCAD 2D and 3D design tools." />
<meta name="keywords" content="AutoCAD Mechanical Training in Chandigarh, AutoCAD Training in Mohali, AutoCAD Training in Panchkula, AutoCAD Course in Chandigarh, Six Months Industrial Training in Chandigarh" />
<meta name="author" content=" Munish Mittal, mittalmunish@thinknext.co.in " />
    
    <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/share-images/autocad-course-chandigarh.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/autocad-course-chandigarh.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="main-image">  
        <img src="images/autocad-training-in-chandigarh-mohali.jpg" alt="AutoCAD Training Course in Chandigarh Mohali Panchkula" />
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
                        <h1>Best Autocad Training in Chandigarh Mohali Panchkula (India)</h1>
                    </div>
                        <p><strong class="textred">Are you looking for best  Autocad Training in Chandigarh?</strong></p>
                        <p><strong class="text-info">  If Yes, then</strong></p>
                        <p><strong class="text-info">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                        <p><strong>AutoCAD</strong>, a  product from Autodesk is a Computer Aided Design (CAD) program used by just  about every engineering and designing center in the world. Even there are  different CAD packages, but AutoCAD is the most widely used software in the world. <strong>AutoCAD </strong>software is manufacture by  Autodesk. Autodesk&rsquo;s <strong>AutoCAD i</strong>s the  industry leader in CAD packages, Used by <strong>Civil  Engineers, Mechanical, Architects </strong>etc. </p>
                     <iframe class="thknxtytube" src="https://www.youtube.com/embed/xFl-SAFlNJc?autoplay=1&rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
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
                        <h2 class="text-danger">Career Scope after AutoCAD Training in Chandigarh at ThinkNEXT</h2>
                        <p class="text-justify">
                           It is expected that the worldwide logistics market will produce to reach $6500 billion by 2024.
                            Designing the models, appliances, tools, machinery and a variety of 3D works would require AutoCAD experts in the industry.
                            Training is our sole duty. The prime objective of the <strong>AutoCAD course in Chandigarh</strong> is to deliver the expertise 
                            of visualizing, reading, and designing multifaceted models for various projects. 
                            </p>
                        <p  class="text-justify">
                            Our AutoCAD trainer desires to train their students
                            having the potential to grip all kinds of AutoCAD challenges during their service tenure. 
                            Learners attaining certification from our <strong>AutoCAD training center in Chandigarh</strong> find a good hand in producing solutions in this domain.
                        </p>
                      

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
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>AutoCAD Industrial Training - Course Contents</strong></h3>
            </div>
            <br>
            <h4 class="text-danger">Module 1: Introduction</h4>
                <div class="row"> 
                    
             <div class="col-lg-4 col-md-4 text-justify">
                 
                 <ul class="welcomeLinks">
                       <li> Starting  AutoCAD </li>
  <li> AutoCAD Screen Components </li>
  <li> Drawing Area </li>
  <li> Command Window </li>
  <li> Navigation  bar </li>
  <li> Status  bar </li>
  <li> Invoking  Commands in AutoCAD </li>
  <li> Keyboard </li>
  <li> Ribbon </li>
  <li> Application  Menu </li>
  <li> Tool  Palettes </li>
  <li> Menu  Bar </li>
  <li> Toolbar </li>


                    </ul>

                 </div>

                     <div class="col-lg-5 col-md-4 text-justify">
                         <ul class="welcomeLinks">
                               <li> Shortcut  Menu </li>
   <li> AutoCAD  Dialog Boxes </li>              
  <li> Starting  a New Drawing </li>
  <li> Open a Drawing </li>
  <li> Use a Template </li>
  <li> Use a Wizard </li>
  <li> Saving Your Work </li>
  <li> Save Drawing as Dialog box </li>
  <li> Using the Drawing Recovery Manager to Recover Files </li>
  <li> Closing a Drawing </li>
  <li> Opening an Existing Drawing </li>
  <li> Opening an Existing Drawing Using the Select File Dialog Box </li>
  
                             </ul>
                         </div>

                      <div class="col-lg-3 col-md-4 text-justify">
  <ul class="welcomeLinks">
    <li> Opening an Existing Drawing Using the Start up Dialog Box </li>
  <li> Opening an Existing Drawing Using the Drag and Drop Method </li>
  <li> Quitting AutoCAD </li>
  <li> Creating and Managing Workspaces </li>
  <li> Creating a New Workspace </li>
  <li> Modifying the Workspace Settings </li>
  <li> Autodesk Exchange </li>
  <li> Home </li>
</ul>
                          </div>

                    </div>
      
            <br />
             <h4 class="text-danger">Module 2: Getting started with AutoCAD</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                   <ul class="welcomeLinks">
                        <li> Dynamic  Input Mode </li>
  <li> Enable  Dimension Input where possible </li>
  <li> Show  command prompting and command input near the crosshairs </li>
  <li> Drafting  Tooltip Appearance </li>
  <li> Drawing  Lines in AutoCAD </li>
  <li> The  Close Option </li>
  <li> The  Undo Option </li>
  <li> Invoking  tools Using Dynamic INPUT/Command Prompt </li>
  

                    </ul>
                    



                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                  <ul class="welcomeLinks">
                       <li> Coordinate  Systems </li>
  <li> Absolute  Coordinate System </li>
  <li> Relative  Coordinate System </li>
  <li> Relative  Polar Coordinates </li>
  <li> Direct  Distance Entry </li>
  <li> Erasing  Objects </li>
  <li> Cancelling  and Undoing a Command </li>
  <li> Object  Selection Methods </li>

                   </ul>
                    


                </div>

                 <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                           <li> Window  Selection </li>
  <li> Window  Crossing Method </li>
  <li> Drawing  a Circle </li>
  <li> BASIC  Display Commands </li>
  <li> Setting  Units Type and Precision </li>
  <li> Specifying  the Format </li>
  <li> Specifying  the Angle Format </li>
  <li> SETTING  the Limits OF A DRAWING </li>
                     </ul>
                </div>
                </div>
           
            <br />
                <h4 class="text-danger">Module 3: Starting with Advanced Sketching</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li>Drawing  Arcs </li>
                            <li>Drawing  Rectangles </li>
                            <li>Drawing  Ellipses </li>


                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li>Drawing  Regular Polygon </li>
                            <li>Drawing  Polylines </li>
                            <li>Placing  Points </li>

                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li>Drawing  Infinite Lines </li>
                            <li>Writing  a Single Line Text </li>
                        </ul>
                    </div>

                </div>

         
            <br />
                <h4 class="text-danger">Module 4: Working with Drawing AIDS</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                        <li> Introduction </li>
  <li> Understanding  the Concept and use of LAYERS </li>
  <li> Advantages  of Using Layers </li>
  <li> Working  with Layers </li>
  <li> Creating  New Layers </li>
  <li> Making  a Layer Current </li>
  <li> Controlling  the Display of Layers </li>
  <li> Deleting  Layers </li>
  <li> Object  Properties </li>
  <li> Changing  the Colour </li>
  <li> Changing  the Line type </li>
  <li> Changing  the Line weight </li>
  <li> Changing  the Plot Style </li>
  <li> Properties  Palette </li>
  <li> Quick  Properties Palette </li>
  <li> Drafting  Settings dialog box </li>
  <li> Setting  Grid </li>
 

                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Setting Snap </li>
  <li> Snap Type </li>
  <li> Drawing Straight Lines using the Ortho Mode </li>
  <li> Working with Object Snaps </li>
  <li> Auto Snap </li>
  <li> Endpoint </li>
  <li> Midpoint </li>
  <li> Nearest </li>
  <li> Centre </li>
  <li> Tangent </li>
  <li> Quadrant </li>
  <li> Intersection </li>
  <li> Apparent Intersection </li>
  <li> Perpendicular </li>
  <li> Node </li>
  <li> Insertion </li>
  <li> Snap  to None </li>
  

                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                           <li> Parallel </li>
  <li> Extension </li>
  <li> From </li>
  <li> Midpoint  between 2 Points </li>
  <li> Temporary Tracking Point </li>
  <li> Combining Object Snap Modes </li>
  <li> Running Object Snap Mode </li>
  <li> Overriding the Running Snap </li>
  <li> Cycling through Snaps </li>
  <li> Using Auto Tracking </li>
  <li> Object Snap Tracking </li>
  <li> Polar Tracking </li>
  <li> Auto Track Settings </li>
  <li> Function and Control Keys </li>
                        </ul>
                    </div>

                </div>

        
            <br />
                <h4 class="text-danger">Module 5: Editing Sketched Objects-I</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                          <li> Editing Sketches </li>
  <li> Moving the Sketched Objects </li>
  <li> Copying the Sketched Objects </li>
  <li> Creating Multiple Copies </li>
  <li> Creating a Single Copy </li>
  <li> Offsetting Sketched Objects </li>
  <li> Rotating Sketched Objects </li>
 


                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                           <li> Scaling the Sketched Objects </li>
  <li> Filleting the Sketches </li>
  <li> Chamfering the Sketches </li>
  <li> Trimming the Sketched Objects </li>
  <li> Extending the Sketched Objects </li>
  <li> Stretching the Sketched Objects </li>
 <li> Lengthening the Sketched Objects </li>

                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            
  <li> Arraying the Sketched Objects </li>
  <li> Rectangular Array </li>
  <li> Polar Array </li>
  <li> Path Array </li>
  <li> Mirroring the Sketched objects </li>
  <li> Text Mirroring </li>
                        </ul>
                    </div>

                </div>

      
            <br />
                <h4 class="text-danger">Module 6: Editing Sketched Objects-II</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Introduction  to Grips </li>
  <li> Types  of Grips </li>
  <li> Editing  a Polyline by Using Grips </li>
  <li> Editing  Gripped Objects </li>
  <li> Changing  the Properties Using the PROPERTIES Pale </li>
  <li> Matching  the Properties of Sketched Objects </li>
  <li> Cycling  Through Selection </li>
  <li> Managing  Contents Using the Design enter </li>
 


                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                             <li> Autodesk  Seek design content Link </li>
  <li> Displaying  Drawing Properties </li>
  <li> Basic  Display Options </li>
  <li> Redrawing  the Screen </li>
  <li> Regenerating  Drawings </li>
  <li> Zooming  Drawings </li>
  <li> Real-time  Zooming </li>
  <li> All  Option </li>
  <li> Centre  Option </li>


                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Extents  Option </li>
  <li> Dynamic  Option </li>
  <li> Previous  Option </li>
  <li> Window  Option </li>
  <li> Scale  Option </li>
  <li> Object  Option </li>
  <li> Zoom  In and Out </li>
  <li> Panning  Drawings </li>
  <li> Panning  in Real time </li>
                        </ul>
                    </div>

                </div>

       
            <br />
                <h4 class="text-danger">Module 7: Creating Text and Tables</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                          <li> Annotative Objects </li>
  <li> Annotation Scale </li>
  <li> Assigning Annotative Property and Annotation Scales </li>
  <li> Customizing Annotation Scale </li>
  <li> Multiple Annotation Scales </li>
  <li> Assigning Multiple Annotation Scales Manually </li>
  <li> Assigning Multiple Annotation Scales Automatically </li>
  <li> Controlling the Display of Annotative objects </li>
  <li> Creating Text </li>
  <li> Writing Single Line Text </li>
  <li> Entering Special Characters </li>
 
  


                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                             <li> Creating Multiline Text </li>
  <li> Text Window </li>
                            <li> Text Editor Tab </li>
  <li> Editing Text </li>
  <li> Editing Text Using the DDEDIT Command </li>
  <li> Editing Text Using the Properties Palette </li>
  <li> Modifying the Scale of the Text </li>
  <li> Inserting Table in the Drawing </li>
  <li> Table style Area </li>
  <li> Insert options Area </li>
  <li> Insertion behavior Area </li>
  <li> Column and row settings Area </li>
  <li> Set cell styles Area </li>
 

                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                             <li> Creating a New Table Style </li>
                            <li> Starting table Area </li>
  <li> General Area </li>
  <li> Cell styles Area </li>
  <li> Setting  a Table Style as Current </li>
  <li> Modifying a Table Style </li>
  <li> Modifying Tables </li>
  <li> Substituting Fonts </li>
  <li> Specifying an Alternate Default Font </li>
  <li> Creating Text Styles </li>
  <li> Determining Text Height </li>
  <li> Creating Annotative text </li>
                        </ul>
                    </div>

                </div>

         
            <br />
                <h4 class="text-danger">Module 8: Basic Dimensioning, Geometric Dimensioning and Tolerancing</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Need  for Dimensioning </li>
  <li> Dimensioning  in AutoCAD </li>
  <li> Fundamental  Dimensioning Terms </li>
  <li> Dimension  Line </li>
  <li> Dimension  Text </li>
  <li> Arrowheads </li>
  <li> Extension  Lines </li>
  <li> Leader </li>
  <li> Centre  Mark and Centerlines </li>
  <li> Alternate  Units </li>
  <li> Limits </li>
  <li> Associative  Dimensions </li>
  <li> Definition  Points </li>
  <li> Annotative  Dimensions </li>
  <li> Selecting  Dimensioning Commands </li>
  <li> Using  the Ribbon and the Toolbar </li>
  <li> Using  the Command Line </li>
  <li> Dimensioning  a Number of Objects Together </li>
  <li> Creating  Linear Dimensions </li>
      <li> DIMLINEAR  Command Options </li>
  <li> Creating  Aligned Dimensions </li>


                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                     
  <li> Creating  Arc Length Dimensions </li>
  <li> Creating  Rotated Dimensions </li>
  <li> Creating  Baseline Dimensions </li>
  <li> Creating  Continued Dimensions </li>
  <li> Creating  Angular Dimensions </li>
  <li> Dimensioning  the Angle between Two Nonparallel Lines </li>
  <li> Dimensioning  the Angle of an Arc </li>
  <li> Angular  Dimensioning of Circles </li>
  <li> Angular  Dimensioning based on Three Points </li>
  <li> Creating  Diameter Dimensions </li>
  <li> Creating  Radius Dimensions </li>
  <li> Creating  Jogged Linear Dimensions </li>
  <li> Creating  Ordinate Dimensions </li>
  <li> Maintaining  Equal Spacing between Dimensions </li>
  <li> Creating  Inspection Dimensions </li>
  <li> Inspection  Label </li>
  <li> Dimension  Value </li>
  <li> Working  with True Associative Dimensions </li>
      <li> Inspection  Rate </li>
  <li> Removing  the Dimension Associatively </li>
  <li> Converting  a Dimension into a True Associative Dimension </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                       
  <li> Drawing  Leaders </li>
  <li> Multileader </li>
  <li> Adding  leaders to existing Multileader </li>
  <li> Removing  Leaders from Existing Multileader </li>
  <li> Aligning  Multileaders </li>
  <li> Specify  Spacing </li>
  <li> Use  current spacing </li>
  <li> Geometric  Characteristics and Symbols </li>
  <li> Feature Control Frame </li>
  <li> Geometric Characteristics Symbol </li>
  <li> Material  Condition Modifier </li>
  <li> Datum </li>
  <li> Complex  Feature Control Frames </li>
  <li> Composite  Position Tolerance </li>
  <li> Projected  Tolerance Zone </li>
  <li> Creating  Annotative Dimensions, Tolerances, Leaders, and Multileaders </li>
                        </ul>
                    </div>

                </div>

         
            <br />
                <h4 class="text-danger">Module 9: Editing Dimensions</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                        <li> Editing  Dimensions Using Editing Tools </li>
  <li> Editing  Dimensions by Stretching </li>
  <li> Editing  Dimensions by Trimming and Extending </li>
  <li> Flipping  Dimension Arrow </li>
  


                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                           <li> Modifying  the Dimensions </li>
  <li> Editing  the Dimension Text </li>
  <li> Updating  Dimensions </li>
  <li> Editing  Dimensions with Grips </li>

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Editing  Dimensions using the Properties Palette </li>
  <li> Properties  Palette (Dimension) </li>
  <li> Properties  Palette (Multileader) </li>
  <li> Model  Space and Paper Space Dimensioning </li>

                        </ul>
                    </div>

                </div>
          
       
            <br />
                <h4 class="text-danger">Module 10: Dimension Styles, Multileader Styles and System Variables</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Using Styles and Variables to Control Dimensions </li>
  <li> Creating and Restoring Dimension Styles </li>
  <li> New  Dimension Style dialog box </li>
  <li> Controlling  the Dimension Text Format </li>
 

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                           <li> Fitting  Dimension Text and Arrowheads </li>
  <li> Formatting Primary Dimension Units </li>
  <li> Formatting Alternate Dimension Units </li>
 
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                             <li> Formatting the Tolerances </li>
  <li> Creating and Restoring Multileader Styles </li>
  <li> Modify Multileader Style dialog box </li>

                        </ul>
                    </div>

                </div>

         
            <br />
                <h4 class="text-danger">Module 11: Model Space viewports, Paper Space Viewports and Layouts</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                        <li> Model  Space and Paper Space/Layouts </li>
  <li> Model  Space Viewports (Tiled Viewports) </li>
  <li> Creating  Tiled Viewports </li>
  <li> Making  a Viewport Current </li>
  <li> Joining  Two Adjacent Viewports </li>
  <li> Paper  space viewports (Floating Viewports) </li>
  <li> Creating  Floating Viewports </li>
   <li> Creating  Rectangular Viewports </li> 
  <li> Creating  Polygonal Viewports </li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">                        
  <li> Converting  an Existing Closed Object into a Viewport </li>
  <li> Temporary  Model Space </li>
  <li> Editing  Viewports </li>
  <li> Controlling  the Display of Objects in Viewports </li>
  <li> Locking  the Display of Objects in Viewports </li>
  <li> Controlling  the Display of Hidden Lines in Viewports </li>
 
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                         
  <li> Clipping  Existing Viewports </li>
  <li> Maximizing  Viewports </li>
  <li> Inserting  Layouts </li>
  <li> Inserting  a Layout Using the Wizard </li>
  <li> Defining  Page Settings </li>
  <li> Controlling  the Display of Annotative Objects in Viewports </li>

                        </ul>
                    </div>

                </div>

        
            <br />
                <h4 class="text-danger">Module 12: Plotting Drawings</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                           <li> Plotting Drawings in AutoCAD </li>
  <li> Plotting Drawings Using the Plot Dialog Box </li>
  <li> Page setup Area </li>
  <li> Printer/plotter  Area </li>
  <li> Paper size Area </li>
  <li> Number of copies Area </li>

 

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                            <li> Plot area </li>
  <li> Plot offset (origin set to printable area) Area </li>
  <li> Plot scale Area </li>
  <li> Plot style table (pen assignments) Area </li>
  <li> Shaded viewport options Area </li>


 
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                             <li> Plot options Area </li>
  <li> Preview </li>
  <li> Adding Plotters </li>
  <li> The Plotter Manager Tool </li>
  <li> Using Plot Styles </li>
  <li> Adding a Plot Style </li>

                        </ul>
                    </div>

                </div>

         
            <br />
                <h4 class="text-danger">Module 13: Hatching Drawings</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                         <li> Hatching </li>
  <li> Hatch  Patterns </li>
  <li> Hatch  Boundary </li>
  <li> Hatching  Drawings Using the Hatch Tool </li>
  <li> Panels  in the Hatch Creation Tab </li>
  <li> Boundaries  Panel </li>
 

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                       
  <li> Pattern  Panel </li>
  <li> Properties  Panel </li>
  <li> Origin  Panel </li>
  <li> Options  Panel </li>
  <li> Match  Properties </li>
  <li> Setting  the Parameters for Gradient Pattern </li>
 


 
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                         <li> Creating  Annotative Hatch </li>
  <li> Hatching  the Drawing Using the Tool Palettes </li>
  <li> Drag  and Drop Method </li>
  <li> Select  and Place Method </li>
  <li> Hatching  Around Text, Dimensions, and Attributes </li>

                        </ul>
                    </div>

                </div>

             
            <br />
                <h4 class="text-danger">Module 14: Working with Blocks</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                      <li> The  Concept of Blocks </li>
  <li> Advantages  of Using Blocks </li>
  <li> Drawing  Objects for Blocks </li>
  <li> Converting  Entities into a Block </li>
  <li> Inserting  Blocks </li>
  <li> Creating  and Inserting Annotative Blocks </li>
 
 <li> Block  Editor </li>

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                    
  <li> Adding  Blocks in Tool Palettes </li>
  <li> Drag  and Drop Method </li>
  <li> Modifying  Existing Blocks in the Tool Palettes </li>
  <li> Layers,  Colors, Line types, and Line weights for Blocks </li>
  <li> Nesting  of Blocks </li>


 
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                        <li> Creating  Drawing Files using the Write Block Dialog Box </li>
  <li> Exploding  Blocks Using the XPLODE Command </li>
  <li> Renaming  Blocks </li>
  <li> Deleting  Unused Blocks </li>
  <li> Editing Constraints to Blocks </li>

                        </ul>
                    </div>

                </div>

               
            
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                        <br />
                        <h4 class="text-danger">Module 15: 3D Foundations</h4>
                        <ul class="welcomeLinks">
                            <li>Why Use 3D </li>
                            <li>Introduction to the 3D Modeling  Workspace </li>
                            <li>Basic 3D Viewing Tools </li>
                            <li>3D Navigation Tools </li>
                            <li>Introduction to the User Coordinate  System </li>



                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <br />
                        <h4 class="text-danger">Module 16: Simple Solids</h4>
                        <ul class="welcomeLinks">
                            <li>Working with Solid Primitives </li>
                            <li>Solid Primitive Types </li>
                            <li>Working with Composite Solids</li>
                            <li>Working with Mesh Models </li>

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                         <br />
                <h4 class="text-danger">Module 17: Working  with Theur User Coordinate System</h4>
                           <ul class="welcomeLinks">
                            <li> UCS Basics </li>
                        <li> UCS X, Y, and Z Commands </li>
                             <li> UCS Multifunctional Grips </li>
  <li> Saving a UCS by Name </li>
                          

                        </ul>
                    </div>

                </div>

                <div class="row">
                       <div class="col-lg-4 col-md-4 text-justify">
                            <br />
                <h4 class="text-danger">Module 18: Creating Solids & Surfaces from 2D Objects</h4>
                        <ul class="welcomeLinks">
                             <li> Complex 3D Geometry </li>
                                <li> Extruded Solids and Surfaces </li>
                             <li> Swept Solids and Surfaces </li>
                              <li> Revolved Solids and Surfaces </li>
                                   <li>Lofted Solids and Surfaces </li>
                            <li>NURBS Surfaces </li>                     

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <br />
                      <h4 class="text-danger">Module 19: Modifying in 3D Space</h4>
                        <ul class="welcomeLinks">
                           <li> 3D Gizmo Tools </li>
   <li> Aligning Objects in 3D Space </li>
   <li> 3D Modify Commands </li>
                                                     

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <br />
                         <h4 class="text-danger">Module 20: Advanced  Solid Editing</h4>
                       <ul class="welcomeLinks">
                         <li> Editing Components of Solids </li>
  <li> Editing Faces of Solids </li>
  <li> Fillets and Chamfers on Solids </li>
                        </ul>
                    </div>

                </div>

        
       
           
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">
                         <br />
              <h4 class="text-danger">Module 21: Additional Editing Tools</h4>
                        <ul class="welcomeLinks">
  <li> Creating a Shell </li>
  <li> Imprinting Edges of Solids </li>
  <li> Slicing a Solid along a Plane </li>
  <li> Interference Checking </li>
  <li> Converting Objects to Surfaces </li>
  <li> Converting Objects to Solids </li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                         <br />
              <h4 class="text-danger">Module 22: Refining the View</h4>
                        <ul class="welcomeLinks">
                            <li>Working with Sections </li>
                            <li>Working with Cameras </li>
                            <li>Managing Views in 3 </li>
                            <li>Animating with Show Motion </li>
                            <li>Creating Show Motion Shots </li>
                            <li>Creating Animations </li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                         <br />
              <h4 class="text-danger">Module 23: Visualisation</h4>
                        <ul class="welcomeLinks">
                            <li>Creating Visual Styles </li>
                            <li>Working with Materials </li>
                            <li>Specifying Light Sources </li>
                            <li>Rendering Concepts </li>
                        </ul>
                    </div>

                </div>

                   <br />
              <h4 class="text-danger">Module 24: Working Drawing with 3D Models</h4>
            <div class="row">
                    <div class="col-lg-4 col-md-4 text-justify">                  
                        <ul class="welcomeLinks mb-0">
                            <li>Creating Multiple Viewports </li>
                            <li>2D Views from 3D Solids </li>
                           <li>Creating Technical Drawings </li>

                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
                        <ul class="welcomeLinks">
                             
                            <li>3D Model Import </li>
                            <li>Automatic Model Documentation </li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4 text-justify">
              
                    </div>

                </div>
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
