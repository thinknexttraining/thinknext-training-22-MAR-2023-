<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="online-payment.aspx.vb" Inherits="online_payment" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <title>Online Payment - ThinkNEXT Technologies</title>

 <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
      <link rel="stylesheet" type="text/css" href="style.css" />

    
   <style>     .head1 {
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


</style> 
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>



<div class="container"><div class="gdl-header-wrapper">
        <h1 class="gdl-header-title">Payment Instructions&nbsp;&nbsp;</h1></div>

    
 
 <a href="https://www.payumoney.com/customer/users/paymentOptions/#/C455B6ACBEC085FBFACBC8B1C55A7F27/thinknexttraining/76168" >
<img src="images/apply_online_payment.png" alt="" /></a><br /><br />

 
<a href="bank_transfer.aspx">              
 
<img src="images/apply_offline_payment.jpg" alt="" /></a><br /><br />
<h3>
                &nbsp;&nbsp;&nbsp;&nbsp;Instructions Offline Payment:</h3>
                <ul>
                <li>While Applying Offline, the Applicants can approach to nearby Branch for transferring the amount.</li>
                <li>Applicants can also pay cash in hand by visiting the company.</li>
                </ul><br />

               
<br />

</div>
  
</asp:Content>

