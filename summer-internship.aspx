<%@ Page Language="VB" AutoEventWireup="false" CodeFile="summer-internship.aspx.vb" Inherits="summer_internship" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="viewport" content="width=device-width, user-scalable=no" />
    <meta content="#fff" name="theme-color">
    <title>Summer Internship</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/ico" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
   
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->

         <link href="new-bootstrap/css/style.css" rel="stylesheet" />
      <script  src="new-bootstrap/js/jquery.min.js"></script>

 <!-- Google Analytics -->
  <script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-45989872-1', 'thinknexttraining.com');
    ga('send', 'pageview');
      
</script>


<!-- Global site tag (gtag.js) - Google Ads: 987828495 -->

<script async src="https://www.googletagmanager.com/gtag/js?id=AW-987828495"></script>

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-987828495');
</script>

        <!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '1287913394619192');
  fbq('track', 'PageView');
</script>

<noscript>
    <img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=1287913394619192&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->


        <!-- //  New Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '650548395565669');
fbq('track', 'PageView');
</script>
<noscript>
<img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=650548395565669&ev=PageView&noscript=1" /></noscript>
<!-- End Facebook Pixel Code -->

    
   <script type="application/ld+json">
      {"@context": "http://schema.org/",
  "@type": "Product",
  "name": "Summer Training in Chandigarh Mohali - ThinkNEXT",
  "image": "https://thinknexttraining.com/images/6-weeks-summer-training-chandigarh-1.jpg",
  "description": "Stipend Based or Free 6 Six Months/Weeks Industrial Training in Chandigarh Mohali. PHP Web Designing Java Android Digital Marketing Networking Training Course",
  "review":{
  "reviewBody":"Digital Marketing Course in Chandigarh",
  "author":"ThinkNEXT"
},
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "5",
    "bestRating": "5",
    "reviewCount": "99083"
  }
}
</script>
    <style>
  
      .thinknextwhy {
         background: #060e1e;
     background-size: cover;
    }

      .thinknext-edge-section h4 {
    color: #fff;
    font-weight: bold;
    font-size: 30px;
}
      .thinknext-edge-section p {
    font-size: 15px;
    color: #fff;
    letter-spacing: 0.2pt;
}
      .thknxt-edge p span {
    float: right;
    width: 95%;
    color: #fff !important;
}
     
  
    #profiles .profile {
    padding: 10px;
    border: 4px solid #fff;
}
    .offer-discount{
    position: absolute;
    background: #FF9800;
    color: #fff;
    padding: 6px 11px;
    font-size: 15px;
    font-weight:bold;
  
}
  .course-boxes span{
      font-size: 14px;
  }
  .course-boxes del{
      font-size: 14px;
  }
  .h4, h4 {
    font-size: 20px;
}
     .bg-grey{  background: #efeeee;}
       .shadow-lg{box-shadow: 0 1rem 3rem rgba(0,0,0,.175)!important;}
         @media screen and (max-width:768px) {
        .main-head {
            font-size: 30px;
        }
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main-image">
                <img src="images/online-sale-course.jpg" title="Summer Internship in India" alt="Summer Internship in India" />
            </div>

            <section style="background: #e8edf2; padding: 20px;">
                <div class="container text-center">
                    <h2 style="color: #2d3192; font-weight: bold;">20000+ STUDENTS TRUST OUR ONLINE COURSES</h2>
                </div>
            </section>

            <section>
         <div class="jackopt-offer-img">
             <br>
              <p class="threetimesaward">4 Times National Award Winner Company</p>

             <img src="images/digital-marketing-course-mohali-sonalibendre.jpg" alt="Summer Internship in India" title="Summer Internship in India">
              <img src="images/digital-marketing-course-mohali-sunielshetty.jpg" alt="Summer Internship in India" title="Summer Internship in India">
             <img src="images/digital-marketing-training-in-mohali-krismak.jpg" alt="Summer Internship in India" title="Summer Internship in India">
             <img src="images/digital-marketing-training-mohali-surindrapal.jpg" alt="Summer Internship in India" title="Summer Internship in India">
            
             <div class="clear-both"></div>
               </div>
            </section>
       <section class="plr-30 ptb-10">
    <div class="col-sm-12">
        <h2 class="heading-red text-center"><strong>Summer Internship Courses with ThinkNEXT</strong></h2>
        <br />
    </div>
    <h3 class="text-center"><strong>Summer Internship for CSE/IT Students</strong></h3>
    <br />
    <div class="row course-boxes">
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/php-online-course-thinknext-thumbnail.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/lp/php-online-course.html" target="_blank"> PHP Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/php-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/android-online-course-thinknext-thumbnail1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://www.thinknexttraining.com/lp/android-course.html" target="_blank"> Android Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://www.thinknexttraining.com/lp/android-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/java-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/java-online-course.html" target="_blank"> Java </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/java-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/digitalmarketing1-min.png" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/digital-marketing-online-course.html" target="_blank"> Digital Marketing Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/digital-marketing-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/web-designing-course-thumbnail1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/web-designing-course.html" target="_blank"> Web Designing Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 699.00 </strong></span> <del><strong>Rs 6990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/web-designing-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">80% OFF</div>
                <img class="width-100" src="images/online-ai-course.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" target="_blank"> Artificial intelligence </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 1500.00 </strong></span>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">95% OFF</div>
                <img class="width-100" src="images/python1-min.png" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" target="_blank"> Python Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 1499.00 </strong></span> <del><strong>Rs 30000.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">95% OFF</div>
                <img class="width-100" src="images/machinelearning-usingpython-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" target="_blank"> ML and DL Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 1499.00 </strong></span> <del><strong>Rs 30000.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">95% OFF</div>
                <img class="width-100" src="images/data-science-withpython-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="http://www.thinknexttraining.com/lp/ai-online-courses.html" target="_blank"> Data Science using Python </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 1499.00 </strong></span> <del><strong>Rs 30000.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="http://www.thinknexttraining.com/lp/ai-online-courses.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">80% OFF</div>
                <img class="width-100" src="images/wordpress-online-course-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank"> WordPress Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 2000.00 </strong></span> <del><strong>Rs 10000.00 </strong></del><strong> <a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">80% OFF</div>
                <img class="width-100" src="images/excel-online-course.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank"> MS Excel </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 2000.00 </strong></span> <del><strong>Rs 10000.00 </strong></del><strong> <a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">80% OFF</div>
                <img class="width-100" src="images/c-and-c-plus-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank"> C and C++ </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 2000.00 </strong></span> <del><strong>Rs 10000.00 </strong></del><strong> <a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
    </div>

    <hr />
</section>
      <section class="plr-30 ptb-10">
         
          <h3 class="text-center"><strong>Summer Internship for Electronics/Electrical Engineering Students</strong></h3>
        <br>
            
        <div class="row course-boxes">
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">90% OFF</div>
            <img class="width-100" src="images/thumbnail21-min.png" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/iot-robotics-online-course.html" target="_blank"> IOT and Robotics </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/iot-robotics-online-course.html " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">80% OFF</div>
            <img class="width-100" src="images/industrialautomation-plc-scada-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank"> PLC-SCADA Course </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 2000.00 </strong></span> <del><strong>Rs 10000.00 </strong></del><strong> <a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">80% OFF</div>
            <img class="width-100" src="images/autocad-electrical-thinknext1-min.jpg" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank"> AutoCAD Course </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 2000.00 </strong></span> <del><strong>Rs 10000.00 </strong></del><strong> <a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">80% OFF</div>
            <img class="width-100" src="images/embedded-systems1-min.png" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="#" target="_blank"> Embedded Systems </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 2000.00 </strong></span> <del><strong>Rs 10000.00 </strong></del><strong> <a class="pull-right btn btn-success btn-sm" href="# " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
</div>     
        <hr>
            </section>    

            <section class="plr-30 ptb-10">
         
          <h3 class="text-center"><strong>Summer Internship for Mechanical Engineering Students</strong></h3>
        <br>
       <div class="row course-boxes">
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">90% OFF</div>
            <img class="width-100" src="images/solidworks-thinknext1-min.jpg" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/SolidWorks-online-course.html" target="_blank"> SolidWorks Course </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/SolidWorks-online-course.html " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">90% OFF</div>
            <img class="width-100" src="images/Catia-Online-Course-1-ThinkNEXT-min.jpg" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/online-catia-course.html" target="_blank"> CATIA Course </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/online-catia-course.html " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">90% OFF</div>
            <img class="width-100" src="images/autocad_cnc.jpeg" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html" target="_blank"> AutoCAD CNC Programming </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
            <div class="offer-discount">90% OFF</div>
            <img class="width-100" src="images/autocad1-min.png" alt="Online Course Training in India" />
            <div class="pd-10 bg-grey">
                <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html" target="_blank"> AutoCAD Course </a></h4>
            </div>
            <div class="bg-white text-left pd-20">
                <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-cnc-online-course.html " target="_blank">Buy Now </a></strong>
            </div>
        </div>
    </div>
</div>


        <hr>
            </section>

            <section class="plr-30 ptb-10">
    <h3 class="text-center"><strong>Summer Internship for Civil Engineering Students</strong></h3>
    <br />
    <div class="row course-boxes">
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/staadpro-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/staad-pro-online-course.html" target="_blank"> STAAD Pro Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/staad-pro-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/revit-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/revit-online-course.html" target="_blank"> Revit Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/revit-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/autocad-3dmax-onlinecourse.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html" target="_blank"> AutoCAD and 3DS MAX </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="text-center margin-bottom20 bg-warning shadow-lg mb-4 bg-white rounded">
                <div class="offer-discount">90% OFF</div>
                <img class="width-100" src="images/autocad-online-course-thinknext1-min.jpg" alt="Online Course Training in India" />
                <div class="pd-10 bg-grey">
                    <h4 class="mt-0 mb-0 text-center"><a href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html" target="_blank"> AutoCAD Course </a></h4>
                </div>
                <div class="bg-white text-left pd-20">
                    <span><strong>Rs 999.00 </strong></span> <del><strong>Rs 9990.00 </strong></del>
                    <strong> <a class="pull-right btn btn-success btn-sm" href="https://thinknexttraining.com/lp/autocad-3dsmax-online-course.html " target="_blank">Buy Now </a></strong>
                </div>
            </div>
        </div>
    </div>

    <div class="clear-both"></div>
</section>
<section class="pd-30 page-div">
    <div class="row m-0">
         <div class="col-sm-12">
              <h3 class="text-center"><strong>Summer Internship for Management (MBA/BBA/B.Com) Students</strong></h3> 
             <br>         
             </div>
             <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
     
    <img class="width-100" src="images/human-resources-online-training.jpg" alt="Summer Internship in India">
          <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/hr-management-online-course.html">HR Management Course</a></h4>
     
     </div>
             </div>
                <div class="col-lg-3">
 <div class=" border border-secondary margin-bottom20">
    
     <img class="width-100" src="images/marketing-online-training.jpg" alt="Summer Internship in India">
       <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/marketing-management-online-course.html">Marketing  Course</a></h4>
     </div>
             </div>
                <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
   
     <img class="width-100" src="images/finance-online-training.jpg" alt="Summer Internship in India">
          <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/finance-management-online-course.html">Finance Management Course</a></h4>
     </div>
             </div>
                <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
    
    <img class="width-100" src="images/tally-online-training.jpg" alt="Summer Internship in India">
            <h4 class="text-center ptb-10"><a href="tally-online-course.aspx">View Course Detail</a></h4>
     </div>
             </div>

                <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
    
    <img class="width-100" src="images/excel-online-course.jpg" alt="Summer Internship in India">
          <h4 class="text-center ptb-10"><a href="advance-excel-course-training-in-chandigarh-mohali.aspx">View Course Detail</a></h4>
     </div>
             </div>

             <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
    
    <img class="width-100" src="images/digital-marketing-online-course-1.jpg" alt="Summer Internship in India">
           <h4 class="text-center ptb-10"><a href="https://thinknexttraining.com/lp/digital-marketing-online-course.html">Digital Marketing Course</a></h4>
     </div>
             </div>

             <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
    
    <img class="width-100" src="images/sales-distribution-online-course.jpg" alt="Summer Internship in India">
         <h4 class="text-center ptb-10"><a href="sap-sd-training.aspx">View Course Detail</a></h4>
     </div>
             </div>

             <div class="col-lg-3">
 <div class="border border-secondary margin-bottom20">
    
    <img class="width-100" src="images/international-business.jpg" alt="Summer Internship in India">
           <h4 class="text-center ptb-10"><a href="international-business-online-course.aspx">View Course Detail</a></h4>
     </div>
             </div>
     </div>
            </section>

            <section  style="background:#38b7be;" class="p-4">
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
            <section class="py-4 ">
        <div class="container">
            <h4 class="text-left h3 text-danger mb-3"><strong>Top 25 reasons why you should join ThinkNEXT</strong></h4>
            <h4 class="text-justify text-md-start"><strong>ThinkNEXT offers Summer Internship for Engineering/Polytechnic (All Branches), Management, Job seekers, Working Professionals and other students</strong></h4>
          
            <div class="col-lg-12 col-md-12 col-sm-12 text-justify">
                <ul class="welcomeLinks">
                    <li> Industrial Training/Internship from 4 times National Award Winner Company:
                        <ol type="1">
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


        </div>
    </form>

           <script>
               $(".popupvid").click(function () {
                   $("#video-view-curtain").css("display", "block");
                   var $this = $(this);
                   var $iframe = $("<iframe allowfullscreen>").attr("src", $this.data("link"));
                   //var $title = $("<h1>").text($this.data("title"));
                   var $close = $("<img>").attr("src", $this.data("img"));
                   //$("#video-view").html($title).append($iframe);
                   $("#video-view").html($close).append($iframe);
                   $iframe.wrap("<div class='class-video'>");
               });
               $("#video-view-curtain").click(function () {
                   $(this).css("display", "none");

               });
           </script>

</body>
</html>
