<%@ Page Title="SolidWorks Training in Chandigarh - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="solid-works-training-in-chandigarh.aspx.vb" Inherits="solidworks_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <meta name="description" content="Best SolidWorks training course in Chandigarh Mohali . ThinkNEXT is top SolidWorks training company that provides SolidWorks training in Chandigarh Mohali " />
    <meta name="keywords" content="SolidWorks Training in Chandigarh," />
      <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/images/solidworks-training-in-chandigarh-mob.jpg" />
     <meta property="og:image" content="http://www.thinknexttraining.com/images/solidworks-training-in-chandigarh-mob.jpg" />
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image">
        <img class="d-md-none" src="images/solidworks-training-in-chandigarh-mob.jpg" alt="SolidWorks Training in Chandigarh Mohali Mohali Panchkula" />
        <img class="d-none d-md-block" src="images/solidworks-training-in-chandigarh.jpg" alt="SolidWorks Training in Chandigarh Mohali Panchkula" />

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
                            <h1 class="gdl-header-title  mb-3">SolidWorks Training in Chandigarh Mohali Panchkula </h1>
                        </div>

                        <p><strong class="text-danger">Are you looking for best SolidWorks Training in Chandigarh?</strong></p>
                        <p><strong class="text-primary">If Yes, then</strong></p>
                        <p><strong class="text-primary">Your search ends here. Finally, You are at the RIGHT PLACE</strong></p>
                        <p><strong>SolidWorks </strong>coaching courses will assist you in  achieving your success goals, be it for resume coaching, rising the essential  skills or obtaining an intro of comprehensive SolidWorks. <strong>SolidWorks </strong>integrated software includes of a huge range of  mechanical CAD, product knowledge management, style communication, CAD  productivity tools and style validation below one umbrella that creatively  encapsulates all SolidWorks software options in a reasonable, simple to  understand package.</p>

                        <strong>ThinkNEXT Technologies </strong>is  providing top quality SolidWorks industrial training course in <strong>Chandigarh</strong>. It’s trained several  students and creates them professional SolidWorks expert. So, if you would  like to create your career in SolidWorks sector, then be a part of <strong>ThinkNEXT Technologies </strong>for best SolidWorks training in Chandigarh.</p>
                    <p><strong>ThinkNEXT Technologies</strong> is providing wide range of basic core as well as business specific mechanical CAD training Programs. <strong>ThinkNEXT  Technologies</strong> is providing World class Training. <strong>ThinkNEXT Technologies </strong>training in <strong>Chandigarh</strong> that covers all  modules of SolidWorks Mechanical design suite starting from part design, Assembly, sheet metal, Drafting, 3d simulation etc. once it involves World class industrial training for mechanical and civil engineering students also as  skilled then <strong>ThinkNEXT Technologies </strong>is best in all aspects.</p>

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
                                    <img src="images/download_brochure.png" alt="SolidWorks Training in Chandigarh">
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



    <section class="py-4">
        <div class="container">
            <div class="d-none d-md-block">
                <div>
                    <img src="images/industrial-training-comapny-chandigarh.jpg" alt="SolidWorks Training in Chandigarh" />
                </div>
                <div>
                    <img src="images/six-weeks-summer-training-chandigarh.jpg" alt="SolidWorks Training in Chandigarhh" />
                </div>
                <div>
                    <img src="images/summer-training-in-mohali.jpg" alt="SolidWorks Training in Chandigarhh" />
                </div>
            </div>
            <div class="d-md-none">
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-1.jpg" alt="SolidWorks Training in Chandigarhh" />
                </div>
                <div class="text-center">
                    <img src="images/industrial-training-comapny-chandigarh-2.jpg" alt="SolidWorks Training in Chandigarhh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-1.jpg" alt="SolidWorks Training in Chandigarhh" />
                </div>
                <div class="text-center">
                    <img src="images/six-weeks-summer-training-chandigarh-2.jpg" alt="SolidWorks Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-1.jpg" alt="SolidWorks Training in Chandigarh" />
                </div>
                <div class="text-center">
                    <img src="images/summer-training-in-mohali-2.jpg" alt="SolidWorks Training in Chandigarh" />
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
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="SolidWorks Training in Chandigarh" title="SolidWorks Training in Chandigarh">
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="SolidWorks Training in Chandigarh" title="SolidWorks Training in Chandigarh">
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="SolidWorks Training in Chandigarh" title="SolidWorks Training in Chandigarh">
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="SolidWorks Training in Chandigarh" title="SolidWorks Training in Chandigarh">
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="SolidWorks Training in Chandigarh" title="SolidWorks Training in Chandigarh">
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="SolidWorks Training in Chandigarh" title="SolidWorks Training in Chandigarh">
                </div>

            </div>
        </div>
    </section>


    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-6">

                    <div class="position-sticky top-0">

                        <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/4nizNUw3ATs" data-bs-target="#VideoModal">
                            <img src="images/solidworks-course-workshop-min.jpg" alt="SolidWorks Training in Chandigarh">
                            <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/4nizNUw3ATs" data-bs-target="#VideoModal"></span>
                        </div>

                    </div>
                </div>

                <div class="col-lg-6 text-justify">
                    <div class="position-sticky top-0">

                        <div class="py-3 px-4 bg-black mx-sm-5">
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

                                <div class="form-group d-none">
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


    <section class="py-4">
        <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>SolidWorks Industrial Training - Course Contents</strong></h3>
            </div>
            <br>
            <h4 class="text-danger">Module 1: Introduction</h4>
            <div class="row">

                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Introduction to SolidWorks </li>
                        <li>Part Mode </li>
                        <li>Assembly Mode </li>
                        <li>Drawing Modes </li>
                        <li>System Requirements </li>
                        <li>Getting Started with SolidWorks </li>
                        <li>Menu Bar and SolidWorks menus </li>
                        <li>Command Manager </li>
                        <li>Part Mode Command Managers </li>
                        <li>Assembly Mode Command Managers </li>
                        <li>Drawing Mode Command Managers </li>
                        <li>Customized Command Manager </li>




                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                        <li>Toolbar </li>
                        <li>Pop-up Toolbar </li>
                        <li>View (Heads-Up) Toolbar </li>
                        <li>Shortcut Bar </li>
                        <li>Mouse Gestures </li>
                        <li>Dimensioning Standard and Units </li>
                        <li>Important Terms and Their Definitions </li>
                        <li>Feature-based Modeling </li>
                        <li>Parametric Modeling </li>
                        <li>Windows Functionality </li>
                        <li>Geometric Relations </li>


                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 text-justify">
                    <ul class="welcomeLinks">
                        <li>Blocks </li>
                        <li>Library Feature </li>
                        <li>Design Table </li>
                        <li>2D Command Line Emulator </li>
                        <li>Simulation process </li>
                        <li>Physical Dynamics </li>
                        <li>Physical Simulation </li>
                        <li>Feature Manager Design tree </li>
                        <li>Selecting Hidden Entities </li>
                        <li>Color Scheme </li>
                        <li>Self-Evaluation Test </li>
                    </ul>
                </div>

            </div>

            <br />
            <h4 class="text-danger">Module 2: Drawing Sketches for Solid Models</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>The  Sketching Environment </li>
                        <li>Starting a New Session of SolidWorks </li>
                        <li>Work flow customization Area </li>
                        <li>Task Panes </li>
                        <li>SolidWorks Resources Task Pane </li>
                        <li>Design  Library Task Pane </li>
                        <li>File Explorer Task Pane </li>
                        <li>View Palette Task Pane </li>
                        <li>Appearances, Scenes, and Decals Task Pane </li>
                        <li>Custom Properties Task Pane </li>
                        <li>Starting a New Document in SolidWorks </li>
                        <li>Part </li>
                        <li>Assembly </li>
                        <li>Drawing </li>
                        <li>Understanding the Sketching environment </li>
                        <li>Setting the Document Options </li>
                        <li>Modifying the Drafting Standards </li>
                        <li>Modifying the Linear and Angular Units </li>
                        <li>Modifying the Snap and Grid Settings </li>
                        <li>Learning Sketcher Terms </li>
                        <li>Origin </li>
                        <li>Inferencing Lines </li>
                        <li>Select tool </li>
                        <li>Selecting Entities Using the Box Selection </li>
                        <li>Selecting Entities Using the Cross Selection </li>
                         
                    </ul>
                     
                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Selecting Entities Using the SHIFT and CTRL Keys </li>
                        <li>Invert Selection Tool </li>
                        <li>Drawing Lines </li>
                        <li>Orientation Rollout </li>
                        <li>Options Rollout </li>
                        <li>Drawing Continuous Lines </li>
                        <li>Drawing Individual Lines </li>
                        <li>Line Cursor Parameters </li>
                        <li>Drawing Tangent or Normal Arcs Using the Line Tool </li>
                        <li>Drawing Construction Lines or Centerlines </li>
                        <li>Drawing the Lines of Infinite Length </li>
                        <li>Drawing Circles </li>
                        <li>Drawing Circles by Defining their Center Points </li>
                        <li>Drawing Circles by Defining Three Points </li>
                        <li>Drawing Construction Circles </li>
                        <li>Drawing Arcs </li>
                        <li>Drawing Tangent/Normal Arcs </li>
                        <li>Drawing Center point Arcs </li>
                        <li>Drawing 3 Point Arcs </li>
                        <li>Drawing Rectangles </li>
                        <li>Drawing Rectangles by Specifying their Corners </li>
                        <li>Drawing Rectangles by Specifying the Center and a Corner </li>
                        <li>Drawing Rectangles at an Angle </li>
                        <li>Drawing Center point Rectangles at an Angle </li>
                    </ul>



                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Drawing Center point Rectangles at an Angle </li>
                        <li>Drawing Parallelograms </li>
                        <li>Drawing Polygons </li>
                        <li>Drawing Splines </li>
                        <li>Drawing Slots </li>
                        <li>Creating a Straight Slot </li>
                        <li>Creating a Center point Straight Slot </li>
                        <li>Creating a 3 Point Arc Slot </li>
                        <li>Creating a Center point Arc Slot </li>
                        <li>Placing Sketched Points </li>
                        <li>Drawing Ellipses </li>
                        <li>Drawing Elliptical Arcs </li>
                        <li>Drawing Parabolic Curves </li>
                        <li>Drawing Display Tools </li>
                        <li>Zoom to Fit </li>
                        <li>Zoom to Area </li>
                        <li>Zoom In/Out </li>
                        <li>Zoom to Selection </li>
                        <li>Pan </li>
                        <li>Previous View </li>
                        <li>Redraw </li>
                        <li>Deleting Sketched Entities </li>
                        <li>Self-Evaluation Test </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 3: Editing and Modifying Sketches</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Editing Sketched Entities </li>
                        <li>Trimming Sketched Entities </li>
                        <li>Extending Sketched Entities </li>
                        <li>Filleting Sketched Entities </li>
                        <li>Chamfering Sketched Entities </li>
                        <li>Offsetting Sketched Entities </li>
                        <li>Mirroring Sketched Entities </li>
                        <li>Mirroring While Sketching (Dynamic Mirror Entities) </li>
                        <li>Moving Sketched Entities </li>
                        <li>Rotating Sketched Entities </li>

                    </ul>

                     
                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Scaling Sketched Entities </li>
                        <li>Copying and Pasting Sketched Entities </li>
                        <li>Creating Patterns </li>
                        <li>Creating Linear Sketch Patterns </li>
                        <li>Creating Circular Sketch Patterns </li>
                        <li>Editing Patterns </li>
                        <li>Writing Text in the Sketching Environment </li>
                        <li>Modifying Sketched Entities </li>
                        <li>Modifying a Sketched Line </li>
                        <li>Modifying a Sketched Circle </li>
                    </ul>
                     
                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Modifying a Sketched Arc </li>
                        <li>Modifying a Sketched Polygon </li>
                        <li>Modifying a Spline </li>
                        <li>Modifying the Coordinates of a Point </li>
                        <li>Modifying an Ellipse or an Elliptical Arc </li>
                        <li>Modifying a Parabola </li>
                        <li>Dynamically Modifying and Copying Sketched Entities </li>
                        <li>Splitting Sketched Entities </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 4: Adding Relations and Dimensions to Sketches</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Applying Geometric Relations to Sketches </li>
                        <li>Applying Relations Using the Add Relations Property Manager </li>
                        <li>Design Intent </li>
                        <li>Dimensioning a Sketch </li>
                        <li>Horizontal/Vertical  Dimensioning </li>
                        <li>Aligned Dimensioning </li>
                        <li>Angular Dimensioning </li>
                        <li>Diameter Dimensioning </li>
                        <li>Radius Dimensioning </li>
                        <li>Linear Diameter Dimensioning </li>
                    </ul>

                     
                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Ordinate Dimensioning </li>
                        <li>Concept of a Fully Defined Sketch </li>
                        <li>Fully  Defined </li>
                        <li>Over  defined </li>
                        <li>Under  defined </li>
                        <li>Dangling </li>
                        <li>No  Solution Found </li>
                        <li>Invalid  Solution Found </li>
                        <li>Sketch  Dimension or Relation Status </li>
                        <li>Deleting Over defining Dimensions </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Displaying and Deleting Relations </li>
                        <li>Opening an Existing File </li>
                        <li>Address  Bar </li>
                        <li>File  name </li>
                        <li>Type  Drop-down List </li>
                        <li>Open  as Read-Only </li>
                        <li>Quick  view </li>
                        <li>References </li>
                        <li>Configurations </li>
                        <li>Display  States Area </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 5: Advanced Dimensioning Techniques and Base Feature Options</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Advanced  Dimensioning Techniques Fully Defining the Sketches </li>
                        <li>Dimensioning the True Length of an Arc </li>
                        <li>Measuring Distances and Viewing Section Properties </li>
                        <li>Measuring Distances </li>
                        <li>Determining the Section Properties of Closed Sketches </li>
                        <li>Creating Base Features by Extruding Sketches </li>
                        <li>Creating Thin Extruded Features </li>
                        <li>Creating Base Features by Revolving Sketches </li>
                        <li>Creating Solid Revolved Features </li>
                        <li>Creating Thin Revolved Features </li>
                        <li>Determining the Mass Properties of Parts </li>                         
                    </ul>

                     
                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Dynamically  Rotating the View of a Mode </li>
                        <li>Rotating the View Freely in 3D Space </li>
                        <li>Rotating the View around a Selected Vertex, Edge, or Face </li>
                        <li>Modifying the View Orientation </li>
                        <li>Changing the Orientation Using the Reference Triad </li>
                        <li>Restoring the Previous View </li>
                        <li>Displaying the Drawing Area in Viewports </li>
                        <li>Displaying the Drawing Area in Two Horizontal Viewports </li>
                        <li>Displaying the Drawing Area in Two Vertical Viewports </li>
                        <li>Displaying the Drawing Area in Four Viewports </li>
                        <li>Display  Modes of a Model </li>
                        <li>Wireframe </li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">


                        <li>Hidden  Lines Visible </li>
                        <li>Hidden  Lines Removed </li>
                        <li>Shaded  With Edges </li>
                        <li>Shaded </li>
                        <li>Additional  Display Modes </li>
                        <li>Shadows  in Shaded Mode </li>
                        <li>Perspective </li>
                        <li>Assigning Materials and Textures to Models </li>
                        <li>Assigning Materials to a Model </li>
                        <li>Changing the Appearance of the Model </li>
                        <li>Editing the Appearances </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 6: Creating Reference Geometries</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Importance  of Sketching Planes </li>
                        <li>Reference  Geometry </li>
                        <li>Reference  Planes </li>
                        <li>Creating New Planes </li>
                        <li>Creating Reference Axes </li>
                        <li>Creating Reference Points </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating Reference Coordinate Systems </li>
                        <li>Advanced  Boss/Base Options </li>
                        <li>From </li>
                        <li>End  Condition </li>
                        <li>Direction  of Extrusion </li>
                        <li>Modeling Using the Contour Selection Method </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Creating Cut Features </li>
                        <li>Creating Extruded Cuts </li>
                        <li>Handling Multiple Bodies in the Cut Feature </li>
                        <li>Creating Revolved Cuts </li>
                        <li>Concept  of the Feature Scope </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 7: Advanced Modeling Tools-I</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Advanced  Modeling Tools </li>
                        <li>Creating Simple Holes </li>
                        <li>Creating Standard Holes Using the Hole Wizard </li>
                        <li>Adding External Cosmetic Threads </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating Fillets </li>
                        <li>Selection  Methods </li>
                        <li>Creating Fillets Using the FilletXpert </li>
                         
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Creating Chamfers </li>
                        <li>Creating Shell Features </li>
                        <li>Creating Wrap Features </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 8: Advanced Modeling Tools-II</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Advanced  Modeling Tools </li>
                        <li>Creating Mirror Features </li>
                        <li>Creating Linear Pattern Features </li>
                        <li>Creating Circular Pattern Features </li>
                         
                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating Sketch Driven Patterns </li>
                        <li>Creating Curve Driven Patterns </li>
                        <li>Creating Table Driven Patterns </li>
                        <li>Creating Fill Patterns </li>
                         
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">                         
                        <li>Creating Rib Features </li>
                        <li>Displaying the Section View of a Model </li>
                        <li>Changing the Display States </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 9: Editing Features</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Editing the Features of a Model </li>
                        <li>Editing Using the Edit Feature Option </li>
                        <li>Editing Sketches of the Sketch-based Features </li>
                        <li>Changing the Sketch Plane of the Sketches </li>
                        <li>Editing by Selecting an Entity or a Feature </li>
                        <li>Editing Using the Instant3D Tool </li>
                        <li>Editing Features and Sketches by Cut, Copy, and Paste </li>
                         
                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Cutting,  Copying, and Pasting Features and Sketches from One Document </li>
                        <li>To  the Other </li>
                        <li>Copying Features Using Drag and Drop </li>
                        <li>Deleting Features </li>
                        <li>Deleting Bodies </li>
                        <li>Suppressing Features </li>
                        <li>Unsuppressing the Suppressed Features </li>
                        <li>Unsuppressing Features with Dependents </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Hiding Bodies </li>
                        <li>Moving and Copying Bodies </li>
                        <li>Reordering the Features </li>
                        <li>Rolling Back the Feature </li>
                        <li>Renaming Features </li>
                        <li>Creating Folders in the Feature Manager Design tree </li>
                        <li>What’s  Wrong Functionality? </li>
                    </ul>
                </div>
            </div>


            <br />
            <h4 class="text-danger">Module 10: Advanced Modeling Tools-III</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Advanced  Modeling Tools </li>
                        <li>Creating Sweep Features </li>
                        <li>Creating Cut-Sweep Features </li>
                        <li>Creating Loft Features </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Adding a Section to a Loft Feature </li>
                        <li>Creating Lofted Cuts </li>
                        <li>Creating 3D Sketches </li>
                        <li>Creating Grid Systems </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Editing 3D Sketches </li>
                        <li>Creating Curves </li>
                        <li>Extruding a 3D Sketch </li>
                        <li>Creating Draft Features </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 11: Advanced Modeling Tools-IV</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Advanced  Modeling Tools </li>
                        <li>Creating Dome Features </li>
                        <li>Creating Indents </li>
                        <li>Creating Deform Features </li>
                        <li>Creating Flex Features </li>
                        <li>Creating Fastening Features </li>
                        <li>Creating the Mounting Boss </li>
                        <li>Creating Snap Hooks </li>
                        <li>Creating Snap Hook Grooves </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating Vents </li>
                        <li>Creating a Lip/Groove Feature </li>
                        <li>Creating Freeform Features </li>
                        <li>Face  Settings Rollout </li>
                        <li>Control  Curves Rollout </li>
                        <li>Control  Points Rollout </li> 
                        <li>Display  Rollout </li>
                        <li>Dimensioning a Part Using DimXpert </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Specifying the Datum </li>
                        <li>Pop-up  Toolbar </li>
                        <li>Adding Dimensions </li>
                        <li>Specifying the Location of a Feature </li>
                        <li>Adding Geometric Tolerance to the Features </li>
                        <li>Collecting Pattern Features </li>
                        <li>Adding Dimensions Automatically </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 12: Assembly Modeling-I</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Assembly  Modeling </li>
                        <li>Types  of Assembly Design Approach </li>
                        <li>Creating Bottom-Up Assemblies </li>
                        <li>Placing Components in the Assembly Document </li>
                        <li>Assembling Components </li>
                        <li>Creating Top-down Assemblies </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating Components in the Top-down Assembly </li>
                        <li>Moving Individual Components </li>
                        <li>Moving Individual Components by Dragging </li>
                        <li>Moving Individual Components Using the Move Component Tool </li>
                        <li>Rotating Individual Components </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">
                        <li>Rotating Individual Components by Dragging </li>
                        <li>Rotating Individual Components Using the Rotate Component Tool </li>
                        <li>Moving and Rotating Individual Components Using the Triad </li>
                        <li>Assembly  Visualization </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 13: Assembly Modeling-II</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Advanced Assembly Mates </li>
                        <li>Applying the Symmetric Mate </li>
                        <li>Applying the Width Mate </li>
                        <li>Applying the Distance Mate </li>
                        <li>Applying the Angle Mate </li>
                        <li>Applying the Path Mate </li>
                        <li>Mechanical Mates </li>
                        <li>Applying the Cam Mate </li>
                        <li>Applying the Gear Mate </li>
                        <li>Applying the Rack Pinion Mate </li>
                        <li>Applying the Screw Mate </li>
                        <li>Applying the Hinge Mate </li>
                        <li>Creating Sub-assemblies </li>
                        <li>Bottom-up Sub-assembly Design Approach </li>
                        <li>Top-down Sub-assembly Design Approach </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Inserting a New Sub-assembly </li>
                        <li>Deleting Components and Sub-assemblies </li>
                        <li>Editing Assembly Mates </li>
                        <li>Replacing Mated Entities </li>
                        <li>Editing Components </li>
                        <li>Editing Sub-assemblies </li>
                        <li>Dissolving Sub-assemblies </li>
                        <li>Replacing Components </li>
                        <li>Creating Patterns of Components in an Assembly </li>
                        <li>Feature Driven Pattern </li>
                        <li>Local Pattern </li>
                        <li>Copying and Mirroring Components </li>
                        <li>Copy a Component with Mates </li>
                        <li>Simplifying Assemblies using the Visibility Options </li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Hiding Components </li>
                        <li>Suppressing and Unsuppressing the Components </li>
                        <li>Changing the Transparency Conditions </li>
                        <li>Changing the Display States </li>
                        <li>Checking Interferences in an Assembly </li>
                        <li>Checking the Hole Alignment </li>
                        <li>Creating Assemblies for Mechanism </li>
                        <li>Analyzing Collisions Using the Collision Detection Tool </li>
                        <li>Creating the Exploded State of an Assembly </li>
                        <li>Creating the Explode Line Sketch </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 14: Working with Drawing Views-I</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>The Drawing Mode </li>
                        <li>Starting a Drawing Document </li>
                        <li>Starting a New Drawing Document Using the New SolidWorks Document </li>
                        <li>Dialog Box </li>
                        <li>Starting a New Drawing Document from the Part/Assembly Document </li>
                        <li>Types of Views </li>
                        <li>Model View </li>
                        <li>Projected View </li>
                        <li>Section View </li>
                        <li>Aligned Section View </li>
                        <li>Auxiliary View </li>
                        <li>Detail View </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Broken  View </li>
                        <li>Broken-out  Section View </li>
                        <li>Crop  View </li>
                        <li>Alternate  Position View </li>
                        <li>Generating Standard Drawing Views </li>
                        <li>Generating Model Views </li>
                        <li>Using the View Palette to Place the Drawing Views </li>
                        <li>Generating the Three Standard Views </li>
                        <li>Generating Standard Views Using the Relative View Tool </li>
                        <li>Generating Standard Views Using the Predefined View Tool </li>
                        <li>Generating Drawing Views of the Exploded State of an Assembly </li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Working with Interactive Drafting in SolidWorks </li>
                        <li>Editing and Modifying Drawing Views </li>
                        <li>Changing the View Orientation </li>
                        <li>Changing the Scale of Drawing Views </li>
                        <li>Deleting Drawing Views </li>
                        <li>Rotating Drawing Views </li>
                        <li>Manipulating the Drawing Views </li>
                        <li>Modifying the Hatch Pattern in Section Views </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 15: Working with Drawing Views-II</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Adding Annotations to Drawing Views </li>
                        <li>Generating Annotations Using the Model Items Tool </li>
                        <li>Adding Reference Annotations </li>
                        <li>Aligning the Dimensions </li>
                        <li>Editing Annotations </li>
                        <li>Adding the Bill of Materials (BOM) to a Drawing </li>
                        <li>Table  Template Rollout </li>
                        <li>Table  Position Rollout </li>
                        <li>BOM  Type Rollout </li>
                        <li>Configurations  Rollout </li> 

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Part  Configuration Grouping Rollout </li>
                        <li>Keep  Missing Item Rollout </li>
                        <li>Item  Numbers Rollout </li>
                        <li>Setting Anchor Point for the BOM </li>
                        <li>Linking Bill of Materials </li>
                        <li>Adding Balloons to the Drawing Views </li>
                        <li>Adding Balloons using the Auto Balloon tool </li>
                        <li>Adding New Sheets to the Drawing Views </li>
                        <li>Editing the Sheet Format </li>
                        <li>Creating User-Defined Sheet Formats </li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Changing the Visibility of Components in Different Configurations </li>
                        <li>Assembly </li>
                        <li>Library  Features </li>
                        <li>Creating a Library Feature </li>
                        <li>Placing Library Features in a Part </li>
                        <li>Editing the Library Features </li>
                        <li>Dissolving the Library Features </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 16: Working with Blocks</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Introduction  to Blocks </li>
                        <li>Blocks  Toolbar </li>
                        <li>Saving a Sketch as a Block in the design Library </li>
                        <li>Creating Mechanisms by using Blocks </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating the Rack and Pinion Mechanism </li>
                        <li>Creating the Cam and Follower Mechanism </li>
                        <li>Applying Motion to Blocks </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Creating Parts from Blocks </li>
                        <li>Selected  Blocks </li>
                        <li>Block  to Part Constraint </li>
                    </ul>
                </div>
            </div>


            <br />
            <h4 class="text-danger">Module 17: Sheet Metal Design</h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Sheet  Metal Design </li>
                        <li>Designing the Sheet Metal Components by Creating the Base Flange </li>
                        <li>Creating the Base Flange </li>
                        <li>Understanding the Feature Manager Design tree of a Sheet Metal Component </li>
                        <li>Creating the Edge Flange </li>
                        <li>Creating Tabs </li>
                        <li>Creating the Sketched Bend </li>
                        <li>Creating the Miter Flange </li>
                        <li>Creating Closed Corners </li>
                        <li>Creating Hems </li>
                        <li>Creating the Jog Bend </li>
                        <li>Breaking the Corners </li>


                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Creating Cuts on the Planar Faces of the Sheet Metal Components </li>
                        <li>Creating Lofted Bends </li>
                        <li>Creating a Flat Pattern View of the Sheet Metal Components </li>
                        <li>Creating Sheet Metal Components from a Flat Sheet </li>
                        <li>Creating a Sheet Metal Component From a Flat Part </li>
                        <li>Converting a Part or a Flat Part into Sheet Metal by Adding Bends </li>
                        <li>Adding Bends to the Flattened Sheet Metal Component </li>
                        <li>Unbending the Sheet Metal Part Using the No Bends Tool </li>
                        <li>Creating a Sheet Metal Component By Designing it as a Part </li>
                        <li>Types  of Bends </li>
                        <li>Converting a Solid Body into a Sheet Metal Part </li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Designing a sheet Metal Part from a Solid Shelled model </li>
                        <li>Ripping the Edges </li>
                        <li>Creating Cuts in Sheet Metal Components Across the Bends </li>
                        <li>Creating Cuts in a Sheet Metal Component Created from a Solid Model </li>
                        <li>Creating Cuts in a Sheet Metal Component Created Using the Base Flange </li>
                        <li>Creating Cylindrical and Conical Sheet Metal Components </li>
                        <li>Generating the Drawing View of the Flat Pattern of the Sheet Metal Components </li>
                    </ul>
                </div>
            </div>

            <br />
            <h4 class="text-danger">Module 18: Surface  Modeling </h4>
            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">
                        <li>Surface  Modeling </li>
                        <li>Creating an Extruded Surface </li>
                        <li>Creating a Revolved Surface </li>
                        <li>Creating a Swept Surface </li>
                        <li>Creating a Lofted Surface </li>
                        <li>Creating a Boundary Surface </li>
                        <li>Creating a Planar Surface </li>
                        <li>Creating a Fill Surface </li>
                        <li>Creating a Radiated Surface </li>

                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">

                    <ul class="welcomeLinks mb-0">

                        <li>Offsetting Surfaces </li>
                        <li>Trimming Surfaces </li>
                        <li>Untrimming Surfaces </li>
                        <li>Extending Surfaces </li>
                        <li>Knitting Surfaces </li>
                        <li>Filleting Surfaces </li>
                        <li>Creating a Mid-Surface </li>
                        <li>Deleting Holes from Surfaces </li>
                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 text-justify">

                    <ul class="welcomeLinks">

                        <li>Replacing Faces </li>
                        <li>Deleting Faces </li>
                        <li>Moving and Coping Surfaces </li>
                        <li>Mirroring Surface Bodies </li>
                        <li>Adding Thickness to Surface Bodies </li>
                        <li>Creating a Thicken Surface Cut </li>
                        <li>Creating a Surface Cut </li>
                    </ul>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-4 col-md-4 text-justify">
                    <br />
                    <h4 class="text-danger">Module 19: Weldment Design</h4>

                    <br />
                    <h4 class="text-danger">Module 20: Photo View</h4>

                </div>

                <div class="col-lg-5 col-md-4 text-justify">
                    <br />
                    <h4 class="text-danger">Module 21: Simulation processes</h4>

                    <br />
                    <h4 class="text-danger">Module 22: Actual View or Rendering Process</h4>


                </div>

                <div class="col-lg-3 col-md-4 text-justify">
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
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="SolidWorks Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="SolidWorks Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="SolidWorks Training in Chandigarh">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="SolidWorks Training in Chandigarh">
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/DivyaHimachal20-03-2020.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                               </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/thinknext-got-award-mohali.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="SolidWorks Training in Chandigarh" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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

                    <li>SolidWorks Training from 6 Times National Level Award Winner Company:</li>
                    <li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
                    <li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
                    <li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
                    <li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
                    <li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
                    <li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
                    <li>SolidWorks Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
                    <li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
                    <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
                    <li>SolidWorks Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
                    <li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
                    <li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
                    <li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
                    <li>Free online courses for class-room/offline students undergoing Industrial Training/Internship</li>
                    <li>Get Industrial Training/Internship in 3 modes: (1. Classroom training/Offline training  2. Instructor-led online Live training         3. Self-Paced Online Courses</li>
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


    <section class="py-5 px-2 tstmnl-ytbe">
    <div class="container">
        <p class="hcntr"><span class="htitl">Student Testimonials</span></p>
        <div class="row m-0">
   

               <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/jIWV6miTwQM" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/jIWV6miTwQM/maxresdefault.webp" alt="SolidWorks Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/jIWV6miTwQM" data-bs-target="#VideoModal"></span>
                </div>
            </div>

              <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/axmMnwWEigU" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/axmMnwWEigU/maxresdefault.webp" alt="SolidWorks Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/axmMnwWEigU" data-bs-target="#VideoModal"></span>
                </div>
            </div>
          
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/0_8sSJgccXk" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/0_8sSJgccXk/maxresdefault.webp" alt="SolidWorks Training in Chandigarh">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/0_8sSJgccXk" data-bs-target="#VideoModal"></span>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="SolidWorks Training in Chandigarh Mohali" title="Best SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="SolidWorks Training in Chandigarh Mohali" title="SolidWorks Training in Chandigarh Mohali" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>


    <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

     

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
