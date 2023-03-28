<%@ Page Language="C#" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Students_UpdateProfile" Title="Update Profile" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
      <script type="text/javascript">
       function ValidateEmail(inputText) {
           var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
           if (inputText.value.match(mailformat)) {
               return true;
           }
           else {
                            
               return false;
           }
       }  
   
   </script>
    <style type="text/css">
         .style1
        {
            width: 172px;
        }
        .style6
        {
            width: 132px;
            height: 20px;
        }
        .style7
        {
            width: 115px;
            height: 20px;
        }
        .style8
        {
            width: 235px;
            height: 20px;
        }
        .style10
        {
            height: 8px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div id="profile" style="width: 100%; height: 396px">
<asp:Panel ID="Panel1" runat="server" GroupingText="Update Profile" 
              Height="293px">
              
                <table style="width: 96%; height: 238px; margin-left:auto; margin-right:auto; background-color: #CCCCCC;" 
                    cellpadding="0" cellspacing="0"  
              id="tabxxx">
               <tr><td>
      &nbsp;</td>
  <td>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false">TNK101</asp:TextBox></td>
                        <td>
                            &nbsp;</td>
  
  <td>
  
                    <asp:TextBox ID="txtbrand" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false">THINKNEXT TRAINING</asp:TextBox>
  
  </td>
  
  </tr>
                        <tr >
                            <td align="center" colspan="4" style="text-align: center; height: 20px;">
                                <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
                                <asp:Label ID="lblIDNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="ID No."></asp:Label>
                            </td>
                            <td align="left" class="style6">
                                <asp:TextBox ID="txtIDNo" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" ReadOnly="True" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td align="left" class="style7">
                                <asp:Label ID="lblName" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Name"></asp:Label>
                            </td>
                            <td align="left" class="style8">
                                <asp:TextBox ID="txtName" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style1">
                                <asp:Label ID="Label3" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="University RollNo."></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtUnirollno" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblQualification" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Qualification"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtCourse" runat="server" BorderStyle="Solid" 
                                    BorderWidth="1px" Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
                                <asp:Label ID="lblDesignation" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="College Name"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtCollegeName" runat="server" BorderStyle="Solid" 
                                    Height="14px" SkinID="MyTextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #FFFFFF; " 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td align="left" style="font-size: small; width: 115px; height: 20px;" 
                                class="style10">
                                <asp:Label ID="lblType" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Training Type"></asp:Label>
                            </td>
                            <td align="left" style="font-size: small; width: 235px; height: 20px;" 
                                >
                                <asp:TextBox ID="txtTrainingType" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style1">
                                <asp:Label ID="lblContactNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Mobile No."></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtMobileNo" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px" MaxLength="12"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblMobileNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text=" Father Mobile No."></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtFathermobileno" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
                                <asp:Label ID="lblEMailID" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text=" EMail ID"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtemailid" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px" > </asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="Label4" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Course"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtTraining" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px" 
                                    ReadOnly="false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style1">
                                <asp:Label ID="lblDesignation0" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Batch"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                 <asp:TextBox ID="txtBatch" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px" 
                                     ReadOnly="false"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblGender" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Gender"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:DropDownList ID="ddlgender" runat="server" Height="20px" Width="210px" 
                                    Font-Size="X-Small">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
                                <asp:Label ID="lblPreviousExperience" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Batch Timing"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 19px">
                                <asp:TextBox ID="txtBatchTime" runat="server" BorderStyle="Solid" 
                                    BorderWidth="1px" Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px" 
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 19px">
                                <asp:Label ID="lblFatherName0" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Mother Name"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 19px">
                                <asp:TextBox ID="txtMotherName" runat="server" BorderStyle="Solid" 
                                    BorderWidth="1px" Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style1">
                                <asp:Label ID="Label1" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Admission Date"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtAdmissionDate" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px" 
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblFatherName" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Father Name"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtFatherName" runat="server" BorderStyle="Solid" 
                                    BorderWidth="1px" Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr  style="height: 23px">
                             <td align="left" class="style1">
                                 <asp:Label ID="Label2" runat="server" Font-Size="Small" SkinID="MytextID" 
                                     Text="Father Occupation"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtFatherOccupation" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Size="Small" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px"></asp:TextBox>
                            </td>
                            <%--<td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblEMailID0" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="D.O.B"></asp:Label>
                             </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtdob" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Size="Small" Height="14px" SkinID="MytextID"  
                                    style="font-size: x-small;  background-color: #FFFFFF;" Width="207px" ></asp:TextBox>
                                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdob" Format="MM/dd/yyyy">
                                </asp:CalendarExtender>
                             </td>--%>
                        </tr>
                       
                        
                        <tr>
                            <td align="left" class="style1">
                                <asp:Label ID="lblPermanentaddress" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Permanent Address"></asp:Label>
                            </td>
                            <td align="left" colspan="3" style="height: 19px">
                                <asp:TextBox ID="txtpermanentaddress" runat="server" BorderColor="Black" 
                                    BorderStyle="Solid" BorderWidth="1px" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700;background-color: #FFFFFF; " 
                                    Width="421px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
                                <asp:Label ID="lblCorrespondanceAdd" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Correspondance Address"></asp:Label>
                            </td>
                            <td align="left" colspan="3" style="height: 19px">
                                <asp:TextBox ID="txtCorrspondanceAddress" runat="server" BorderColor="Black" 
                                    BorderStyle="Solid" BorderWidth="1px" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700;background-color: #FFFFFF; " 
                                    Width="421px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style1">
                                &nbsp;</td>
                            <td align="left" colspan="3" style="height: 19px">
                                &nbsp;</td>
                        </tr>
                        </table>
          </asp:Panel>
           <p style="height: 40px"> 
            
            <asp:Button ID="btnSaveUpdate" runat="server" CssClass="Allbuttons" 
                   Text="Update Profile"  Width="120px" onclick="btnSaveUpdate_Click"/>
          </p>
          </div> 
</asp:Content>

