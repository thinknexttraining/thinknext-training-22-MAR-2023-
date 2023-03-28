<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="java-tutorial.aspx.vb" Inherits="java_tutorial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <title>Java Tutorial – ThinkNEXT Technologies Private Limited Chandigarh Mohali </title>
    <meta name="description" content="Java tutorial. ThinkNEXT is top java training company or institute that provides training in Core Java & Advance Java, Java Course, Java Coaching, Advance Java" />
    <meta name="keywords" content="Java Tutorial, Java Course, Core Java Tutorial, Advance Java Tutorial, Java Training in Chandigarh, Java Training in Mohali, Java Training in Panchkula." />
   <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/java-training.png" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/java-training.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
 
   <!--  End// Google+ -->
     <meta name="geo.region" content="India" />
    <meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
    <meta content="1 days" name="revisit-after">
    <meta name="robots" content="index, follow" />
    <meta name="copyright" content="ThinkNEXT" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel='stylesheet' id='Link2' href="bootstrap/css/bootstrap.css" type='text/css' media='all' />
    <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
    <style type="text/css">
           #particles-js2 canvas {position:absolute;height: 94% !important;

            }

                body * {
    border-color: #b7b7b7;
}
        #form2{    background: #f2f2f2 !important;}
        .panel-group#accordion {
    padding:0;
}
        .col-lg-12, .col-md-12 {
                background: white;
    padding-top: 11px;
    box-shadow: 0px 0px 4px 0px;
   margin-bottom: 16px;
    margin-top: 20px;
        }
    
        div.gdl-header-wrapper{padding-right:0;}
         .dwl{width:100%;text-align:center;}
        .bkmydemo{
                  font-size: 25px;
                  background: red;
                  padding: 13px;
                  font-weight: bold;
                  color:#fff;

        }
          .fb-ifrme-270{
            border:none;
            overflow:hidden;
             margin:auto;
            display:none;
}
             .fb-ifrme-460{
            border:none;
            overflow:hidden;
             margin:auto;
            display:block;
}
        @media screen and (max-width: 460px) {
            .bkmydemo {
                font-size: 15px;
                padding: 13px 9px;
            }
            .container{
                padding-right: 5px;
    padding-left: 5px;

            }
            .fb-ifrme-270{
            display:block !important;
}
             .fb-ifrme-460{
            display:none !important;
}
        }


     
        #matter ul
        {
            font-family: arial, Helvetica, sans-serif;
            font-size: 12px;
            width: 500px;
        }

        #matter h3
        {
            font-family: arial, Helvetica, sans-serif;
            font-size: 14px;
            color: Green;
        }

        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 17px;
            color: #DE1904;
        }

        #image2
        {
            margin-top: 215px;
        }

            #image2 img
            {
                float: left;
            }

            #image2 a
            {
                color: Red;
                font-weight: bold;
                font-size: 16px;
                line-height: 48px;
                margin-left: 10px;
            }

                #image2 a:hover
                {
                    color: Green;
                }

                
    .head1 {
            background:url('images/White-Background-9B1.jpg');
    font-family:'Times New Roman';
    font-size: 18px;
    font-weight: 300;
    overflow: hidden;
    padding: 20px 0 0px 23px;
    position: relative;
    width:98%;
   box-shadow: 7px 7px 5px #d7d0d0;
        }


        .ryt {
            float:right;
            background-color:#DE1904;
            padding:7px;
            color:#FFF;
        }
         .modal
    {
        position: fixed;
        top: -3;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family: Arial;
font-size: 10pt;
/*border: 5px solid #060608CC;*/
width: 292px;
height: 136px;
display: none;
position: fixed;
background-color: #51121200;
z-index: 999;
    }
    </style>

     <script type="text/javascript">
         function ShowProgress() {
             setTimeout(function () {
                 var modal = $('<div />');
                 modal.addClass("modal");
                 $('body').append(modal);
                 var loading = $(".loading");
                 loading.show();
                 var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                 var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                 loading.css({ top: top, left: left });
             }, 1);
         }

         $('form').live("submit", function () {
             ShowProgress();
         });

         function RefreshParent() {
             window.opener.document.getElementById('Button3').click();
             window.close();
         }
</script>

    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

   

     <div class="head1">
    <h3 style="color:#000;" > <img src="images/App-icon/java-logo.png" alt="Dot Net" style="width:50px" />Java  &nbsp;&nbsp; </h3>
    <div class="ryt">

