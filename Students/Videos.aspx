<%@ Page Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/Videos.aspx.vb" Inherits="Default2" title="Video Gallery" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/overlay-minimal.css" rel="stylesheet" type="text/css" />
    <link href="../css/videolightbox.css" rel="stylesheet" type="text/css" />
    <script src="../javascripts/swfobject.js" type="text/javascript"></script>
    <script src="../javascripts/jquery.tools.min.js" type="text/javascript"></script>
    <script src="../javascripts/videolightbox.js" type="text/javascript"></script> 
    
    
    <div id="script"  style="width: 100%; height: 10px; display: none">
      
        
    </div> 
    <div style="height: auto; width: 100%" id="videogallery">
<div id="pageicons" style="width: 100%; height: 45px;">
   
       <table id="tabpageicon" style="width: 97%; height: 40px;">
           <tr>
               <td class="style184">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
               <td style="width: 41px">
                  <img src="../pageicon/audio.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td style="width:132px;">
                  <asp:Label ID="Label1" runat="server" Text="Video Gallery"  
                        style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>

        <asp:Panel ID="Panel2" runat="server" style="height:auto; width:100%" >
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Panel ID="Panel3" runat="server" ScrollBars="Auto" 
                            style="height:auto; width:100%">
                            <asp:DataList ID="DataList1" runat="server" Height="283px" RepeatColumns="4" 
                                Width="755px">
                                <ItemTemplate>
                                    <table align="center" cellpadding="0" cellspacing="1" 
                                        style="width: 177px; height: 146px" ID="innngg">
                                        <tr>
                                            <td align="center" class="style183" 
                                                style="background-position: center center; border-style: none; background-image: url('../images/HHH.png'); background-repeat: no-repeat; width: 160px; height: 130px;">
                                                <a href='<%# Eval("VideoPath") %>' rel="#voverlay" 
                                                    title="">
                                                <img alt="" 
                                                    src='<%#Eval("ImagePath") %>' 
                                                    style="margin: 1% 3% 2% 7%; border-style: none; height: 100px; width: 138px;" /></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 160px; text-align: center; height: 40px; vertical-align: top;">
                                                <asp:Label ID="Label1" runat="server"  
                                                  style="word-wrap: break-word;"  Text='<%# Eval("Title") %>' 
                                                    Font-Size="12px" Font-Names="Verdana" ForeColor="Red"></asp:Label><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 160px; text-align: left; height: 11px; vertical-align: top;">
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:Panel>

</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #hrr
        {
            margin-right: auto;
            margin-left: auto;
        }
        .style183
        {
            height: 121px;
            background-image: url('images/HHH.png');
            background-repeat: no-repeat;
        }
        .style184
        {
            width: 351px;
        }
        </style>
 <link href="javascripts/overlay-minimal.css" rel="stylesheet" type="text/css" />
    <link href="javascripts/videolightbox.css" rel="stylesheet" type="text/css" />

    <script src="javascripts/swfobject.js" type="text/javascript"></script>
    <script src="javascripts/jquery.tools.min.js" type="text/javascript"></script>

    <script src="javascripts/videolightbox.js" type="text/javascript"></script>

</asp:Content>




