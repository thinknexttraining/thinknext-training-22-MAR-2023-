<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="media.aspx.vb" Inherits="Gallery" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <title>Media Gallery - ThinkNEXT Technologies</title>

<style type="text/css">
@media (min-width: 560px) and (max-width: 1199px) {
  .boomi {
        margin-bottom: 60px !important;
  }
}

@media (min-width: 700px) and (max-width: 965px) {
  .ujala {
        margin-bottom: 41px !important;
  }
}
@media (min-width: 560px) and (max-width: 700px) {
  .ujala{
        margin-bottom: 75px !important;
  }
}
 @media (min-width: 490px) and (max-width: 560px) {
        .ujala {
            margin-bottom: 56px !important;
        }

        .boomi{
            margin-bottom: 35px !important;
        }
    }


        @media (min-width: 490px) and (max-width: 560px) {
            .ujala2 {
                margin-bottom: 40px !important;
            }
        }
    
@media (min-width: 560px) and (max-width: 890px) {
  .ujala2 {
        margin-bottom: 56px !important;
  }
}
@media (min-width: 375px) and (max-width: 490px) {
  .ujala2 {
        margin-bottom: 71px !important;
  }
    .boomi
    {
         margin-bottom: 42px !important;
    }
     .ujala {
        margin-bottom: 60px !important;
  }

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



    .grid_4 {
    width: 25%;
    float: left;
    display: inline;
    margin: 10px 0 0 0;
    padding: 0;
}




    </style>
<link rel="stylesheet" type="text/css" href="style.css" />

     <link rel='stylesheet' id='Link1' href="css/font-awesome-4.4.0/font-awesome-4.4.0/css/font-awesome.css" type='text/css' media='all' />

	<script src="js/custom.js"></script>
     
     <link href="css/jquery.fs.boxer.css" rel="stylesheet" type="text/css" />
    
    <!----image-hover effect---------->
<link rel="stylesheet" href="css/style_hover.css" type="text/css" media="screen"/>

<link rel="stylesheet" href="css/thirdeffect.css" type="text/css" media="screen"/>
 
    
<!---gallary-->
    
		<script src="js/demo.js"></script>

	
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
    <h3 style="color:#000;" > Media</h3>
       <div class="ryt">

You are here &nbsp; Home / Media

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
    
 <a  href="images/fullthink/thinknext2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/thinknext2.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Press Conference</h5>
<p> Chandigarh Press Club 
</p></div>
</div>   
     <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/thinknext3.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/thinknext3.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Press Conference</h5>
<p> Chandigarh Press Club 
</p></div>
</div>   
 <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/thinknext4.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/thinknext4.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Press Conference</h5>
<p> Chandigarh Press Club 
</p></div>
</div>   





<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/thinknext1-long.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/thinknext1.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Press Conference</h5>
<p> Chandigarh Press Club 
</p></div>
</div>
    <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/Aaj Samaj 10-08-2015 page 1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/Aaj Samaj 10-08-2015 page 1.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Aaj Samaj 10-08-2015</h5>
<p>Aaj Samaj 10-08-2015
</p></div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/Punjab Kasri-9-8-2015.png" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/Punjab-Kasri-9-8-2015.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Punjab-Kasri</h5>
<p>Punjab-Kasri-9-8-2015<br />
</p></div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/Punjabi Jagran2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/Punjabi-Jagran2.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Punjabi-Jagran2</h5>
<p>Punjabi-Jagran2<br />
</p></div>
</div>


<div class="grid_4 box-3 ujala2">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/Amar Ujala2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/Amar-Ujala2.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Amar-Ujala2</h5>
<p>Amar-Ujala2<br />
</p></div>
</div>

<div class="grid_4 box-3">
 <div class="img-bord magnifier ">
    
 <a  href="https://www.youtube.com/watch?v=50frVR9soHY" class="html5lightbox" data-width="480" data-height="320" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/channel2.jpg" />
        </a>
         
</div>

<div style="width:80%; padding:10px"><h5>ThinkNEXT Discount Card Advertisement on Channel2</h5>
        <p>Channel2<br />
2  MARCH, 2012, 08:18 PM</p></div>
</div>
  <div class="grid_4 box-3">
     
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/1.jpg" />
        </a>
       
</div>
  <div style="width:80%; padding:10px"><h5>Dainik Jagran, Chandigarh on 9 June, 2012</h5>
  <p>Dainik Jagran<br />
9 JUNE, 2012</p></div>
</div>

<!--2nd-->
  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/2.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/2.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Dainik Savera, Chandigarh on 9 June, 2012</h5>
<p>Dainik Savera<br />
9 JUNE, 2012</p></div>
</div>

 

  <div class="grid_4 box-3 boomi">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/4.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/4.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Hari Bhoomi, Chandigarh on 9 June, 2012</h5>
<p>Hari Bhoomi<br />
9 JUNE, 2012</p></div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/5.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/5.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Amar Ujala, Shimla on 3 April, 2013</h5>
  <p>Amar Ujala<br />
3 APRIL, 2013, PAGE-8</p></div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/6.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/6.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px">
<h5>Dainik Bhaskar, Shimla on 3 April, 2013</h5>
<p>Dainik Bhaskar<br />
3 APRIL, 2013, PAGE-12</p></div>
</div>


  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/8.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/8.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Himachal Dastak on 3 April, 2013</h5>
<p>Himachal Dastak<br />
3 APRIL, 2013, PAGE-5</p></div>
</div>

  <div class="grid_4 box-3 ujala">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/3.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/3.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Amar Ujala, Chandigarh on 9 June, 2012</h5>
<p>Amar Ujala<br />
9 JUNE, 2012</p></div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/7.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/7.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Divya Himachal on 3 April, 2013</h5>
<p>Divya Himachal<br />
3 APRIL, 2013, PAGE-14</p></div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/33.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/33.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Amar Ujala, Chandigarh on 9 June, 2012</h5>
<p>Amar Ujala<br />
9 JUNE, 2012</p></div>
</div>

  

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/daily%20ajit.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/daily%20ajit.jpg" />
        </a>
   
</div>
<div style="width:80%; padding:10px"><h5>ThinkNEXT Discount Card Advertisement in Daily Ajit</h5>
<p>Daily Ajit<br />
3 MARCH, 2012, PAGE-4</p></div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/exe.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/exe.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>Participated in Consumer Fair, 2012 at Prade Ground, Chandigarh</h5>
<p>Consumer Fair 2012<br />
4 MARCH, 2012, 12:30 PM
</p></div>
</div>
    

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/PressNoteImage1.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/PressNoteImage1.jpg" />
        </a>
    
</div>
<div style="width:80%; padding:10px"><h5>Launching at ThinkNEXT Discount Card at Press Club Sector 27, Chandigarh on 1 March, 2012</h5>
<p>Press Conference<br />
1 MARCH, 2012, 12:30 PM</p></div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/rogana%20spokeman%202%20march.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/rogana%20spokeman%202%20march.jpg" />
        </a>
   
</div>
<div style="width:80%; padding:10px"><h5>ThinkNEXT Discount Card Advertisement in Rozana Spokesman</h5>
<p>Rozana Spokesman<br />
3 MARCH, 2012, PAGE-6</p></div>
</div>

  <div class="grid_4 box-3">
 <div class="img-bord magnifier">
    
 <a  href="images/fullthink/tribune%20life%20tyle%20gyan%20zone%203%20march.jpg" class="boxer boxer_image" rel="gallery" title="By ThinkNEXT Technologies Private Limited">
            <img alt="" src="images/thumbsthink/tribune%20life%20tyle%20gyan%20zone%203%20march.jpg" />
        </a>
</div>
<div style="width:80%; padding:10px"><h5>ThinkNEXT Discount Card Advertisement in The Tribune Life Style Gyan Zone</h5>
<p>The Tribune Life Style Gyan Zone<br />
3 MARCH, 2012, PAGE-3</p></div>
</div>

</div>


<%--matter--%>
  
  <script src="html5lightbox.js" type="text/javascript"></script>
    
</asp:Content>