Best Java Industrial Training in Chandigarh|Mohali|Panchkula

       </div>
          </div>
   
     <%--<div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true" style="margin-left:3%;"></div>
  --%> 
    <br />
    
         
        <br />
        <br />
         <div class="col-lg-12">
        <div class="gdl-header-wrapper">
                <h1>WHAT IS JAVA?&nbsp; </h1>
            </div>
      
             
            <p style="text-align:justify">
      Java is loosely based on C++ syntax, and is meant to be Object-Oriented Structure of java is midway between an interpreted and a compiled language. The java compiler into Byte Codes, which are secure and portable across different platforms, compiles Java programs. These byte codes are essentially instructions encapsulated in single type, to what is known as a java virtual machine (JVM), which resides in standard browser. 
         <br /> <br />
               JVM verifies these byte codes when downloaded by the browser for integrity. JVM’s available for almost all OS. JVM converts these byte codes into machine specific instructions at runtime.
<br /> <br />
Java is a general purpose; object oriented programming language by Sun Microsystems of USA in 1991. The java team which included Patrick Naughton discovered that the existing languages like C and C++ had limitations in terms of both reliability and portability. However, they modeled their new language java on C and C++ but removed a number of features of C and C++ that were considered as sources of problems and thus made java a really simple, reliable, portable and powerful language. The most striking feature of the language is that it is a platform-neutral language. Java is a programming language, a runtime system, a set of development tools, and an application programming interface (API). Java is the first programming language that is not tied to any particular hardware or operating system. Programs developed in java can be executed anywhere on any system.
<br /> <br />
Java is an object-oriented programming language with a built-in application programming interface (API) that can handle graphics and user interfaces and that can be used to create applications or applets. Because of its rich set of API's, similar to Macintosh and Windows, and its platform independence, Java can also be thought of as a platform in itself. Java also has standard libraries for doing mathematics.
<br /> <br />
Much of the syntax of Java is the same as C and C++. One major difference is that Java does not have pointers. However, the biggest difference is that you must write object oriented code in Java. Procedural pieces of code can only be embedded in objects. In the following we assume that the reader has some familiarity with a programming language. In particular, some familiarity with the syntax of C/C++ is useful.

<br /> <br />
In Java we distinguish between applications, which are programs that perform the same functions as those written in other programming languages, and applets, which are programs that can be embedded in a Web page and accessed over the Internet. Our initial focus will be on writing applications. When a program is compiled, a byte code is produced that can be read and executed by any platform that can run Java.

            </p>
           

            <br />
      
             </div>
   
    
        <div class="panel-group col-md-8" id="accordion">
            
            <div class="col-lg-12">
                 <h3  style="color: #FF0000; font-weight: bold;">Features of java </h3> 
                <h4>SECURITY</h4>
             <p class="text-justify">   
Every time you that you download a “normal” program, you are risking a viral infection. Prior to Java, most users did not download executable programs frequently, and those who did scanned them for viruses prior to execution. Most users still worried about the possibility of infecting their systems with a virus. In addition, another type of malicious program exists that must be guarded against. This type of program can gather private information, such as credit card numbers, bank account balances, and passwords. Java answers both these concerns by providing a “firewall” between a network application and your computer. When you use a Java-compatible Web browser, you can safely download Java applets without fear of virus infection or malicious intent.


            </p>
                <h4>PORTABILITY</h4>
                <p style="text-align:justify;">
                   For programs to be dynamically downloaded to all the various types of platforms connected to the Internet, some means of generating portable executable code is needed. As you will see, the same mechanism that helps ensure security also helps create portability. Indeed, Java’s solution to these two problems is both elegant and efficient.

                </p>
                <h4>THE BYTE CODE</h4>
                <p style="text-align:justify;">The key that allows the Java to solve the security and portability problems is that the output of Java compiler is Byte code. Byte code is a highly optimized set of instructions designed to be executed by the Java run-time system, which is called the Java Virtual Machine (JVM). That is, in its standard form, the JVM is an interpreter for byte code.
