﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="download-syllabus-thanks.aspx.vb" Inherits="BroucherDownload" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Thanks Page</title>
    <link href="thanks-page-coversion/css/creative.min.css" rel="stylesheet">
    <style>
        header.masthead p {
            font-size: 2em;
        }
    </style>
    <!-- Global site tag (gtag.js) - Google Ads: 987828495 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-987828495"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'AW-987828495');
    </script>
    <!-- Event snippet for ThinkNEXTTrainingLeads conversion page -->
    <script>
        gtag('event', 'conversion', { 'send_to': 'AW-987828495/fcDLCIjJ768BEI-ihNcD' });
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1287913394619192');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" style="display:none"
             src="https://www.facebook.com/tr?id=1287913394619192&ev=PageView&noscript=1" />
    </noscript>
    <!-- End Facebook Pixel Code -->

       
</head>

<body>

       <script>
           fbq('track', 'Lead');
       </script>


  
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="http://www.thinknexttraining.com"><img src="images/Logo(PNG).png" style="width:200px;"></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto my-2 my-lg-0">
                   
                    <li class="nav-item">
                        <a class="nav-link" href="contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Masthead -->
      <form id="from" runat="server">                       <!-- Masthead -->
    <header class="masthead">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-center text-center">
                <div class="col-lg-10 align-self-end">
                    <h1 class="text-white font-weight-bold">Thanks for Submitting Your Data</h1>
                    <hr class="divider my-4">
                </div>
                <div class="col-lg-8 align-self-baseline">
                    <p class="text-white-75 font-weight-light mb-5">Click the link below to Download Syllabus</p>
                     <asp:Button ID="btnadd" runat="server" class="btn btn-primary btn-xl" Text="Download Now" OnClick="btnadd_Click1" onclientclick="Navigate()" />
                    
                </div>
                     <div class="col-12">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Label ID="lblresult" runat="server" Visible="False"></asp:Label>
                </div>     
            </div>
        </div>
    </header>

               
           
 

 
    </form>


       <!-- Footer -->
    <footer class="bg-light py-5">
        <div class="container">
            <div class="small text-center text-muted">Copyright &copy; 2022 - <a href="http://www.thinknexttraining.com">ThinkNEXT Technologies Pvt. Ltd.</a></div>
        </div>
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="thanks-page-coversion/vendor/jquery/jquery.min.js"></script>
    <script src="thanks-page-coversion/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <!-- Custom scripts for this template -->

</body>
</html>