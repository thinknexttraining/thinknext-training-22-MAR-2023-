<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/StaffArticleDetails.aspx.vb" Inherits="StaffArticleDetails" title="Article Detail" %>

<%@ Register namespace="MyControls" tagprefix="custom" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><div>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false" >TNK101</asp:TextBox>
                </div>
    <div style ="width:835px ; height:867px; margin-right: 0px;">
    <table style="width: 837px; height: 11px; margin-left: 0px;">
    <tr>
        <td align="center" 
            style="color: #FFFFFF; background-color: #FFFFFF; height: 12px;" 
            valign="top">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                style="font-size: large; font-weight: 700" Text="Article Details"></asp:Label>
              
            
                </td>
    </tr>
    <tr>
        <td align="left" 
            style="color: #FFFFFF; background-color: #FFFFFF; ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblMsg" runat="server" 
                style="color: #CC3300; "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="Allbuttons" ID="btnBack" runat="server" Height="25px" 
                style="font-size: small; font-weight: 700" Text="Back" Width="80px" />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td align="left" style="height: 15px">
                &nbsp;&nbsp;
                <asp:Label ID="lblSubject" runat="server" Text="Label" 
                style="font-size: medium; font-weight: 700; color: #990000;"></asp:Label>
            </td>
    </tr>
    <tr>
        <td align="left" style="height: 11px">
                &nbsp;&nbsp;
                <asp:Label ID="lblPublishedBy" runat="server" Text="Label" 
                style="color: #808080; font-size: small"></asp:Label>
            </td>
    </tr>
    <tr>
        <td align="left" style="height: 16px">
                <span style="font-size: small; color: #808080; border-left-color: #ACA899; border-right-color: #C0C0C0; border-top-color: #ACA899; border-bottom-color: #C0C0C0">
                &nbsp;&nbsp;&nbsp;
                Published On : </span><asp:Label ID="lblDate" runat="server" Text="Label" 
                style="font-size: small; color: #808080"></asp:Label></td>
    </tr>
    <tr>
        <td align="left" style="height: auto; text-align: center; padding-left: 14px;">
                <cc1:Editor ID="Editor1" runat="server"  ActiveMode="Preview" Width="750px"  />
        </td>
    </tr>
    <tr>
        <td align="left" style="height: 12px">
                    &nbsp;</td>
    </tr>
    </table>
</div>
</asp:Content>