<br /><br />
Translating a Java program into byte code helps makes it much easier to run a program in a wide variety of environments. The reason is, once the run-time package exists for a given system, any Java program can run on it.
<br /><br />
Although Java was designed for interpretation, there is technically nothing about Java that prevents on-the-fly compilation of byte code into native code. Sun has just completed its Just In Time (JIT) compiler for byte code. When the JIT compiler is a part of JVM, it compiles byte code into executable code in real time, on a piece-by-piece, demand basis. It is not possible to compile an entire Java program into executable code all at once, because Java performs various run-time checks that can be done only at run time. The JIT compiles code, as it is needed, during execution.
</p>
           <h3>Object Oriented:&nbsp; </h3>
      <p class="text-justify">   
In java, everything is an Object. Java can be easily extended since it is based on the Object model.
               </p>
                 <h3>Platform Independent:&nbsp; </h3>
      <p class="text-justify">   
Unlike many other programming languages including C and C++ when Java is compiled, it is not compiled into platform specific machine, rather into platform independent byte code. This byte code is distributed over the web and interpreted by virtual Machine (JVM) on whichever platform it is being run.
               </p>
                 
                <h3>Simple:&nbsp; </h3>
      <p class="text-justify">  
                Java is designed to be easy to learn. If you understand the basic concept of OOP java would be easy to master.
          </p> 
                <h3>Secure:&nbsp; </h3>
      <p class="text-justify">  
              With Java's secure feature it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption.

          </p>   
                <h3>Architectural Neutral:&nbsp; </h3>
      <p class="text-justify">  
              Java compiler generates an architecture-neutral object file format which makes the compiled code to be executable on many processors, with the presence Java runtime system.

          </p>   
                 <h3>Portable:&nbsp; </h3>
      <p class="text-justify">  
              Being architectural neutral and having no implementation dependent aspects of the specification makes Java portable. Compiler and Java is written in ANSI C with a clean portability boundary which is a POSIX subset.

          </p>    
                 <h3>Robust:&nbsp; </h3>
      <p class="text-justify">  
            Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking.

          </p>    
                 <h3>Multi-Threaded:&nbsp; </h3>
      <p class="text-justify">  
              With Java's multi-threaded feature, it is possible to write programs that can do many tasks simultaneously. This design feature allows developers to construct smoothly running interactive applications.

          </p>  
                 <h3>Interpreted:&nbsp; </h3>
      <p class="text-justify">  
             Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and light weight process.

          </p>      
                 <h3>High Performance:&nbsp; </h3>
      <p class="text-justify">  
               With the use of Just-In-Time compilers Java enables high performance.

          </p> 
                 <h3>Distributed:&nbsp; </h3>
      <p class="text-justify">   
                Java is designed for the distributed environment of the internet.  
          </p>    
                 <h3>Dynamic:&nbsp; </h3>
      <p class="text-justify">   
              Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time.
          </p>          
                        
          </div>
            <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Importance of Java to the Internet </h3>
      <p class="text-justify">   
             Java has had a profound effect on the Internet. This is because; Java expands the Universe of objects that can move about freely in Cyberspace. In a network, two categories of objects are transmitted between the Server and the Personal computer. They are: Passive information and Dynamic active programs. The Dynamic, Self-executing programs cause serious problems in the areas of Security and probability. But, Java addresses those concerns and by doing so, has opened the door to an exciting new form of program called the Applet.

          </p> 
                </div>
                 <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Java can be used to create two types of Programs </h3>
       <p class="text-justify">   
               
            <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;"><b>Applications and Applets: </b>An application is a program that runs on our Computer under the operating system of that computer. It is more or less like one creating using C or C++. Java’s ability to create Applets makes it important. An Applet is an application designed to be transmitted over the Internet and executed by a Java –compatible web browser. An applet is actually a tiny Java program, dynamically downloaded across the network, just like an image. But the difference is, it is an intelligent program, not just a media file. It can react to the user input and dynamically change.</span> 
         
           <div style="clear:both;"></div>
           <br />
            </p>
       </div>
            
            
              <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Java is too Effective </h3>
       <p class="text-justify">   
               Java has caused more excitement than any development on the Internet since Mosaic. Java was the first way to include inline sound and animation in a web page. Java also lets users interact with a web page. Instead of just reading it and perhaps filling out a form, users can now play games, calculate spreadsheets, chat in real-time, get continuously updated data and much, much more.
           </p> 
                    <p class="text-justify">   
                        <b>Here are just a few of the many things Java can do for a web page:</b></p>
                  <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Inline sounds that play in real-time whenever a user loads a page.</span> 
             </p>
                   <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Music that plays in the background on a page.</span> 
             </p>
                   <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Cartoon style animations.</span> 
             </p>
                    <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Real-time video.</span> 
             </p>
                    <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Multiplayer interactive games</span> 
             </p>
                     <div style="clear:both;"></div>
           <br />
       </div>
            


             <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">What makes Java special</h3>
    
                       <p class="text-justify"> 
          e.g. let’s say you want to use EPS files on your Web site. Previously you had to wait until at least one web browser implemented EPS support. Now with the help of java you can write your own code to view EPS files and send it to any client that requests your page at the same time they request the EPS file.
            </p>
                       <p class="text-justify"> 
           E.g. suppose you want people to be able to search your electronic card catalog. However, the card catalog database exists on a mainframe system that doesn't speak HTTP. Before Java you could hope that some browser implemented your proprietary card catalog protocol or you could try to program some intermediate cgi-bin on a UNIX box that can speak HTTP and talk to the card catalog, not an easy task. With Java when a client wants to talk to your card catalog you can send them the code they need to do so. You don't have to try to force things through an http server on port 80 that were never meant to go through it. If that were all Java was, it would still be more interesting than a <'marquee'> or <'frame'> tag in some new browser beta. 
            </p>
                       <p class="text-justify"> 
           Java is platform independent. A Java program can run equally well on any architecture that has a Java enabled browser. With the release of Netscape Navigator 2.0 that includes Windows 95, Windows NT, the Mac OS, Sun Solaris, Sun OS 4.1.3, SGI IRIX, OSF/1, HP-UX with more to come. Java isn't just for web sites. Java is a programming language that lets you do almost anything you can do with a traditional programming language like Fortran or C++. However, Java has learned from the mistakes of its predecessors. It is considerably cleaner and easier to use than those languages.

            </p>
       </div>

              <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Scope of Java in India </h3>
       <p class="text-justify"> 
           In today’s era of competition, organizations are struggling to stand first and get more and more benefits in every field. In India, Information technology is the one, which has held the first position for long years with many innovative ideas and trends. There are many ways to develop nay product or application. When we talk of programming languages and technologies, Java is the most popular and common platform, which used to develop several applications for the systems as well as embedded devices like mobile, laptops, tablets and many more. It is an object-oriented programming language and has a simple object model, as it has derived from C and C++. It provides a virtual machine, which is accumulated with byte-code and because of this bytecode java is platform independent and portable language as well as highly secured.
            </p>
                       <p class="text-justify"> 
         You can simply install Java on any PC and because of its portable concept it enables developers to run programs anywhere. Also, Java is platform independent and thanks to the internet, so many people have been able to make a difference, earn a place in the spotlight with their own framework or tool, be recognized for their contribution, and really influence the Java world.
            </p>
                     
       </div>


            <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Future Scope of Java Programmers in India </h3>
       
                    <p class="text-justify">   
                        <b>Following are some of the points that shows opportunities for Java Developers in India:</b></p>
                  <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">India’s $150 billion IT services outsourcing industry is adapting to the changes that are fast setting in because of automation and higher adoption of digital technologies.</span> 
             </p>
                   <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">People’s Popularity of Programming Language index, which ranks languages according to popularity. It is based on tutorial searches, says Python, JavaScript, R, and Swift are gaining attraction in India though Java and PHP still retain the largest share of search.</span> 
             </p>
                   <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">There is one clear trend from the multiple surveys on the most widely used programming language worldwide: Java and JavaScript still rule the coding world.</span> 
             </p>
                    <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Government projects like Digital India and Demonetization surely will give rise to demand for Java Programmers in every company going digital.</span> 
             </p>
                    <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">The opportunities available for a Java Programmer are immense, and their technical knowledge is very valuable. Best of all, to be an expert in Java Programming, you don’t necessarily have to get a college degree. Just take the right training and improve your skills, and you are eligible to become a Java Programmer with bright future.</span> 
             </p>
                 <p class="text-justify">   
                        <b>Skills required to become Java Programmer: </b></p>
                  <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">JSP / Servlets.</span> 
             </p>
                   <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Web Frameworks like Struts /Struts 2/ Springs.</span> 
             </p>
                   <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Service Oriented Architecture / Web Services – SOAP / REST.</span> 
             </p>
                    <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Web Technologies like HTML, CSS, JavaScript and jQuery, AJAX.</span> 
             </p>
                    <p class="text-justify">   
           <span><i class="fa fa-hand-o-right"></i></span>&nbsp<span style="width:97%;float:right;">Markup Languages like XML and JSON. </span> 
             </p>
                   <div style="clear:both;"></div>
           <br />
       </div>
             <div class="col-lg-12">
            <h3 style="color: #FF0000; font-weight: bold;">Cities that offer the highest salaries to Java Developers in India:  </h3>
       
                 
                  <p class="text-justify"> 
                    Gurgaon, Bangalore, New Delhi, Mumbai, Pune, Hyderabad, Chennai, Kolkata, Ahmedabad
            
