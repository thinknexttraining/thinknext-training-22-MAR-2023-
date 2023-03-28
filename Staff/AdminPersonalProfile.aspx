<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/AdminPersonalProfile.aspx.vb" Inherits="AdminPersonalProfile" Title="Personal Profile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <script type="text/javascript" language="JavaScript">
        function toggle() {
            var state = document.getElementById('<%=selectemails.ClientID %>').style.display;
            if (state == 'block') {
                document.getElementById('<%=selectemails.ClientID %>').style.display = 'none';
            } else {
            document.getElementById('<%=selectemails.ClientID %>').style.display = 'block';
            }
        }
</script>
<div id="autohigt" 
    style="width: 100%; height: auto; background-color: #FFFFFF;">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
  
    <div id="xcxcxcxc" style="height: 419px; width: 837px; margin-right: 0px;">
     <div id="pageicons" style="width: 100%; height: 140px;">
   
       <table id="tabpageicon" style="width: 98%; height: 126px;">
           <tr>
               <td style="width:320px;" >
                   &nbsp;</td>
               <td style="text-align: center; vertical-align: top; width:40px;" >
                  <img src="../pageicon/profile.png" alt=""  
                       style="height:34px; width: 36px;" />
                 </td>
               <td style="text-align: center; vertical-align: top; width:136px;" >
                  <asp:Label ID="Label1" runat="server" Text="Personal Profile"  
                        style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td style="width: 100px">
                   &nbsp;</td>
               <td>
                <asp:Image ID="Image1" runat="server" Height="107px" Width="104px" 
                       BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" 
                       ImageUrl="~/Images/defaultuser.png" />
                   <br />
                    <a href ="#" onclick="toggle()" style="text-decoration:none; color:Blue; " > Change Picture </a>
               </td>
           </tr>
       </table>
   
   </div>
    <table id="table" cellpadding="0" cellspacing="0" style="width:100%; height: 300px;" 
            align="left">
    <tr>
        <td style="height: auto;" align="center" valign="top">
                <asp:Panel ID="Panel3" runat="server" Height="324px" Width="831px">
                    <table style="width: 810px; height: 265px;" cellpadding="0" cellspacing="0">
                        <tr style="background-color: #F7F6F3;">
                            <td align="center" colspan="5" class="style1">
                                <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
                                
                            </td>
                            <td align="center" colspan="5" class="style1">
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                                 style="text-decoration:none; "   ForeColor="Blue">Update Profile</asp:LinkButton>
                                </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 21062px; height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 74324px;">
                                <asp:Label ID="lblIDNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="ID No."></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtIDNo" runat="server" BorderStyle="None" Font-Size="Small" 
                                    Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #FFFFFF;" 
                                    Width="207px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 8705px;" colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 9254px;">
                                <asp:Label ID="lblName" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Name"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtName" runat="server" BorderStyle="None" Font-Size="Small" 
                                    Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; margin-top: 0px; color: #000099; font-weight: 700;background-color: #FFFFFF;" 
                                    Width="184px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 21486px;">
                                &nbsp;</td>
                        </tr>
                        <tr style="background-color: #F7F6F3;">
                            <td align="left" style="width: 21062px; height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 74324px;">
                                <asp:Label ID="lblDesignation" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Designation"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtDesignation" runat="server" BorderStyle="None" 
                                    Height="14px" ReadOnly="True" SkinID="MyTextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="207px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 8705px;" colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 9254px;">
                                <asp:Label ID="lblMotherName" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Mother Name"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtMotherName" runat="server" BorderStyle="None" 
                                    Font-Size="Small" Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="184px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 21486px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 21062px; height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 74324px;">
                                <asp:Label ID="lblDesignation0" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Blood Group"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtBloodGroup1" runat="server" BorderStyle="None" 
                                    Height="14px" ReadOnly="True" SkinID="MyTextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #FFFFFF;" 
                                    Width="207px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 8705px;" colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 10000px;">
                                <asp:Label ID="lbldob" runat="server"  Font-size="small"
                                 SkinID="MytextID" Text="D.O.B"></asp:Label> 
                                </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtdob" runat="server" BorderStyle="None" Height="14px" 
                                    ReadOnly="True" SkinID="MyTextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #FFFFFF;" Width="184px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 21486px;">
                                &nbsp;</td>
                        </tr>
                        <tr style="background-color: #F7F6F3;">
                            <td align="left" style=" height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; ">
                                <asp:Label ID="lblType" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Type"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtType" runat="server" BorderStyle="None" Height="14px" 
                                    ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="207px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 8705px;" colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 9254px;">
                                <asp:Label ID="lblGender" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Gender"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtGender" runat="server" BorderStyle="None" Font-Size="Small" 
                                    Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="184px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 21486px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 21062px; height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 74324px;">
                                <asp:Label ID="lblFatherName" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Father Name"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtFatherName" runat="server" BorderStyle="None" 
                                    Font-Size="Small" Height="15px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700;background-color: #FFFFFF;" Width="207px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; " colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; ">
                                <asp:Label ID="lblContactNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Contact No."></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtContactNo" runat="server" BorderStyle="None" 
                                    Font-Size="Small" Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #FFFFFF;" Width="184px"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; ">
                                &nbsp;</td>
                        </tr>
                        <tr style="background-color: #F7F6F3;">
                            <td align="left" style="width: 21062px; height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 74324px;">
                                <asp:Label ID="lblMobileNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text=" Mobile No."></asp:Label>
                            </td>
                            <td align="left" style="height: 8px; width: 118px;">
                                <asp:TextBox ID="txtMobileNo" runat="server" BorderColor="Black" 
                                    BorderStyle="None" BorderWidth="1px" Font-Size="Small" Height="14px" 
                                    MaxLength="10" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; background-color: #F7F6F3;" 
                                    Width="207px" Enabled="False" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; width: 596px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 8705px;" colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 10000px;">
                                <asp:Label ID="lblEMailID" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text=" EMail ID"></asp:Label>
                            </td>
                            <td align="left" style="height: 8px; ">
                                <asp:TextBox ID="txtEMailID" runat="server" BorderColor="Black" 
                                    BorderStyle="None" BorderWidth="1px" Font-Size="Small" Height="14px" 
                                    SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; background-color: #F7F6F3;" 
                                    Width="120px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td align="left" style="height: 8px; ">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 21486px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 21062px; height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; width: 74324px;">
                                <asp:Label ID="lblSalaryAtPresent" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Salary At Present"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtSalaryAtPresent" runat="server" BorderStyle="None" 
                                    Font-Size="Small" Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; margin-bottom: 0px; color: #000099; font-weight: 700; background-color: #FFFFFF; margin-left: 0px;" 
                                    Width="207px"></asp:TextBox>
                              
                            </td>
                            <td align="left" style="height: 8px; " colspan="2">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; ">
                                
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                
                            </td>
                            <td align="left" style="height: 8px; ">
                                &nbsp;</td>
                        </tr>
                        <tr style="background-color: #F7F6F3;">
                            <td align="left" style=" height: 8px;">
                                &nbsp;</td>
                            <td align="left" style="height: 8px; ">
                                <asp:Label ID="lblQualification" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Qualification"></asp:Label>
                            </td>
                            <td align="left" colspan="2" style="height: 8px; ">
                                <asp:TextBox ID="txtQualification" runat="server" BorderStyle="None" 
                                    Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; margin-left: 0px; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="207px"></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="left" style=" height: 8px;">
                            </td>
                            
                            <td align="left" style="height: 7px; ">
                                <asp:Label ID="Label2" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Previous Experience"></asp:Label>
                            </td>
                            <td align="left" style="height: 8px; " colspan="2">
                            <asp:TextBox ID="txtpreviousexperience" runat="server" BorderStyle="None" 
                                    Font-Size="Small" Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="207px"></asp:TextBox>
                                &nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td align="left" style=" height: 23px;">
                            </td>
                            <td align="left" style="height: 23px; ">
                                <asp:Label ID="lblPermanentaddress" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Permanent Address"></asp:Label>
                            </td>
                            <td align="left" colspan="8" style="height: 23px">
                                <asp:TextBox ID="txtPermanentAddress" runat="server" BorderStyle="None" 
                                    Height="14px" ReadOnly="True" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700;background-color: #FFFFFF;" Width="547px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="background-color: #F7F6F3;">
                            <td align="left" style="">
                                &nbsp;</td>
                            <td align="left" style=" height: 7px;">
                                <asp:Label ID="lblCorrespondanceAdd" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Correspondance Address"></asp:Label>
                            </td>
                            <td align="left" colspan="6">
                                <asp:TextBox ID="txtCorrspondanceAddress" runat="server" BorderColor="Black" 
                                    BorderStyle="None" BorderWidth="1px" Height="16px" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #F7F6F3;" 
                                    Width="500px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td align="left">
                                &nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
        </td>
    </tr>
   
    </table>

