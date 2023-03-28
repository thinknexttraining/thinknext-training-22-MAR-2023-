<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="photogallery.aspx.vb" Inherits="Gallery" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<link rel="stylesheet" type="text/css" href="style.css" />
    
	<script src="js/custom.js"></script>
     
     <link href="css/jquery.fs.boxer.css" rel="stylesheet" type="text/css" />
    
    <!----image-hover effect---------->
<link rel="stylesheet" href="css/style_hover.css" type="text/css" media="screen"/>
     <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />

<link rel="stylesheet" href="css/thirdeffect.css" type="text/css" media="screen"/>
 
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
       .img-bord img{
           height:216px;
       }

        .grid_4 {
    width: 25%;
    float: left;
    display: inline;
    margin: 10px 0 0 0;
    padding: 0;
}
</style> 
  

    
<!---gallary-->
    
		
		<link href="css/jquery.fs.boxer.css" rel="stylesheet" type="text/css" media="all" />
	


		
		<style>
			.boxer { border: none; }
			.inline_content { width: 300px; overflow: hidden; }
			#boxer h3 { font-style: italic; font-size: 16px; padding: 15px 10px 10px; }

		</style>

		<script>
			$(document).ready(function() {
				$(".boxer").not(".retina, .boxer_fixed, .boxer_top, .boxer_format, .boxer_mobile, .boxer_object").boxer();

				$(".boxer.boxer_fixed").boxer({
					fixed: true
				});

				$(".boxer.boxer_top").boxer({
					top: 50
				});

				$(".boxer.retina").boxer({
					retina: true
				});

				$(".boxer.boxer_format").boxer({
					formatter: function($target) {
						return '<h3>' + $target.attr("title") + "</h3>";
					}
				});

				$(".boxer.boxer_object").click(function(e) {
					e.preventDefault();
					e.stopPropagation();

					$.boxer( $('<div class="inline_content"><h2>More Content!</h2><p>This was created by jQuery and loaded into the new Boxer instance.</p></div>') );
				});

				$(".boxer.boxer_mobile").boxer({
					mobile: true
				});

			});

             
		</script>




     <div class="head1">
    <h3 style="color:#000;" > Photo Gallery </h3>
       <div class="ryt">

You are here &nbsp; Home / Photo Gallery

       </div>


   </div>


   <br /> 
    <br />

<div class="twelve columns mb40"><div class="gdl-header-wrapper">
<h1 class="gdl-header-title">
Photo Gallery&nbsp;&nbsp; </h1></div>
<!--!st-->

    <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/IMG_20161204_172500_HDR.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/IMG_20161204_172500_HDR.jpg"/>
        </a>
</div>
  
</div>

    
    <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/IMG_20161204_172533_HDR.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/IMG_20161204_172533_HDR.jpg"/>
        </a>
</div>
  
</div>

    
    <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/IMG_20161204_172631_HDR.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/IMG_20161204_172631_HDR.jpg"/>
        </a>
</div>
  
</div>

    
    

    
    <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/IMG_20161204_172604_HDR.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/IMG_20161204_172604_HDR.jpg"/>
        </a>
</div>
  
</div>

   

 <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/THINKNEXT-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/THINKNEXT-s.jpg"/>
        </a>
</div>
  
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-1-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/page-5_img-1.jpg" />
        </a>
</div>
</div>

<!--2nd-->
  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-2-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/page-5_img-2.jpg" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-4-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/page-5_img-4.jpg" />
        </a>
</div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-5-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/page-5_img-5.jpg" />
        </a>
</div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-6-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/page-5_img-6.jpg" />
        </a>
</div>
</div>



  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g1.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s1.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g2.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s2.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g3.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s3.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g4.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s4.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g5.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s5.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g6.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s6.png" />
        </a>
</div>
</div>
    

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g7.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s7.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g8.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s8.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g9.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s9.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g10.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s10.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g11.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s11.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g12.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s12.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g13.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s13.png" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/g14.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/s14.png" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/656.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/656.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/photo.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/photo.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/2-.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/photo2.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/1--.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/1--.jpg" />
        </a>
