<%@ Page Title="Future Scope of Digital Marketing" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="future-scope-of-digital-marketing.aspx.vb" Inherits="future_scope_of_dgital_marketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
    <meta name="description" content="Future Scope of Digital Marketing - Digital marketing is a form of marketing for promoting and selling products or services on the Internet" />
<meta name="keywords" content="Future Scope of Digital Marketing" />
    <script>

        function Validate4() {
            var isValid = false;
            isValid = Page_ClientValidate('arrangecallbackGroup1');
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup2');
            }
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup3');
            }
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup4');
            }
            if (isValid) {
                isValid = Page_ClientValidate('arrangecallbackGroup5');
            }
            
            return isValid;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="main-image">  
   
     </div>
        
     <div class="main-image position-relative">
        
        <img src="images/future-scope-of-digital-marketing-min.jpg"  alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />

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
                        <asp:TextBox ID="PhonenoSyl" runat="server" class="form-control" Type="Number" MaxLength="10" placeholder="Mobile No."></asp:TextBox>
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
                            <h1>FUTURE SCOPE OF DIGITAL MARKETING</h1>
                        </div>
                        
                       <p>If you are a student and want to do a <a href="digital-marketing-course-training-in-chandigarh.aspx"><strong>Digital Marketing Course</strong></a>, but don't know the <strong>future scope of digital marketing</strong>. Then you don&rsquo;t have to worry anymore, this blog is for you and helps you to clarify your all doubts regarding <strong>Digital Marketing growth</strong>, <strong>jobs, future and a lot more</strong>.&nbsp; There are ample opportunities out there for you in the Digital Marketing industry.</p>
                        <p>With the increased internet usage and connectivity globally, there is immense potential for businesses to grow exponentially. The future scope of digital marketing is very bright. These days people are using the digital platform at a large scale to interact with each other and pursue other activities.</p>