</p>
<br />
             </div>
           
             <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=408&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="408" height="180" scrolling="no" class="fb-ifrme-460" ></iframe>
 <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=244&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="244" height="180" scrolling="no" class="fb-ifrme-270" ></iframe>



            
              

            
             </div>


 <div class="right" style="padding-top:12px;">
    
    <div class="right_box margin-top" style="background: #fff; box-shadow: 0px 0px 4px 0px;">
        <div class="without_border dwl" >
          <div class="brochiframe"  id="brochiframe">
          
            <iframe name="broucher" style="height:500px; width :650px;"></iframe>
            <a href="#" onclick="clsifrm()"; >
            <img alt="Close" src="images/close.png" style="margin-top:-67%; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a>
               
          </div>

           <a href="BroucherDownload.aspx?data=Java Broucher" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0" alt="Brochure Download Image" /></a>     
             
        </div> 
    </div>

    <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="" />
</div>

         
     <div class="right_box margin-top">
 <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;"> Arrange a Call Back</h1>
 <div class="rounded_box" style="background-color:white;">

<table class="table2" id="tb1">
    <tr>
       <td>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtName" runat="server" Width="100%" class="input" style="margin-top:10%; text-transform: capitalize;" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" Width="100%" class="input" 
                                    MaxLength="10" style="margin-top:6%;" Placeholder="Mobile No." ></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtEmailId"  runat="server" Width="100%"  class="input" style="margin-top:5%;" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                        <tr>                           
                            <td>                               
                                <%--<asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox> --%>                              
                                </td>
                        </tr>
                       
                        <tr>                         
                            <td>                             
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass ="buton" style="margin-left:0%; margin-bottom:5%;width:100%;height:35px;font-size:19px;background-color:black;" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />                              
                                </td>
                        </tr>
                   </table>              
