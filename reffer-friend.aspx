<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="reffer-friend.aspx.vb" Inherits="reffer_friend" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>

.input-reff{ width:100%; height:20px }
    </style>
<script>
function clearText(field){
if (field.defaultValue == field.value) field.value = ''
else if (field.value == '') field.value = field.defaultValue;
}
</script>
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>




 <div class="twelve columns mb40">
     <div class="gdl-header-wrapper">
     <h1 class="gdl-header-title">
Contact Us&nbsp;&nbsp; </h1></div>
  
      <div id="matter">
    <br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />
     <div class="columns portfolio-item mb0" style="margin-top:0">
  
  <table>
  <tr><td>First Name</td>  <td><input type=text class="input-reff"  /></td></tr>
    <tr><td>Last Name</td>  <td><input type=text class="input-reff"  /></td></tr>
      <tr><td>Email</td>  <td><input type=text class="input-reff" /></td></tr>
        <tr><td>First Name</td>  <td><input type=text class="input-reff" /></td></tr>
          <tr><td>Mobile No.</td>  <td><input type=text class="input-reff" /></td></tr>
            <tr><td>Reffered by</td>  <td><select>
            <option>--Select--</option>
            <option>ThinkNEXT Employee</option>
            <option>Current Student</option>
            <option>Passout Student</option>
            
            </select></td></tr>
  
  </table> 
    
 
 </div>
    
    <div class="cright">
    
    <p>sdsdsdsdsddddddddddddddddddddddd</p>
 </div>
    
    
        
    </div>


</asp:Content>

