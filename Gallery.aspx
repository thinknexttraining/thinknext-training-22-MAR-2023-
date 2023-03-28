<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Gallery" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<link rel="stylesheet" type="text/css" href="style.css" />



	<script src="js/custom.js"></script>
     
     <link href="css/jquery.fs.boxer.css" rel="stylesheet" type="text/css" />
    
    <!----image-hover effect---------->
<link rel="stylesheet" href="css/style_hover.css" type="text/css" media="screen"/>

<link rel="stylesheet" href="css/thirdeffect.css" type="text/css" media="screen"/>
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
    
<!---gallary-->
    
		<script src="js/demo.js"></script>

		<link href="css/jquery.fs.boxer.css" rel="stylesheet" type="text/css" media="all" />
		<script src="js/jquery.fs.boxer.js"></script>

<link href="src/jquery.fs.boxer.css" rel="stylesheet" type="text/css" media="all" />
		<script src="src/jquery.fs.boxer.js"></script>
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
    <h3 style="color:#000;" > Gallary &nbsp;&nbsp;</h3>
       <div class="ryt">

You are here &nbsp; Home / Gallary 

       </div>


   </div>

    <br /> 
    <br /> 
<div class="twelve columns mb40"><div class="gdl-header-wrapper">
<h1 class="gdl-header-title">
Our Gallery&nbsp;&nbsp; </h1></div>
<!--!st-->
  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-1-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-1.jpg" />
        </a>
</div>
</div>

<!--2nd-->
  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-2-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-2.jpg" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-3-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-3.jpg" />
        </a>
</div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-4-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-4.jpg" />
        </a>
</div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-5-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-5.jpg" />
        </a>
</div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-6-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-6.jpg" />
        </a>
</div>
</div>



  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-7-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-7.jpg" />
        </a>
</div>
</div>



  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/page-5_img-8-b.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/page-5_img-8.jpg" />
        </a>
</div>
</div>

  </div><%--matter--%>
  
 
    </div><%--twelve columns mb40--%>
</asp:Content>