</div>
</div>      
     <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;">Book My Free Demo Class Now!  </h1>

               <div class="rounded_box" style="background-color:white;">
                  <table class="table2" id="tb2">
    <tr>
       <td>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoName" runat="server" Width="100%" class="input" style="margin-top:10%; text-transform: capitalize;" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtdemoName" ValidationExpression="[a-zA-Z ]*$" ForeColor="floralwhite"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtdemoMblno" runat="server" Width="100%" class="input" 
                                    MaxLength="10" style="margin-top:6%;" Placeholder="Mobile No."></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtdemomblno" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="floralwhite"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtdemoEmail"  runat="server" Width="100%"  class="input" style="margin-top:5%;" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtdemoEmail" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="floralwhite" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                       <tr>
                           <td>
                              <asp:TextBox id="txtdemoMsg" class="input" TextMode="multiline" width="100%" Rows="3" runat="server" style="margin-top:5%;" placeholder="Course Title / Description etc." />

                           </td>
</tr>
                      <tr>
                                              
                            <td>                             
                                <asp:Button ID="Btndemo" runat="server" Text="Submit" CssClass ="buton" style="margin-left:0%; margin-bottom:5%;width:100%;height:37px;font-size:19px;background-color:black;"  />                              
                                </td>
                        </tr>
                   </table>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>



                   <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;">Career Counselling</h1>
<div class="rounded_box" style="background-color:white;">
<div style="padding:10px;"> 
 <asp:Label ID="Label2"  style="text-align:center;" runat="server"  Font-Bold="True" Font-Size="9.3">
              <div style="width:100px;float:left;"><img src="images/silhouette.png" style="border-radius:100%;" width="150px" alt="Blank Person image" /></div>
                 <div > Speak to the Munish Mittal to know what's the best course for your career. Just call us on Munish Mittal  personal number for free career guidance. <br/> <br/>Thankyou! </span>
                                                               </div>               
                            
     <div  style="     border-radius: 5px;background: black; color: #fff;font-weight: bold;  font-size: 20px; padding: 9px 0px;"><span>+91 8360 052 717</span></div>

