<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="student-project.aspx.vb" Inherits="student_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



       <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel='stylesheet' id='Link2'  href="bootstrap/css/bootstrap.css" type='text/css' media='all' />
       <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />
   <script>


       $('#myTabs a').click(function (e) {
           e.preventDefault()
           $(this).tab('show')
       })
   </script>








    <div>
    <style>

        .project td{
           
    padding: 10px;
}
   
      .tbl td {
    border: 1px solid;
        padding: 4px 20px;
}
        .tbl
        {
            border: 1px solid;
                   margin: 5px 0px;
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


        .ryt 
        
        {
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
    <h3 style="color:#000;" >  Student Project</h3>
       <div class="ryt">

You are here &nbsp; Home / Student Project

       </div>


   </div>
<br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
    <li role="presentation" class="msg"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Graphics Designing</a></li>
    <li role="presentation"><a href="#logos" aria-controls="messages" role="tab" data-toggle="tab">Logo Design</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Mobile Design</a></li>
      <li role="presentation"><a href="#Div1" aria-controls="settings" role="tab" data-toggle="tab">  Web Designing </a></li>
      
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">      

    <table width="200" border="1" style="margin-top: 1%;" cellspacing="5" class="project">
  <tr>
    <td ><a href="http://thinknext.co.in/harjit/" target="_blank" > <img src="images/project1.png" />  </a></td>
    <td><a href="http://thinknext.co.in/akshat/" target="_blank" > <img src="images/project2.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Diksha/" target="_blank" > <img src="images/project3.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Project-college/" target="_blank" > <img src="images/project4.png" />  </a></td>
  </tr>
  <tr>
     <td ><a href="http://thinknext.co.in/designer-boutique/" target="_blank" > <img src="images/project5.png" />  </a></td>
    <td><a href="http://thinknext.co.in/flora-1/" target="_blank" > <img src="images/project6.png" />  </a></td>
    <td><a href="http://thinknext.co.in/giftgallery/" target="_blank" > <img src="images/project7.png" />  </a></td>
    <td><a href="http://thinknext.co.in/hospital/" target="_blank" > <img src="images/project8.png" />  </a></td>
  </tr>
  <tr>
   <td ><a href="http://thinknext.co.in/Kristy/" target="_blank" > <img src="images/krishty.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Kshama/" target="_blank" > <img src="images/kshma.png" />  </a></td>
    <td><a href="http://thinknext.co.in/My-project/" target="_blank" > <img src="images/my-project.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Raman/" target="_blank" > <img src="images/raman.png" />  </a></td>
  </tr>
  <tr>
    <td ><a href="http://thinknext.co.in/Shilpa/" target="_blank" > <img src="images/logo3.png" />  </a></td>
   
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

    </div>
    <div role="tabpanel" class="tab-pane" id="profile">    




    </div>
    <div role="tabpanel" class="tab-pane" id="logos">        
    <table width="200" border="1" style="margin-top: 1%;" cellspacing="5" class="project">
  <tr>
    <td ><a href="http://thinknext.co.in/harjit/" target="_blank" > <img src="images/harjit.png" />  </a></td>
    <td><a href="http://thinknext.co.in/akshat/" target="_blank" > <img src="images/akshat.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Diksha/" target="_blank" > <img src="images/diksha.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Project-college/" target="_blank" > <img src="images/project-college.png" />  </a></td>
  </tr>
  <tr>
     <td ><a href="http://thinknext.co.in/designer-boutique/" target="_blank" > <img src="images/des-bue.png" />  </a></td>
    <td><a href="http://thinknext.co.in/flora-1/" target="_blank" > <img src="images/flora-1.png" />  </a></td>
    <td><a href="http://thinknext.co.in/giftgallery/" target="_blank" > <img src="images/gift-gallery.png" />  </a></td>
    <td><a href="http://thinknext.co.in/hospital/" target="_blank" > <img src="images/hospital.png" />  </a></td>
  </tr>
  <tr>
   <td ><a href="http://thinknext.co.in/Kristy/" target="_blank" > <img src="images/krishty.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Kshama/" target="_blank" > <img src="images/kshma.png" />  </a></td>
     <td><a href="http://thinknext.co.in/My-project/" target="_blank" > <img src="images/my-project.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Raman/" target="_blank" > <img src="images/raman.png" />  </a></td>
  </tr>
  <tr>
    <td ><a href="http://thinknext.co.in/Shilpa/" target="_blank" > <img src="images/logo3.png" />  </a></td>

  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
    </div>


    <div role="tabpanel" class="tab-pane" id="settings">..hgdcfgdfraeswdddddddddddddwesdaq4erq3wa .</div>
       
      
      <div role="tabpanel" class="tab-pane" id="Div1">             

    <table width="200" border="1" style="margin-top: 1%;" cellspacing="5" class="project">
  <tr>
    <td ><a href="http://thinknext.co.in/harjit/" target="_blank" > <img src="images/project1.png" />  </a></td>
    <td><a href="http://thinknext.co.in/akshat/" target="_blank" > <img src="images/project2.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Diksha/" target="_blank" > <img src="images/project3.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Project-college/" target="_blank" > <img src="images/project4.png" />  </a></td>
  </tr>
  <tr>
     <td ><a href="http://thinknext.co.in/designer-boutique/" target="_blank" > <img src="images/project5.png" />  </a></td>
    <td><a href="http://thinknext.co.in/flora-1/" target="_blank" > <img src="images/project6.png" />  </a></td>
    <td><a href="http://thinknext.co.in/giftgallery/" target="_blank" > <img src="images/project7.png" />  </a></td>
    <td><a href="http://thinknext.co.in/hospital/" target="_blank" > <img src="images/project8.png" />  </a></td>
  </tr>
  <tr>
   <td ><a href="http://thinknext.co.in/Kristy/" target="_blank" > <img src="images/project9.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Kshama/" target="_blank" > <img src="images/project10.png" />  </a></td>
    <td><a href="http://thinknext.co.in/My-project/" target="_blank" > <img src="images/project11.png" />  </a></td>
    <td><a href="http://thinknext.co.in/Raman/" target="_blank" > <img src="images/project12.png" />  </a></td>
  </tr>
  <tr>
    <td ><a href="http://thinknext.co.in/Shilpa/" target="_blank" > <img src="images/project13.png" />  </a></td>
   
  </tr>
 
</table>
   
       </div>


       
       </div>
  </div>
<br />
        <br />
        <br /><br />
</div>



     <script type='text/javascript' src='bootstrap/js/bootstrap.js'></script>
    <script type='text/javascript' src="js/jquery.js"></script>
<script type='text/javascript' src='bootstrap/js/bootstrap.min.js'></script>
</asp:Content>

