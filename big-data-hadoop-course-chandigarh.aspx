<%@ Page Title="Big Data Hadoop Course in Chandigarh Mohali Panchkula - ThinkNEXT " Language="VB" MasterPageFile="~/MasterPage6.master" AutoEventWireup="false" CodeFile="big-data-hadoop-course-chandigarh.aspx.vb" Inherits="big_data_hadoop_training_in_chandigarh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
 <meta name="description" content="Big Data Hadoop Course in Chandigarh Mohali Panchkula - ThinkNEXT– ThinkNEXT is top C and C++ Training company that provides Big Data Hadoop Course in Chandigarh Mohali " />
    <meta name="keywords" content="Big Data Hadoop Course in Chandigarh Mohali Panchkula - ThinkNEXT, Big Data Hadoop Course in Chandigarhi, Big Data Hadoop Course in Chandigarh, Big Data Hadoop Course in Chandigarh Mohali, Cyber Security Course Tutorial, Learn Cyber Security , Cyber Security Course Training in Panchkula." />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/images/Cyber-Security-Course-Chandigarh.jpg" />
    <meta property="og:image" content="http://www.thinknexttraining.com/images/Cyber-Security-Course-Chandigarh.jpg" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main-image position-relative">

        <img class="d-md-none" src="images/big-data-hadoop-mob-min.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
        <img class="d-none d-md-block" src="images/big-data-hadoop-min.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />

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
                <div class="col-md-8 order">
                    <div class="text-justify position-sticky top-0">
                        <div class="gdl-header-wrapper">
                            <h2 class="text-danger fw-bold">Best Hadoop (Big Data) Training in Chandigarh Mohali panchkula</h2>
                        </div>
                        <p class=""> Hadoop Training is gaining popularity in a great speed in the IT sectors. If you are looking for <b>Hadoop Training in Chandigarh</b>, then why not settle for the best. ThinkNEXT Technologies Pvt. Ltd. provides Hadoop Big Data Training in Chandigarh. We provide the best practical training sessions along with 100% practical and live based project training program. We have established the name in the field of Hadoop Training along with other IT Courses.</p>
 
                        
                    </div>
                </div>

                <div class="col-md-4 order-md-1">
                    <div class="pad-top-bot0 pd-lft-rght-5prcnt position-sticky top-0">


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


    <section class="ptb-20 ">
        <div class="container-fluid">
            <br>
            <p class="hcntr"><span class="htitl">Awards and Achievements</span></p>
            <p class="threetimesaward text-light">6 Times National Award Winner Company</p>

            <div class="row m-0">
                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/iconic-business-summit-awards-jaya-prada-min.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/national-icon-award-suniel-shetty-min.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/asias-quality-entreprenuarship-award-karisma-min.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/National-Gratitude-Award-sonali-bendre-min.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/business-leaders-award-surendra-pal-min.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
                </div>

                <div class="col-sm-6 col-md-4 col-lg-4 pb-3 py-1">
                    <img src="images/Nations-Pride-Award-faggan-min.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" />
                </div>

            </div>
        </div>
    </section>

   




    <section class="bg-ececec py-5">

     <div class="container">
            <div>
                <h3 class="bg-0f54bb p-3 text-center text-white "><strong>Hadoop (Big Data) Industrial Training- Course Contents</strong></h3>
            </div>
            <br>
            <div class="row">


                   


            <div class="col-sm-4 ">
                 <h4 class="mt-3 text-danger fw-bold">Module 1 : Hadoop (Big Data) Ecosystem</h4>
                <ul  class="welcomeLinks mb-0">
             <li>Motivation for Hadoop</li>
             <li> Different types of projects by Apache</li>
             <li>Role of projects in the Hadoop Ecosystem</li>
             <li>Key technology foundations required for Big Data</li>
             <li>Limitations and Solutions of existing Data Analytics Architecture</li>
            

                   
                    </ul>
            </div>



            <div class="col-sm-4 mt-3  ">
                <ul  class="welcomeLinks mb-0">

                 <li>Comparison of traditional data management systems with Big Data management systems</li>
             <li>Evaluate key framework requirements for Big Data analytics</li>
             <li>Hadoop Ecosystem & Hadoop 2.x core components</li>
             <li>Explain the relevance of real-time data</li>
             <li>Explain how to use big and real-time data as a Business planning tool</li>
             
                    </ul>
            </div>

           

                <div class="col-sm-4 ">
                     <h4 class="mt-3 text-danger fw-bold">Module 2: Building Blocks</h4>
                <ul  class="welcomeLinks mb-0">
             <li>Quick tour of Java</li>
             <li>Quick tour of Linux commands</li>
                 <li> Introduction to Cloudera VM/Cloudera Manager(Apache Ambari)/Download & usage instructions</li>
               
                    </ul>
            </div>



            <div class="col-sm-4 mt-5 ">
                 <h4 class="mt-3 text-danger fw-bold">Module 3:Hadoop Cluster -Architecutre - Configuration files</h4>
                <ul  class="welcomeLinks mb-0">

                <li>Hadoop Master-Slave Architecture</li>
                <li>The Hadoop Distributed File System - data storage</li>
                <li>Explain different types of cluster setups(Fully distributed/Pseudo etc)</li>
                <li>Hadoop Cluster set up - Installation</li>
                <li>Hadoop 2.x Cluster Architecture</li>
                <li> A Typical enterprise cluster – Hadoop Cluster Modes</li>
                    
                
                    </ul>
            </div>


            <div class="col-sm-4 mt-5 ">
                 <h4 class="mt-3 text-danger fw-bold">Module 4:Hadoop Core Components - HDFS & Map Reduce(YARN)</h4>
                <ul  class="welcomeLinks mb-0">

                <li> HDFS Overview & Data storage in HDFS</li>
                <li>Get the data into Hadoop from local machine (Data Loading Techniques) - vice versa</li>
                <li> MapReduce Overview (Traditional way Vs. MapReduce way)</li>
                <li>Concept of Mapper & Reducer</li>
                <li>Understanding MapReduce program skeleton</li>
                <li>Running MapReduce job in Command line/Eclipse</li>
                    
                
                    </ul>
            </div>

                 <div class="col-sm-4 mt-5 ">
                 
                <ul  class="welcomeLinks mb-0">

               
