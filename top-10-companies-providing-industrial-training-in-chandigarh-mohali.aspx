<%@ Page Title="Top 10 Companies Providing Industrial Training in Chandigarh Mohali Panchkula" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="top-10-companies-providing-industrial-training-in-chandigarh-mohali.aspx.vb" Inherits="php_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <meta name="description" content="Best Industrial Training in Chandigarh Mohali Panchkula. ThinkNEXT is top Industrial training company that provides Industrial training in Chandigarh Mohali Panckhula - ThinkNEXT Technologies" />
<meta name="keywords" content="Top 10 Companies Providing Industrial Training in Chandigarh Mohali Panchkula, Best Industrial Training Company in Chandigarh, Industrial Training company in Mohali, Top 5 Companies Providing Industrial Training in Chandigarh" />
 <!-- Facebook sharing image show  -->    
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/thinknext-taking-awards-think.jpg"/>
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    
   <!--  End// Google+ -->
    <style>
        .form-group {
    margin-bottom: 1rem;
}
     
        .text-justify{
            text-align:justify;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image border">
        <img src="images/top-10-companies-providing-industrial-training-chandigarh-min.webp" alt="Top 10 Companies Providing industrial Training Chandigarh Mohali" />
    </div>
    
    <section class="py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-7 mb-3">
                    <div class="p-2 border">
                        <h1>Top 10 Companies Providing Industrial Training in Chandigarh Mohali</h1>
                        <div class="text-justify">
                            <p>There  are numerous companies and institutes that are providing <strong>industrial training in  Chandigarh, Mohali or Panchkula</strong> for B.Tech (CSE), B.Tech (IT), B.Tech (ECE),  B.Tech (ME), B.Tech (Civil Engineering), B.Tech (Electrical Engineering), MCA,  M.Sc (IT), BCA students and other job seekers.</p>
                            <p>These companies and institutes offer <strong>6 Months</strong>, <strong>3 Months</strong> and <strong>6 Weeks Industrial Training/internship</strong>. Various popular training programs include Java, PHP,  Android, .Net, Development, web designing, software Testing, Digital marketing,  Python, Bigdata Hadoop,  Embedded  Systems, Industrial Automation (PLC/SCADA), IoT (Internet of Things), AutoCAD,  Solidworks, Catia, CREO, Ansys, NX Unigraphics, CNC Programming, STAADPro, 3DS  Max, Primavera, Revit etc.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="py-3 px-4 bg-black">
                        <h3 class="text-white text-center">Arrange a Call Back</h3>
                        <div class="mt-3">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>

                            <div class="form-group">
                                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="E-mail ID"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <%--<asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox> --%>
                            <div class="form-group text-center">
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn bg-warning px-3 h4" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="py-4 bg-dark">
        <div class="container">
            <div class="row flex-column-reverse flex-md-row">
                <div class="col-12 col-md-7 col-xl-8">
                    <h3 class="text-warning">List of Top 10 Companies Providing Industrial Training in Chandigarh Mohali</h3>
                    <p class="text-justify text-warning" style="line-height: 32px;">
                        <strong>1. <a class="text-white text-decoration-none" href="https://www.infosys.com/" target="_blank">Infosys Limited</a><br />
                            2. <a class="text-white text-decoration-none" href="https://www.wipro.com" target="_blank">Wipro Limited</a><br />
                            3. <a class="text-white text-decoration-none" href="https://www.techmahindra.com/" target="_blank">Tech Mahindra Limited</a><br />
                            4. <a class="text-white text-decoration-none" href="#">Reliance JioInfocomm Limited</a><br />
                            5. <a class="text-white text-decoration-none" href="#" target="_blank">Quark Media House Pvt. Ltd.</a><br />
                            6. <a class="text-white text-decoration-none" href="https://www.smartdatainc.com/" target="_blank">Smart Data Enterprises Pvt. Ltd.</a><br />
                            7. <a class="text-white text-decoration-none" href="http://www.thinknext.co.in/" target="_blank">ThinkNEXT Technologies Pvt. Ltd.</a><br />
                            8. <a class="text-white text-decoration-none" href="http://www.one97.com/" target="_blank">One97 communication Limited</a><br />
                            9. <a class="text-white text-decoration-none" href="http://www.virsasystems.com/" target="_blank">Virsa Systems Private Limited</a><br />
                            10. <a class="text-white text-decoration-none" href="#" target="_blank">Mobera Systems Pvt. Ltd.</a><br />
                        </strong>
                    </p>
                </div>
                <div class="col-12 col-md-5 mb-3 col-xl-4">
                    <img class="border w-100" src="images/list-top-10-companies-industrial-training-chandigarh-min.jpg" alt="Top 10 Companies Providing Industrial Training in Chandigarh" title="List of Top 10 Companies Providing Industrial Training in Chandigarh Mohali" />
                </div>
            </div>
        </div>
    </section>

    <section style="background: #eaeaea;">
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



    <section class="py-4" style="background: #171425;">
        <div class="container">
            <h3 class="text-warning mb-1"><strong>Top 5 tips before enrolling into any industrial training program</strong></h3>
            <div class="row flex-column-reverse flex-md-row">
                <div class="col-12 col-md-7 col-xl-8">
                    <ul class="welcomeLinks text-white">
                        <li><strong>Always do your training from a registered company Private Limited/Limited</strong></li>
                        <li><strong>Try to do Industrial Training from a Company which gives you FREE Spoken English, Personality Development and Interview Preparation Classes  on daily basis so that it becomes easy to get placement and clear HR round.</strong></li>
                        <li><strong>Choose the training program wisely</strong></li>
                        <li><strong>Take the demo class or meet with the trainer</strong></li>
                        <li><strong>Never go for certificates only, Go for knowledge whatever the case may be there.</strong></li>
                    </ul>
                </div>
                <div class="col-12 col-md-5 mt-2 mb-3 col-xl-4">
                    <img class="border w-100" src="images/top-5-tips-enrolling-industrial-training-in-chandigarh-min.jpg" alt="Top 10 Companies Providing Industrial Training in Chandigarh" title="Top 5 tips before enrolling into any industrial training program" />
                </div>
            </div>
        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <h3 class=" textred mb-1"><strong>Why ThinkNEXT for Industrial Training in Chandigarh Mohali?</strong></h3>
            <div class="row">
                <div class="col-12">
                    <ul class="welcomeLinks">
                        <li>Industrial Training from National Award Winner 2018 Company. ThinkNEXT got National Icon Award from Bollywood Film Actor Sunil Shetty on 20-07-2018 at New Delhi for "Best Web Development and Industrial Training Company"</li>
                        <li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes on Daily basis so that students need not to struggle for jobs as a fresher.</li>
                        <li>Convenient Timings, Weekend Batches & doubt sessions.</li>
                        <li>Part-Time/Full-Time Job offer for each student during training</li>
                        <li>In case you miss a few classes we can provide you, backup Classes.</li>
                        <li>ThinkNEXT training certificates are globally accepted and recognized.</li>
                        <li>Industrial Training from Google/Microsoft/Facebook/Hubspot Certified Company.</li>
                        <li>100% Job Placement assistance.</li>
                        
                    </ul>
                </div>

            </div>
        </div>
    </section>

    <section class="d-none">
        <div class="col-12 col-md-5">

            <div class="right_box margin-top">
                <div class="without_border dwl">
                    <div class="brochiframe" id="brochiframe">

                        <iframe name="broucher"></iframe>

                        <img class="closebrochureiframe" alt="Close" src="images/close.png" onclick="clsifrm()" />

                    </div>

                    <a title="ThinkNEXT Brochure" href="BroucherDownload.aspx?data=Brochure" onclick="broucherdownload();" target="broucher">
                        <img src="images/download_brochure.png" alt="Best Industrial Training Company in Chandigarh" border="0" />
                    </a>

                </div>
            </div>

            <span class="abythknxt-hdng">Book My Free Demo Class Now! </span>

            <div class="rounded_box">
                <table class="table2" id="tb2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:TextBox ID="txtdemoName" runat="server" class="input" placeholder="Name"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:TextBox ID="txtdemoMblno" runat="server" class="input"
                                MaxLength="10" Placeholder="Mobile No."></asp:TextBox>

                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:TextBox ID="txtdemoEmail" runat="server" class="input" placeholder="E-mail ID"></asp:TextBox>
                            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="txtdemoMsg" class="input" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />

                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass="buton" />
                        </td>
                    </tr>
                </table>
            </div>
            <%--   <img class="img-responsive" src="images/java1.png" alt="pdf"  style="float:right;"/>--%>
            <br />
            <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

        </div>
    </section>

    <section id="profiles" class="page">

        <div class="container-fluid">
            <div class="row" id="profile-grid">


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="awards-img/award-image11.jpg" title="Industrial Training Chandigarh" alt="Industrial Training Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/awards-1.jpg" title="Industrial Training Company in chandigarh" alt="Industrial Training Company in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/awards-2.jpg" title="6 Months Industrial in chandigarh" alt="6 Months Industrial in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/Leadership-Summit-2019-Award.jpg" title="45 Days industrial training in chandigarh" alt="45 Days industrial training in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="awards-img/6-weeks-industrial-training-company-chandigarh.jpg" title="6 Weeks industrial training in chandigarh" alt="6 Weeks industrial training in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-industrial-training.jpg" title="Summer Training in Chandigarh" alt="Summer Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-course-in-chandigarh.jpg" title="Summer Training in Mohali" alt="Summer Training in Mohali" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/Php-Training-in-Chandigarh.jpg" title="Summer Internship in Chandigarh" alt="Summer Internship in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-training-in-panchkula.jpg" title="Summer Training in Chandigarh" alt="Summer Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/Php-training-in-mohali.jpg" title="Best Industrial training institute in chandigarh" alt="Best Industrial training institute in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-training-in-chandigarh-mohali-panchkula.jpg" title="6 Months Industrial training Company in chandigarh" alt="6 Months Industrial training Company in chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-course-in-panchkula.jpg" title="6 Weeks Industrial training Company in chandigarh" alt="6 Weeks Industrial training Company in Mohali" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-course-in-mohali.jpg" title="Best Company for Summer Training in Chandigarh" alt="Best Company for Summer Training in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-course.jpg" title="Best Company for Summer Training in Mohali" alt="Best Company for Summer Training in Mohali" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/advanced-php-training-in-chandigarh.jpg" title="Summer Training Company in Chandigarh" alt="Summer Training Company in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="php-images/php-training-course.jpg" title="Best Company for Summer Internship in Chandigarh" alt="Best Company for Summer Internship in Chandigarh" class="img-responsive img-rounded" data-toggle="modal" data-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>






            </div>
        </div>


    </section>

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


</asp:Content>
