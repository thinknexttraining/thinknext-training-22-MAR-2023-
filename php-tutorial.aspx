<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="php-tutorial.aspx.vb" Inherits="php_training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <title>PHP Tutorial - ThinkNEXT Technologies </title>
<meta name="description" content="PHP Training - Best Core and Advance PHP Industrial Training institute in Chandigarh Mohali Panchkula India. ThinkNEXT is best php training institute provides 100% job oriented PHP Course" />
<meta name="keywords" content="Php institute in Chandigarh, php courses in Chandigarh, php training in Chandigarh, php training institute in chandigarh, best institute for php in chandigarh, 6 weeks php industrial training in chandigarh, 6 months php industrial training in chandigarh, Php Training Company in Chandigarh, Php Training Company in Mohali, Php Training Company in Panchkula INDIA, Php Training in Mohali Chandigarh panchkula, PHP Course, PHP Training Institute, Php Industrial Training, Php Website Designing, Core Php, Advance PHP." />
 <!-- Facebook sharing image show  -->
     <link rel="image_src" href="http://www.thinknexttraining.com/share-images/php-training.png" />
    <meta property="og:image" content="http://www.thinknexttraining.com/share-images/php-training.png" />
     <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="628" />
     <!--  End// Facebook -->
    <!-- google+ sharing image,Title,Description show  -->
    
   <!--  End// Google+ -->

<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">
<meta name="robots" content="index, follow" />

<meta name="copyright" content="ThinkNEXT"/>
<link rel="canonical" href="http://www.thinknexttraining.com/php-training-in-chandigarh.aspx" />
     <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel='stylesheet' id='Link2' href="bootstrap/css/bootstrap.css" type='text/css' media='all' />
    <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