</div>
</div>

<%--<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/2--.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/2--.jpg" />
        </a>
</div>
</div>--%>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/3--.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/3--.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/4--.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/4--.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/5--.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/5--.jpg" />
        </a>
</div>
</div>

<%--<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/photo+-.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/photo+-.jpg" />
        </a>
</div>
</div>--%>


<%--<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/photo+.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/photo+.jpg">
        </a>
</div>
</div>--%>

    <div class="twelve columns mb40">
        <div class="gdl-header-wrapper" style="margin-top:2%;">
<h1 class="gdl-header-title">9th Mega Job Fair&nbsp;&nbsp; </h1></div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair3.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair3.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair7.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair7.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair5.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair5.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair8.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair8.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair2.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair1.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair4.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair4.jpg" />
        </a>
</div>
</div>

        <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/galleryjob-fair6.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/galleryjob-fair6.jpg" />
        </a>
</div>
</div>

        

        </div>


<div class="twelve columns mb40">
<div class="gdl-header-wrapper" style="margin-top:2%;">
<h1 class="gdl-header-title">Embedded Projects&nbsp;&nbsp; </h1></div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
        <img src="images/emb/e1.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/emb/e2.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be3.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/emb/e3.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be4.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/emb/e4.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be5.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e5" src="images/emb/e5.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be6.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e6" src="images/emb/e6.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be7.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e7" src="images/emb/e7.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be8.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e8" src="images/emb/e8.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be9.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e9" src="images/emb/e9.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be10.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e10" src="images/emb/e10.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be11.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e11" src="images/emb/e11.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be12.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e12" src="images/emb/e12.jpg" />
        </a>
</div>
</div>
<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/embeddedpics/be13.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e13" src="images/emb/e13.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
   
 <a  href="images/embeddedpics/be14.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="e14" src="images/emb/e14.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
   
 <a  href="images/embeddedpics/IMG-20150619-WA0000.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="IMG-20150619-WA0000" src="images/emb/IMG-20150619-WA0000.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
   
 <a  href="images/embeddedpics/IMG-20150619-WA0001.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="IMG-20150619-WA0001" src="images/emb/IMG-20150619-WA0001.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
   
 <a  href="images/embeddedpics/IMG-20150619-WA0002.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="IMG-20150619-WA0002" src="images/emb/IMG-20150619-WA0002.jpg" />
        </a>
</div>
</div>




 </div><%--matter--%>
<div class="twelve columns mb40">
<div class="gdl-header-wrapper">
<h1 class="gdl-header-title">CNC Milling & Turning&nbsp;&nbsp; </h1></div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/cncmillingturning/CNCMilling1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/cncmillingturning/CNCMilling1.jpg" />
        </a>
</div>
</div>

<!--2nd-->
  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/cncmillingturning/CNCMilling2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/cncmillingturning/CNCMilling2.jpg" />
        </a>
</div>
</div>  

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/cncmillingturning/CNCMilling4.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/cncmillingturning/CNCMilling4.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/cncmillingturning/CNCTurning1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/cncmillingturning/CNCTurning1.jpg" />
        </a>
    
  
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/cncmillingturning/CNCTurning2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/cncmillingturning/CNCTurning2.jpg" />
        </a>
</div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/cncmillingturning/CNCTurning3.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/cncmillingturning/CNCTurning3.jpg" />
        </a>
</div>
</div>
</div> 
   

  <%--  <div class="twelve columns mb40">
<div class="gdl-header-wrapper">
<h1 class="gdl-header-title">AUTO CAD&nbsp;&nbsp; </h1></div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/Autocad/civil-eng.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="ThinkNEXT Images" src="images/Autocad/civil-eng.jpg" />
        </a>
</div>
</div>

<!--2nd-->
  
</div>--%>
    
</div>
        

         
</asp:Content>