<li>Develop MapReduce Program in JAVA</li>
<li>  Develop MapReduce Program with the streaming API</li>
<li>  Test and debug a MapReduce program in the design time</li>
<li>  How Partitioners and Reducers Work Together</li>
<li>  Writing Customer Partitioners Data Input and Output</li>
<li>  Creating Custom Writable and Writable Comparable Implementations</li>
                    
                
                    </ul>
            </div>



  <div class="col-sm-4 mt-5 ">
                <h4 class="mt-3 text-danger fw-bold">Module 5:Data Integration using Sqoop, Flume & Talend</h4>  
                <ul  class="welcomeLinks mb-0">         
<li>Integrating Hadoop into an existing Enterprise</li>
<li>  Loading Data from an RDBMS into HDFS by Using Sqoop</li>
<li>  Managing Real-Time Data Using Flume</li>
<li>  Accessing HDFS from Legacy Systems with FuseDFS and HttpFS</li>
<li>  Introduction to Talend (commuity system)</li>
<li>  Data loading to HDFS using Talend</li>
       
                    </ul>
            </div>


    <div class="col-sm-4 mt-5 ">
                <h4 class="mt-3 text-danger fw-bold">Module 6:Data Analysis using PIG</h4>  
                <ul  class="welcomeLinks mb-0">         
<li>Introduction to Hadoop Data Analysis Tools</li>
<li>  Introduction to PIG - MapReduce Vs Pig, Pig Use Cases</li>
<li>  Pig Latin Program & Exectution</li>
<li>  Pig Latin : Relational Operators, File Loaders, Group Operator, COGROUP Operator, Joins and COGROUP, Union, Diagnostic Operators, Pig UDF</li>
<li>  Use Pig to automate the design and implementation of MapReduce applications</li>
<li>  Data Analysis using PIG</li>
</ul>
       
            </div>

    <div class="col-sm-4 mt-5 ">
                <h4 class="mt-3 text-danger fw-bold">Module 7:Data Analysis using HIVE</h4>  
                <ul  class="welcomeLinks mb-0">         
<li>Introduction to Hive - Hive Vs. PIG - Hive Use Cases</li>
<li>  Discuss the Hive data storage principle</li>
<li>  Explain the File formats and Records formats supported by the Hive environment</li>
<li>  Perform operations with data in Hive</li>
<li>  Hive QL: Joining Tables, Dynamic Partitioning, Custom MapReduce Scripts</li>
<li>  Hive Script, Hive UDF</li>
</ul>
       
            </div>

    <div class="col-sm-4 mt-5 ">
                <h4 class="mt-3 text-danger fw-bold">Module 8:Data Analysis using Impala</h4>  
                <ul  class="welcomeLinks mb-0">         