<style type="text/css">
    
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
        @media screen and (max-width: 460px) {
            .bkmydemo {
                font-size: 15px;
                padding: 13px 9px;
            }
            .container{
                padding-right: 5px;
    padding-left: 5px;

            }
        }



    #matter h3
    {
        font-family: arial, Helvetica, sans-serif;
        font-size: 14px;
        color: Green;
    }

    #matter ul
    {
        font-family: arial, Helvetica, sans-serif;
        font-size: 12px;
        line-height: 19px;
    }

    #image2
    {
        margin-top: 188px;
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

    div.gdl-header-wrapper
    {
        width: 100%;
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
        input[type="text"]:focus
 {
 box-shadow: 0 0 5px #d14843;
   
    border: 1px solid #d14843;
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

    <%--<script type="text/javascript" >
        $(document).ready(function () {
            var state = document.getElementById('<%=brochiframe.ClientID%>').style.display;

                 if (state == 'block') {

                     document.getElementById('<%=brochiframe.ClientID%>').style.display = 'none';
                } else {
                    document.getElementById('<%=brochiframe.ClientID%>').style.display = 'block';
                }
             });
          
        </script>--%>

  <%--   <div class="container">

  <div class="gdl-header-wrapper">
   <h1 class="gdl-header-title">

PHP Training in Chandigarh&nbsp;&nbsp; </h1></div>
    <div class="row">   
    

<br/>
        </div>
         </div>--%>

     
    <br />
    <div class="container">
        <div class="col-lg-12">
    <h1 class="gdl-header-title">PHP Tutorial in Chandigarh Mohali Panchkula &nbsp;&nbsp; </h1>
            <br /> <br />

            <strong>What is PHP</strong>
            <br/>
          
            <p align="justify"><strong>PHP</strong> is a server-side scripting language designed primarily for web development but also used as a general-purpose programming language. PHP originally stood for Personal Home Page, but it now stands for the PHP: Hypertext Preprocessor.PHP code may be embedded into HTML, or it can be used in combination with various web template systems, web content management systems and web frameworks. It is used to manage dynamic content, databases, session tracking, even build entire e-commerce sites. It is integrated with a number of popular databases, including MySQL, PostgreSQL, Oracle, Sybase, Informix, and Microsoft SQL Server.
        </b>
</p>
            </div>
        
      <%--  <img class="img-responsive shake" src="images/phpimage.jpg" alt="pdf" style="margin: 45px 0px 0px 0px; padding: 0 0 0 56px;" />--%>
        </div>
    
       <div class="container" style="text-align:justify;">
        <div class="col-lg-8" style="padding-left:0;padding-right:0;">
            
    <div class="col-lg-12">

    <h3 style="color: #FF0000; font-weight:bold;">Common Uses of PHP</h3>
         <i class="fa fa-hand-o-right"></i>&nbsp;PHP performs system functions, i.e. from files on a system it can create, open, read, write, and close them.<br/>
         <i class="fa fa-hand-o-right"></i>&nbsp;PHP can handle forms, i.e. gather data from files, save data to a file, through email you can send data, return data to the user.<br/>
         <i class="fa fa-hand-o-right"></i>&nbsp;You add, delete and modify elements within your database through PHP.<br/>
         <i class="fa fa-hand-o-right"></i>&nbsp;Access cookies variables and set cookies.<br/>
         <i class="fa fa-hand-o-right"></i>&nbsp;Using PHP, you can restrict users to access some pages of your website.<br/>
         <i class="fa fa-hand-o-right"></i>&nbsp;It can encrypt data.<br/>
         <br />
         
       <h3 style="color: #FF0000; font-weight:bold;">Features of PHP </h3>
       <p><strong>Cross  Platform Compatibility</strong> –&nbsp;It&nbsp;is used to create the  desktop application by using advanced PHP features.<br />
  <strong>Variables</strong> –&nbsp;PHP allows changing the variable name  dynamically by using&nbsp;variable  variables.<br />
  <strong>Magic  Method</strong> –&nbsp;PHP has built in methods  starts with __ (double underscore). These methods can&rsquo;t be called directly.  Rather, it will be called on the event basis.&nbsp;For example, __clone() will  be called, when the&nbsp;clone  keyword&nbsp;is used.<br />
  <strong>Extended  Regular Expression</strong> –&nbsp;PHP provides REGEX methods with extensive parsing and pattern matching  mechanism with remarkable speed.</p>
           <br />

          
<h3 style="color: #FF0000; font-weight:bold;">Why Do We Use PHP?</h3>
       <p>PHP  stands for Hypertext Preprocessor and is a server-side programming language. There  are many reasons to use PHP for server-side programming, firstly it is a free  language with no licensing fees so the cost of using it is minimal. A good  benefit of using PHP is that it can interact with many different database  languages including MySQL. We work with MySQL at Blue line media since this is  also a free language so it makes sense to use PHP. Both PHP and MySQL are  compatible with an Apache server which is also free to license. PHP can also  run on Windows, Linux and Unix servers.<br />
  Due  to all these languages being free it is cheap and easy to setup and create a  website using PHP.<br />
  PHP  also has very good online documentation with a good&nbsp;framework&nbsp;of  functions in place. This makes the language relatively easy to learn and very  well supported online. There are countless forums and tutorials on various PHP  methods and problems so it is usually very easy to find help if you need it.</p>
            
     <br />
           
<h3 style="color: #FF0000; font-weight:bold;">PHP Latest Version</h3>

        <p>
            Why 7 and not 6? Let’s just say, unicode didn’t go so well. As with many projects, requirements were not well defined and people couldn’t agree on things, so the project ground to a halt. Besides unicode, for encoding special and international characters, almost all the features being discussed for PHP 6 were eventually implemented in PHP 5.3 and later, so we really didn’t miss anything else. Through it all, many things were learned and a new process for feature requests was put in place. When the feature set for a major release was accepted, it was decided, to avoid confusion with a dead project, and to skip to version 7 for the latest release.

        </p>
        <br />
           
<h3 style="color: #FF0000; font-weight:bold;">So what makes PHP 7 so special?</h3>
        <p><strong>Speed:-</strong> 
            The developers worked very hard to refactor the PHP codebase in order to reduce memory consumption and increase performance. And they certainly succeeded.
Benchmarks for PHP 7 consistently show speeds twice as fast as PHP 5.6 and many times even faster! Although these results are not guaranteed for your project, the benchmarks were tested against major projects, Drupal and WordPress, so these numbers don’t come from abstract performance tests.
 
With statistics that show 25% of the web being run on WordPress, this is a great thing for everyone.
</p>
 
       <p>  <strong>Type Declarations:-</strong> Type declarations simply means specifying  which type of variable is being set instead of allowing PHP to set this  automatically. PHP is considered to be a weak typed language. In essence, this  means that PHP does not require you to declare data types. Variables still have  data types associated with them but you can do radical things like adding a  string to an integer without resulting in an error. Type declarations can help  you define what should occur so that you get the expected results. This can  also make your code easier to read. We&rsquo;ll look at some specific examples  shortly.<br />
  Since PHP 5, you can use type hinting to  specify the expected data type of an argument in a function declaration, but  only in the&nbsp;declaration.  When you call the function, PHP will check whether or not the arguments are of  the specified type. If not, the run-time will raise an error and execution will  be halted. Besides only being used in function&nbsp;declarations, we were also limited to basically 2 types. A class  name or an array.&nbsp;<br />
  Here&rsquo;s an example:</p>
<pre>function enroll(Student $student, array $classes) {
  foreach ($classes as $class) {
      echo &quot;Enrolling &quot; . $student-&gt;name . &quot; in &quot; . $class;
   }
}</pre>
<pre>enroll(&quot;name&quot;,array(&quot;class 1&quot;, &quot;class 2&quot;)); // Catchable fatal error: Argument 1 passed to enroll() must be an instance of Student, string given</pre>
<pre>enroll($student,&quot;class&quot;); // Catchable fatal error: Argument 2 passed to enroll() must be of the type array, string given</pre>
<pre>enroll($student, array(&quot;class 1&quot;, &quot;class 2&quot;));</pre>
<p>If we were to create a function for enrolling  students, we could require that the first argument be an object of the student  class and the second argument to be an array of classes. If we tried to pass  just the name instead of an object we would get a fatal error. If we were to  pass a single class instead of an array, we would also get an error. We are  required to pass a student object and an array.</p>
<pre>function stringTest(string $string) {
&nbsp; &nbsp; echo $string;
 }
stringTest(&quot;definitely a string&quot;);</pre>
<p>If we were to try to check for a scalar  variable such as a string, PHP 5 expects it to be an object of the class  string, not the variable type string. This means you&rsquo;ll get a Fatal error:  Argument 1 passed to stringTest() must be an instance of string, string given.</p>

  <p><strong>Scalar Type Hints:-</strong> With PHP 7 we now have added Scalar types.  &nbsp;Specifically: int, float, string, and bool.<br />
  By adding scalar type hints and enabling  strict requirements, it is hoped that more correct and self-documenting PHP  programs can be written. It also gives you more control over your code and can  make the code easier to read.<br />
  By default, scalar type-declarations are  non-strict, which means they will attempt to change the original type to match  the type specified by the type-declaration. In other words, if you pass a  string that starts with a number into a function that requires a float, it will  grab the number from the beginning and remove everything else. Passing a float  into a function that requires an int will become int(1).</p>        

<h3>Return Type Declarations</h3>
<p>PHP 7 also supports Return Type Declarations  which support all the same types as arguments. To specify the return type, we  add a colon and then the type right before the opening curly bracket.</p>
<pre>function getTotal(float $a, float $b) : float {</pre>
<p>If we specify the return type of float, it  will work exactly like it has been in the previous 2 examples since the type  being returned was already a float. Adding the return type allows you to to  be&nbsp;<strong>sure</strong>&nbsp;your function returns what is expected as well as  making it easy to see upfront how the function works.</p>
<strong>Non-strict int</strong>
<p>If we specify the return type as int without  strict types set, everything will work the same as it did without a return  type, the only difference is that it will force the return to be an int. In the  third call the return value will truncate to 3 because the floating point will  be dropped</p>
<strong>Strict int</strong>
<p>If we turn strict types on, we&rsquo;ll get a Fatal  error: Uncaught TypeError: Return value of getTotal() must be of the type  integer, float returned. In this case we&rsquo;ll need to specifically cast our return  value as an int. This will then return the truncated value.</p>
<pre>declare(strict_types=1);
function getTotal(float $a, float $b) : int {
    // return $a + $b;
    // Fatal error: Uncaught TypeError: Return value of getTotal() must be of the type integer, float returned
  return (int)($a + $b); // truncate float like non-strict
 }
getTotal(2.5, 1); // changes int(1) to float(1.0) and returns int(3)</pre>

<h3 style="color: #FF0000; font-weight:bold;">Why? </h3>
       <p>The new Type Declarations can make code easier to read and forces things to be used in the way they were intended. Some people prefer to use unit testing to check for intended use instead. Having automated tests for your code is highly recommended, but you can use both unit tests and Type Declarations. Either way, PHP does not require you to declare types but it can definitely make code easier to read. You can see right at the start of a function, what is required and what is returned.</p>
        <p><strong>Error Handling </strong>The next feature we going to cover are the  changes to Error Handling. Handling fatal errors in the past has been next to  impossible in PHP. A fatal error would&nbsp;not invoke the error handler and would simply stop your script. On  a production server, this usually means showing a blank white screen, which  confuses the user and causes your credibility to drop. It can also cause issues  with resources that were never closed properly and are still in use or even  locked.<br />
  In PHP 7, an exception will be thrown when a  fatal and recoverable error occurs, rather than just stopping the script. Fatal  errors still exist for certain conditions, such as running out of memory, and  still behave as before by immediately stopping the script. An uncaught  exception will also continue to be a fatal error in PHP 7. This means if an  exception thrown from an error that was fatal in PHP 5 goes uncaught, it will  still be a fatal error in PHP 7.<br />
  I want to point out that other types of  errors such as warnings and notices remain unchanged in PHP 7. Only fatal and  recoverable errors throw exceptions.<br />
  In PHP 7, Error and Exception both implement  the new Throwable class. What that means is that they basically work the same  way. And also, you can now use Throwable in try/catch blocks to catch both  Exception and Error objects. Remember that it is better practice to catch more  specific exception classes and handle each accordingly. However, some  situations warrant catching any exception (such as for logging or framework  error handling). In PHP 7, these catch-all blocks should catch Throwable  instead of Exception.<br />
The Throwable interface is implemented by both  Exception and Error. Under Error, we now have some more specific error.  TypeError, ParseError, A couple arithmetic errors and an AssertionError.</p>  
        
          <br />
        <p><strong>Throwable Interface:-</strong> If Throwable was defined in PHP 7 code, it  would look like this</p>
<pre>interface Throwable
{
    public function getMessage(): string;
    public function getCode(): int;
    public function getFile(): string;
    public function getLine(): int;
    public function getTrace(): array;
    public function getTraceAsString(): string;
    public function getPrevious(): Throwable;
    public function __toString(): string;
    }</pre>
<p>If you&rsquo;ve worked with Exceptions at all, this  interface should look familiar. Throwable specifies methods nearly identical to  those of Exception. The only difference is that Throwable::getPrevious() can  return any instance of Throwable instead of just an Exception.<br />
  To catch any exception in PHP 5.x and 7 with  the same code, you would need to add a catch block for Exception AFTER catching  Throwable first. Once PHP 5.x support is no longer needed, the block catching  Exception can be removed.<br />
  Virtually all errors in PHP 5 that were  fatal, now throw instances of Error in PHP </p>   
        <br />

        <p><strong>Type Errors:-</strong> A TypeError instance is thrown when a  function argument or return value does not match a type declaration. In this  function, we&rsquo;ve specified that the argument should be an int, but we&rsquo;re passing  in strings that can&rsquo;t even be converted to ints. So the code is going to throw  a TypeError.</p>
<pre>function add(int $left, int $right) {
&nbsp; &nbsp; return $left + $right;
 }
try {
 &nbsp; &nbsp; echo add('left','right');
 } catch (\TypeError $e) {
 &nbsp; &nbsp; // Log error and end gracefully
 &nbsp; &nbsp; echo $e-&gt;getMessage(), &quot;\n&quot;;
 &nbsp; &nbsp; // Argument 1 passed to add() must be of the type integer, string given
 } </pre>
<p>This could be used for adding shipping and  handling to a shopping cart. If we passed a string with the shipping carrier  name, instead of the shipping cost, our Parse  Errors final total would be wrong and we would chance losing money on  the sale.</p>


<p><strong>Parse Errors:-</strong> A ParseError is thrown when an  included/required file or eval()&rsquo;d code contains a syntax error. In the first  try we&rsquo;ll get a ParseError because we called the undefined function var_dup  instead of var_dump. In the second try, we&rsquo;ll get a ParseError because the  required file has a syntax error.</p>
<pre>try {
&nbsp; &nbsp; $result = eval(&quot;var_dup(1);&quot;);
} catch (\Error $e) {
&nbsp; &nbsp; echo $e-&gt;getMessage(), &quot;\n&quot;;
&nbsp; &nbsp; //Call to undefined function var_dup()
}
try {
&nbsp; &nbsp; require 'file-with-parse-error.php';
} catch (ParseError $e) {
&nbsp; &nbsp; echo $e-&gt;getMessage(), &quot;\n&quot;;
&nbsp; &nbsp; //syntax error, unexpected end of file, expecting ',' or ';'
}</pre>
<p>Let&rsquo;s say we check if a user is logged in,  and if so, we want to include a file that contains a set of navigation links,  or a special offer. If there is an issue with that include file, catching the  ParseError will allow us to notify someone that that file needs to be fixed.  Without catching the ParseError, the user may not even know they are missing  something.</p>
    <p><strong>New Operators</strong><br />
        Spaceship Operator<br />
PHP 7 also brings us some new operators. The first one we’re going to explore is the spaceship operator. With a name like that, who doesn’t want to use it? The spaceship operator, or Combined Comparison Operator, is a nice addition to the language, complementing the greater-than and less-than operators.
The spaceship operator is put together using three individual operators, less than, equal, and greater than. Essentially what it does is check the each operator individually. First, less than. If the value on the left is less than the value on the right, the spaceship operator will return -1. If not, it will move on to test if the value on the left is EQUAL to the value on the right. If so, it will return 0. If not it will move on to the final test. If the value on the left is GREATER THAN the value on the right. Which, if the other 2 haven’t passed, this one must be true. And it will return 1.
The most common usage for this operator is in sorting.
</p>       

        <p><strong>Null Coalesce Operator</strong> <br />Another new operator, the Null Coalesce  Operator, is effectively the fabled if-set-or. It will return the left operand  if it is not NULL, otherwise it will return the right. The important thing is  that it will not raise a notice if the left operand is a non-existent variable.</p>
<pre>$name = $firstName ?? &nbsp;&quot;Guest&quot;;</pre>
<p>For example, name equals the variable  firstName, double question marks, the string &ldquo;Guest&rdquo;.<br />
  If the variable firstName is set and is not  null, it will assign that value to the variable name. Or else it will assign  &ldquo;Guest&rdquo; the variable name.<br />
  Before PHP 7, you could write something like</p>
<pre>if (!empty($firstName)) $name = $firstName;
else $name = &quot;Guest&quot;;</pre>
<p>What makes this even more powerful, is that  you can stack these! This operation will check each item from left to right and  when if finds one that is not null it will use that value.</p>
<pre>$name = $firstName?? $username ?? $placeholder ?? &ldquo;Guest&rdquo;; </pre>
<p>This operator looks explicitly for null or  does not exist. It&nbsp;<strong>will</strong>&nbsp;pick up an empty string.</p>


<p><strong>What is Easy User-land CSPRNG?</strong><br /> User-land refers to an application space that  is external to the kernel and is protected by privilege separation, API for an  easy to use and reliable&nbsp;<strong>C</strong>ryptographically&nbsp;<strong>S</strong>ecure&nbsp;<strong>P</strong>seudo <strong>R</strong>andom&nbsp;<strong>N</strong>umber&nbsp;<strong>G</strong>enerator in PHP.<br />
  Essentially secure way of generating random  data. There are random number generators in PHP, rand() for instance, but none  of the options in version 5 are very secure. In PHP 7, they put together a  system interface to the&nbsp;<strong>operating system&rsquo;s </strong>random number generator.  Because we can now use the operating system&rsquo;s random number generator, if that  gets hacked we have bigger problems. It probably means your entire system is  compromised and there is a flaw in the operating system itself.<br />
  Secure random numbers are especially useful  when generating random passwords or password salt.<br />
  What does this look like for you  as a developer? You now have 2 new functions to use: random_int and  random_bytes.</p>



   <p><strong>Random Bytes:-</strong> When using random_bytes, you supply a single  argument, length, which is the length of the random string that should be  returned in bytes. random_bytes then return a string containing the requested  number of cryptographically secure random&nbsp;<strong>bytes</strong>. If we combine this  with something like bin2hex, we can get the hexadecimal representation.</p>
<pre>$bytes = random_bytes(5); // length in bytes
var_dump(bin2hex($bytes));
// output similar to:&nbsp;string(10) &quot;385e33f741&quot;</pre>
<p>These are bytes not integers. If you are looking  to return a random number, or integer, you should use the random_int function.</p>        

     <p><strong>Random Int</strong> When using random_int you supply 2 arguments,  min and max. This is the minimum and maximum numbers you want to use.<br />
  For example:</p>
<pre>random_int(1,20);</pre>
<p>Would return a random number between 1 and  20, including the possibility of 1 and 20.<br />
  <em>If you are using the rand  function for anything even remotely secure, you&rsquo;ll want to change the rand  function to random_int.</em></p>    

<br />
        <h4  style="color: #FF0000; font-weight:bold;">Is PHP Scope Is Better Than Other Web Development Programming?</h4>
        <p>Php has good career opportunity, before few  years ago big MNC companies like, Infosys, Wipro, TCS prefer to hire Java  programmers and there was very low recruitment of people with profile of php.<br />
  But now lot&rsquo;s of big companies come with php projects  and increase the recruitment in this field as compare to Java and Dot net  programmers. You may also check the growth of php<br />
  When it comes to variety, php developers  works on Most of popular are&nbsp;based on its frameworks and CMS and they all  are very valuable and most demanded from eCommerce to blogging industry. That&rsquo;s  right only php will not work fine, you must have good knowledge of php  frameworks like, Zend, Laravel, Nette, Symfony2 and others.</p>
<br />
        <h4  style="color: #FF0000; font-weight:bold;">Most of Popular Online Portals Are Based On PHP</h4>

        <p>That&rsquo;s right most of popular sites like  Facebook, Yahoo, flicker, Digg, Delicious and many more. Know why I am adding  this point.<br />
I am just tell you one thing, that there are lots  of small and popular online web applications based on php are running online  and they all are managed and addons by php developers. Means you have lots of  opportunity to work with your dream companies</p>        

        <h4 style="color: #FF0000; font-weight:bold;">Build Career with PHP Freelancing Services</h4>
        <p>There is multiple scope with php, you are not  limited to jobs only for earning money. After getting good experience in this  field&nbsp;you can start your own php based services as a full time freelancer  or part time with your regular jobs. You can take them projects from online  bidding sites like, Upwork, Elance and others.<br />
  Everything you have to do is,  after completing your office time spend your time on build  beautiful&nbsp;profile on online bidding sites and bid on relevant projects you  can complete and perform the task in&nbsp;free&nbsp;time after office work and  can earn a lot. </p>


        <p><strong>Conclusion:  -&nbsp;</strong>At last I just want to say only  one thing, that if you need to build your career in any programming language,  php is most demanded today. But go with your interest, choose the career with  your personal needs and do hard work.</p>
 <br />
        <h4  style="color: #FF0000; font-weight:bold;">PHP Frameworks</h4>
       
    <p>PHP is one of the most favored server-side  scripting languages known for its simplicity,&nbsp;<em><strong>PHP frameworks </strong></em>complement  PHP, by providing developers with some pre-built modules, a platform to create  robust, reusable components, and by enabling faster development cycles.<br />
  PHP  frameworks give the users a basic structure, with some pre-built modules to  develop robust web applications faster. These frameworks enforce coding  standards and development guidelines hence standardizing the process and  stabilizing the product.<br />
PHP frameworks use&nbsp;<em><strong>Model View Controller(MVC)</strong></em>&nbsp;architecture,  where the development of the business logic is independent of both the  underlying data and the overlaying presentation view. MVC helps developers to  focus on their specific areas without worrying if their code will adversely be  affecting the development of the other modules or not. This breaking up of the  development process into independent modules increases the speed of the entire  development process and improves the stability and quality of the product.</p>
   
       <h4 style="color: #FF0000; font-weight:bold;">Advantages of Using Frameworks</h4> 
        <p>
  Rapid  development using the libraries and tools provided by the framework<br />
  Easy  to upgrade and maintain the developed applications<br />
  Excellent  community support<br />
  Security  features such as Input filtering and Output encoding<br />
</p>
<p>There  are a wide variety of PHP frameworks, many of them are open source frameworks.  The most popular open-source PHP frameworks are:</p>
<p>
  <strong>Laravel</strong><br />
</p>
<p>As far as frameworks go, Laravel takes the  cake with the most number of personal and professional users.</p>
<p>
  <strong>Symfony</strong><br />
</p>
<p>One  of the older players, Symfony is considered to be a stable base for many other  newer frameworks including Laravel. The quick adaptability and widely used  documentation of Symfony makes it one of the most dependable PHP frameworks.</p>
<p>
  <strong>CodeIgniter</strong><br />
</p>
<p>A  simple, powerful PHP framework, CodeIgniter is known for its flexibility and  hassle-free installation. CodeIgniter is supposed to have an easy learning  curve thus making it the best choice for beginners.</p>
<p>
  <strong> CakePHP</strong><br />
</p>
<p>One  of the oldest frameworks, CakePHP has retained its strong user base and has  continued to grow. It also boasts of an impressive portfolio consisting of  brands such as BMW and Express.</p>
<p>
  <strong>Zend Framework</strong><br />
</p>
<p>Zend  is considered to be a very stable and robust framework recommended for big,  enterprise-level projects. It has a wide variety of features which facilitates  the development of quality applications for enterprise clients.</p>
        
        
         </div>
 
            <div class="col-lg-12">
   <h3 style="color: #FF0000; font-weight:bold;"> &nbsp;PHP/MySQL Training Certification, Placement and other Activities</h3>
              
             <i class="fa fa-hand-o-right"></i>&nbsp Free Spoken English, Personality Development and Interview Preparation (HR+Technical) Classes on Daily basis so that students need not to struggle for jobs as a fresher<br />
  <i class="fa fa-hand-o-right"></i>&nbsp Life-Time Learning and Placement Card <br />
    <i class="fa fa-hand-o-right"></i>&nbsp 6 Months Training + Project Certificate By ThinkNEXT <br />
   <i class="fa fa-hand-o-right"></i>&nbsp PHP/MySQL Experience Certificate by ThinkNEXT <br />
   <i class="fa fa-hand-o-right"></i>&nbsp Job Interview Preparation <br />
   <i class="fa fa-hand-o-right"></i>&nbsp Multiple Job Interviews + 100% Job Assistance <br />
    <i class="fa fa-hand-o-right"></i>&nbsp Part Time / Full Time Job Offer for each student during training (Earn while you learn) <br />
    <i class="fa fa-hand-o-right"></i>&nbsp  One-to-one Project and Project will be made Live and to make it Live, ThinkNEXT will provide sub-domain and hosting <br />worth Rs. 3000/- absolutely free to each student for web based Project <br />
                <br />
                </div>
            <div style="clear:both;"></div>
                              <br /><br />
<p style="text-align:center;"><span class="bkmydemo"> <a href="free-demo-class.aspx" style="color: white;"> Book My Free Demo Class Now! </a></span></p>
<br />

 <div class="col-lg-12">
               <h5 style="color: #FF0000; font-weight:bold;">Top Search</h5>
                <a href="php-training.aspx">PHP Training</a>, <a href="learn-php.aspx">learn php</a>, <a href="php-learning-in-chandigarh.aspx">php learning</a>, <a href="php-classes.aspx">PHP class</a>, <a href="php-industrial-training.aspx">php industrial training</a>, 
                <a href="how-to-learn-php.aspx">how to learn php</a>, <a href="php-training-institute.aspx">php training institute</a>, <a href="php-course-syllabus.aspx">php course syllabus</a>, <a href="php-tutorial.aspx">php tutorial</a>,  
                <a href="php-programming-course.aspx">php programming course</a>, <a href="php-training-in-chandigarh.aspx">php training chandigarh</a>, <a href="php-internship-in-chandigarh.aspx">php internship</a>, <a href="php-training-course.aspx">php training course</a>, <a href="php-training-company-in-chandigarh.aspx">php training company in chandigarh</a>, 
                <a href="php-industrial-training-in-chandigarh.aspx">php industrial training in chandigarh</a>, <a href="php-institute-in-mohali.aspx">php institute in mohali</a>, <a href="php-course-in-panchkula.aspx">php course in panchkula</a>, <a href="php-classes-in-chandigarh.aspx">php classes in chandigarh</a>,  <a href="top-10-companies-providing-php-training-in-chandigarh.aspx">Top 10 Companies Providing PHP Training  in Chandigarh</a>, <a href="top-5-php-training-institutes-chandigarh-mohali.aspx">Top 5 PHP Training Institute in Chandigarh Mohali</a>,  <a href="php-training-in-mohali.aspx">php training in mohali</a>, 
               <a href="php-cms-course-in-chandigarh.aspx">php cms course in chandigarh</a> <br /><br />
            </div>


</div>
           <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="" />
</div>
   <div class="right" style="padding-top:12px;">
     <div class="right_box margin-top" style="background: #fff; box-shadow: 0px 0px 4px 0px;">
        <div class="without_border dwl" >

          <div class="brochiframe"  id="brochiframe">
          
            <iframe name="broucher" height="500px" width ="650px"><a href="#" onclick="frameclose();" ></iframe>
            <a href="#" onclick="clsifrm()"; >
            <img alt="Close" src="images/close.png" style="margin-top:-67%; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a>
               
          </div>
            <%--<img class="img-responsive shake" src="images/phpimage.jpg" alt="pdf" />--%>
           <a title="ThinkNEXT Brochure"  href="BroucherDownload.aspx?data=PHP Broucher" onclick="broucherdownload();"  target="broucher"><img src="images/download_brochure.png" border="0"  /> </a>
        </div> 
    </div>
         
     <div class="right_box margin-top">
 <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;"> Arrange a Call Back</h1>
 <div class="rounded_box" style="background-color:#fff;">

<table class="table2" id="tb1">
    <tr>
       <td>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
       </td>
       </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtName" runat="server" Width="100%" class="input" style="margin-top:10%; text-transform: capitalize;" placeholder="Name" ></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" Width="100%" class="input" 
                                    MaxLength="10" style="margin-top:6%;" Placeholder="Mobile No." ></asp:TextBox>

                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="txtMobile" ForeColor="Red" ></asp:RequiredFieldValidator>--%> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="Red"></asp:RegularExpressionValidator>

                                </td>
                        </tr>
                        <tr>
             
                            <td>
                                <asp:TextBox ID="txtEmailId"  runat="server" Width="100%"  class="input" style="margin-top:5%;" placeholder="E-mail ID" ></asp:TextBox>
                              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ></asp:RequiredFieldValidator> --%><asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"   ControlToValidate="txtEmailId" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                        <tr>                           
                            <td>                               
                                <%--<asp:TextBox ID="txtfranchisecode" runat="server" Visible="False" Text="TNK101" ></asp:TextBox> --%>                              
                                </td>
                        </tr>
                       
                        <tr>                         
                            <td>                             
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass ="buton" style="margin-left:0%; margin-bottom:6%; margin-top:6%;width:100%;height:35px;font-size:19px;background-color:black;" OnClick="btnsubmit_Click" OnClientClick="btnsubmit_Click" />                              
                                </td>
                        </tr>
                   </table>              
                </div>
            
            </div>      

     <%--  </ContentTemplate>
      </asp:UpdatePanel>--%>

       <%-- <div class="col-lg-6">
 <img class="img-responsive shake" src="images/phpimage.jpg" alt="pdf"  border="0" style="margin-top:24%; float:right;"/>
   <br /> --%>
  <%--<div class="right_box" style="margin-top:57%;">--%>

     <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;">Book My Free Demo Class Now!  </h1>

               <div class="rounded_box" style="background-color:#fff;">
                  <table class="table2" id="tb2">
    <tr>
       <td>
    <asp:Label ID="Label2" runat="server" ></asp:Label>
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
<div class="rounded_box" style="background-color:#fff;">
<div style="padding:10px;"> 
 <asp:Label ID="Label3"  style="text-align:center;" runat="server"  Font-Bold="True" Font-Size="9.3">
              <div style="width:100px;float:left;"><img src="images/silhouette.png" style="border-radius:100%;" width="150px" alt="Blank Person image" /></div>
                 <div > Speak to the Munish Mittal to know what's the best course for your career. Just call us on Munish Mittal  personal number for free career guidance. <br/> <br/>Thankyou! </span>
                                                               </div>               
                            
     <div  style="     border-radius: 5px;background: black; color: #fff;font-weight: bold;  font-size: 20px; padding: 9px 0px;"><span>+91 8360 052 717</span></div>

</asp:Label> </div>
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>
        <div class="right_box margin-top">
 <div class="rounded_box1" style="width: 270px; height: 215px;">
 <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fthinknexttechnologies&tabs=Thinknext&width=270&height=380&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="270" height="380" style="border:none;overflow:hidden" scrolling="no" ></iframe>
</div>
</div>

   <h1 style="width:95%;">Other Popular Courses/Training Programs </h1>
<div class="rounded_box" style="background-color:#fff;">
<p style="padding-top: 6px; padding-left:8%;"> 
 <asp:Label ID="lblmessgaelogin"  style="text-align:center;" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="9.3">
                                <a href="digital-marketing-course-training-in-chandigarh.aspx"> Digital Marketing Course</a> <br>
                            
                            <a href="web-designing-training-in-chandigarh.aspx">Web Designing Course</a><br>
                              <a href="dot-net-training-in-chandigarh.aspx">.Net Course</a><br>
                            <a href="java-training-in-chandigarh.aspx">JAVA Course</a><br>
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
<%-- </div>--%>

<%-- <div class="right_box" style="margin-top:9%; float:right">--%>

     
    </div>


         <h1 style="border-top-left-radius: 10px; border-top-right-radius: 10px;background-color: red;text-align: center;width: 100%;font-size:17px;margin:0px;"> PHP Training in Chandigarh Mohali</h1>
  
     <div class="rounded_box">
         <div class="right_box margin-top" style="  text-align: center;">
           <iframe style=" width:95%;height:200px; " src="https://www.youtube.com/embed/UP-DVqCHrRY?rel=0" frameborder="0" allowfullscreen></iframe>
         </div>
     </div>


     <h1 style="width:95%;">Related Articles</h1>
<div class="rounded_box" style="background:#fff;">
<p style="padding-top: 6px; padding-left:8%;">  <asp:Label ID="Label1"  
        style="text-align:center;" runat="server" 
           ForeColor="Red" Font-Bold="True" Font-Size="9.3">
<a href="best-php-training-in-chandigarh.aspx">Best 6 Weeks/Months PHP Training in Chandigarh </a><br />           
<a href="advance-wordpress-training-chandigarh-mohali.aspx"> Short term wordpress Industrial Training in Chandigarh </a><br />
</asp:Label> </p>

 <%--</div>

 </div>
 <div class="width_100"><a href="pdf files/PHP.pdf"/> <img class="img-responsive" src="images/adobe-pdf-logo1.png" style="margin-top:122%; float:right" alt="pdf"  border="0" /></a></div>
 </div>--%>
    
            </div>
        
     <div class="right_box margin-top">
        <div class="without_border" >
          
            <img class="img-responsive shake" src="images/phpimage.jpg" alt="pdf" />

         
        </div> 
    </div>
   </div>
   <%-- </div>--%>
      
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
  
    url: "http://www.thinknexttraining.com/php-training-in-chandigarh.aspx"
  });
</script>
    <!-- // END Social Share Script-Code with likes ---------->
     

    </div>
</asp:Content>

