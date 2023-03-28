<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="bank_transfer.aspx.vb" Inherits="bank_transfer" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
    td
    {
    border:groove 2px #b3b3a9
    }
    @media screen and (max-width:800px)
    {
    	.button
   {
   	margin-left:-1%;
   	width:100%;
  
   }
   .new
   {
   	width:100%;
   
   	 
   }
    }
 @media screen and (max-width:400px)
 {
   .new
   {
   	width:100%;
   	padding-right:10%
   		
   }
   .button
   {
   	margin-right:60%;
   	width:100%
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

.mega-dropdown-menu {
    padding: 20px 0px;
    width: 100%;
    box-shadow: none;
    -webkit-box-shadow: none;
}




</style>


    <div class="head1">
    <h3 style="color:#000;" > Bank Transfer</h3>
       <div class="ryt">

You are here &nbsp; Home /Bank Transfer

       </div>


   </div>


   <br /> 
    <br />





<div class="twelve columns mb40">
 <div class="gdl-header-wrapper">
        <h1 class="gdl-header-title">Bank Transfer&nbsp;&nbsp;</h1><br /><br />
       <div >  <h3>
                &nbsp;&nbsp;&nbsp;&nbsp;HDFC Bank</h3>
          <table class="style1" style="border:solid 2px #b3b3a9">
       
    <tr>
  
        <td><img style="" class="new" src="images/HDFC-logo.jpg" alt="" /></td>
        <td>Payee Name :- ThinkNEXT Technologies Private Limited<br />
Account No. :- 13082000000792<br />
Branch :- Phase-XI, Mohali<br />
IFSC Code :- HDFC0001308<br />
Website: :- <a href="http://www.hdfcbank.com/">www.hdfcbank.com/</a><br />
<a href="http://www.hdfcbank.com/personal/find-your-nearest/find-nearest-branch/all-facilities/gxissh3j">Find out your nearest branch</a></td>

        </tr>
        </table><br /></div>
         <h3>
                &nbsp;&nbsp;&nbsp;&nbsp;Indusind Bank</h3>
         <table class="style1" style="border:solid 2px #b3b3a9">
        <tr>
        <td>
           <img src="images/indus.jpg" class="new" alt="" /></td>
           <td>Payee Name :- ThinkNEXT Technologies Private Limited<br />
Account No. :- 200999604740<br />
Branch :- Phase-XI, Mohali<br />
IFSC Code :- INDB0000432<br />
Website: :- <a href="http://www.indusind.com/content/home/personal-banking.html">www.indusind.com/</a> <br />
<a href="http://www.indusind.com/content/home/locate-us.html">Find out your nearest branch</a><br />
 </td>
        </tr>
        
        
        
        
        </table>
        

    


        </div>

 
  </div>
</asp:Content>

