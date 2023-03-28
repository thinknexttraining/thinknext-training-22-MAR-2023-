<%@ Page Title="Blogs - ThinkNEXT" Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="blog.aspx.vb" Inherits="blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <meta name="description" content="ThinkNEXT provides the list of top institutes in Chandigarh Mohali Panchkula" />
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
    <style>
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="main-image">  
    <img src="images/blogs-banner-min.jpg"  alt="Blogs" />
     </div>
        
   <section class="py-5 bg-light">
        <div class="container">
            <div class="row">
               <div class="col-sm-7 col-md-9">
                    <div class="row m-0">

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/how-to-become-full-stack-developer-min.jpg" alt="How to Become a Full Stack Developer" title="How to Become a Full Stack Developer">
                                </div>
                                <h4 class="fw-bold"><a href="how-to-become-a-full-stack-developer.aspx" class="text-decoration-none text-dark">How to Become a Full Stack Developer (Step-by-Step Guide)</a></h4>
                                <p>A plan and some hard work are all you need to start a new career.</p>
                                <p class="text-end"><a href="how-to-become-a-full-stack-developer.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/web-desiging-questions-and-answers-for-fresher.jpg" alt="Web Designer interview questions and answers for freshers" title="Web Designer interview questions and answers for freshers">
                                </div>
                                <h4 class="fw-bold"><a href="web-designer-interview-questions-and-answers.aspx" class="text-decoration-none text-dark">Web Designer Interview Questions and Answers for Freshers</a></h4>
                                <p>This article outlines some of the most common web design interview questions and answers.</p>
                                <p class="text-end"><a href="web-designer-interview-questions-and-answers.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-20-python-questions-and-answers.jpg" alt="Top 20 Python interview questions and answers for freshers" title="Top 20 Python interview questions and answers for freshers">
                                </div>
                                <h4 class="fw-bold"><a href="top-20-python-interview-questions-and-answers.aspx" class="text-decoration-none text-dark">Top 20 Python Interview Questions and Answers for Freshers </a></h4>
                                <p>Python has become one of the most popular programming languages in the world.</p>
                                <p class="text-end"><a href="top-20-python-interview-questions-and-answers.aspx">Read More</a></p>
                            </div>
                        </div>

                          <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/15-free-web-design-software-tools.jpg" alt="15 Free Web Design Software Tools to Make a Great Website" title="15 Free Web Design Software Tools to Make a Great Website">
                                </div>
                                <h4 class="fw-bold"><a href="15-free-web-design-software-tools.aspx" class="text-decoration-none text-dark">15 Free Web Design Software Tools to Make a Great Website </a></h4>
                                <p>As the world around us becomes more and more digitally equipped, having an online presence</p>
                                <p class="text-end"><a href="15-free-web-design-software-tools.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/15-data-science-interview-questions-answers-for-freshers.jpg" alt="15 Data Science Interview Questions and Answers for Fresher’s" title="15 Data Science Interview Questions and Answers for Fresher’s">
                                </div>
                                <h4 class="fw-bold"><a href="15-data-science-interview-questions-answers-for-freshers.aspx" class="text-decoration-none text-dark">15 Data Science Interview Questions and Answers for Fresher’s</a></h4>
                                <p>If so, you may be feeling overwhelmed by the amount of questions you need to prepare for</p>
                                <p class="text-end"><a href="15-data-science-interview-questions-answers-for-freshers.aspx">Read More</a></p>
                            </div>
                        </div>

                          <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-reasons-to-learn-javascript.jpg" alt="Top 10 Reasons to Learn JavaScript" title="Top 10 Reasons to Learn JavaScript">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-reasons-to-learn-javascript.aspx" class="text-decoration-none text-dark">Top 10 Reasons to Learn JavaScript</a></h4>
                                <p>JavaScript is a powerful programming language that has revolutionized the way we think about...</p>
                                <p class="text-end"><a href="top-10-reasons-to-learn-javascript.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/different-types-of-google-ads.jpg" alt="Different Types of Google Ads" title="Different Types of Google Ads">
                                </div>
                                <h4 class="fw-bold"><a href="different-types-of-google-ads.aspx" class="text-decoration-none text-dark">Different Types of Google Ads</a></h4>
                                <p>Google Ads are one of the best ways to reach potential customers online. With the</p>
                                <p class="text-end"><a href="different-types-of-google-ads.aspx">Read More</a></p>
                            </div>
                        </div>
                       
                             <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/11-beginner-tips-for-learning-python-programming.jpg" alt="11 Beginner Tips for Learning Python Programming" title="11 Beginner Tips for Learning Python Programming">
                                </div>
                                <h4 class="fw-bold"><a href="11-beginner-tips-for-learning-python-programming.aspx" class="text-decoration-none text-dark">11 Beginner Tips for Learning Python Programming</a></h4>
                                <p>Python is a popular and powerful <strong>programming language</strong> that is used by many </p>
                                <p class="text-end"><a href="11-beginner-tips-for-learning-python-programming.aspx">Read More</a></p>
                            </div>
                        </div>
                                              
                           <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-cool-facts-about-ai.jpg" alt="Top 10 Cool Facts about Artificial Intelligence" title="Top 10 Cool Facts about Artificial Intelligence">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-cool-facts-about-artificial-intelligence.aspx" class="text-decoration-none text-dark">Top 10 Cool Facts about Artificial Intelligence</a></h4>
                                <p>Artificial Intelligence (AI) is a rapidly growing field with a wide range of applications.</p>
                                <p class="text-end"><a href="top-10-cool-facts-about-artificial-intelligence.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/10-easy-tips-for-effective-content-writing.jpg" alt="10 Easy Tips for Effective Content Writing" title="10 Easy Tips for Effective Content Writing">
                                </div>
                                <h4 class="fw-bold"><a href="10-easy-tips-for-effective-content-writing.aspx" class="text-decoration-none text-dark">10 Easy Tips for Effective Content Writing</a></h4>
                                <p>Content writing is an art that requires creativity, research, and structure. </p>
                                <p class="text-end"><a href="10-easy-tips-for-effective-content-writing.aspx">Read More</a></p>
                            </div>
                        </div>

                          <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/10-most-effective-ways-to-boost-organic-social-media-reach.jpg" alt="10 Most Effective Ways to Boost Organic Social Media Reach" title="10 Most Effective Ways to Boost Organic Social Media Reach">
                                </div>
                                <h4 class="fw-bold"><a href="10-most-effective-ways-to-boost-organic-social-media-reach.aspx" class="text-decoration-none text-dark">10 Most Effective Ways to Boost Organic Social Media Reach</a></h4>
                                <p>Social media platforms are becoming a powerful marketing tool for businesses.</p>
                                <p class="text-end"><a href="10-most-effective-ways-to-boost-organic-social-media-reach.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-seo-secrets-grow-business.jpg" alt="Top 10 SEO Secrets Every Business Should Know" title="Top 10 SEO Secrets Every Business Should Know">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-seo-secrets-grow-business.aspx" class="text-decoration-none text-dark">Top 10 SEO Secrets Every Business Should Know</a></h4>
                                <p>If you're running online business, you know the importance of SEO. As search engine...</p>
                                <p class="text-end"><a href="top-10-seo-secrets-grow-business.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-secrets-of-digital-marketing-success.jpg" alt="Top 10 Secrets of Digital Marketing Success in 2023" title="Top 10 Secrets of Digital Marketing Success in 2023">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-secrets-of-digital-marketing-success.aspx" class="text-decoration-none text-dark">Top 10 Secrets of Digital Marketing Success in 2023</a></h4>
                                <p>The digital marketing landscape is constantly evolving and with the ever-changing...</p>
                                <p class="text-end"><a href="top-10-secrets-of-digital-marketing-success.aspx">Read More</a></p>
                            </div>
                        </div>

                          <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/Top-10-PHP-Training-Institutes-in-Chandigarh.jpg" alt="Top 10 PHP Training Institutes in Chandigarh" title="Top 10 PHP Training Institutes in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-php-training-institutes-chandigarh.aspx" class="text-decoration-none text-dark">Top 10 PHP Training Institutes in Chandigarh</a></h4>
                                <p>Chandigarh has a growing number of IT companies; thus, the demand for trained and certified professionals...</p>
                                <p class="text-end"><a href="top-10-php-training-institutes-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
						
						<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-web-desinging-training-institute-chandigarh-mohali.jpg" alt="Top 5 Web Designing Training Institutes in Chandigarh Mohali" title="Top 5 Web Designing Training Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-web-designing-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 Web Designing Training Institutes in Chandigarh Mohali</a></h4>
                                <p>Web designing is the fastest growing profession in the IT industry, anyone who is from an IT...</p>
                                <p class="text-end"><a href="top-5-web-designing-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>


                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/jobs-in-software-testing-min.jpg" alt="Software Testing Jobs in Chandigarh" title="Software Testing Jobs in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="software-testing-jobs-in-chandigarh.aspx" class="text-decoration-none text-dark">Software Testing Jobs in Chandigarh</a></h4>
                                <p>Every company wants to exploit the power of digital marketing and reach as many people as possible.</p>
                                <p class="text-end"><a href="software-testing-jobs-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-career-opartunities-digital-marketing-min.jpg" alt="Top 10 Upcoming Career Opportunities in Digital Marketing" title="Top 10 Upcoming Career Opportunities in Digital Marketing">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-Upcoming-Career-Opportunities-in-Digital-Marketing.aspx" class="text-decoration-none text-dark">Top 10 Upcoming Career Opportunities in Digital Marketing</a></h4>
                                <p>Every company wants to exploit the power of digital marketing and reach as many people as possible.</p>
                                <p class="text-end"><a href="top-10-Upcoming-Career-Opportunities-in-Digital-Marketing.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/best-seo-training-institute-chandigarh-min.jpg" alt="Best SEO Training Course Institute in Chandigarh Mohali" title="Best SEO Training Course Institute in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="seo-training-course-institute-chandigrah-mohali.aspx" class="text-decoration-none text-dark">Best SEO Training Course Institute in Chandigarh Mohali</a></h4>
                                <p>Are you searching for the best SEO training company in Chandigarh Mohali?</p>
                                <p class="text-end"><a href="seo-training-course-institute-chandigrah-mohali.aspx">Read More</a></p>
                            </div>
                        </div>
                                                
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-pte-institutes-in-mohali-min.jpg" alt="Top 5 PTE Institutes in Mohali" title="Top 5 PTE Institutes in Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-pte-institutes-mohali.aspx" class="text-decoration-none text-dark">Top 5 PTE Institutes in Mohali</a></h4>
                                <p>PTE Coaching Classes where you can get all the training you require to fare well on the test.</p>
                                <p class="text-end"><a href="top-5-pte-institutes-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/future-scope-web-desiging-india-min.jpg" alt="Future Scope of Web Designing in India" title="Future Scope of Web Designing in India">
                                </div>
                                <h4 class="fw-bold"><a href="future-scope-of-web-designing-in-india.aspx" class="text-decoration-none text-dark">Future Scope of Web Designing in India</a></h4>
                                <p>Web Designing has become the primary source for web developers and websites.</p>
                                <p class="text-end"><a href="future-scope-of-web-designing-in-india.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-android-training-institutes-chandigarh.jpg" alt="Top 5 Android Training Institutes in Chandigarh Mohali" title="Top 5 Android Training Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-android-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 Android Training Institutes in Chandigarh Mohali</a></h4>
                                <p>ThinkNEXT is the Best Institute for Android Course in Chandigarh Mohali.</p>
                                <p class="text-end"><a href="top-5-android-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-angularjs-training-institutes-chandigarh-min.jpg" alt="Top 5 AngularJS Training Institutes in Chandigarh Mohali" title="Top 5 AngularJS Training Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-AngularJS-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 AngularJS Training Institutes in Chandigarh Mohali</a></h4>
                                <p>ThinkNEXT is top AngularJS training Institute that provides AngularJS training in Chandigarh Mohali.</p>
                                <p class="text-end"><a href="top-5-AngularJS-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-digital-marketing-training-institutes-chandigarh-min.jpg" alt="Top 5 Digital Marketing Training Institutes in Chandigarh Mohali" title="Top 5 Digital Marketing Training Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-digital-marketing-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 Digital Marketing Training Institutes in Chandigarh Mohali</a></h4>
                                <p>Top Digital Marketing Training Company that provides Digital Marketing Course Training in Chandigarh Mohali.</p>
                                <p class="text-end"><a href="top-5-digital-marketing-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/what-is-autocad-min.jpg" alt="What is Autocad" title="What is Autocad">
                                </div>
                                <h4 class="fw-bold"><a href="what-is-autocad.aspx" class="text-decoration-none text-dark">What Is AutoCAD and How to Become AutoCAD Certified?</a></h4>
                                <p>This article will guide you about what is AutoCAD and how you can choose the best AutoCAD course online or offline for you.</p>
                                <p class="text-end"><a href="what-is-autocad.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-java-training-institutes-in-chandigarh.jpg" alt="Top 5 Java Training Institutes in Chandigarh Mohali" title="Top 5 Java Training Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-java-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 Java Training Institutes in Chandigarh Mohali</a></h4>
                                <p>Java is the most popular programming language that developers use to create applications on your computer.</p>
                                <p class="text-end"><a href="top-5-java-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/best-digital-marketing-institute-chandigarh.jpg" alt="10 Reasons Why ThinkNEXT is Best Digital Marketing Institute in Chandigarh" title="10 Reasons Why ThinkNEXT is Best Digital Marketing Institute in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="why-thinknext-is-best-digital-marketing-institute-in-chandigarh.aspx" class="text-decoration-none text-dark">10 Reasons Why ThinkNEXT is Best Digital Marketing Institute in Chandigarh</a></h4>
                                <p> Visit ThinkNEXT Technologies for professional IT Courses after 12th, 10th. </p>
                                <p class="text-end"><a href="why-thinknext-is-best-digital-marketing-institute-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-machine-learning-training-institutes-in-chandigarh-min.jpg" alt="Top 5 Machine Learning Training Institutes in Chandigarh Mohali" title="Top 5 Machine Learning Training Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-machine-learning-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 Machine Learning Training Institutes in Chandigarh Mohali</a></h4>
                                <p> Machine learning  being used in a wide range of applications today.Top 5 Machine Learning Training Institutes in Chandigarh Mohali</p>
                                <p class="text-end"><a href="top-5-machine-learning-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/software-testing-training-institute-in-chandigarh-min.jpg" alt="Top 5 Software Testing Institutes in Chandigarh Mohali" title="Top 5 Software Testing Institutes in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="web-designing-jobs-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 5 Software Testing Institutes in Chandigarh Mohali</a></h4>
                                <p>ThinkNEXT is top java training company that provides Software Testing training in Core &amp; Advance Software Testing.</p>
                                <p class="text-end"><a href="top-5-software-testing-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/web-designing-jobs-in-chandigarh-min.jpg" alt="Web Designing Jobs in Chandigarh" title="Web Designing Jobs in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="web-designing-jobs-in-chandigarh.aspx" class="text-decoration-none text-dark">Web Designing Jobs in Chandigarh</a></h4>
                                <p>ThinkNEXT has a team of recruitment that creates a platform for both, employers as well as job seekers to efficiently meet their requirements.</p>
                                <p class="text-end"><a href="web-designing-jobs-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/marketing-training-in-mohali-min.jpg" alt="Marketing Training in Mohali" title="Marketing Training in Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="marketing-training-mohali.aspx" class="text-decoration-none text-dark">Marketing Training in Mohali.</a></h4>
                                <p>If you are looking for marketing course in Mohali then you should join ThinkNEXT without any hassle. You will not regret joining ThinkNEXT.</p>
                                <p class="text-end"><a href="marketing-training-mohali.aspx">Read More</a></p>
                            </div>
                        </div>

                         <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/what-is-seo-min.jpg" alt="What is SEO" title="5 Questions To Ask Before Evaluating Any SEO Training Course">
                                </div>
                                <h4 class="fw-bold"><a href="5-questions-to-ask-before-evaluating-any-seo-training-course.aspx" class="text-decoration-none text-dark">5 Questions To Ask Before Evaluating Any SEO Training Course</a></h4>
                                <p>The quality of an SEO training course in Singapore looking to make a long-term investment in their business life.</p>
                                <p class="text-end"><a href="5-questions-to-ask-before-evaluating-any-seo-training-course.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/best-industrial-training-in-chandigarh.jpg" alt="Best Industrial Training in Chandigarh" title="Best Industrial Training in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="Best-Industrial-Training-in-chandigarh.aspx" class="text-decoration-none text-dark">Best Industrial Training Institute in Chandigarh</a></h4>
                                <p>ThinkNEXT is best Industrial Training Company providing 6 Months/3 Months/3 Weeks Industrial Training in chandigarh.</p>
                                <p class="text-end"><a href="Best-Industrial-Training-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-pte-institutes-in-chandigarh1.jpg" alt="Top 5 PTE Institutes in Chandigarh" title="Top 5 PTE Institutes in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-pte-institutes-chandigarh.aspx" class="text-decoration-none text-dark">Top 5 PTE Institutes in Chandigarh</a></h4>
                                <p>A large number of different elements have also been considered to create this list of best PTE training centers in Chandigarh.</p>
                                <p class="text-end"><a href="top-5-pte-institutes-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-digital-marketing-companies-in-chandigarh-min.jpg" alt="Top 10 Companies Providing Digital Marketing Course in Chandigarh" title="Top 10 Companies Providing Digital Marketing Course in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-companies-providing-digital-marketing-course-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 10 Companies Providing Digital Marketing Course in Chandigarh</a></h4>
                                <p>Digital marketing involves marketing to consumers through any number of digital channels.</p>
                                <p class="text-end"><a href="top-10-companies-providing-digital-marketing-course-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-android-training-companies-in-chandigarh-min.jpg" alt="Top 10 Companies Providing Android Training in Chandigarh Mohali" title="Top 10 Companies Providing Android Training in Chandigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-companies-providing-android-training-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 10 Companies Providing Android Training in Chandigarh Mohali</a></h4>
                                <p>Android is an open source and Linux-based Operating System for mobile devices such as smartphones and tablet computers.</p>
                                <p class="text-end"><a href="top-10-companies-providing-android-training-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-5-seo-training-institutes-chandigarh-in-mohali.jpg" alt="Top 5 SEO Training Institutes Chandigarh Mohali" title="Top 5 SEO Training Institutes in Chadigarh Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-seo-training-institutes-chandigarh-mohali.aspx" class="text-decoration-none text-dark">Top 5 SEO Training Institutes in Chandigarh Mohali</a></h4>
                                <p>SEO (Search Engine Optimization) is the exercise of increasing the number of visitors to a website.</p>
                                <p class="text-end"><a href="top-5-seo-training-institutes-chandigarh-mohali.aspx">Read More</a></p>
                            </div>
                        </div>
                        	<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/Top-5-Interior-Designing-Institutes-in-Chandigarh.jpg" alt="Top 5 Interior Designing Institutes in Chandigarh" title="Top 5 Interior Designing Institutes in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-interior-designing-institutes-chandigarh.aspx" class="text-decoration-none text-dark">Top 5 Interior Designing Institutes in Chandigarh</a></h4>
                                <p>Design is a natural gift for certain people. If you enjoy decorating places and organizing furniture </p>
                                <p class="text-end"><a href="top-5-interior-designing-institutes-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

                        	<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/Top-5-Digital-Marketing-Courses-in-Chandigarh.jpg" alt="Top 5 Digital Marketing Courses in Chandigarh" title="Top 5 Digital Marketing Courses in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-digital-marketing-courses-chandigarh.aspx" class="text-decoration-none text-dark">Top 5 Digital Marketing Courses in Chandigarh</a></h4>
                                <p>The entire globe has been completely absorbed by the revolution in Digital Marketing. India and its </p>
                                <p class="text-end"><a href="top-5-digital-marketing-courses-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

					<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/10-Reasons-That-School-Administration-System-is-necessary-min.jpg" alt="10 Reasons That School Administration System is necessary" title="10 Reasons That School Administration System is necessary">
                                </div>
                                <h4 class="fw-bold"><a href="10-reasons-that-school-administration-system-is-necessary.aspx" class="text-decoration-none text-dark">10 Reasons That School Administration System is necessary</a></h4>
                                <p>A school monitoring system has become an important demand for every</p>
                                <p class="text-end"><a href="10-reasons-that-school-administration-system-is-necessary.aspx">Read More</a></p>
                            </div>
                        </div>
                         <div class="col-sm-6 py-3">
                          <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/job-oriented-courses-in-chandigarh-min.jpg" alt="Job Oriented Courses in Chandigarh" title="Job Oriented Courses in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="job-oriented-courses.aspx" class="text-decoration-none text-dark">Job Oriented Courses in Chandigarh</a></h4>
                                <p>  Are you  looking for <strong>job oriented courses after  12th</strong>&nbsp;to select your career</p>
                                <p class="text-end"><a href="job-oriented-courses.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                          <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/TOP-5-ielts-coaching-institutes-in-chandigarh-blog.jpg" alt="Top 5 IELTS Coaching institutes in Chandigarh" title="Top 5 IELTS Coaching institutes in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-ielts-coaching-institutes-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 5 IELTS Coaching institutes in Chandigarh</a></h4>
                                <p>When it comes to IELTS Preparation at Chandigarh, you will get the best competitive atmosphere, </p>
                                <p class="text-end"><a href="top-5-ielts-coaching-institutes-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-7-digital-marketing-courses-in-chandigarh.jpg" alt="Top 7 Digital Marketing Courses in Chandigarh" title="Top 7 Digital Marketing Courses in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-7-digital-marketing-courses-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 7 Digital Marketing Courses in Chandigarh</a></h4>
                                <p>The process of promoting products or services via the Internet, mobile devices, social media, search engines,</p>
                                <p class="text-end"><a href="top-7-digital-marketing-courses-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
							<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/TOP-5-ielts-coaching-institutes-in-mohali-blog.jpg" alt="Top 5 IELTS Coaching institutes in Mohali" title="Top 5 IELTS Coaching institutes in Mohali">
                                </div>
                                <h4 class="fw-bold"><a href="top-5-ielts-coaching-institutes-in-mohali.aspx" class="text-decoration-none text-dark">Top 5 IELTS Coaching institutes in Mohali</a></h4>
                                <p>The IELTS exam is rapidly preferred across the nation. If we talk about Punjab, we have some good coaching</p>
                                <p class="text-end"><a href="top-5-ielts-coaching-institutes-in-mohali.aspx">Read More</a></p>
                            </div>
                        </div>
                        	<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-digital-marketing-companies-in-chandigarh.jpg" alt="Top 10 Digital Marketing Companies in Chandigarh" title="Top 10 Digital Marketing Companies in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-digital-marketing-companies-chandigarh.aspx" class="text-decoration-none text-dark">Top 10 Digital Marketing Companies in Chandigarh</a></h4>
                                <p>top 10 Digital Marketing companies in Chandigarh which can assist you to increase the return on investment </p>
                                <p class="text-end"><a href="top-10-digital-marketing-companies-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/Top-10-IELTS-Coaching-Institutes-in-Chandigarh.jpg" alt="Top 10 IELTS Coaching Institutes in Chandigarh" title="Top 10 IELTS Coaching Institutes in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-ielts-coaching-institutes-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 10 IELTS Coaching Institutes in Chandigarh</a></h4>
                                <p>IELTS is a test that assesses your listening, reading, writing, and speaking skills all at the same time. </p>
                                <p class="text-end"><a href="top-10-ielts-coaching-institutes-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
					<div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-7-ielts-coaching-institute-in-chandigarh.jpg" alt="Top 7 IELTS Coaching Institutes in Chandigarh" title="Top 7 IELTS Coaching Institutes in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-7-ielts-coaching-institutes-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 7 IELTS Coaching Institutes in Chandigarh</a></h4>
                                <p> IELTS is an international test to determine English ability for people who are not native English language</p>
                                <p class="text-end"><a href="top-7-ielts-coaching-institutes-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div class="col-sm-6 py-3">
                             <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-10-digital-marketing-courses-in-chandigarh-min.jpg" alt="Top 10 digital Marketing Courses in Chandigarh" title="Top 10 digital Marketing Courses in Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-10-digital-marketing-courses-in-chandigarh.aspx" class="text-decoration-none text-dark">Top 10 digital Marketing Courses in Chandigarh</a></h4>
                                <p>Digital marketing has engulfed the entire globe. India and its major cities are not an exception and are </p>
                                <p class="text-end"><a href="top-10-digital-marketing-courses-in-chandigarh.aspx">Read More</a></p>
                            </div>
                        </div>

                          <div class="col-sm-6 py-3">
                            <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/web-designing-interview-questions-min.jpg" alt="Web Designing Interview Questions" title="Web Designing Interview Questions">
                                </div>
                                <h4 class="fw-bold"><a href="web-designing-interview-questions.aspx" class="text-decoration-none text-dark">Web Designing Interview Questions</a></h4>
                                <p>Following are most frequently asked Web Designing Interview Questions &amp; Answers for both beginners as well as experienced Web Designers.</p>
                                <p class="text-end"><a href="web-designing-interview-questions.aspx">Read More</a></p>
                            </div>
                        </div>


                           <div class="col-sm-6 py-3">
                            <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/seo-interview-question.jpg" alt="SEO Interview Questions" title="SEO Interview Questions">
                                </div>
                                <h4 class="fw-bold"><a href="seo-interview-questions.aspx" class="text-decoration-none text-dark">SEO Interview Questions</a></h4>
                                <p>These interview questions are more like a jump start towards your aim, and fully prepare you for your job interview.</p>
                                <p class="text-end"><a href="seo-interview-questions.aspx">Read More</a></p>
                            </div>
                        </div>

                          <div class="col-sm-6 py-3">
                            <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/digital-marketing-interview-questions-min.jpg" alt=" Digital Marketing Interview Questions" title="Digital Marketing Interview Questions">
                                </div>
                                <h4 class="fw-bold"><a href="digital-marketing-interview-questions.aspx" class="text-decoration-none text-dark">Digital Marketing Interview Questions</a></h4>
                                <p>As companies increasingly rely on online engagement to fuel their businesses,</p>
                                <p class="text-end"><a href="digital-marketing-interview-questions.aspx">Read More</a></p>
                            </div>
                        </div>

                           <div class="col-sm-6 py-3">
                            <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/Java-Interview-Questions-min.jpg" alt=" Java Interview Questions" title="Java Marketing Interview Questions">
                                </div>
                                <h4 class="fw-bold"><a href="java-interview-questions.aspx" class="text-decoration-none text-dark">Java Interview Questions</a></h4>
                                <p>Java was designed to be an independent language on any software or hardware due to the fact that the</p>
                                <p class="text-end"><a href="java-interview-questions.aspx">Read More</a></p>
                            </div>
                        </div>

                        
                           <div class="col-sm-6 py-3">
                            <div class="p-3 blog-box h-100 bg-white">
                                <div class="thumbnail mb-3">
                                    <img src="images/top-companies-providing-industrial-training-chandigarh.webp" alt=" Top Companies Providing Industrial Training in Chandigarh" title="Top Companies Providing Industrial Training Chandigarh">
                                </div>
                                <h4 class="fw-bold"><a href="top-companies-providing-industrial-training.aspx" class="text-decoration-none text-dark">Top Companies Providing Industrial Training in Chandigarh Mohali</a></h4>
                                <p>There are various companies in Chandigarh Mohali who provide 6 months</p>
                                <p class="text-end"><a href="top-companies-providing-industrial-training.aspx">Read More</a></p>
                            </div>
                        </div>
    
                    </div>


                </div>
                <div class="col-sm-5 col-md-3">
                    <div class="py-3 px-4 bg-black position-sticky top-0" id="regform">
                        <h3 class="text-white text-center"><strong>Quick Enquiry</strong></h3>

                        <div class="position-relative">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtMobile" ValidationGroup="arrangecallbackGroup1" ErrorMessage="Enter The Mobile No" class="text-warning"></asp:RequiredFieldValidator>
                            <br />
                            <div class="form-group mb-0">

                                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtName" ValidationGroup="arrangecallbackGroup2" ErrorMessage="Please Enter The Name " class="text-warning"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group mb-0">

                                <asp:TextBox ID="txtMobile" runat="server" class="form-control" MaxLength="10" placeholder="Mobile No."></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="txtMobile" ValidationGroup="arrangecallbackGroup3" ErrorMessage="Please Enter Valid Mobile No" class="text-warning" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group mb-0">

                                <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtEmailId" ValidationGroup="arrangecallbackGroup4" ErrorMessage="Enter The Valid Email ID" class="text-warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group mb-0">
                                <asp:TextBox ID="txtCourses" runat="server" class="form-control" placeholder="Course Interested In"></asp:TextBox>
                            </div>
                            <div class="text-center">
                                <br />

                            </div>
                            <div class="form-group mb-0">
                                <asp:TextBox ID="txtComments" runat="server" class="form-control" TextMode="MultiLine" placeholder="Comments"></asp:TextBox>
                            </div>

                            <div class="form-group text-center mt-4">
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn bg-warning px-3 h4 w-100" OnClientClick="return Validate4()" OnClick="btnsubmit_Click" />
                                <asp:TextBox ID="txtfranchisecode" runat="server" CssClass="search_submit_button trans_200" Visible="False" Text="TNK101"></asp:TextBox>

                            </div>

                            <br />
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </section>


</asp:Content>
