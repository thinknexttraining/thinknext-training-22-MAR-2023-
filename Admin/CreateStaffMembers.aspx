<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateStaffMembers.aspx.cs" Inherits="Admin_CreateStaffMembers" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
  <table width="100%">
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
  
  </table>
                </div> 
   <div id="main" style="width: 100%; height: auto">
   <h3> 
      <asp:Label ID="lblprofile" runat="server" Text="Creat Profile"></asp:Label> </h3>
      
      <div id="profile" style="width: 100%; height: 396px">
          <asp:Panel ID="Panel1" runat="server" GroupingText="Create Profile" 
              Height="293px">
              
                <table style="width: 96%; height: 238px; margin-left:auto; margin-right:auto; background-color: #CCCCCC;" 
                    cellpadding="0" cellspacing="0"  
              id="tabxxx">
                        <tr >
                            <td align="center" colspan="4" style="text-align: center; height: 20px;">
                                <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
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
                            <td align="left" class="style2">
                                <asp:Label ID="lblFatherName" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Father Name"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtFatherName" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblFatherName0" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Mother Name"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtMotherName" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="lblDesignation" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Designation"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtDesignation" runat="server" BorderStyle="Solid" 
                                    Height="14px" SkinID="MyTextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700; background-color: #FFFFFF; " 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td align="left" style="font-size: small; width: 115px; height: 20px;" 
                                class="style10">
                                <asp:Label ID="lblType" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Type"></asp:Label>
                            </td>
                            <td align="left" style="font-size: small; width: 235px; height: 20px;" 
                                >
                                <asp:TextBox ID="txttype" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style2">
                                <asp:Label ID="lblContactNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="Contact No."></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtContactNo" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px" MaxLength="12"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                <asp:Label ID="lblMobileNo" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text=" Mobile No."></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                <asp:TextBox ID="txtmobileno" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
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
                                <asp:Label ID="lblEMailID0" runat="server" Font-Size="Small" SkinID="MytextID" 
                                    Text="D.O.B"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 20px">
                                
                                <asp:TextBox ID="txtDOB" runat="server"  BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" ReadOnly="True" BorderWidth="1px"></asp:TextBox>
                                <asp:CalendarExtender ID="cnd" runat="server" TargetControlID="txtDOB" DaysModeTitleFormat="MM/dd/yyyy" Enabled="True"></asp:CalendarExtender>
                                
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style2">
                                <asp:Label ID="lblDesignation0" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Blood Group"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:DropDownList ID="ddlBloodGroup" runat="server" Font-Size="X-Small" 
                                    Height="20px" Width="210px">
                                    <asp:ListItem>None</asp:ListItem>
                                    <asp:ListItem>A +ve</asp:ListItem>
                                    <asp:ListItem>A -ve</asp:ListItem>
                                    <asp:ListItem>AB +ve</asp:ListItem>
                                    <asp:ListItem>AB -ve</asp:ListItem>
                                    <asp:ListItem>B +ve</asp:ListItem>
                                    <asp:ListItem>B -ve</asp:ListItem>
                                    <asp:ListItem>O +ve</asp:ListItem>
                                    <asp:ListItem>O -ve</asp:ListItem>
                                </asp:DropDownList>
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
                            <td align="left" class="style3">
                                <asp:Label ID="lblSalaryAtPresent" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Salary At Present"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 19px">
                                <asp:TextBox ID="txtpresentsalary" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 19px">
                                <asp:Label ID="lblQualification" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Qualification"></asp:Label>
                            </td>
                            <td align="left"  style="width: 235px; height: 19px">
                                <asp:TextBox ID="txtqualification" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" class="style2">
                                <asp:Label ID="lblPreviousExperience" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Previous Experience"></asp:Label>
                            </td>
                            <td align="left" style="width: 132px; height: 20px">
                                <asp:TextBox ID="txtexperience" runat="server" BorderStyle="Solid" Font-Size="Small" 
                                    Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small;  background-color: #FFFFFF;" 
                                    Width="207px" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td align="left"  style="width: 115px; height: 20px">
                                &nbsp;</td>
                            <td align="left"  style="width: 235px; height: 20px">
                                &nbsp;</td>
                        </tr>
                        <tr  style="height: 23px">
                            <td align="left">
                                <asp:Label ID="lblPermanentaddress" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Permanent Address"></asp:Label>
                            </td>
                            <td align="left" colspan="3">
                                <asp:TextBox ID="txtpermanentaddress" runat="server" BorderColor="Black" 
                                    BorderStyle="Solid" BorderWidth="1px" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700;background-color: #FFFFFF; " 
                                    Width="421px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td align="left" >
                                <asp:Label ID="lblCorrespondanceAdd" runat="server" Font-Size="Small" 
                                    SkinID="MytextID" Text="Correspondance Address"></asp:Label>
                            </td>
                            <td align="left" colspan="3" >
                                <asp:TextBox ID="txtCorrspondanceAddress" runat="server" BorderColor="Black" 
                                    BorderStyle="Solid" BorderWidth="1px" Height="14px" SkinID="MytextID" 
                                    style="font-size: x-small; color: #000099; font-weight: 700;background-color: #FFFFFF; " 
                                    Width="421px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                &nbsp;</td>
                            <td align="left" colspan="3" style="height: 19px">
                                &nbsp;</td>
                        </tr>
                        </table>
          </asp:Panel>
      
      
      
      
     
        <%--<p style="height: 35px"> 
            <asp:Button ID="btnSaveUpdate" runat="server" CssClass="Allbuttons" 
                Text="Save Profile"  Width="120px" />
          </p>--%>
          
        <p style="height: 35px"> 
            <asp:Button ID="btnAddProfile" runat="server" CssClass="Allbuttons" 
                Text="Create Profile" Width="120px" 
                onclick="btnAddProfile_Click" />
          </p>
          
          
   
   </div>
   
   </div>
</asp:Content>

