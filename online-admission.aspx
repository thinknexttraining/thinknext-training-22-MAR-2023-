<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="online-admission.aspx.vb" Inherits="online_admission" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
  
.center
{
	padding-left:15%;
	width:100%
}

form header {
  margin: 0 0 20px 0; 
}
form header div {
  font-size: 90%;
  color: #999;
}
form header h2 {
  margin: 0 0 5px 0;
}
form > div {
  clear: both;
  overflow: hidden;
  padding: 1px;
  
}
form > div > fieldset > div > div {
  margin: 0 0 5px 0;
}
form > div > label,
legend {
	width: 25%;
  float: left;
  padding-right: 10px;
}
form > div > div,
form > div > fieldset > div {
 
}
form > div > fieldset label {
	font-size: 90%;
}
fieldset {
	border: 0;
  padding: 0;
}

input[type=text],
input[type=email],
input[type=url],
input[type=password],
textarea {
	width: 100%;
  border-top: 1px solid #ccc;
  border-left: 1px solid #ccc;
  border-right: 1px solid #eee;
  border-bottom: 1px solid #eee;
}
input[type=text],
input[type=email],
input[type=url],
input[type=password] {
  width: 50%;
}
input[type=text]:focus,
input[type=email]:focus,
input[type=url]:focus,
input[type=password]:focus,
textarea:focus {
  outline: 0;
  border-color: #4697e4;
}

@media (max-width: 600px) {
 .center 
 {
 	width:100%;
 	margin-left:-27%
 	
  }
  form > div > label,
  legend {
	  width: 100%;
    float: none;
    margin: 0 0 5px 0;
  }
  form > div > div,
  form > div > fieldset > div {
    width: 100%;
    float: none;
  }
  input[type=text],
  input[type=email],
  input[type=url],
  input[type=password],
  textarea,
  select {
    width: 100%; 
  }
}
@media (min-width: 1200px) {
  form > div > label,
	legend {
  	text-align: right;
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


</style>
<script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>



     <div class="head1">
    <h3 style="color:#000;" > Online Admission  </h3>
       <div class="ryt">

You are here &nbsp; Home / Online Admission 

       </div>


   </div>

    <br /> 
    <br /> 



 <div class="gdl-header-wrapper">

        <h1 class="gdl-header-title">Online Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </h1></div>
        <header>
  
    <div>Mandatory fields are marked with an asterisk (*)</div>
  </header>
       </div>
<br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />

<div class="center">

<form action="#">

  
  
  <div>
    <label class="desc" id="title1" for="Field1">Name*</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
    <div>
    <label class="desc" id="Label1" for="Field1">Father Name*</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  <div>
    <label class="desc" id="title3" for="Field3">
      Email*
    </label>
    <div>
      <input id="Field3" name="Field3" type="email" spellcheck="false" value="" maxlength="255" tabindex="3"> 
   </div>
  </div>
    
  <div>
    <label class="desc" id="title4" for="Field4">
   Address*
    </label>
  
    <div>
      <textarea id="Field4" name="Field4" spellcheck="true" rows="10" cols="50" style="width:50%" tabindex="4"></textarea>
    </div>
  </div>
    <div>
    <label class="desc" id="Label2" for="Field1">Mobile*</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  <div>
    <label class="desc" id="Label3" for="Field1">City*</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="Label4" for="Field1">State*</label>
    <div>
      <input id="Text4" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="Label5" for="Field1">Zip Code*</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  
  <div>
    <label class="desc" id="Label6" for="Field106">
    	Country*
    </label>
    <div>
    <select id="Select1" name="Field106" class="field select medium" style="width:51%" tabindex="11"> 
      <option value="First Choice">India</option>
      <option value="Second Choice">Australia</option>
      <option value="Third Choice">Algeria</option>
       <option value="Third Choice">America</option>
    </select>
  </div>
  </div>
  
  
 <div>
    <label class="desc" id="Label7" for="Field106">
    	Category*
    </label>
    <div>
    <select id="Select2" name="Field106" class="field select medium" style="width:51%" tabindex="11"> 
      <option value="First Choice">NRI</option>
      <option value="Second Choice">General</option>
      <option value="Third Choice">Backward Class</option>
       <option value="Third Choice">Freedom Fighter</option>
    </select>
    </div>
  </div>
  
   <h3>
                &nbsp;&nbsp;&nbsp;&nbsp;Coures Info</h3>
  <div>
    <fieldset>
    
    
      
      <div>
      	<input id="radioDefault_5" name="Field5" type="hidden" value="">
      	<div>
      		<input id="Field5_0" name="Field5" type="radio" value="First Choice" tabindex="5" checked="checked">
      		<label class="choice" for="Field5_0">New Student</label>
      	</div>
        <div>
        	<input id="Field5_1" name="Field5" type="radio" value="Second Choice" tabindex="6">
        	<label class="choice" for="Field5_1">Existing Student</label>
        </div>
      
      </div>
    </fieldset>
  </div>
  
  
  
  <div>
    <label class="desc" id="title106" for="Field106">
    	Course*
    </label>
    <div>
    <select id="Field106" name="Field106" class="field select medium" style="width:51%" tabindex="11"> 
      <option value="First Choice">B.Tech(CSE)</option>
      <option value="Second Choice">B.Tech(ECE)</option>
      <option value="Third Choice">B.Tech(ME)</option>
    </select>
    </div>
  </div>
  
  <div>
    <label class="desc" id="Label8" for="Field106">
    	Fee Category*
    </label>
    <div>
    <select id="Select3" name="Field106" class="field select medium" style="width:51%" tabindex="11"> 
      <option value="First Choice">Transport Fee</option>
      <option value="Second Choice">Admission Fee</option>
      <option value="Third Choice">Hostel Fee</option>
    </select>
    </div>
  </div>
  <div>
  
  <div>
    <label class="desc" id="Label9" for="Field1">Fee*</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
  
  <div>
    <label class="desc" id="Label10" for="Field106">
    	Year*
    </label>
    <div>
    <select id="Select4" name="Field106" class="field select medium" style="width:51%" tabindex="11"> 
      <option value="First Choice">1</option>
      <option value="Second Choice">2</option>
      <option value="Third Choice">3</option>
        <option value="Third Choice">4</option>
          <option value="Third Choice">5</option>
    </select>
    </div>
  </div>
  <br />
		<div>
  		<input id="saveForm" name="saveForm" type="submit" value="Proceed to Pay">
    </div>
	</div>
  <br /><br />
</form></div>
</asp:Content>

