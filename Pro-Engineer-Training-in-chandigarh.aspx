<%@ Page Title="Pro Engineer Training Chandigarh Mohali Panchkula INDIA" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="Pro-Engineer-Training-in-chandigarh.aspx.vb" Inherits="pro_e_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
     <meta name="description" content="Creo or Pro-E Training in Chandigarh Mohali Panchkula - ThinkNEXT provide Best Creo or Pro-E Training in Chandigarh Mohali Panchkula and also Provides 100% job oriented in Creo/Pro-E training" />
    <meta name="keywords" content="Pro E Training in Chandigarh, " />
      <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/images/Pro-E-training-training-in-chandigarh-mob.jpg" />
     <meta property="og:image" content="http://www.thinknexttraining.com/images/Pro-E-training-training-in-chandigarh-mob" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
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
         <img class="d-md-none"  src="images/Pro-E-training-training-in-chandigarh-mob.jpg" alt="Pro Engineer Training in Chandigarh" />
            
     <img class="d-none d-md-block" src="images/Pro-E-training-in-chandigarh.jpg" alt="Pro E Training in Chandigarh" />
     
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
                        <h1 >Best Creo or Pro/Engineer Training in Chandigarh Mohali</h1>
                 <p><strong>Pro Engineer</strong> (pro/E) is 3D CAD/CAM/CAE software developed by PTC  corporation.<br />
  In 2010, the company has changed its name to <strong>Creo</strong> parametric.<br />
  In this course, you will learn about all the CAD&nbsp;tools and  commands of the software. this course contains all important&nbsp;design  aspects of the software.<br />
  <strong>Pro/Engineer  Training</strong>&nbsp;is  mainly given to Mech./Auto/Aero/Production Engineers and Diplomas by  experienced industry professionals.</p>
    
                      </div>
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
               
    

    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="Web Designing Course in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="Web Designing Training in Chandigarh" />
                </div>
            </div>
        </div>

    </section>
    
    <section class="py-4 bg-dark">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-8 ">
                    <h2 class="text-warning h3 fw-bold">Main contents of are this course are as following:</h2>                   
                    <ul class="welcomeLinks text-white">
                        <li>2D Sketch Modelling</li>
                        <li>3D Modelling</li>
                        <li>Advance Surface Modeling</li>
                        <li>Drafting and Drawing</li>
                        <li>Assembly</li>
                        <li>Sheetmetal</li>
                    </ul>
                    <h3 class="text-warning h3 fw-bold">Course Eligibility  </h3>
                    <div class="text-white">
                        <p>Fresher and Experienced candidates from</p>
                        <p>Mech. / Automobile / Production / Industrial stream.</p>
                        <p>Those who want a bright Piping career.</p>
                        <p>Persons form Plant Engineering other than Design.</p>
                    </div>

                </div>

                <div class="col-lg-4 text-justify">
                    <div class="position-sticky top-0">
                        <div class="py-3 px-4 bg-warning">
                            <h3 class="text-center"><strong>Book My Free Demo Class Now!</strong></h3>
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
                                    <asp:TextBox ID="txtdemoMsg" class="form-control" TextMode="multiline" Rows="3" runat="server" placeholder="Message" />
                                </div>

                                <div class="form-group d-none">
                                    <asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101"></asp:TextBox>
                                </div>

                                <div class="form-group text-center">
                                    <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-dark text-white w-100 px-3 h4" Text="Book Now" />

                                </div>
                            </div>
                        </div>
                    </div>
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh">
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Six Weeks Summer Training in Chandigarh" title="Six Weeks Summer Training in Chandigarh">
                </div>

            </div>
        </div>
    </section>


    
    <section class="bg-ececec py-4">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>Pro-E or Creo Industrial Training - Course contents</strong></h3>
            </div>
            
            <div class="row">
                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                    <h4 class="textred">MODULE NO.1 INTRODUCTION TO CREO PARAMETRIC</h4>

                    <ul class="welcomeLinks">
                    
<li>Introduction to Creo Parametric</li>
<li> Feature-Based Nature</li>
<li> Bidirectional Associative Property</li>
<li> Parametric Nature</li>
<li> System Requirements</li>
<li> Getting Started with Creo Parametric</li>
<li> Important Terms and Definitions</li>
<li> File Menu Options</li>
<li> Managing Files</li>

</ul>
  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                   

                    <ul class="welcomeLinks">
                    

