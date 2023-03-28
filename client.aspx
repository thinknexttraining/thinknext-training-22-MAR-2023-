<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="client.aspx.vb" Inherits="client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="style.css" />

  <style>
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
  </style>
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

 <div class="head1">
    <h3 style="color:#000;" > Client </h3>
       <div class="ryt">

You are here &nbsp; Home / Client

       </div>


   </div>
    <br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />
       <table class="client-logo" border="0" width: 600;">
<tbody><tr>
<td ><img src="images/client1.jpg"> </td>
<td> <img src="images/client2.png"></td>
<td><img src="images/client3.png"></td>
    <td><img src="images/client4.png"></td>
</tr>
<tr>

<td><img src="images/client5.png"></td>
<td><img src="images/client6.png"></td>
    <td><img src="images/client7.png"></td>
<td> <img src="images/client8.png"></td>
</tr>
<tr>

<td><img src="images/client9.png"></td>
<td><img src="images/client10.png"></td>
<td><img src="images/client11.png"></td>
<td><img src="images/client12.png"></td>


</tr>
<tr>
<td><img src="images/client13.png"></td>
<td><img src="images/client14.png"></td>
<td><img src="images/client15.png"></td>
<td><img src="images/client16.png"></td>

</tr>
<tr>
<td><img src="images/client17.png"></td>
<td><img src="images/client18.png"> </td>
    <td><img src="images/client19.png"></td>
    <td><img src="images/client20.jpg"></td>
</tr>

</tbody></table>

</asp:Content>