</asp:Label> </div>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>


  <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;"> Java Training in Chandigarh</h1>
  
     <div class="rounded_box">
         <div class="right_box margin-top" style="  text-align: center;">
             <iframe style=" width:95%;height:200px; " src="https://www.youtube.com/embed/kIB3xfYLyqc?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>

       
     <%--   <img class="img-responsive" src="images/java1.png" alt="pdf"  style="float:right;"/>--%>
            <br />
            <h1 style="width:95%;">Other Popular Courses/Training Programs </h1>
<div class="rounded_box" style="background-color:white;">
<p style="padding-top: 6px; padding-left:8%;"> 
 <asp:Label ID="lblmessgaelogin"  style="text-align:center;" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="9.3">
                                <a href="digital-marketing-course-training-in-chandigarh.aspx"> Digital Marketing Course</a> <br>
                              <a href="php-training-in-chandigarh.aspx">PHP\MySQL Course</a><br>
                            <a href="web-designing-training-in-chandigarh.aspx">Web Designing Course</a><br>
                              <a href="dot-net-training-in-chandigarh.aspx">.Net Course</a><br>                           
                            <a href="Android-training-in-chandigarh.aspx">Android Course</a><br>
                            <a href="iphone-training-in-chandigarh.aspx">iPhone Course</a><br>
                            <a href="software-testing-training-in-chandigarh.aspx"> Software Testing Course</a><br>
                            <a href="networking-training-in-chandigarh.aspx">Networking Course</a><br>
                            <a href="ccna-training-in-chandigarh.aspx">CCNA Course</a><br>
                            <a href="ccnp-training-institutions-chandigarh.aspx"> CCNP Course</a><br>
                            <a href="mcitp-training-in-chandigarh.aspx">MCITP Course</a><br>
                            <a href="seo-training-in-chandigarh.aspx">SEO,SMO &amp; Bidding  Course</a><br>
                            <a href="c-and-c-training-in-chandigarh.aspx">C\C++ Course</a><br>
                            <a href="online-bidding-freelancing.aspx">Online Bidding(FreeLancing) Course</a><br>
                            <a href="sql-server-database-dba-training-in-chandigarh-mohali.aspx">Oracle\SQL Server Course</a><br>
                            <a href="IoT-training-chandigarh-mohali-india.aspx"> IoT (Internet of Things) Course</a> <br>
                            <a href="Animation-and-Multimedia-training-in-chandigarh.aspx">Animation &amp; Multimedia Course</a><br>    
                            <a href="matlab-training-institute-in-chandigarh.aspx">MATLAB Course</a><br>
                            <a href="big-data-hadoop-course-chandigarh.aspx">BigData Course</a><br>
                           <a href="tally-erp-training-coaching-institute-in-chandigarh-mohali.aspx"> Tally Course</a> <br>
                         <a href="ethical-hacking-training-in-chandigarh-mohali.aspx">Ethical Hacking Course</a> <br>
                       <a href="cloud-computing-training-in-chandigarh-mohali.aspx"> Cloud Computing Course</a> <br>
                     <a href="advance-excel-course-training-in-chandigarh-mohali.aspx"> Advance Excel Course</a> <br /> <a href="summer-training-in-chandigarh-mohali.aspx">Summer Training</a><br /> <a href="computer-courses-in-chandigarh-mohali.aspx">Computer Courses</a> <br /> <a href="industrial-training-in-mohali.aspx">Industrial Training in Mohali</a> <br /> <a href="wordpress-training-in-chandigarh-mohali.aspx">WordPress Training</a> <br /> <a href="Asp-Net-MVC-training-in-chandigarh-mohali.aspx">Asp .Net MVC Training</a> <br /> <a href="laravel-php-framework-training-in-chandigarh-mohali.aspx">Laravel PHP Framework Training</a> <br /> <a href="AngularJS-training-course-chandigarh-mohali.aspx">AngularJS Training Course</a> <br /> <a href="nodejs-training-course-chandigarh-mohali.aspx">Node.js Training Course</a> <br /> <a href="reactjs-training-course-chandigarh-mohali.aspx">ReactJS Training Course</a> <br /> <a href="machine-learning-and-artificial-intelligence-with-python-course-chandigarh-mohali.aspx">Machine Learning & AI with Python</a> <br /> <a href="data-science-with-python-course-training-chandigarh-mohali.aspx">Data Science with Python</a> <br />