<p>It means the range of audience is going to increase in the future which will be helpful for several businesses to target or find their right audience.</p>
<p>Digital marketing industry is highly growing in the entire world. It has mushrooming in the last few years to a greater extent.</p>
<p>This industry is dynamic in nature, every day some new update comes, which encourages every marketer to be aware of the changes happening in the market.</p>
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
                                    <asp:Button ID="btnsubmit" runat="server" EnableTheming="False" CssClass="btn bg-warning px-3 h4 w-100 fw-bold" Text="Register" OnClick="btnsubmit_Click" OnClientClick="return Validate()" />

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="py-4" style="background: #eaefff;">
        <div class="container">
            <div class="row m-0 p-2 align-items-center">

                <div class="col-lg-12 text-justify">
                    <div class="position-sticky top-0">

                        <h4 class="mb-3 h3 text-danger"><strong>Why Digital Marketing is Important for Businesses?</strong></h4>
                        <p>In today's digital world every business needs an online presence to be successful. Sometimes small businesses believe that they don't have the time or the money to be competitive online. Small businesses often rely on traditional forms of advertising to get their customers.</p>
                        <p>Many of them may prefer to take things slowly and to stick with one or two basic forms of advertising. There is never a guarantee that your business will attract customers just by existing. The importance of digital marketing has become something else in the last few years.</p>

                        <p>Here are the reasons <strong>"Why Digital Marketing is Important for Businesses"</strong> is given below;</p>

                        <ul class="welcomeLinks">
                            <li>Geographical expansion</li>
                            <li>Cost-Effective</li>
                            <li>Be Accessible to Your Customers</li>
                            <li>Get to Know Your Target Audience</li>
                        </ul>

                        <h3 class="h4">Geographical expansion</h3>
                        <p>With increasing competition in the digital marketing industry, every business needs to expand its geographical presence to get success. Digital marketing can help you to reach your potential audience.</p>
                        <p>Digital marketing can expand your business geographically and help you to attain new customers with improved service and lower marketing costs. The internet is becoming a more useful way for people to reach out to businesses and communicate with them.</p>
                        <p>Digital marketing allows businesses to reach out to new customers, connect better on social media, and offer more relevant content based on the interests of customers around the world.</p>

                        <h3 class="h4">Cost-Effective</h3>
                        <p>Marketing your business online may be the most cost-effective way to reach your target audience, particularly in today's fast-paced market. Digital marketing allows you to reach more people at a lower cost.</p>
                        <p>When you consider mobile device users spend an average of 35 minutes surfing the internet each day. A study is revealed that social media marketing saves businesses more than $15 billion dollars per year.</p>

                        <h3 class="h4">Be Accessible to Your Customers</h3>
                        <p>Being accessible to your customers and understanding their needs is important when it comes to digital marketing. Your website should meet their needs, wherever they are online.</p>
                        <p>It may sound like a small detail, but having someone who can provide assistance is valuable especially online where people are traveling, shopping, and more!</p>
                        <p>Additionally, you are increasing communication and building a good working relationship with your customer.</p>
                        <p>Being accessible online means being available to customers 24/7 through social media outlets like Facebook, Instagram, LinkedIn, Twitter and many more</p>

                        <h3 class="h4">Get to Know Your Target Audience</h3>
                        <p>The best way to grow your business is to know your target audience. What they do, what they need, and what motivates them. If you can know these things, you can market to them in the right way at the right time.</p>
                        <p>This is tougher than it seems. We all want to attract a certain group of customers. Your audience can be of any size, but you need to start with the people who already know you and trust you.</p>
                        <p>If there is one thing online marketing can do, it helps you find your audience. After all, people care about the businesses they find on Google, and other sites.</p>
                        <p>Using digital marketing to promote your business will help you to have a much better chance of business success.</p>
                        <p>An important takeaway from all this is that the <strong>future of careers in digital marketing</strong> is very promising and if you have an inclination towards digital marketing, now is the time to grab this opportunity to your advantage.</p>
                        <p>If you want to know "<strong>how you can become a digital marketer?"</strong> then stick till the end!</p>

                    </div>
                </div>


            </div>
        </div>
    </section>

    

    <section class="ptb-20 bg-light">
        <div class="container-fluid">
            <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" />
                </div>

            </div>
        </div>
    </section>

   <section class="py-4">
        <div class="container">
            <div class="p-4">
                <p>Now, let’s have a look at the scenario of <strong>careers in digital marketing.</strong></p>
                <h3 class="text-danger h3"><strong>Career in Digital Marketing:</strong></h3>
                <p>The simple and best way to start your<strong> career in digital marketing</strong> is to find a job. In digital marketing, we have many different specializations so you will have different options to start your digital marketing career. So it&rsquo;s safe to pick a <strong>career in digital marketing.</strong></p>
               <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Fresher & Intermediate Level Digital Marketing Job Titles</th>
                            <th>Experienced Level Digital Marketing Job Titles</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <ul class="welcomeLinks">
                                    <li>Digital Marketing Intern</li>
                                    <li>Digital Marketing Executive</li>
                                    <li>SEO Executive</li>
                                    <li>Link Building Specialist</li>
                                    <li>Social Media Specialist</li>
                                    <li>Google Ads Specialist</li>
                                    <li>Email Marketing Specialist</li>
                                    <li>Web Analyst</li>
                                    <li>Online Reputation Executive</li>
                                    <li>Content Marketing Executive</li>
                                </ul>
                            </td>
                            <td>
                                <ul class="welcomeLinks">
                                    <li>Digital Marketing Strategist</li>
                                    <li>Digital Marketing Manager</li>
                                    <li>Social Media Manager</li>
                                    <li>Content Marketing Expert</li>
                                    <li>Digital Marketing Head</li>
                                    <li>Paid Advertising Manager</li>
                                    <li>Digital Branding Head</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <p>Thus, you have many options to choose from according to your own interest here.</p>