<li> Menu Manager</li>
<li> Model Tree</li>
<li> Understanding the Functions of the Mouse Buttons</li>
<li> Ribbon</li>
<li> Toolbars</li>
<li> Navigator</li>
<li> Creo Parametric Browser</li>
<li> Appearance Gallery</li>
<li> Rendering in Creo Parametric</li>
<li> Colour Scheme Used in this Book</li>
</ul>
  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                <h4 class="textred">MODULE NO.2 CREATING SKETCHES IN THE SKETCH MODE-I</h4>
                  <ul class="welcomeLinks">
                       

<li>The Sketch Mode</li>
<li> Working with the Sketch Mode</li>
<li> Invoking the Sketch Mode</li>
<li> The Sketcher Environment</li>
<li> Working with a Sketch in the Sketch Mode</li>
<li> Drawing a Sketch Using tools available in the Sketch Tab</li>
<li> Placing a Point</li>
<li> Drawing a Line</li>
<li> Drawing a Centreline</li>
<li> Drawing a Geometry Centreline</li>
<li> Drawing a Rectangle</li>
<li> Drawing a Circle</li>
<li> Drawing an Ellipse</li>
<li> Drawing an Arc</li>
<li> Dimensioning the Sketch</li>
<li> Converting a Weak Dimension into a Strong Dimension</li>
<li> Dimensioning a Sketch Using the Normal Tool</li>
<li> Dimensioning the Basic Sketched Entities</li>

</ul>
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-justify">
                    
                    <ul class="welcomeLinks">
<li> Linear Dimensioning of a Line</li>
<li> Angular Dimensioning of an Arc</li>
<li> Diameter Dimensioning</li>
<li> Radial Dimensioning</li>
<li> Dimensioning Revolved Sections</li>
<li> Working with Constraints</li>
<li> Types of Constraints</li>
<li> Disabling Constraints</li>
<li> Modifying the Dimensions of a Sketch</li>
<li> Using the Modify Button</li>
<li> Modifying a Dimension by Double-Clicking on it</li>
<li> Modifying Dimensions Dynamically</li>
<li> Resolve Sketch Dialog Box</li>
<li> Deleting the Sketched Entities</li>
<li> Trimming the Sketched Entities</li>
<li> Mirroring the Sketched Entities</li>
<li> Inserting Standard/User-Defined Sketches</li>
<li> Drawing Display Options</li>
</ul>
                  
                </div>

               
                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                    <h4 class="textred">MODULE NO.3 CREATING SKETCHES IN THE SKETCH MODE-II</h4>

                    <ul class="welcomeLinks">
                     
<li>Dimensioning the Sketch</li>
<li> Dimensioning a Sketch Using the Baseline Tool</li>
<li> Replacing the Dimensions of a Sketch Using the Replace Tool</li>
<li> Creating Fillets</li>
<li> Creating Circular Fillets</li>
<li> Creating Elliptical Fillets</li>
<li> Creating a Reference Coordinate System</li>

</ul>
  </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-justify">


                      

                    <ul class="welcomeLinks">
                     

<li> Working with Splines</li>
<li> Creating a Spline</li>
<li> Dimensioning of Splines</li>
<li> Modifying a Spline</li>
<li> Writing Text in the Sketcher Environment</li>
<li> Rotating and Resizing Entities</li>
<li> Importing 2D Drawings in the Sketch Mode</li>
</ul>
  
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    <h4 class="textred">MODULE NO.4  CREATING BASE FEATURES</h4>
                    <ul class="welcomeLinks">
                     
<li>Creating Base Features</li>
<li> Invoking the Part Mode</li>
<li> The Default Datum Planes</li>
<li> Creating a Protrusion</li>
<li> Extruding a Sketch</li>

</ul>
                  
                </div>

                
                <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-justify">
                    
                    <ul class="welcomeLinks">
                         
<li> Revolving a Sketch</li>
<li> Understanding the Orientation of Datum Planes</li>
<li> Parent-Child Relationship</li>
<li> Implicit Relationship</li>
<li> Explicit Relationship</li>
<li> Nesting of Sketches</li>

</ul>
                  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    <h4 class="textred">MODULE NO.5 DATUMS</h4>
                    <ul class="welcomeLinks">
                         

<li>Datums</li>
<li> Default Datum Planes</li>
<li> Need for Datums in Modeling</li>
<li> Selection Method in Creo Parametric</li>
<li> Datum Options</li>
<li> Datum Planes</li>

</ul>
                  
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                   
                    <ul class="welcomeLinks">
<li> Creating Datum Planes</li>
<li> Datum Planes Created On-The-Fly</li>
<li> Datum Axes</li>
<li> Datum Points</li>
<li> Creating Cuts</li>
<li> Removing Material by Using the Extrude Tool</li>
<li> Removing Material by Using the Revolve Tool</li>
</ul>
                  
                </div>



                    <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                    <h4 class="textred">MODULE NO.6  OPTIONS AIDING CONSTRUCTION OF PARTS-I</h4>

                    <ul class="welcomeLinks">
                    

