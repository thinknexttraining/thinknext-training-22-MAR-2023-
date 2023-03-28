<%@ Page Title="PHP Training in Mohali - ThinkNEXT " Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="php-training-in-mohali.aspx.vb" Inherits="php_training_in_mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
<meta name="description" content="PHP Training in Mohali - Best Core and Advance PHP Industrial Training institute in Mohali India. ThinkNEXT is best php training institute provides 100% job oriented PHP Course" />
<meta name="keywords" content="PHP Training in Mohali, php courses in Mohali, PHP Training in Mohali, php training institute in chandigarh, best institute for php in chandigarh, 6 weeks php industrial training in chandigarh, 6 months php industrial training in chandigarh, Php Training Company in Chandigarh, Php Training Company in Mohali, Php Training Company in Panchkula INDIA, Php Training in Mohali Chandigarh panchkula, PHP Course, PHP Training Institute, Php Industrial Training, Php Website Designing, Core Php, Advance PHP." />
 <!-- Facebook sharing image show  -->
     <link rel="image_src" href="https://www.thinknexttraining.com/share-images/php-training.png" />
    <meta property="og:image" content="https://www.thinknexttraining.com/share-images/php-training.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    
   <!--  End// Google+ -->
<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after" />
<meta name="robots" content="index, follow" />

<meta name="copyright" content="ThinkNEXT"/>
<link rel="canonical" href="https://www.thinknexttraining.com/php-training-in-mohali.aspx" />



