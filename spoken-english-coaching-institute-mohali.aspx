<%@ Page Title="English Speaking Course in Mohali - ThinkNEXT" Language="VB" MasterPageFile="~/MasterEnglish.master" AutoEventWireup="false" CodeFile="spoken-english-coaching-institute-mohali.aspx.vb" Inherits="spoken_english_coaching_mohali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta name="description" content="English Speaking Course in Mohali - ThinkNEXT provides quality English teaching through experienced and highly qualified teaching faculty." />
<meta name="keywords" content="English Speaking Course in Mohali, spoken english classes in mohali, Spoken English Coaching Institutes in Mohali, english speaking institute in mohali"  />
    <!-- Facebook sharing image show  -->
    <link rel="image_src" href="https://www.thinknexttraining.com/images/spoken-english-institute-thumb-min.jpg" />
    <meta property="og:image" content="https://www.thinknexttraining.com/images/spoken-english-institute-thumb-min.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
    <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->

    <!--  End// Google+ -->


   <script type="application/ld+json">
{
"@context": "https://schema.org/", 
"@type": "Product", 
"name": "ThinkNEXT Technologies",
"image": "https://www.thinknexttraining.com/images/spoken-english-institute-thumb-min.jpg",
"description": "English Speaking Course in Mohali - ThinkNEXT provides quality English teaching through experienced and highly qualified teaching faculty.",
"mpn": "no",
"sku": "ThinkNEXT",
"offers": {
"@type": "Offer",
"url": "https://www.thinknexttraining.com/spoken-english-coaching-institute-mohali.aspx",
"priceCurrency": "INR",
"price": "10000",
"priceValidUntil": "2050-12-30",
"availability": "https://schema.org/OnlineOnly"
},
"brand": {
"@type": "Brand",
"name": "ThinkNEXT Technologies"
},  
"aggregateRating": {
"@type": "AggregateRating",
"ratingValue": "5",
"ratingCount": "255690"
},
"review": {
"@type": "Review",
"name": "Munnish Mittal",
"reviewBody": "English Speaking Course in Mohali - ThinkNEXT",
"reviewRating": {
"@type": "Rating",
"ratingValue": "5"
},
"datePublished": "2022-02-01",
"author": {"@type": "Person", "name": "Munish Mittal"}
}
}
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Hero Section end -->
    <section class="hero-section ">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hs-text">
                        <h1 class="display-4 font-weight-bold text-white mb-4">English Speaking Course in Mohali</h1>

                        <a href="#" class="site-btn sb-dark">Apply Now</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="hero-form">
                        <h3 class="text-white text-center">Arrange a Call Back</h3>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtName" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

                        <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                        <asp:TextBox ID="txtEmailId" runat="server" placeholder="E-mail ID"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="site-btn" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="english/img/hero-slider/1.jpg"></div>

        </div>
    </section>
    <!-- Hero Section end -->


    <section class="feature-section py-5">
        <div class="container">

            <div class="feature-item">
                <div class="row">

                    <div class="col-lg-6 order-lg-1">
                        <div class="feature-text1">
                            <h2 class="h2 mb-2"><strong>English Speaking Course in Mohali</strong></h2>
                            <p>
                                <strong class="text-danger"> Are you searching for the Best English Speaking in Mohali? </strong>
                                <br />
                                <strong class="text-danger">Are you looking for the best English Speaking Classes in Mohali?</strong>
                                <br />
                                <strong class="text-primary">If yes, then you are at the right place.</strong><br />
                            </p>
                            <p class="text-justify text-dark"><strong>ThinkNEXT Technologies Private  Limited</strong> is  recognized as one of the <strong>best spoken  English coaching institutes in Mohali.</strong> It provides quality English teaching through experienced and highly qualified teaching faculty.</p>
                            <p class="text-justify text-dark"><strong>ThinkNEXT</strong> Provides the right tools &amp; literature to make English interesting emphasizes building skills slowly and  steadily. We make sure that the training is useful to succeed in the real world, not in exams or interviews. </p>
                            <p class="text-justify text-dark">With increment in the awareness of English in career development and improving the job prospects, many people today are approaching <strong>English coaching institutes</strong>. <strong>ThinkNEXT</strong> is the leading organization provides <strong>English Speaking Course in Mohali </strong>with the aim of quality education.</p>

                            <a href="#" class="readmore">Apply Now
                                <img src="english/img/arrow.png" alt="English Speaking Course in Mohali" /></a>
                        </div>
                    </div>

                    <div class="col-lg-6 order-lg-2 mt-3">
                        <img src="images/english-speaking-institute-mohali-min.jpg" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
                    </div>
                    <div class="col-lg-12 order-lg-3 mt-3">
                        <p class="text-justify text-dark">Throughout our <strong>English Speaking Course in Mohali</strong>, students will be imparted theoretical and practical sessions for better learning. Three Levels in <strong> Spoken English Classes in Mohali</strong> are:</p>
                        <div class="row">
                            <div class="col-md-4">
                                <ul class="help-list pt-2">
                                    <li class="text-dark">Beginner Level</li>
                                </ul>
                            </div>
                            <div class="col-md-4">
                                <ul class="help-list pt-2">
                                    <li class="text-dark">Intermediate Level</li>
                                </ul>
                            </div>
                            <div class="col-md-4">
                                <ul class="help-list pt-2">
                                    <li class="text-dark">Advanced Level</li>
                                </ul>
                            </div>
                        </div>
                        
                        <p class="text-justify text-dark mt-4">So, almost every person who is into business or any other profession is expected to have fluent English. The popularity of the spoken English courses has increased to a great extent in recent times as it has become a prime medium for communication. Starting from the hospitality industry, business sectors to international conferences, English is the only language that is accepted.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="p-3 bg-light">
        <p class="h4 text-center text-dark"><strong>6 Times National Award Winner</strong></p>
        <div class="row m-0">
            <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
            </div>

            <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                <img src="images/national-icon-award-suniel-shetty-min.webp" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
            </div>

            <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
            </div>

            <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
            </div>

            <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                <img src="images/business-leaders-award-surendra-pal-min.webp" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
            </div>

            <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                <img src="images/Nations-Pride-Award-faggan-min.webp" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" />
            </div>

        </div>
    </section>

    <section class="p-3 bg-light">
        <div class="container">
               <h3 class="h3"><strong>Learn Spoken English Classes in Mohali</strong></h3>
            <div class="row align-items-center">
                <div class="col-md-6">
                 
                    <p class="text-justify">ThinkNEXT Offers <strong>Spoken English Course</strong> that is  designed to develop a student&rsquo;s ability to Write and communicate effectively. Special  attention is given to job seekers in all spoken English courses by conducting  scenario-based training to assist them in recruitment, which results in a significant improvement in confidence while facing an interview. Further, these skills can be used within the challenging corporate environment.</p>
                    <p class="text-justify">We encourage Students to Speak only in English regardless of their background; this removes  any fear such as inferior complexity that students might have and helps in developing their confidence from day one. Our streamlined process to teach  Spoken English has helped thousands of students to practice and learn at the  same time. This practical approach was appreciated by many students and we were  rated as one of the <strong>best spoken English institutes  in Mohali.</strong></p>
                </div>
                <div class="col-md-6">
                    <img class="border" src="images/spoken-english-institute-thumb-min.jpg" alt="English Speaking Course in Mohali" />
                </div>
            </div>
        </div>
    </section>

    <!-- Score Section end -->
    <section class="score-section text-white set-bg" data-setbg="english/img/score-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8 text-center">
                    <h4>After joining ThinkNEXT, you will not only READ, WRITE, LISTEN & SPEAK in English, but even THINK in English</h4>
                    <a href="#" class="site-btn sb-big">Apply Now</a>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </section>
    <!-- Score Section end -->
    <section class="feature-section py-5">
        <div class="container">

            <div class="feature-item">

                   <h3 class="h2 mb-2"><strong> Three levels in the English Speaking Course</strong></h3>
               
                <div class="feature-item pt-5">
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <div class="single-cat p-4 border">
                                <h4 class="text-dark h3 mb-2"><strong>Beginner Level</strong></h4>
                                <p class="text-dark text-justify">This Level is for those who want to take up Spoken English Classes right from the basics and aims at developing vocabulary, the formation of simple sentences, learning pronunciation, practicing and understanding sentences and words in English and using basic patterns.</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single-cat p-4 border">
                                <h4 class="text-dark h3 mb-2"><strong>Intermediate Level</strong></h4>
                                <p class="text-dark text-justify"> This level,  of course, aims at sharpens the skills of those who want to interact in a  flawless as well as confident manner. In this level of <strong>English Speaking Course in Mohali</strong> we have covered, grammar,  speaking training, vocabulary development, reading comprehension, audio, and video training.</p>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single-cat p-4 border">
                                <h4 class="text-dark h3 mb-2"><strong>Advanced Level</strong></h4>
                                <p class="text-dark text-justify"> Those who  have completed the previous levels in <strong>English Speaking in Mohali</strong> and want to further take up their English  skills to higher levels of competency can consider the Advanced level of programs.  In this level of grammar mastery, speaking exercise, vocabulary development, audio and video training is given in an advanced method.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- CTA Section end -->
    <section class="cta-section set-bg" data-setbg="english/img/cta-bg.jpg">
        <div class="container">
            <h2>Are you Ready for <strong>Spoken English Classes</strong></h2>
            <h5 class="text-dark">Improve your English skills with our English Speaking Course </h5>
            <a href="#" class="site-btn sb-dark sb-big">Apply Now</a>
        </div>
    </section>
    <!-- CTA Section end -->


    <!-- Feature Section -->
    <section class="feature-section py-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-7 col-lg-8">
                    <h4 class="f43f00 mb-2"><strong>Why ThinkNEXT for English Speaking Course in Mohali</strong></h4>
                    <div class="loans-text">
                        <ul>
                            <li>Free Demo Classes</li>
                            <li>Highly qualified trainers with a 11+ years of experience who will guide and train the students efficiently</li>                          
                            <li>Our Results speaks of us.</li>
                            <li>No fake promises, delivering quality education & facilitates the students with latest study material.</li>                          
                            <li>Proper Orientations for all the Modules.</li>
                            <li>ThinkNEXT will help you to book your exam and with your acknowledgement letter.</li>
                            <li>Small batches and Flexible timings</li>
                            <li>Additional vocabulary sessions, task related along with techniques.</li>
                            <li>Weekly mock test to consider the level of performance.</li>
                            <li>Special batches for working professionals</li>
                            <li>Professional Spoken English Classes in Mohali at an affordable cost</li>
                            <li>Cabin interviews to pull the level of performance.</li>
                            <li>An interactive doubt session is conducted separately for the students to clarify their doubts with the tutorsin which every candidate gets personalized attention from the experts.</li>
                            <li>ThinkNEXT will help you to book your exam and regarding acknowledgement letter.</li>
                            <li>ThinkNEXT is the Best Spoken English Institute in Mohali known for providing the highest standards of learning English communication skills in their own organized way. </li>
                        </ul>
                    </div>
                </div>
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="hero-form element-sticky">
                        <h4 class="text-white text-center"><strong>Register for Free Demo Class</strong></h4>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtdemoName" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed" ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                        <asp:TextBox ID="txtdemoMblno" runat="server" MaxLength="10" Placeholder="Mobile No."></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>


                        <asp:TextBox ID="txtdemoEmail" runat="server" class="input" placeholder="E-mail ID"></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server" ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        <asp:TextBox ID="txtdemoMsg" class="w-100" TextMode="multiline" Rows="3" runat="server" placeholder="Course Title / Description etc." />
                        <br />
                        <br />
                        <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass="site-btn" />



                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Feature Section end -->

     <section class="info-section py-5 set-bg" data-setbg="images/call-to-action-home-main.png">
         <div class="container">
             <h4 class="h3 text-white text-center mb-3"><strong>Who can take up English speaking classes in Mohali?</strong></h4>
             <div class="row">
                 <div class="col-12 col-md-7">
                     <ul class="welcomeLinks text-justify text-white">
                    <li>Strategies to crack IELTS Academic Test and IELTS General Test</li>