<p>If you really wish to make a great career in this field, you will have to do exceptionally well at the subject and learn it from scratch in a very streamlined and practical approach.</p>
<p>Try to <strong>book your free demo class</strong> by contacting <strong>ThinkNEXT Technologies Pvt. Ltd.,</strong> to learn more.</p>

            </div>
        </div>
    </section>
    

    <section class="py-5" style="background: #eaefff;">
        <br>
        <div class="container">
            <div class="row">
             
                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Future Scope of Digital Marketing">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/WCpCT22tiig" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Future Scope of Digital Marketing">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/pL4gewo1OLM" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="Future Scope of Digital Marketing">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/HrI9DlsnT3s" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 position-relative p-3">
                    <div class="video-btn position-relative" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal">
                        <img class="w-100" src="images/top-15-reason-to-join-thinknext.jpg" alt="Future Scope of Digital Marketing">
                        <span class="play-btn" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/mgQy9ZCqc50" data-bs-target="#VideoModal"></span>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row m-0">
                <div class="col-lg-8 col-md-6 text-justify">
                    <h3 class="text-danger fw-bold">The Most In-Demand Digital Marketing Skills </h3>
                    <p>In terms of stats,&nbsp;93%of all interactions online begin by using an internet search engine.&nbsp;This indicates how vital it is to create SEO-friendly websites so you will get a high ranking on Google and different search engines.</p>
                    <p>In essence, placing your website at the top of the search results by organic means and using paid advertising is the most effective method of marketing for your company.&nbsp;</p>
                    <p>If you can master the skills of SEO and SEM, which improve your website's ranking on search engines, you will be able to easily get high-paying jobs since it's a necessity to be done at present.</p>
                    <p>In the same vein, below are some of the most demanding digital marketing skills are,</p>
                    <ul class="welcomeLinks">
                        <li>SEO</li>
                        <li>SMO</li>
                        <li>SMM</li>
                        <li>Content Marketing</li>
                        <li>Data Analytics</li>
                        <li>Paid Media</li>
                        <li>Copywriting</li>
                        <li>Pay-per-click</li>
                        <li>Business analytics</li>
                        <li>Graphic Designing</li>
                        <li>Inbound marketing</li>
                        <li>Video Production &amp; Marketing</li>
                        <li>Conversion rate optimization</li>
                        <li>Growth hacking, etc.</li>
                    </ul>
                    <p>Being a beginner it is not necessary to be able to master all the above digital marketing skills.&nbsp;A few of these skills will provide you with the necessary boost to get your career started in the field of digital marketing.</p>
                </div>

                <div class="col-lg-4 col-md-6 text-justify">

                    <div class="py-3 px-4 bg-black position-sticky top-0">
                        <h4 class="text-white text-center fs-24"><strong>Book My Free Demo Class Now!</strong></h4>
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
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-warning px-3 h4 w-100 fw-bold" Text="Book Now" />

                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section>


    <section class="py-4" style="background: #060e1e">
        <div class="container">
        <div class="row m-0 align-items-center">       
            <div class="col-12">
                <h4 class="h3 text-center mb-md-4" style="color: #fff5ab; "><strong>Scope of Digital Marketing in the Future </strong></h4>
            </div>
            <div class="col-md-6">                
                <div class="text-white text-justify">                    
                    <p>If we talk about the scope of this industry and making a lucrative career in the same, this is surely the time to enter into the same. Successful careers are viable even in the future.</p>
                    <p>We would see a lot of marketing spaces and new techniques being used for spreading brand awareness. Like big brands, small businesses are also going to use an omnichannel marketing strategy. This will help them to evaluate their customer preference precisely.</p>
                    <p>Having said that, the digital marketing industry is already displaying a steady growth in the number of jobs and demands in the overall marketplace.</p>                    
                </div>
            </div>

             <div class="col-md-6">
                 <img src="images/future-scope-of-digital-marketing.jpg" class="w-100" />
                 </div>

            <div class="col-12 text-white pt-md-3">
                <p>You can even say that the number of job openings in this field is truly one of the highest considering the online explosion.</p>
                    <p>Digital marketing is one such field that lets you choose your favorite career option as per your own choice and interest.</p></div>

        </div>
            </div>
    </section>


    


    <section class="pt-5 pb-3">
        <div class="container">
            <div class="row">

                  <div class="col-lg-12 text-justify">
                    <div class="mt-3">
                        <strong class="textred">How to start a profession in Digital Marketing in India</strong>
                        <p>If one plans to begin a career in digital marketing, it is convenient to do that. You can comply with the following steps to begin a lucrative career in digital marketing.</p>
                    </div>
                </div>
      <div class="col-lg-12 text-justify">
                    <div class="mt-3">
                        <strong class="textred">Register in a digital marketing course</strong>
                        <p>A little bit of technical knowledge and the capability to talk and calculate the aftermath of campaigns can help you get hold of the high-quality information in this arena. <strong>Online/Offline Digital Marketing courses</strong> are available. You can register yourself and start learning digital marketing.</p>
                    </div>
                </div>

                     <div class="col-lg-12 text-justify">
                    <div class="mt-3">
                        <strong class="textred">Get knowledge & Experience through Internships</strong>
                        <p>There is no substitution for an internship. It is really useful as it makes you research more about practically digital marketing.</p>
                        <p>Give effort to your portfolio &ndash; In a portfolio, a person desires to file all the work completed in digital marketing. The impressions, like, ranking, engagement rate, the whole thing counts.</p>
                    </div>
                </div>

                      <div class="col-lg-12 text-justify">
                    <div class="mt-3">
                        <strong class="textred">Creating a solid online presence</strong>
                        <p>One wants to form a personal brand as a marketer in digital marketing. Making a true resume to encash the scope of digital marketing in 2023. The resume is the most critical part of the experience of landing a dream digital advertising and marketing post. The resume must include all applicable experiences in the respective field.</p>
                    </div>
                </div>

               

                <div class="col-lg-12 text-justify">
                    <div class="mt-3">
                        <strong class="textred">Landing for the high-quality job</strong>
                        <p>With all the matters above-set, one can sincerely get a desirable salaried job in digital marketing.</p>
                    </div>
                </div>
            </div>


        </div>
    </section>


   <section class="pb-5">
        <div class="container">
            <h4 class="text-danger h3 mb-3 text-center"> <strong>How to get a Digital Marketing Job?</strong></h4>
            <div class="row">

                 <div class="col-md-4">
                    <img src="images/how-to-get-digital-marketing-jobs.jpeg"  alt="Future Scope of Digital marketing"/>
                </div>

                 <div class="col-md-4">
                    <img src="images/complete-your-graduation.jpeg"  alt="Future Scope of Digital marketing"/>
                </div>

                <div class="col-md-4">
                    <img src="images/earn-online-certification.jpeg"  alt="Future Scope of Digital marketing"/>
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
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-thumb.jpg" alt="Future Scope of Digital Marketing" data-image="images/it-sangathan-dm-award.jpeg" >
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-award-thumb.jpg" alt="Future Scope of Digital Marketing" data-image="images/tricity-it-thinknext-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/AajSamaj-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/AajSamaj.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/mohali-sithith-dm-award-thumbn.jpg" alt="Future Scope of Digital Marketing" data-image="images/mohali-sithith-dm-award.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DivyaHimachal20-03-2020-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/DivyaHimachal20-03-2020.png" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/tricity-it-thinknext-dm-yugmarg-thumb.jpg" alt="Future Scope of Digital Marketing" data-image="images/tricity-it-thinknext-dm-yugmarg.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikSavera20-03-2010Chandigarh-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/DainikSavera20-03-2010Chandigarh.jpg" />
                                </div>
                            </div>



                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/DainikBhaskar19-03-2020-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/DainikBhaskar.jpg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-honor-thumb.jpg" alt="Future Scope of Digital Marketing" data-image="images/thinknext-got-award-honor-thumb.jpeg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HimachalDastak-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/HimachalDastak.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Himprabha-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/Himprabha.png" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/it-sangathan-dm-award-chd-thumb.jpg" alt="Future Scope of Digital Marketing" data-image="images/it-sangathan-dm-award-chd.jpeg" />
                                </div>
                            </div>


                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/HT-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/HT.jpg" />
                                </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                 <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/thinknext-got-award-mohali-thumb.jpg" alt="Future Scope of Digital Marketing" data-image="images/thinknext-got-award-mohali.jpeg" />
                               </div>
                            </div>

                            <div class="col-sm-4 col-md-4 col-xs-12 p-2 thumb">
                                <div class="popmedia" title=" ">
                                    <img class="img-thumbnail" src="images/Punjab-Express-19-03-2020-Page-4-1.jpg" alt="Future Scope of Digital Marketing" data-image="images/Punjab-Express-19-03-2020-Page-4.jpg" />
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
                   
