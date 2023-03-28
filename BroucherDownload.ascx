<%@ Control Language="VB" AutoEventWireup="false" CodeFile="BroucherDownload.ascx.vb" Inherits="BroucherDownload" %>
<script >
   
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
</style>



<div id="brochform" style=" position: fixed;background: white;/* margin-left: -189px; */top: 94px;border: 1px solid;width: 630px;left: 29%;z-index: 9999;padding: 16px 4px;border-radius: 8px;">
    <img src="brochimages/leadbox_status_bar_gray3.gif" style="display:none; width: 100%;" />
 <div class="left-side" style="    float: left;    width: 250px;"><img src="brochimages/cloud-download-2.png"  style="width:100%;" /></div>   
    <div class="right-side" style=" float: left; width: 350px;" >
<h3 style=" text-align: center;">Fill the Form and click the button below to Download Brochure</h3>
<table width="100%" border="0" cellspacing="0" style="background-color:white">


    <tr>
        
        <td style="padding: 6px 0;">
            <asp:TextBox  ID="Emailid" runat="server" placeholder="Email ID" style=" height: 40px; padding-left: 10px;  width: 96%;"  ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server"   ControlToValidate="Emailid" ForeColor="Red" ></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID." runat="server"   ControlToValidate="Emailid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
          
          
             </td>
    </tr>
    <tr>
      
        <td style="padding:6px 0;">
            <asp:TextBox  ID="Phoneno" runat="server" Type="text"  placeholder="Mobile No." style=" height: 40px; padding-left: 10px; width: 96%;" MaxLength="10" ></asp:TextBox>
                      
&nbsp;&nbsp;&nbsp;
                      
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank."   ControlToValidate="Phoneno" ForeColor="Red" ></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number."  ControlToValidate="Phoneno" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />

         
          
            </td>
    </tr>
   
    <tr>
       
        <td style="padding: 6px 0px;"  >
            <asp:Button ID="btnadd" runat ="server" Text ="Download Brochure"  style="height: 40px;padding-left: 6px;width: 95%;background: #10adf5;color: #fff;font-weight: bold;border: 0;font-size: 20px;margin-left: 17px;" OnClick="btnadd_Click1"  />
              &nbsp;&nbsp;&nbsp;
            
          <%--  <a href="#" id="Add" onclick="$find('ShowUserInfoModalPopUp'); return false;">Download</a>--%>
            <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />--%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
      <br />
        </td>
    </tr>
  

</table>
</div>
    </div>