<li>Options Aiding Construction of Parts</li>
<li> Creating Holes</li>
<li> The Hole Dashboard</li>
<li> Important Points to Remember While Creating a Hole</li>
<li> Creating Rounds</li>
<li> Creating Basic Rounds</li>
<li> Creating a Variable Radius Round</li>
<li> Points to Remember While Creating Rounds</li>
<li> Creating Chamfers</li>
<li> Corner Chamfer</li>

</ul>
  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                   

                    <ul class="welcomeLinks">
                    

<li> Edge Chamfer</li>
<li> Understanding Ribs</li>
<li> Creating Trajectory Ribs</li>
<li> Creating Profile Ribs</li>
<li> Editing Features of a Model</li>
<li> Editing Definition or Redefining Features</li>
<li> Reordering Features</li>
<li> Rerouting Features</li>
<li> Suppressing Features</li>
<li> Deleting Features</li>
<li> Modifying Features</li>
</ul>
  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                <h4 class="textred">MODULE NO.7  OPTIONS AIDING CONSTRUCTION OF PARTS-II</h4>
                  <ul class="welcomeLinks">
                       


<li>Introduction</li>
<li> Creating Feature Patterns</li>
<li> Uses of patterns</li>
<li> Creating Patterns</li>
<li> Deleting a Pattern</li>
<li> Copying Features</li>
<li> New Refs</li>



</ul>
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-justify">
                    
                    <ul class="welcomeLinks">
<li> Same Refs</li>
<li> Mirror</li>
<li> Move</li>
<li> Select</li>
<li> Mirroring a Geometry</li>
<li> Creating a Section of a Solid Model</li>
<li> Work Region Method</li>
</ul>
                  
                </div>

               
                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                    <h4 class="textred">MODULE NO.8 ADVANCED MODELING TOOLS-I</h4>

                    <ul class="welcomeLinks">
                     

<li>Other Protrusion Options</li>
<li> Sweep Features</li>
<li> Creating Sweep Protrusions</li>
<li> Aligning a Sketched Trajectory to an Existing Geometry</li>
<li> Creating a Thin Sweep Protrusion</li>
<li> Creating a Sweep Cut</li>
<li> Blend Features</li>
<li> Parallel Blend</li>
<li> Rotational Blend</li>
<li> General Blend</li>

</ul>
  </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">


                      

                    <ul class="welcomeLinks">
                     

<li> Using Blend Vertex</li>
<li> Shell Feature</li>
<li> Creating a Constant Thickness Shell</li>
<li> Creating a Variable Thickness Shell 8</li>
<li> Datum Curves</li>
<li> Creating a Datum Curve by Using the Curve Button</li>
<li> Creating a Datum Curve by Sketching</li>
<li> Creating a Curve by Using the Intersect Option</li>
<li> Creating a Curve by Using the Project Option</li>
<li> Creating a Curve by Using the Wrap Option</li>
<li> Creating Draft Features</li>
</ul>
  
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    <h4 class="textred">MODULE NO.9  ADVANCED MODELING TOOLS-II</h4>
                    <ul class="welcomeLinks">
                     

<li>Advanced Feature Creation Tools</li>
<li> Variable Section Sweep Using the Sweep Option</li>
<li> Swept Blend</li>

</ul>
                  
                </div>

                
                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    
                    <ul class="welcomeLinks">
                         
<li> Helical Sweep</li>
<li> Blend Section to Surfaces</li>
<li> Blend Between Surfaces</li>

</ul>
                  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    <h4 class="textred">MODULE NO.10 ADVANCED MODELING TOOLS-III</h4>
                    <ul class="welcomeLinks">
                         


<li>Advanced Modeling Tools</li>
<li> Toroidal Bend</li>
<li> Spinal Bend</li>
<li> Warp</li>
<li> Transform Tool</li>

</ul>
                  
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                   
                    <ul class="welcomeLinks">
<li> Warp Tool</li>
<li> Spine Tool</li>
<li> Stretch Tool</li>
<li> Bend Tool</li>
<li> Twist Tool</li>
<li> Sculpt Tool</li>
</ul>
                  
                </div>



                          <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                <h4 class="textred">MODULE NO.11  ASSEMBLY MODELING</h4>
                  <ul class="welcomeLinks">
                       

