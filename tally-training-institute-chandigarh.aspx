<%@ Page Title="Tally Training Institute in Chandigarh - ThinkNEXT" Language="VB"  MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="tally-training-institute-chandigarh.aspx.vb" Inherits="tally_training_institute_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   

<meta name="description" content="Tally Training Institute Chandigarh offered by ThinkNEXT Technologies Pvt. Ltd. combine theory and practical knowledge so that the students are enriched in the best way." />
   
       <!-- Facebook sharing image show  -->
    <link rel="image_src" href="http://www.thinknexttraining.com/images/tally-training-institute-chandigarh.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/tally-training-institute-chandigarh.jpg"/>
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    <style>
        .course-img img{
            width: 70px;
        }
    .course-img{
        list-style:none;
    }
    .course-img li{
        padding:6px;
    }
     .course-img ul{
        list-style:none;
    }
     .accordionopen .collapse {
    display: block !important;
    height: auto !important;
}
.panel-title{
    color:white !important;
}

        </style>

  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="main-image">  
             <img class="d-md-none"  src="images/tally-training-institute-chandigarh.jpg" alt="Tally Training Institute in Chandigarh" />
       <img src="images/tally-training-institute-chandigarh.jpg" alt="Tally Training Institute in Chandigarh"  />
           
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
                <div class="col-md-8">
                    <div class="p-2 border text-justify position-sticky top-0">
                       <div class="gdl-header-wrapper">
                      <h1>Best Tally Training Institute in Chandigarh</h1>
                    </div>
                     <p><strong><a class="text-decoration-none" href="https://www.thinknexttraining.com/">ThinkNEXT</a></strong> is the <strong>best Tally Training Institute in Chandigarh</strong> offering our scholars a training that covers a deep knowledge to meet the accounting necessities. <strong>ThinkNEXT</strong> is the <strong>best tally training institute in Chandigarh</strong> because we do not only teach you the concepts but also helps you to learn that how you can practically executes those concepts into your day to day accounting progression with practical examples. Our up-to-date method of teaching makes <strong>ThinkNEXT</strong> the <strong><a class="text-decoration-none" href="https://www.thinknexttraining.com/tally-erp-training-coaching-institute-in-chandigarh-mohali.aspx">Best Tally Training Institute in Chandigarh</a></strong>. <strong>ThinkNEXT</strong> is providing you a quality atmosphere for learning. Our goal is to help every student to live their dream by fulfills the requirements.</p>
                      <h2 class="h2 text-start fw-bold text-danger">Introduction to Tally</h2>
                     <p>The <strong>Tally</strong> stands for: <strong>Transactions Allowed in a Linear Line Yard</strong>. Tally is computer software which widely used by small, medium and large organizations to manage the accounts. But these days this software is in high demand for Payroll Billing, Sales, Accounting and Auditing Banking Inventory, Profit Analysis, Taxation such as VAT, TDS, TCS.</p>
                     <p>Tally Accounting is software that is used for accounting purpose. It is offered by <strong>Tally Solutions</strong> and is <strong>Customary Business Accounting Software</strong>. Tally ERP is extremely vigorous ERP product and is an absolute business management solution. Tally is distinct as record, count or a record of credit and debit or an account.</p>
                    </div>
                 </div>

                <div class="col-md-4">
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
    
    <section class="ptb-20 bg-light ">
        <div class="container-fluid">
             <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" />
                </div>

                 <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" />
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

    <section class="py-4 bg-ececec">
        <div class="container">
            <div class="row m-0 p-2">
                <div class="col-lg-8">
                    <div class="position-sticky top-0">
                        <div class="text-justify">

                        <h3 class="text-danger"><strong>Functions of Tally</strong></h3>
                        <p><strong>Tally is computer software with diversity in functions. It provides a variety of functions. Follow the functions of tally:</strong></p>                        
                        <ul class="welcomeLinks">
                           <li> Government Supported Formats.</li>
                           <li> Multilingual Operations.</li>
                           <li> Online functions.</li>
                           <li> And processing for all sort of small, medium and big businesses.</li>
                        </ul>                         
                        <p><strong>But the present version of Tally has many advanced features like:</strong></p>                   
                        <ul class="welcomeLinks">
                           <li> Better data migrating.</li>
                           <li> Payroll management.</li>
                           <li> TDS.</li>
                           <li> TCS.</li>
                           <li> Point of sale demands and job costing etc.</li>
                        </ul>
                            
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
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
    
    <section class="py-4">
        <div class="container text-justify">
            <div class="text-center bg-0f54bb py-2">
                <h3 class="text-white mb-0 content"><strong>Tally ERP9 Course Modules :-</strong> </h3>
            </div>
            <div class="row m-0 p-2">
                <div class="col-lg-6">
            <ul class="welcomeLinks">
                <li>Module 01: User Interface and Company Management</li>
                <li>Module 02: Masters - Ledgers</li>
                <li>Module 03: Masters - Groups</li>
                <li>Module 04: Masters - Billwise Debtors and Creditors Ledger</li>
                <li>Module 05: Payment Voucher</li>
                <li>Module 06: Day Book in Tally</li>
                <li>Module 07: Pre-Allocation of Bills</li>
                <li>Module 08: Receipt Voucher</li>
                <li>Module 09: Contra and Journal Voucher</li>
                <li>Module 10: Cheque Printing in Tally ERP</li>
                <li>Module 11: Masters : Inventory</li>
                <li>Module 12: Value Added Tax (VAT)</li>
                <li>Module 13: Purchase Voucher with VAT</li>
                <li>Module 14: Sales Voucher with VAT</li>
                <li>Module 15: VAT Reports and Payments</li>
                <li>Module 16: Billing Features in Tally</li>
                <li>Module 17: Purchase Order Processing</li>
                <li>Module 18: Sales Order Processing</li>
                <li>Module 19: Debit and Credit Notes</li>
                <li>Module 20: Bank Reconciliation in Tally</li>
                <li>Module 21: Price List in Tally</li>
                <li>Module 22: Credit Limit</li>
                <li>Module 23: Stock Transfers</li>
                <li>Module 24: Manufacturing Vouchers</li>
                <li>Module 25: Batch Wise Details</li>
                <li>Module 26: Re-Order Level in Tally</li>
                <li>Module 27: Interest Calculations (Auto Mode)</li>
                
            </ul>
                </div>

                <div class="col-lg-6">
                    <ul class="welcomeLinks">
                        <li>Module 28: Voucher Types and Class</li>
                        <li>Module 29: Point of Sales</li>
                        <li>Module 30: Scenarios and Optional Vouchers</li>
                        <li>Module 31: Budgets and Controls in Tally</li>
                        <li>Module 32: Cost Centres and Cost Categories</li>
                        <li>Module 33: Party Ledger Analysis</li>
                        <li>Module 34: Purchase and Sales Reporting</li>
                        <li>Module 35: Stock Analysis and Reports</li>
                        <li>Module 36: Cash and Bank Reports</li>
                        <li>Module 37: Search, Filter and Sorting</li>
                        <li>Module 38: Financial Reports</li>
                        <li>Module 39: Multi Language</li>
                        <li>Module 40: Export, Import, Backup and Restore</li>
                        <li>Module 41: Central Sales Tax (CST) in Tally</li>
                        <li>Module 42: Service Tax in Tally</li>
                        <li>Module 43: Tax Deducted at Source (TDS) in Tally</li>
                        <li>Module 44: Tax Collected at Source (TCS) in Tally</li>
                        <li>Module 45: Central Excise in Tally</li>
                        <li>Module 46: Payroll Accounting in Tally</li>
                        <li>Module 47: Finalization Entries</li>
                        <li>Module 48: Data Security</li>
                        <li>Module 49: Tally Audit</li>
                        <li>Module 50: Tally Dot Net Features</li>
                        <li>Module 51: Multi-Currency</li>
                        <li>Module 52: Printing Reports</li>
                        <li>Module 53: Miscellaneous</li>
                        <li>Module 54: Shortcut Keys</li>
                    </ul>
                </div>
            </div>
               
                         <h3 class="text-danger"><strong>Scope of Tally</strong></h3>
                         <p>Nowadays, Tally has a wide scope in globally, because Tally removes the burden of huge and heavy ledgers that were used to maintain the record of the company. Tally is trending software in the field of Accounting especially in India after the introduction of GST billing. It is being extensively used because of its easy access by its users. Therefore, Tally is quite in trend these days.</p>
                         <p>Whether it is a Private or Government Sector and whether it is a Small, Medium or Big Business Empire. Every company needs an Accounting professional. The job positions for Tally profession are as follow:</p>
                        <ul class="welcomeLinks">
                           <li> External Auditor.</li>
                           <li> Internal Auditor.</li>
                           <li> Chattered Accountant.</li>
                           <li> Compliance Executive.</li>
                           <li> Financial Analyst.</li>
                           <li> Staff Accountant.</li>
                        </ul>
                        <p>Tally is including everything Reporting, Taxation, Banking, Inventory, Payroll, Billing, Accounting and many more things. Is becomes the boon for the professionals to handle the huge responsibility with ease.</p>
                        
                      
                
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
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Tally Training Institute in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Industrial Training in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/mgQy9ZCqc50" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/top-15-reason-to-join-thinknext.jpg" alt="Tally Training Institute in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>
            </div>
            <div id="video-view-curtain" style="display: none;">
                <div id="video-view"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png"><div class="class-video"><iframe allowfullscreen="" src="https://www.youtube.com/embed/WCpCT22tiig"></iframe></div></div>
            </div>

            <h3 class="h4 fw-bold text-danger">Why learn Tally Training from ThinkNEXT?</h3>
                        <p>Due to the introduction of GST in India, the GST brings a huge change in the taxation system and provides relief to the text personal by figure out it only once rather than doing it at every single state. Though, it will need some hard work and expertise to evaluate the Goods and Service taxes. So, the syllabus which <strong>ThinkNEXT</strong> is teaching is up-to-date and the training criterion makes <strong><a class="text-decoration-none" href="https://www.thinknexttraining.com/">ThinkNEXT</a></strong> the <strong><a class="text-decoration-none" href="https://www.thinknexttraining.com/tally-erp-training-coaching-institute-in-chandigarh-mohali.aspx">Best TALLY Training Institute in Chandigarh</a></strong>.</p>
                        <p>Learning GST and Accounting Features in Tally Training course could be more advantageous for both individual and the company, which are described as below:</p>
                        <ul class="welcomeLinks">
                         <li>Tally training is beneficial for business owners who can calculate GST and other taxes without consulting a professional, hence saving them a huge sum of money.</li>
                         <li>Special Payscale and growth chance for valuable and qualified candidates with skills.</li>
                         <li>There are lots of job opportunities for Account Executive or an Accountant, especially consideration with GST, which is believed to enhance by a great scope in the future.</li>
                         <li>Tally training helps to provide increased efficiency in accounting and bookkeeping.</li>
                         <li>Easy GST setup and price configuration as per your company’s preference using Tally ERP9.</li>
                      </ul>

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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/AajSamaj.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="1" data-bs-toggle="modal" data-title="" data-image="images/mohali-sithith-dm-award.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/DivyaHimachal20-03-2020.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="8" data-bs-toggle="modal" data-title="" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="3" data-bs-toggle="modal" data-title="" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="2" data-bs-toggle="modal" data-title="" data-image="images/DainikBhaskar.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="4" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-honor-thumb.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="5" data-bs-toggle="modal" data-title="" data-image="images/HimachalDastak.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/Himprabha.png" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="6" data-bs-toggle="modal" data-title="" data-image="images/it-sangathan-dm-award-chd.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="7" data-bs-toggle="modal" data-title="" data-image="images/HT.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/thinknext-got-award-mohali.jpeg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="AngularJS Training in Chandigarh">
                                </a>
                            </div>




                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <a class="thumbnail" href="#" data-image-id="9" data-bs-toggle="modal" data-title="" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" data-bs-target="#image-gallery">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="AngularJS Training in Chandigarh">
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
            <div class="clear-both"></div>
            <br>
            <p class="hcntr"><span class="htitl"><a href="media.aspx" class="vgalry">View More</a></span></p>

        </div>

        <div class="clear-both"></div>

    </section>
      
    <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 30 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Industrial Training/Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                   
<li>Tally Training/Internship from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Tally Training/Internship from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Tally Training/Internship from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
<li>Tally Training/Internship from 10+ Years old company</li>
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
                                    <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                    <img src="images/asia-quality-entreprenuership-award.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                    <img src="images/award-image11.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                    <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                       <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                    <img src="/php-images/php-industrial-training.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                    <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                      <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                    <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                        <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                    <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">   
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-1.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                    <img src="images/awards-2.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                    <img src="images/Leadership-Summit-2019-Award.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                 
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                    <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                    <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/ThinkNEXT-Frontdesk.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                   <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Industrial Training Company in Chandigarh Mohali" title="6 Month Industrial Training Company in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/galleryjob-fair7.jpg" alt="Tally Training Institute in Chandigarh Mohali" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                    <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/page-5_img-4-b.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/THINKNEXT-b.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>


                    
                    <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industial-training-in-chandigarh-group.webp" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                     <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>
                    
                             <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>

                      <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Tally Training Institute in Chandigarh" title="Tally Training Institute in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
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