<li>Introduction to Impala & Architecture</li>
<li>  How Impala executes Queries and its importance.</li>
<li>  Hive vs. PIG vs. Impala</li>
<li>  Extending impala with User Defined functions</li>
<li>  Improving impala Performance</li>
</ul>
       
            </div>

        <div class="col-sm-4 mt-5 ">
                <h4 class="mt-3 text-danger fw-bold">Module 9:NoSql Data base - HBASE</h4>  
                <ul  class="welcomeLinks mb-0">         

<li>Introduction to NoSQL Databases and Hbase</li>
<li>  HBase v/s RDBMS, HBase Components, HBase Architecture</li>
<li>  HBase Cluster Deployment</li>
</ul>

       
            </div>


    <div class="col-sm-4 mt-5 ">
                <h4 class="mt-3 text-danger fw-bold">Module 10:Hadoop - Other Analytics Tools</h4>  
                <ul  class="welcomeLinks mb-0">         


<li>Introduction to role of R in Hadoop Eco-system</li>
<li>  Introduction to Jasper Reports & creating reports by integrating with Hadoop</li>
<li>  Role of Kafka & Avro in real projects</li>
</ul>


       
            </div>
           
            </div>
          </div>




        
    </section>

    <section style="background: url('images/finance-training-internship-in-chandigarh-bg.jpg'); background-attachment: fixed;" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h4 class="h4 text-warning fw-bold">C++ Training Certification, Placement and other Activities</h4>
                   
                <ul class="welcomeLinks text-white">
                    <li>Free Spoken English, Personality Development and Interview Preparation classes on daily basis</li>
                    <li>Life-Time Learning and Placement Card</li>
                   <li>6 Months/6 Weeks Training + Project Certificate By ThinkNEXT</li>
                   <li>C++ Experience Certificate by ThinkNEXT</li>
                     <li>Job Interview Preparation</li>
                   <li>Multiple Job Interviews + 100% Job Assistance</li>
                   <li>Part Time / Full Time Job Offer for each student during training (Earn while you learn)</li>
                      </ul>
                    <p class="text-white text-justify"></p>

                </div>

                <div class="col-md-4">
                    <div class="py-3 px-4 bg-warning rounded">
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
                                <asp:Button ID="Btndemo" runat="server" CssClass="btn bg-black px-3 h4 w-100 text-white fw-bold" Text="Book Now" />

                            </div>
                        </div>
                    </div>
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
                        <img class="main-video" src="images/six-months-industrial-training-chandigarh-thinknext.jpg" alt="Six Months Big Data Hadoop Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/pL4gewo1OLM" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-course-chandigarh-krishma.jpg" alt="Best Big Data Hadoop Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/HrI9DlsnT3s" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/best-industrial-training-company-chandigarh-sunil.jpg" alt="6 Months Big Data Hadoop Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
                </div>

                <div class="col-lg-6 col-md-6 position-relative">
                    <a class="popupvid" href="#!" data-link="https://www.youtube.com/embed/gcORvuLHa7o" data-img="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Crystal_button_cancel.svg/1024px-Crystal_button_cancel.svg.png">
                        <img class="main-video" src="images/industrial-training-chandigarh-award-surinder.jpg" alt="Big Data Hadoop Course in Chandigarh"><svg class="ytp-large-play-button" version="1.1" viewBox="0 0 68 48"><path class="ytp-large-play-button-bg" d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,.13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00" fill-opacity="0.8"></path><path d="M 45,24 27,14 27,34" fill="#fff"></path></svg></a>
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
                   