</div>

<div id="clrs" style="clear: both"></div>

<%-------------------Popup Open----------------------%>
   
  <div id="selectemails" runat="server"  
           
          style="display:none; padding : 10px; width: 550px; height: 245px;  position: absolute; top: 35%; left: 33%; background-image: url('../Images/tpr.png');">
        <div id="inner" 
            style="margin: auto; width: 99%; height: 99%; background-color: #FFFFFF">
            
            <div id="close" style="float: right; width: 40px; height: 45px">
             <a href ="#" onclick="toggle()" > 
                <img alt="" src="../Images/close.png" /> </a>
            </div>
            
            <br /><br />
            <div id="uploader" 
                style="height: 200px; width: 100%;">
                <h4 style="font-size: medium; color: #FF3300">Please select Image *( .jpg, .jpeg, .png ) to Change picture </h4>
                <asp:FileUpload ID="imguploder" runat="server" />
                <br /><br />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" Width="90px" Height="24px" />
                <br /><br />
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Please wait.......Uploading Image<br />
                    <img alt="" src="../images/progressbar.gif" />
                </ProgressTemplate>
                </asp:UpdateProgress>
                </div>
           
           
            
            
            </div>
      </div>

<%-------------------Popup Ends----------------------%>


    
    </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnUpload" />
        </Triggers>
    </asp:UpdatePanel>

</div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            height: 37px;
        }
        </style>

    </asp:Content>