</asp:Label> </p>


     
    </div>
          </div>

           
  <div style="clear:both;"></div>
    
       <div style=" background-image:url(images/backhgjkl.jpg);background-repeat: round; padding-top:15px;padding-bottom: 30px;position:relative;height:100%;">  
       <div id="particles-js2" style="background:#f1f1f1;"></div>
  
             <p style="text-align:center;font-size:18px;"><span style="padding: 5px; background: red; color: white;text-shadow: 2px 2px 3px #969698;  border-radius: 8px;text-decoration: none;text-transform: uppercase;">Student Testimonials</span></p> 
      <div id="jssor_2" style="position:relative;margin:0 auto;top:0px;left:0px;width:1400px;height:300px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
       
 
      
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('logo-slider/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div  data-u="slides" style="cursor:default;position:relative;top:40px;left:22px;width:1400px;height:300px;overflow:hidden;">
             <div class="awrds-ach">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Jqn1fTjZCp8?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>        
            <div class="awrds-ach">
                 <iframe width="100%" height="100%" src="https://www.youtube.com/embed/YR_B5I62IeY?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
           
            <div>
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/dfELP3eM9HY?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
            <div>
                 <iframe width="100%" height="100%" src="https://www.youtube.com/embed/9zZvXZDq6_Q?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
           
          
           
        </div>
      
       
        <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span>
    </div>

             <div><br />
             
          </div>
      </div>
         <div style="clear:both;"></div>
                              <br /><br />
<p style="text-align:center;"><span class="bkmydemo"> <a href="free-demo-class.aspx" style="color: white;"> Book My Free Demo Class Now! </a></span></p>
<br />
    <div class="col-lg-12">
               <h5 style="color: #FF0000; font-weight:bold;">Top Search</h5>
                <a href="#">java training</a>, <a href="#">learn java</a>, <a href="#">java certification</a>, <a href="#">java course</a>, <a href="#">learn java programming</a>, 
                <a href="#">java tutorial</a>, <a href="#">java for beginners</a>, <a href="#">advanced java training</a>, <a href="#">java programming</a>, <a href="#">core java training</a>, 
                <a href="#">how to learn java</a>, <a href="#">java training institute</a>, <a href="#">java internship</a>, <a href="#">java training in chandigarh</a>, <a href="#">best institute for core java in chandigarh</a>, <a href="#">java training in mohali</a>, 
                <a href="#">advanced java training in chandigarh</a>, <a href="#">java training companies in chandigarh</a>, 
                  <a href="#">java training in panchkula</a>, <a href="#">java training in mohali</a>, <a href="#">java industrial training in panchkula</a>, <a href="#">java industrial training in mohali</a>
                <br /><br />
            </div>
       <!-- // START Social Share Script-Code with likes ---------->
       <!-- // START Social Share Script  and Css  with Likes-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="social-share/jquery.floating-social-share.min.css" />
    <%-- <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>--%>
<script type="text/javascript" src="social-share/jquery.floating-social-share.min.js"></script>
    <!-- // END Social Share Script  and Css with Likes  -->
    <script>
  $("body").floatingSocialShare({
    buttons: [
      "facebook",  "twitter", "linkedin"
    ],
  
    url: "http://thinknexttraining.com/java-training-in-chandigarh.aspx"
  });
</script>
    <!-- // END Social Share Script-Code with likes ---------->



       <script type="text/javascript">
        jssor_2_slider_init = function() {

            var jssor_2_options = {
              $AutoPlay: 1,
              $AutoPlaySteps: 4,
              $SlideDuration: 300,
              $SlideWidth: 300,
              $SlideSpacing: 50,
              $Cols: 4,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $Steps: 4
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 1,
                $SpacingY: 1
              }
            };

            var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1400);
                    jssor_2_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*responsive code end*/
        };





    </script>
        <script type="text/javascript">jssor_1_slider_init();</script>
         <script type="text/javascript">jssor_2_slider_init();</script>

    
 
</asp:Content>