</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image position-relative">

        <img class="d-md-none" src="images/php-training-in-chandigarh-min.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
        <img class="d-none d-md-block" src="images/php-training-in-chandigarh-min-2.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" />

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
                            <h1>PHP Training in Mohali</h1>
                        </div>
                        <p>Nowadays, there are lots of big or small companies are using PHP language that's why it has become a most popular language and <strong>PHP training in Mohali</strong> will provide a complete skill of <strong>PHP programming</strong> for further development.</p>
                        <p><strong>ThinkNEXT</strong> is presenting a <strong>best PHP training course in Mohali</strong> that is fully inspired and motivated with recent trends and parameters which you will get instant jobs at reputed MNCs. We focus on real-time and placement generate <strong>PHP training in Mohali</strong> and here you will get &nbsp;depth knowledge of <strong>A</strong> <strong>to</strong> <strong>Z</strong> means basic to advanced level and we have trained more than 500+ PHP programmer which are working top MNCs companies.</p>
                        <p>At <strong>ThinkNEXT</strong>, our <strong>PHP Programming course</strong> provides the knowledge necessary to develop dynamic, database-driven web pages. There is huge demand of PHP developers across the world, understanding the need <strong>ThinkNEXT</strong> has designed a specialized <strong>PHP course in Mohali</strong>, Various modules include PHP as language, MYSQL as database, training on CMS Joomla/WordPress and Drupal, Framework CakePHP, Payment gateway integration, Magento, Open cart as essential parts of web designing and web development course in PHP.</p>


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
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile No." Font-Bold="True" ForeColor="#CC0000" ValidationGroup="arrangecallbackGroup"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group mb-0">
                                    <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="arrangecallbackGroup1"></asp:RegularExpressionValidator>
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

    

    

    <section class="ptb-20 bg-light ">
        <div class="container-fluid">
            <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" />
                </div>

            </div>
        </div>
    </section>

    <section class="py-4 bg-dark">
        <div class="container">
            <div class="row m-0 mt-3 p-2 align-items-center">
                <div class="col-lg-7 text-justify">
                    <div class="position-sticky top-0">
                        <h2 class="text-warning"><strong>What is PHP</strong></h2>
                        <p class="text-white"><strong>PHP</strong> is open-source, which is one of the useful things for any industry. Therefore, PHP is readily available and is completely free to develop websites.</p>
                        <p class="text-white"><strong>PHP</strong> has a large list of advantages over any other programming language. PHP is the most convenient and affordable technology for web development purpose. Here are the advantages of PHP, we will discuss briefly:</p>
                        <ul class="welcomeLinks text-white">
                            <li><strong>Cross-Platform</strong></li>
                            <li><strong>Easy database connection</strong> </li>
                            <li><strong>Easy to use</strong></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-5">
                    <div class="position-sticky top-0">
                        <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/776tURgMoV4" data-bs-target="#VideoModal">
                            <img class="w-100" src="https://i.ytimg.com/vi_webp/776tURgMoV4/maxresdefault.webp" alt="PHP Training in Mohali">
                            <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/776tURgMoV4" data-bs-target="#VideoModal"></span>
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


                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="PHP Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="PHP Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="PHP Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="PHP Training in Mohali">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>
        </div>

    </section>

    <section class="py-4 bg-07294d">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-6 text-justify">

                    <h3><strong class="text-warning">Benefits of PHP Training in Mohali</strong></h3>
                    <ul class="welcomeLinks text-white">
                        <li>PHP scripting language is very simple, understandable, and easily readable to anyone and has better performance as compared to other programming languages.</li>
                        <li>To the greater extent, PHP support the different kinds of databases such as MySQL, Oracle, Sybase, SQLite etc., as well as different kind of servers such as Apache, iPlanet, Netscape etc.</li>
                        <li>PHP has a high ability to create dynamic, responsive and secure web applications such as Facebook and Twitter due to the most popular and acceptable programming language.</li>
                        <li>As PHP is an open source, so anyone from all across the world can use it free of cost and can also be modified and distributed easily.</li>
                        <li>As it’s an open source technology, PHP does not use a lot of systems by which the PHP hosting becomes very easy.</li>
                    </ul>

                </div>

                <div class="col-lg-6 text-justify">

                    <div class="py-3 px-4 bg-warning">
                        <h3 class="text-dark text-center"><strong>Book My Free Demo Class Now!</strong></h3>
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
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn text-white bg-dark px-3 h4" Text="Book Now" />

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
                <h3 class="bg-0f54bb p-3 text-center text-white"><strong>PHP Industrial Training - Course Contents</strong></h3>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">HTML</strong>

                    <ul class="welcomeLinks">
                        <li>Introduction to HTML </li>
                        <li>Html Basic Tag </li>
                        <li>HTML Image </li>
                        <li>Hyperlink </li>
                        <li>HTML List </li>
                        <li>HTML Table </li>
                        <li>HTML Div </li>
                        <li>HTML Frame </li>
                        <li>HTML Forms </li>
                        <li>HTML Font </li>
                        <li>Marquee Tag and Various Other Tags and Features </li>

                    </ul>

                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">
                    <strong class="textred">HTML5</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction to HTML5 </li>
                        <li>HTML5 Doc Type </li>
                        <li>New Structure Tags </li>
                        <li>Section </li>
                        <li>Nav </li>
                        <li>Article  </li>
                        <li>Aside    </li>
                        <li>Header </li>
                        <li>Footer </li>
                        <li>New Media Tags </li>
                        <li>Audio and Video tags </li>
                    </ul>


                </div>
                <div class="col-lg-3 col-md-4 mt-3 text-justify">
                    <strong class="textred">CSS </strong>
                    <ul class="welcomeLinks">
                        <li>Introduction to CSS  </li>
                        <li>CSS Background    </li>
                        <li>CSS Margin </li>
                        <li>CSS Padding </li>
                        <li>CSS Border </li>
                        <li>CSS Float </li>
                        <li>CSS Links </li>
                        <li>CSS Text   </li>
                        <li>CSS Outline  </li>

                    </ul>


                </div>

                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">CSS3</strong>

                    <ul class="welcomeLinks">
                        <li>Introduction to CSS 3 </li>
                        <li>Basic CSS3 Selectors </li>
                        <li>Advanced CSS3 Selectors </li>
                        <li>New CSS3 Properties  </li>
                        <li>CSS Rounded Corners  </li>
                        <li>Box Shadow  </li>
                        <li>Text Shadow Property </li>
                        <li>Text Stroke Property   </li>
                        <li>CSS Gradients    </li>
                        <li>Opacity </li>

                    </ul>

                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">

                    <strong class="textred">JavaScript</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction to JavaScript </li>
                        <li>Introducing variables  objects </li>
                        <li>Introduction to Event Handlers </li>
                        <li>Document Object,  </li>
                        <li>Images, Links, Forms </li>
                        <li>Form Validations </li>
                        <li>Slider Effects </li>
                        <li>JavaScript Transition Effects </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 mt-3 text-justify">

                    <strong class="textred">jQuery</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction and Installation </li>
                        <li>Syntax </li>
                        <li>jQuery Selectors </li>
                        <li>jQuery Events </li>
                        <li>jQuery Effects </li>
                        <li>jQuery Animation </li>


                    </ul>

                </div>

                <div class="col-lg-5 col-md-4 mt-3 text-justify">

                    <strong class="textred">Core PHP</strong>
                    <ul class="welcomeLinks">
                        <li>PHP Introduction </li>
                        <li>PHP Basic </li>
                        <li>How to Install PHP </li>
                        <li>Basic Syntax of PHP </li>
                        <li>PHP Variables &amp; Data Type </li>
                        <li>Date Time Function </li>
                        <li>Regular Expressions </li>
                        <li>PHP Operators </li>
                        <li>PHP Arrays </li>
                        <li>String Handing in PHP </li>
                        <li>Session And Cookie </li>
                        <li>PHP Function </li>
                        <li>PHP Forms </li>
                        <li>File Handing </li>
                        <li>PHP $Get Method </li>
                        <li>PHP $ Post Method </li>
                        <li>Server Method </li>
                        <li>Request Method </li>
                        <li>File Upload </li>
                        <li>Form Action </li>
                        <li>Form Based Query </li>
                        <li>Form Validation </li>

                    </ul>

                </div>

                <div class="col-lg-4 col-md-4 mt-3 text-justify">

                    <strong class="textred">MYSQL</strong>
                    <ul class="welcomeLinks">
                        <li>Introduction to MYSQL </li>
                        <li>Creating MYSQL Connection </li>
                        <li>Creating Database &amp; Tables </li>
                        <li>MYSQL Queries </li>
                        <li>Data types in SQL </li>
                        <li>MYSQL select </li>
                        <li>Maintain data in a table by using: INSERT, UPDATE statement, DELETE statement </li>
                        <li>Use Where </li>
                        <li>Use wild cards </li>
                        <li>Use the IS NULL and IS NOT NULL keywords </li>
                        <li>Use the ORDER BY clause </li>
                        <li>Use the DISTINCT keyword </li>
                        <li>Use aggregate functions in queries </li>
                        <li>Viewing database </li>
                        <li>Deleting database </li>
                        <li>Renaming database </li>
                        <li>Insert rows into tables  </li>
                        <li>Delete tables </li>
                        <li>Altering tables </li>
                        <li>Backup of database etc </li>

                    </ul>

                </div>

                <div class="col-lg-3 col-md-4 mt-3 text-justify">

                    <strong class="textred">Advance PHP</strong>
                    <ul class="welcomeLinks">
                        <li>Object oriented Programming with PHP </li>
                        <li>Class and Object </li>
                        <li>Public, Private, Protected Modifiers </li>
                        <li>Constructors and Destructors </li>
                        <li>Patterns </li>
                        <li>Magic Methods </li>
                        <li>Inheritance and Interfaces </li>
                        <li>Polymorfism </li>

                    </ul>
                    <div class="mt-4">
                        <strong class="textred">WordPress</strong>
                        <ul class="welcomeLinks">
                            <li>Installing WordPress </li>
                            <li>Admin / Dashboard panel basics </li>
                            <li>Installing your theme </li>
                            <li>Edit general settings </li>
                            <li>Using Categories and Tags  </li>
                            <li>Customizing your Dashboard Using Widgets </li>
                            <li>Converting HTML Theme Into WordPress Theme  </li>
                            <li>Creating Customized WordPress Plugins </li>

                        </ul>
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="PHP Training in Mohali" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="PHP Training in Mohali" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="PHP Training in Mohali" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="PHP Training in Mohali" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="PHP Training in Mohali" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="PHP Training in Mohali" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="PHP Training in Mohali" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="PHP Training in Mohali" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="PHP Training in Mohali" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="PHP Training in Mohali" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="PHP Training in Mohali" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="PHP Training in Mohali" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="PHP Training in Mohali" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="PHP Training in Mohali" data-image="images/thinknext-got-award-mohali.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="PHP Training in Mohali" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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

   <section class="py-5">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>

            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                    <li>Industrial Training/Internship from 6 times National Award Winner Company:
                        <ol type="1">
                            <li>Iconic Business Summit Award 2021 Winner for "Most Trusted Digital Marketing and Industrial Training Company of the Year" </li>
                            <li>Nation's Business Pride Award 2021 Winner for the Best Digital Marketing and Industrial training Company </li>
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

    <section class="py-5 px-2 bg-dark">
    <div class="container">
        <p class="h3 text-warning text-center"><strong>Student Testimonials</strong></p>
        <div class="row m-0">

               <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/UP-DVqCHrRY" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/UP-DVqCHrRY/maxresdefault.webp" alt="PHP Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/UP-DVqCHrRY" data-bs-target="#VideoModal"></span>
                </div>
            </div>

              <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/STNjTEzAuMA" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/STNjTEzAuMA/maxresdefault.webp" alt="PHP Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/STNjTEzAuMA" data-bs-target="#VideoModal"></span>
                </div>
            </div>
        
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/muaR3mdyg3M" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/muaR3mdyg3M/maxresdefault.webp" alt="PHP Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/muaR3mdyg3M" data-bs-target="#VideoModal"></span>
                </div>
            </div>  
            
              <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/OBtD0MB-I3Y" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/OBtD0MB-I3Y/maxresdefault.webp" alt="PHP Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/OBtD0MB-I3Y" data-bs-target="#VideoModal"></span>
                </div>
            </div>  

              <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/KavQ6b4DEsk" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/KavQ6b4DEsk/maxresdefault.webp" alt="PHP Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/KavQ6b4DEsk" data-bs-target="#VideoModal"></span>
                </div>
            </div> 
            
             <div class="col-md-4 my-3">
                <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/SEiBF2w8m8M" data-bs-target="#VideoModal">
                    <img src="https://i.ytimg.com/vi_webp/SEiBF2w8m8M/maxresdefault.webp" alt="PHP Training in Mohali">
                    <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/SEiBF2w8m8M" data-bs-target="#VideoModal"></span>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="PHP Training in Mohali" title="PHP Training in Mohali" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>



    <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

   
    <!--/// End light-box modelBox -->
    <section class="py-3">
        <div class="container">
            <div class="col-lg-12">
                <h5>Top Search</h5>
                <a href="php-training.aspx">PHP Training</a>, <a href="learn-php.aspx">learn php</a>, <a href="php-learning-in-chandigarh.aspx">php learning</a>, <a href="php-classes.aspx">PHP class</a>, <a href="php-industrial-training.aspx">php industrial training</a>, 
                <a href="how-to-learn-php.aspx">how to learn php</a>, <a href="php-training-institute.aspx">php training institute</a>, <a href="php-course-syllabus.aspx">php course syllabus</a>, <a href="php-tutorial.aspx">php tutorial</a>,  
                <a href="php-programming-course.aspx">php programming course</a>, <a href="php-training-in-chandigarh.aspx">php training chandigarh</a>, <a href="php-internship-in-chandigarh.aspx">php internship</a>, <a href="php-training-course.aspx">php training course</a>, <a href="php-training-company-in-chandigarh.aspx">php training company in chandigarh</a>, <a href="http://thinkenglish.in" target="_blank">Best IELTS Coaching Institute in Chandigarh Mohali</a>, 
                <a href="php-industrial-training-in-chandigarh.aspx">php industrial training in chandigarh</a>, <a href="php-institute-in-mohali.aspx">php institute in mohali</a>, <a href="php-course-in-panchkula.aspx">php course in panchkula</a>, <a href="php-classes-in-chandigarh.aspx">php classes in chandigarh</a>,  <a href="top-10-companies-providing-php-training-in-chandigarh.aspx">Top 10 Companies Providing PHP Training  in Chandigarh</a>, <a href="top-5-php-training-institutes-chandigarh-mohali.aspx">Top 5 PHP Training Institute in Chandigarh Mohali</a>,  <a href="php-training-in-mohali.aspx">php training in mohali</a>, 
               <a href="php-cms-course-in-chandigarh.aspx">php cms course in chandigarh</a>
                <br />
                <br />
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
