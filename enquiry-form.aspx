<%@ Page Language="VB" AutoEventWireup="false" CodeFile="enquiry-form.aspx.vb" Inherits="enquiry_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
<title>FormWizard_v4</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="colorlib.com">

<link rel="stylesheet" href="form-assets/fonts/material-design-iconic-font/css/material-design-iconic-font.css">

<link rel="stylesheet" href="form-assets/vendor/date-picker/css/datepicker.min.css" >

<link rel="stylesheet" href="form-assets/css/style.css">
</head>
<body>
    <div class="wrapper">
        <div class="image-holder">
            <img src="form-assets/images/form-wizard.png" alt="">
        </div>
        <form action="#">
            <div class="form-header">
                <a href="#">#Academic Programs</a>
                <h3>Register for the course online</h3>
            </div>
            <div id="wizard">

                <h4></h4>
                <section>
                    <div class="form-row" style="margin-bottom: 26px;">
                        <label for="">
                           Your Name
                        </label>
                        <div class="form-holder">
                           <input type="text" class="form-control" />
                        </div>
                    </div>
            
                </section>

                <h4></h4>
                <section>
                    <div class="form-row">
                        <label for="">
                            Date of Birth:
                        </label>
                        <div class="form-holder">
                            <input type="text" class="form-control datepicker-here" data-language='en' data-date-format="dd - mm - yyyy" id="dp1">
                        </div>
                    </div>
                 
                </section>

                   <h4></h4>
                <section>
                    <div class="form-row">
                        <label for="">
                            Date of Birth:
                        </label>
                        <div class="form-holder">
                            <input type="text" class="form-control datepicker-here" data-language='en' data-date-format="dd - mm - yyyy" id="dp1">
                        </div>
                    </div>
                 
                </section>

                <h4></h4>
                <section>
                    <div class="form-row">
                        <label for="">
                            Course ID:
                        </label>
                        <div class="form-holder">
                            <input type="text" class="form-control" placeholder="Ex. abc 12345 or abc 1234L">
                        </div>
                    </div>
                             
                
                    <div class="checkbox-circle" style="margin-bottom: 48px;">
                        <label>
                            <input type="checkbox" checked>I agree all statement in Terms & Conditions
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </section>
            </div>
        </form>
    </div>
    <script src="form-assets/js/jquery-3.3.1.min.js"></script>

    <script src="form-assets/js/jquery.steps.js"></script>

    <script src="form-assets/vendor/date-picker/js/datepicker.js"></script>
    <script src="form-assets/vendor/date-picker/js/datepicker.en.js"></script>
    <script src="form-assets/js/main.js"></script>


    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
</body>
</html>