<li>Digital Marketing Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Digital Marketing Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during Digital Marketing Training so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Digital Marketing Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
<li>Authorized Pearson Testing Center for International Exams/Certifications.</li>
<li>Opportunity to get International Certifications from Microsoft, SAP, Apple, Adobe, Autodesk, EC-Council, IC3, W3, Unity, QuickBooks etc.</li>
<li>ThinkNEXT has its own LMS, Certificate Portal, Job Portal and Mobile App for better communication, access to study material and community support</li>
<li>Free online courses for class-room/offline students undergoing Digital Marketing Training</li>
<li>Get Digital Marketing Training in 3 modes: (1. Classroom training/Offline training   2. Instructor-led online Live training          3. Self-Paced Online Courses</li>
<li>Lifetime membership to ThinkNEXT VIP Facebook Group for Placements and VIP Telegram Group for Community Support</li>
<li>Guaranteed Job Interviews and 100% Placement Assistance</li>
<li>Online Certificate Verification Facility through QR Code. ThinkNEXT Certificates are globally accepted and recognized.</li>
<li>Training on Live-Projects </li>
<li>Tally Authorized Training Partner Company with access to Tally Student Login, Tally original licensed software, Tally original Study Material, and Tally Job Portal</li>
<li>Authorized Training Partner for Various Government Skill Development Projects under NIELIT, NSDC, DoIT Punjab, PMKVY etc.</li>
<li>Affiliated to Indian Testing Board & ISTQB (International Software Testing Qualifications Board)</li>
<li>Digital Marketing Training from 10+ Years old company</li>
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
                            <div class="popmedia" title="Iconic Business Summit & Awards 2021">
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded" data-image="images/iconic-business-summit-awards-jaya-prada-gallery.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor ">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/asia-quality-entreprenuership-award.webp" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty ">
                                <img src="images/award-image11.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded" data-image="images/award-image11.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/summer-training-in-chandigarh-mohali-2.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie">
                                <img src="/php-images/php-industrial-training.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="/php-images/php-industrial-training.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/best-industrial-training-company-chandigarh1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="Nation's Business Pride Award 2021">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/Nations-Business-Pride-Award-faggan-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-1.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/awards-1.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Taking Award for best Industrial Training Company">
                                <img src="images/awards-2.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/awards-2.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award during Leadership Summit 2019">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/Leadership-Summit-2019-Award.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/6-month-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-mohali-chandigarh.jpg"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/6-weeks-industrial-training-company-chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT gets Award for Excellence in Industrial Training">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/six-months-industrial-training-company-chandigarh.jpeg"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/ThinkNEXT-Frontdesk.webp" />
                            </div>
                        </div>

                    </div>
                </div>

             

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/galleryjob-fair7.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/galleryjob-fair7.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT taking Award">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/Top-Company-Industrial-Training-Chandigarh.webp"  />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/page-5_img-4-b.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/page-5_img-4-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/THINKNEXT-b.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/THINKNEXT-b.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/industial-training-in-chandigarh-group.webp"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/industrial-training-in-chandigarh-award-image-min.jpg" />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/tally-course-in-chandigarh-mohali-min.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <div class="popmedia" title="ThinkNEXT Technologies">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Future Scope of Digital Marketing" title="Future Scope of Digital Marketing" class="img-responsive img-rounded"  data-image="images/softwere-testing-training-in-chadigarh.jpg"  />
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>

    

 

    <section class="py-5">
        <div class="container">
            <div class="faq">
                <h4 class="h3 fw-bold mb-4 text-danger">FAQ’S</h4>
                <div>
                    <h4 class="fw-bold">Q1. What is the future of digital marketing jobs in India? </h4>
                    <p><strong>Ans.</strong> The growth of digital marketing has been super impressive, simply put, the future of digital marketing jobs looks secure and bright. Start learning digital marketing skills and pave a career in digital marketing. You can enroll in the Digital Marketing course from <strong><em>ThinkNEXT</em></strong> where you will learn <strong><em>digital marketing</em></strong> from basic to advanced level with practical knowledge from experts.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q2. Is Digital Marketing a promising career in India? </h4>
                    <p><strong>Ans.</strong> A study says that people of India spend around 4-5 hours each day on the Internet. All the statistics and numbers indicate that a digital marketing career is safe and rewarding.</p>
                    <p>The recruiting trends of several companies show growing requirements in recruiting professionals in the digital marketing industry with skill sets. </p>
                </div>

                <div>
                    <h4 class="fw-bold">Q3. What Is The Right Age to Start Digital Marketing?</h4>
                    <p><strong>Ans.</strong> There is no age limit to learn anything. You can learn and start digital marketing at any age. The main thing that is essential to start digital marketing is <strong>Interest.</strong> Build your interest and start learning digital marketing.</p>
                    <p>Well, if you are someone who is looking to enroll in a digital marketing institute for pursuing a digital marketing course then the minimum age criteria for that is <strong>at least 18 years of age.</strong></p>
                </div>

                <div>
                    <h4 class="fw-bold">Q4. Can I Get a Job Outside India in Digital Marketing?</h4>
                    <p><strong>Ans.</strong> Yes, you can easily get a job outside of the India in the Digital Marketing field. What you have to do is learn and grow your digital marketing skills. There are plenty of Job opportunities all around the globe in the digital marketing industry.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q5. Digital Marketing Certificates Are Enough To Get A Job In Digital Marketing?</h4>
                    <p><strong>Ans.</strong> In order to succeed in this career or be a successful digital marketer, you must be a good digital practitioner, and if you are merely certified and not practicing digital marketing, then you will never have the opportunity to advance in career. </p>
                    <p>Digital Marketing Certifications are relevant but, this is a game of repetition. The more you practice it, the better you become.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q6. How much does a digital marketer earn in India?</h4>
                    <p><strong>Ans.</strong> If you are a fresher in the Digital Marketing industry the salary up to Rs 4 lakhs per annum in India. A well-experienced digital marketer can earn up to Rs 15 lakhs per annum in Delhi, Mumbai, Kolkata, Chennai, Hyderabad, and the Bangalore area.</p>
                </div>

                <div>
                    <h4 class="fw-bold">Q7. Where can I learn Digital Marketing Skills?</h4>
                    <p><strong>Ans.</strong> There are so many digital marketing courses available for online and classroom training with certifications.</p>
                    <p>As per the recommendations of the industry experts, <strong>ThinkNEXT’s Certified Digital Marketing course</strong> is considered the best way to learn the <strong>digital marketing skills</strong> that the industry demands. With <strong>100+ modules, 25+ certifications and full placement support.</strong></p>
                </div>

                 <div>
                    <h4 class="fw-bold">Q8. How can I start a career in digital marketing in India?</h4>
                    <p><strong>Ans.</strong> Follow the given 10 steps to begin a career in digital marketing :</p>
                     <ul class="welcomeLinks">
                         <li>Learn the fundamental of digital marketing</li>
                         <li>Make a website of your own</li>
                         <li>Be an SEO specialist</li>
                         <li>Get a certification of Google ads</li>
                         <li>Gain knowledge in Facebook ads advertising</li>
                         <li>Be a specialist in google analytic</li>
                         <li>Do a job in digital marketing as a freelancer</li>
                         <li>Get a good internship</li>
                         <li>Learn all the digital marketing tools</li>
                         <li>Up-to date with latest trends in digital marketing</li>
                     </ul>
                </div>

                <div>
                    <h4 class="fw-bold">Q9. What are the career opportunities in Digital Marketing in India in 2023?</h4>
                    <p><strong>Ans.</strong> The career opportunities of digital marketing in India are :</p>
                    <ul class="welcomeLinks">
                        <li>Digital Marketing Manager</li>
                        <li>Social Media Manager</li>
                        <li>Brand Manager</li>
                        <li>Online Content Developer</li>
                        <li>Search Engine Optimization Expert</li>
                        <li>Business Analytics Specialist</li>
                        <li>Web Designer</li>
                        <li>Mobile Marketing Specialist</li>
                        <li>Professional Blogger</li>
                        <li>Email Marketer</li>
                    </ul>
                </div>

                 <div>
                    <h4 class="fw-bold">Q10. I have more queries related to the Digital Marketing Course?</h4>
                    <p><strong>Ans.</strong> Feel free to Contact us  <a href="tel:78374-01000">78374-01000.</a></p>
                    
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