<li>Job Aspirants who aim to perform better in the Interview</li>
<li>  IT / Non-IT Professionals who find effective English communication as a challenge</li>
<li>  Working Professionals who are aiming career growth</li>
<li>  Parents who aim to improve their Communication</li>
<li>  Anyone who is interested to work abroad in English Speaking Countries</li></ul>

             
                 
                 </div>
                 <div class="col-12 col-md-5">
                      <img class="border" src="images/english-speaking-course-in-mohali-1.jpg" alt="English Speaking Course in Mohali" />
                 </div>
             </div>
            </div>
         </section>

    <section class="bg-light py-5 d-none">
        <div class="container">
            <div class="row ">
                <div class="col-md-8 mb-3">
                    <div class="faq col-md-12 mt-0 border">
                        <h4 class="text-left h3 mt-3"><strong>IELTS Coaching - FAQs</strong></h4>
                        <br />
                        <div itemscope itemtype='https://schema.org/FAQPage'>
                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 1. Why should I choose IELTS?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>The test examines how you&rsquo;ll use English to study, works and live in an English-speaking environment. You will also come to know which aspect of English language you need to improve and which one you are veteran at. At <strong>ThinkNEXT</strong>, you will be given vigorous <strong>IELTS training</strong> by expert tutors. Join <strong>IELTS coaching in Mohali</strong> to crack the exam with highest band</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 2. Which IELTS test should I take?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>It solely depends on your preferences. If you are looking forward to pursue a degree from a foreign university, you shall go for IELTS Academic test. The IELTS General Training test is for those who are going to English speaking countries for secondary education, work experience or training programs. At <strong>ThinkNEXT</strong>, both IELTS General Test and IELTS Academic Test courses are provided in highly efficient manner.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 3. Who owns IELTS?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p><strong>IELTS</strong> is jointly managed by British Council, IDP, IELTS Australia and Cambridge Assessment English.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 4. What payment modes are accepted at ThinkNEXT for IELTS Coaching?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>We accept all major kinds of payment modes like Cash, Paytm, Net Banking etc for IELTS Coaching in Mohali.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 5. Are IELTS training certifications provided at ThinkNEXT?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>After completing <strong>IELTS Training</strong>, you will receive a certification from <strong>ThinkNEXT</strong> which will help you in future. You can be recruited as IELTS trainer in the reputed organization, if you have a training certificate.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 6. What are the pass marks for IELTS exams?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>There are no pass marks in IELTS exams. You should aim for achieving target bands in reading, listening, speaking and writing.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 7. What is the sequence of IELTS modules in test?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>The candidate first begins with the Listening module, followed by Reading module and at the end Writing. Speaking test takes place on your chosen date and time. For speaking test, you can book a slot online on your desired date and time.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 8. Can a candidate request for re-evaluation?</h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>A student can apply for revaluation within 6 weeks of his test date. The process is chargeable and results will be announced between 2-22 days of application.</p>
                                    </div>
                                </div>
                            </div>

                            <div itemscope itemprop='mainEntity' itemtype='https://schema.org/Question'>
                                <p><h3 itemprop='name'> 9. I have more queries related IELTS Coaching Course? </h3></p>
                                <div itemscope itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'>
                                    <div itemprop='text'>
                                        <p>Please Contact our course advisor <a href="tel:+917837401000">78374-01000</a>.</p>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <div class="col-md-4"> 
                    <div class="element-sticky border p-3">              
                    <div class="row">
                        <div class="col-12"><h5 class="f43f00 mb-3 text-center"><strong>Other Related Courses</strong></h5></div>
                        <div class="col-12">
                             <div class="row align-items-center">
                                  <div class="col-4"><a href="ielts-coaching-institute-mohali.aspx"><img src="images/ielts-classes-near-me-min.jpg" alt="English Speaking Course in Mohali" title="English Speaking Course in Mohali" /></a></div>
                                  <div class="col-8"><h5><a href="ielts-coaching-institute-mohali.aspx"> IELTS Coaching Institute in Mohali</a></h5></div>
                                 </div>
                        </div>
                         <div class="col-12"><hr /></div>
                          <div class="col-12">
                             <div class="row align-items-center">
                                  <div class="col-4"><a href="ielts-coaching-institute-chandigarh.aspx"><img src="images/ielts-coaching-institute-in-chandigarh-thumb-min.jpg" alt="IELTS Coaching institute in Chandigarh" title="IELTS Coaching institute in Chandigarh" /></a></div>
                                  <div class="col-8"><h5><a href="ielts-coaching-institute-chandigarh.aspx">IELTS Coaching Institute in Chandigarh</a></h5></div>
                                 </div>
                        </div>
                           <div class="col-12"><hr /></div>
                          <div class="col-12">
                             <div class="row align-items-center">
                                  <div class="col-4"><a href="#"><img src="images/PTE-coaching-institute-chandigarh-thumb-min.jpg" alt="PTE Coaching institute in Chandigarh" title="PTE Coaching institute in Chandigarh" /></a></div>
                                  <div class="col-8"><h5><a href="#"> PTE Coaching Institute in Chandigarh</a></h5></div>
                                 </div>
                        </div>
                          <div class="col-12"><hr /></div>
                          <div class="col-12">
                             <div class="row align-items-center">
                                  <div class="col-4"><a href="ielts-coaching-institute-mohali.aspx"><img src="images/spoken-english-institute-thumb-min.jpg" alt="Spoken English Institute Mohali" title="Spoken English Institute Mohali" /></a></div>
                                  <div class="col-8"><h5><a href="spoken-english-coaching-institute-mohali.aspx">Spoken English Institute Mohali</a></h5></div>
                                 </div>
                        </div>
                    </div>
                        </div>   
                </div>
            </div>

        </div>
    </section>
</asp:Content>