<li>Assembly Modeling</li>
<li> Important Terms Related to the Assembly Mode</li>
<li> Top-down Approach</li>
<li> Bottom-up Approach</li>
<li> Placement Constraints</li>
<li> Package</li>
<li> Creating Top-down Assemblies</li>
<li> Creating Components in the Assembly Mode</li>
<li> Creating Bottom-up Assemblies</li>
<li> Inserting Components in an Assembly</li>
<li> Assembling Components</li>
<li> Displaying Components in a Separate Window</li>
<li> Displaying Components in the Same Window</li>
<li> 3D Dragger</li>
<li> Applying Constraints</li>
<li> Status Area</li>
<li> Placement Tab</li>

</ul>
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    
                    <ul class="welcomeLinks">
<li> Move Tab</li>
<li> Packaging Components</li>
<li> Creating Simplified Representations</li>
<li> Redefining the Components of an Assembly</li>
<li> Reordering Components</li>
<li> Suppressing/Resuming Components</li>
<li> Replacing</li>
<li> Assembling Repeated Copies of a Component</li>
<li> Modifying the Components of an Assembly</li>
<li> Modifying Dimensions of a Feature of a Component</li>
<li> Redefining a Feature of a Component</li>
<li> Creating the Exploded State</li>
<li> References Tab Offset Tab</li>
<li> Explode Line Tab</li>
<li> The Bill of Materials</li>
<li> Global Interference</li>
<li> Pairs Clearance</li>
</ul>
                  
                </div>

               
                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                    <h4 class="textred">MODULE NO.12 GENERATING, EDITING, AND MODIFYING THE DRAWING VIEWS</h4>

                    <ul class="welcomeLinks">
                     


<li>The Drawing Mode</li>
<li> Generating Drawing Views</li>
<li> Generating the General View</li>
<li> Generating the Projection View</li>
<li> Generating the Detailed View</li>
<li> Generating the Auxiliary View</li>
<li> Generating the Revolved Section View</li>
<li> Generating the Copy and Align View</li>
<li> Generating the 3D Cross-Section View</li>
<li> Editing the Drawing Views</li>
<li> Moving the Drawing View</li>
<li> Erasing the Drawing View</li>

</ul>
  </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-justify">


                      

                    <ul class="welcomeLinks">
                     

<li> Deleting the Drawing View</li>
<li> Adding New Parts or Assemblies to the Current Drawing</li>
<li> Modifying the Drawing Views</li>
<li> Changing the View Type</li>
<li> Changing the View Scale</li>
<li> Reorienting the Views</li>
<li> Modifying the Cross-sections</li>
<li> Modifying Boundaries of Views</li>
<li> Adding or Removing the Cross-section Arrows</li>
<li> Modifying the Perspective Views</li>
<li> Modifying Other Parameters</li>
<li> Editing the Cross-section Hatching</li>
</ul>
  
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    <h4 class="textred">MODULE NO.13  DIMENSIONING THE DRAWING VIEWS</h4>
                    <ul class="welcomeLinks">
                     
<li>Dimensioning the Drawing Views</li>
<li> Show Model Annotations Dialog Box</li>
<li> Adding Notes to the Drawing</li>
<li> Adding Tolerances in the Drawing Views</li>
<li> Dimensional Tolerances</li>
<li> Geometric Tolerances</li>

</ul>             
                </div>

                
                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    
                    <ul class="welcomeLinks">
                         
<li> Editing the Geometric Tolerances</li>
<li> Adding Balloons to the Assembly Views</li>
<li> Adding Reference Datums to the Drawing Views</li>
<li> Modifying and Editing Dimensions</li>
<li> Modifying the Dimensions Using the Dimension Properties Dialog Box</li>
<li> Modifying the Drawing Items Using the Shortcut Menu</li>
<li> Cleaning Up the Dimensions</li>

</ul>
                  
                </div>

                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                    <h4 class="textred">MODULE NO.14 OTHER DRAWING OPTIONS</h4>
                    <ul class="welcomeLinks">
                         
<li>Sketching in the Drawing Mode</li>
<li> Modifying the Sketched Entities</li>
<li> User-Defined Drawing Formats</li>

</ul>
                  
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                   
                    <ul class="welcomeLinks">
<li> Retrieving the User-Defined Formats in the Drawings</li>
<li> Adding and Removing Sheets in the Drawing</li>
<li> Creating Tables in the Drawing Mode</li>
<li> Generating the BOM and Balloons in Drawings</li>
</ul>
                  
                </div>


                                   <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">
                <h4 class="textred">MODULE NO.15  SURFACE MODELING</h4>
                  <ul class="welcomeLinks">
                       