<li>Big Data Hadoop Training from 6 Times National Level Award Winner Company:</li>
<li>ThinkNEXT bagged Iconic Business Summit Award 2021 for "Most Trusted Digital Marketing and Industrial Training Company of the Year"  from Bollywood Film Actress & Politician Jaya Prada and Miss Universe Romania Anca Verma at New Delhi</li>
<li>ThinkNEXT bagged Nation’s Business Pride Award 2021 from Shri Faggan Singh Kulaste (Union Minister of State for Steel) for Best Digital Marketing and Industrial Training Company</li>
<li>National Gratitude Award 2020 Winner for the Best Digital Marketing and Industrial Training Company</li>
<li>Asia’s Quality & Entrepreneurship Award 2019 Winner for Best Web Development and Industrial Training Company</li>
<li>Business Leaders Award 2019 Winner for Best Digital Marketing and Industrial Training Company</li>
<li>National Icon Award 2018 Winner Company for Best Web Development and Industrial Training Company</li>
<li>Apart from National Level Awards, ThinkNEXT also got many other awards/recognitions in the field of software development, industrial training and digital marketing services.</li>
<li>Big Data Hadoop Training from Government Registered Company with Corporate Identity No. U72200PB2011PTCO35677. ThinkNEXT is registered as a Pvt. Ltd. Company under the companies Act 1956 and approved by Ministry of Corporate Affairs (MCA), Govt. of India </li>
<li>ThinkNEXT offers Part-Time/Full-Time Job offer during training/internship so that students can earn while they learn.</li>
<li>Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes so that students need not to struggle for jobs as a fresher</li>
<li>Big Data Hadoop Training from ISO 9001:2015 Certified, Google Partner, Facebook Blueprint Certified, Microsoft Accredited and Hubspot Certified Company.</li>
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
                                <img src="images/iconic-business-summit-awards-jaya-prada-gallery.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged Asia's Quality and Entreprenuership Award from Bollywood Film Actress Karisma Kapoor " class="thumb">
                                <img src="images/asia-quality-entreprenuership-award.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National icon Award from Bollywood Film Star Sunil Shetty " class="thumb">
                                <img src="images/award-image11.webp" alt="Big Data Hadoop Course in Chandigarh" title="Best Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT bagged National Gratitude Award from Bollywood Actress Sonali Bendre" class="thumb">
                                <img src="images/summer-training-in-chandigarh-mohali-2.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="A meet with Bollywood Film Actress Upasna Singh Regarding Digital Marketing of her Upcoming Movie" class="thumb">
                                <img src="/php-images/php-industrial-training.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Business Leaders Award from Film Actor Surendra Pal" class="thumb">
                                <img src="images/best-industrial-training-company-chandigarh1.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Nation's Business Pride Award 2021" class="thumb">
                                <img src="images/Nations-Business-Pride-Award-faggan-gallery.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title=" A meet with Chaudhary Udaybhan Singh (Minister of State in Govt. of UP)" class="thumb">
                                <img src="images/Award-Chaudhary-Udaybhan-Singh-gallery.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-1.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Taking Award for best Industrial Training Company" class="thumb">
                                <img src="images/awards-2.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award during Leadership Summit 2019" class="thumb">
                                <img src="images/Leadership-Summit-2019-Award.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award at Chitkara University for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-month-industrial-training-mohali-chandigarh.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/6-weeks-industrial-training-mohali-chandigarh.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT receives Award from Ms. Apneet Riyait, Dupity Commissioner, Mansa" class="thumb">
                                <img src="images/6-weeks-industrial-training-company-chandigarh.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT gets Award for Excellence in Industrial Training" class="thumb">
                                <img src="images/six-months-industrial-training-company-chandigarh.jpeg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/ThinkNEXT-Frontdesk.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <%-- <div class="col-sm-4 col-md-3 col-xs-12 profile">
                        <div class="panel panel-default">
                            <div class="panel-thumbnail">
                                <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                    <img src="images/Android-lab.webp" alt="6 Month Big Data Hadoop Course in Chandigarh Mohali" title="6 Month Big Data Hadoop Course in Chandigarh Mohali" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                                </a>
                            </div>

                        </div>
                    </div>--%>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/galleryjob-fair7.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT taking Award" class="thumb">
                                <img src="images/Top-Company-Industrial-Training-Chandigarh.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>


                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/page-5_img-4-b.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/THINKNEXT-b.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>



                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="ThinkNEXT Technologies" class="thumb">
                                <img src="images/industial-training-in-chandigarh-group.webp" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Big Data Hadoop Course in Chandigarh" class="thumb">
                                <img src="images/industrial-training-in-chandigarh-award-image-min.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Big Data Hadoop Course in Chandigarh" class="thumb">
                                <img src="images/tally-course-in-chandigarh-mohali-min.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-sm-4 col-md-3 col-xs-12 profile">
                    <div class="panel panel-default">
                        <div class="panel-thumbnail">
                            <a href="#" title="Big Data Hadoop Course in Chandigarh" class="thumb">
                                <img src="images/softwere-testing-training-in-chadigarh.jpg" alt="Big Data Hadoop Course in Chandigarh" title="Big Data Hadoop Course in Chandigarh" class="img-responsive img-rounded" data-bs-toggle="modal" data-bs-target=".modal-profile-lg" />
                            </a>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </section>


    <asp:Label ID="lblmessgaelogin" runat="server"></asp:Label>

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
