<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Downloadsyllabus.aspx.vb" Inherits="BroucherDownload" %>
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



       $('form').live("submit", function () {
           ShowProgress();
       });



   </script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<style>
    span.buttonicon::before {
    font-family: FontAwesome;
    content: "\f019";
    /* font-size: 13px; */
    position: absolute;
    left: 17px;
    top: 0px;
    pointer-events: none;
    color: white;
}
.buttonicon{
position:relative;
}
.dnloadbtn{
padding: 6px 15px 6px 40px;
}

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
    padding:10px;
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
                 width:280px !important;  
                height:326px !important;
            }
            .right-side{
                width:258px !important;
    
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
     

    <div class="container text-center" style="margin-bottom:0px;">
         <br />
        
<h4 style="text-align: center;">Download Brochure Now</h4>
         <asp:Label ID="msg" runat="server" Visible="false" Text="" ForeColor="Red"></asp:Label>
 <div class="row m-0">
  <div class="col-12 col-sm-4 mb-4">
            <asp:TextBox  ID="Emailid" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                
          </div>
   <div class="col-12 col-sm-4 mb-4">
            <asp:TextBox  ID="Phoneno" runat="server" class="form-control" Type="text" placeholder="Mobile No." ></asp:TextBox>
        
         
         </div>
   
      <div class="col-12 col-md-4 bg-light py-4">
              <span class="buttonicon">
            <asp:Button ID="btnadd" runat ="server" class="btn btn-dark text-white dnloadbtn" Text ="Download Brochure" OnClick="btnadd_Click1"   />
                  </span>
      </div>
       <div class="col-12">
          <%--  <a href="#" id="Add" onclick="$find('ShowUserInfoModalPopUp'); return false;">Download</a>--%>          
      <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />--%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="lblresult" runat="server" Visible="False"></asp:Label>
      
       </div>
  </div>

    </div>
</form>
