<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BroucherDownload.aspx.vb" Inherits="BroucherDownload" %>
<title>Brochure Download - ThinkNEXT Technologies</title>
<!DOCTYPE html>
 <script type="text/javascript">
     function ShowProgress() {
         setTimeout(function () {
             var modal = $('<div />');
             modal.addClass("modal");
             $('body').append(modal);
             var loading = $(".loading");
             loading.show();
             var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
             var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
             loading.css({ top: top, left: left });
         }, 1);
     }

     $('form').live("submit", function () {
         ShowProgress();
     });

     function Navigate() {

         var mobileno = document.getElementById("Phoneno").value;

         var email = document.getElementById("Emailid").value;
         var pattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
         var a = /^(\+91-|\+91|0)?\d{10}$/;

         if (a.test(mobileno)) {
             // string looks like a good (US) phone number with optional area code, space or dash in the middle
         }

         else {

             document.getElementById("Phoneno").value = "";

         }

         if (pattern.test(email)) {
             // string looks like a good (US) phone number with optional area code, space or dash in the middle
         }
         else {

             document.getElementById("Emailid").value = "";
         }

     }
 </script>

<style>
    #ShowUserInfoModalPopUp_foregroundElement{
background: #fff;
padding: 30px;

    }
.left-side{
width: 250px;
        padding-right: 30px;
    float: left;
        margin-top: 3%;

}
    .right-side {
 
            width: 313px;
    float: left;
           }
    @media screen and (max-width:330px)
	    {
	      .left-side
	        {
	            float:none !important;
                width: 172px !important;
margin: auto;
	        }
            #brochform
            {
                 width:298px !important;  
                height:480px !important;
            }
            .right-side{
                width:300px !important;
    
   }
	    }
     .modal
    {
        position: fixed;
        top: -3;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family: Arial;
font-size: 10pt;
/*border: 5px solid #060608CC;*/
width: 200px;
height: 100px;
display: none;
position: fixed;
background-color: #51121200;
z-index: 999;
    }
   
</style>


<form id="from" runat="server">
     
<div id="brochform" style=" background: white;width: 630px;z-index: 9999;border-radius: 8px;">
    <img src="brochimages/leadbox_status_bar_gray3.gif" style="display:none; width: 100%;" />
 <div class="left-side" style=" float: left;    width: 250px;"><img src="brochimages/cloud-download-2.png"  style="width:100%;" /></div>   
    <div class="right-side" style=" float: left; width: 350px;" >
<h3 style=" text-align: center;">Fill the Form and click the button below to Download Brochure</h3>
        
       <asp:Label ID="msg" runat="server" Visible="false" Text="" ForeColor="Red"></asp:Label>
<table width="100%" border="0" cellspacing="0" style="background-color:white">

    <tr>
        
        <td style="padding: 6px 0;">
            <asp:TextBox  ID="Emailid" runat="server" placeholder="Email ID" style=" height: 40px; padding-left: 10px;  width: 96%;"  ></asp:TextBox>
         
            <br />
          
          
             </td>
    </tr>
    <tr>
      
        <td style="padding:6px 0;">
            <asp:TextBox  ID="Phoneno" runat="server" Type="Number"  placeholder="Mobile No." style=" height: 40px; padding-left: 10px; width: 96%;" MaxLength="10" ></asp:TextBox>
                      

                      
  <br />

         
          
            </td>
    </tr>
   
    <tr>
       
        <td style="padding: 6px 0px;"  >
          
            <asp:Button ID="btnadd" runat ="server"  Text ="Download Brochure"  style="height: 40px;padding-left: 6px;width: 95%;background: #10adf5;color: #fff;font-weight: bold;border: 0;font-size: 20px;margin-left: 9px;"   OnClick="btnadd_Click1" onclientclick="Navigate()"  />
             
              &nbsp;&nbsp;&nbsp;
            
          <%--  <a href="#" id="Add" onclick="$find('ShowUserInfoModalPopUp'); return false;">Download</a>--%>
            <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />--%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
      <br />
        </td>
    </tr>
  

</table>
         <div class="loading" align="center">
    <%--Loading. Please wait.<br />--%>
   
    <img src="images/loader.gif" alt="" />
</div>
</div>
    <div style="clear:both;"></div>
    </div>
</form>