<li>Surface Modeling</li>
<li> Creating Surfaces in Creo Parametric</li>
<li> Creating an Extruded Surface</li>
<li> Creating a Revolved Surface</li>
<li> Creating a Sweep Surface</li>
<li> Creating a Blended Surface</li>
<li> Creating a Swept Blend Surface</li>
<li> Creating a Helical Sweep Surface</li>
<li> Creating a Surface by Blending the Boundaries</li>
<li> Creating a Variable Section Sweep Surface Using the Sweep Tool</li>
<li> Creating Surfaces the Using the Style Environment of Creo Parametric</li>
<li> Style Dashboard</li>

</ul>
                </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-justify">
                    
                    <ul class="welcomeLinks">
<li> Surface Editing Tools</li>
<li> Mirroring the Surfaces</li>
<li> Merging the Surfaces</li>
<li> Trimming the Surfaces</li>
<li> Creating the Fill Surfaces</li>
<li> Creating the Intersect Curves</li>
<li> Creating the Offset Surfaces</li>
<li> Adding Thickness to a Surface</li>
<li> Converting a Surface into a Solid</li>
<li> Creating a Round at the Vertex of a Surface</li>
<li> Freestyle modelling environment</li>
<li> Freestyle Dashboard</li>
</ul>
                  
                </div>

               
                 <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">

                    <h4 class="textred">MODULE NO.16 WORKING WITH SHEET METAL COMPONENTS</h4>

                    <ul class="welcomeLinks">
                     
<li>Introduction to Sheet metal</li>
<li> Invoking the Sheet metal Mode</li>
<li> Introduction to Sheet metal Walls</li>
<li> Creating the Planar Wall</li>
<li> Creating the Unattached Revolve Wall</li>
<li> Creating the Unattached Blend Wall</li>
<li> Creating the Unattached Offset Wall</li>
<li> Creating Reliefs in Sheet metal Components</li>

</ul>
  </div>


                <div class="col-lg-6 col-md-6 col-sm-6 mt-3 text-justify">


                      

                    <ul class="welcomeLinks">
                     

<li> Creating a Flat Wall</li>
<li> Creating a Twist Wall</li>
<li> Creating an Extend Wall</li>
<li> Creating a Flange Wall</li>
<li> Creating the Bend Feature</li>
<li> Creating the Unbend Feature</li>
<li> Creating the Bend Back</li>
<li> Conversion to Sheet metal Part</li>
<li> Creating Cuts in the Sheet metal Components</li>
</ul>
  
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
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="Digital Marketing Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
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
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/mohali-sithith-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-honor-thumb.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award-chd.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-mohali.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Pro E Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Pro E Training in Chandigarh">
                                </a>
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
                   
<li>Pro Engineer Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Pro Engineer Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Pro Engineer Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
<li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
<li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
<li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
<li>Free online courses for class-room/offline students undergoing Industrial Training/Internship</li>
<li>Get Industrial Training/Internship in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
<li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
<li>Guaranteed Job Interviews and 100% Placement Assistance</li>
<li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
<li>Training on Live-Projects </li>
<li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
<li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
<li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
<li>Industrial Training/Internship from 10+ Years old company</li>
<li>Customized Syllabus (You can add your own relevant topics) and Backup Classes (in case you miss some classes)</li>
<li>Free Subdomain and Web Hosting to host projects.</li>
<li>Numerous Tie-up with IT / Electronics / Mechanical / Civil / Electrical / Retail / Textile etc. companies for Placements</li>
<li>Lifetime Validity Learning and Placement Assistance</li>
<li>Member of CII (Confederation of Indian Industry). Membership No. N5238P</li>
</ul>
            </div>         
            
          </div>

    </section>


    <section id="profiles" class="bg-ececec py-4 px-2">
        <div class="container-fluid">
            <div class="row m-0">
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Iconic Business Summit & Awards 2021" class="thumb">
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                <img src="images/award-image11.webp" alt="Pro Engineer Training in Chandigarh" title="Best Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                <img src="/php-images/php-industrial-training.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-1.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-2.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Pro Engineer Training in Chandigarh Mohali" title="6 Month Pro Engineer Training in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/galleryjob-fair7.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/page-5_img-4-b.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/THINKNEXT-b.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Pro Engineer Training in Chandigarh" title="Pro Engineer Training in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>
	

	

    <asp:Label ID="lblmessgaelogin" runat="server"  ></asp:Label>

	<!-- light-box modelBox -->
	<div class="modal fade modal-profile gallerylightbox" tabindex="-1" role="dialog" aria-labelledby="modalProfile" 
        aria-hidden="true">
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
