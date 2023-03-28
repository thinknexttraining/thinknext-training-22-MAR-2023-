<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/Video.aspx.vb" Inherits="_Default" title="Add Video" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/overlay-minimal.css" rel="stylesheet" type="text/css" />
    <link href="../css/videolightbox.css" rel="stylesheet" type="text/css" />

  <script src="../javascripts/swfobject.js" type="text/javascript"></script>
 <script src="../javascripts/jquery.tools.min.js" type="text/javascript"></script>
    <script src="../javascripts/videolightbox.js" type="text/javascript"></script>  
   
    
    <div id="script" style="width: 100px; height: auto; display:none;">
      
        
    </div>
    
    <div style="height: auto; width: 100%" id="videogallery">

       <div>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false" >TNK101</asp:TextBox>
                </div>
      
         <asp:Panel ID="Panel2" runat="server" style="height: auto; width: 100%">
            <table style="width: 100%; height: auto;" ID="tbmainvide">
                <tr>
                    <td align="center" >
                        <asp:Label ID="lblTt" runat="server" style="font-size: large; font-weight: 700" 
                            Text="Add Video"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%; height: auto" ID="addvideo" >
                            <tr>
                                <td style="width: 597px; height: 171px" valign="top">
                                    <table style="width: 825px; height: auto;" align="center" id="hrr">
                                        <tr>
                                            <td class="style80" style="width: 109px">
                                                </td>
                                            <td class="style81">
                                                <asp:Label ID="lbltit" runat="server" 
                                                    style="font-size: small; text-align: left;" Text="Title"></asp:Label>
                                            </td>
                                            <td class="style182" align="left">
                                                <asp:TextBox ID="txttit" runat="server" Height="16px" 
                                                    style="margin-bottom: 0px; font-size: x-small;" Width="300px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style128" style="width: 109px">
                                                &nbsp;</td>
                                            <td class="style130" style="width: 91px">
                                                <asp:Label ID="lblchoosefile" runat="server" style="font-size: small; text-align: left;" 
                                                    Text="Choose A File"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:FileUpload ID="fileupload" runat="server" Height="23px" Width="298px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style128" style="width: 109px">
                                                &nbsp;</td>
                                            <td class="style130" style="width: 91px">
                                                <asp:Label ID="lbldesc" runat="server" style="font-size: small; text-align: left;" 
                                                    Text="Description"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txtdesc" runat="server" Height="38px" TextMode="MultiLine" 
                                                    Width="300px" style="font-size: x-small"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style128" style="width: 109px; height: 51px;">
                                            </td>
                                            <td class="style130" style="width: 91px; height: 51px;">
                                            </td>
                                            <td align="left" style="height: 51px" valign="top">
                                                <asp:Button ID="btnupld" runat="server" CssClass="Allbuttons" Height="25px" 
                                                    onclick="btnupld_Click" style="font-size: small" Text="Upload" 
                                                    Width="106px" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblmsg" runat="server" style="color: #FF0000; font-size: small"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="height: auto;">
                                              <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Uploading Video. . . . . . . . .&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <img alt="" style="height:14px; width:237px;" src="../Images/progressbar.gif" /> 
                </ProgressTemplate>
                </asp:UpdateProgress></td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="style130" colspan="3">
                                                <asp:Label ID="Label1" runat="server" style="font-size: small; color: #FF0000" 
                                                    
                                                    Text="                     Support= .mkv, .vob, .3gp, .mp4, .wmv, .flv, .avi" 
                                                    Width="622px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3" style="width: 100%; height: auto">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3" style="width: 100%; height: auto">
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <asp:Panel ID="Panel3" runat="server" ScrollBars="Auto" 
                                                            style="height: auto; width: 100%">
                                                            <asp:DataList ID="DataList1" runat="server" Height="283px" RepeatColumns="4" 
                                                                Width="99%">
                                                                <ItemTemplate>
                                                                    <table ID="tabimgvid" align="center" cellpadding="0" cellspacing="1" 
                                                                        style="width: 177px; height: 146px">
                                                                        <tr>
                                                                            <%--<td  align="center" 
                        style="border-style: none; background-image: url('images/HHH.png'); background-repeat: no-repeat; height: 124px; text-align: center; vertical-align: middle;" 
                        valign="top">
                    <a rel="#voverlay" href='<%# Eval("VideoPath") %>' title="Adesh Group Of Institutions">
                        <img src='<%#Eval("ImagePath") %>' 
                            alt="Adesh Group Of Institutions" 
                            
                            style="margin: auto; border-style: none; height: 100px; width: 138px; " /></a>
	
                    </td>--%>
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
                                                                            <td class="style78">
                                                                                &nbsp;
                                                                                <asp:Label ID="lblId" runat="server" text='<%# Eval("ID") %>' Visible="false" ></asp:Label>
                                                                                <asp:Label ID="Label4" runat="server" Height="16px" 
                                                                                    Text='<%# Eval("Title") %>' Width="134px"></asp:Label><asp:Button id="btnDelete" runat="server"  Text="Delete" CommandName="Delete" CssClass="button"/></td>
                                                                        </tr>
                                                                    </table>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </asp:Panel>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
              
                                </td>
                                
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
        
</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style182
    {
        height: 23px;
    }
        .style183
        {
            height: 121px;
            background-image: url('images/HHH.png');
            background-repeat: no-repeat;
        }
        #hrr
        {
            margin-right: auto;
            margin-left: auto;
        }
        .button {
   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#3e779d), to(#65a9d7));
   background: -webkit-linear-gradient(top, #3e779d, #65a9d7);
   background: -moz-linear-gradient(top, #3e779d, #65a9d7);
   background: -ms-linear-gradient(top, #3e779d, #65a9d7);
   background: -o-linear-gradient(top, #3e779d, #65a9d7);
   padding: 5px 10px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 14px;
   font-family: Georgia, serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border-top-color: #28597a;
   background: #28597a;
   color: #ccc;
   }
.button:active {
   border-top-color: #1b435e;
   background: #1b435e;
   }
    </style>
 <link href="javascripts/overlay-minimal.css" rel="stylesheet" type="text/css" />
    <link href="javascripts/videolightbox.css" rel="stylesheet" type="text/css" />

    <script src="javascripts/swfobject.js" type="text/javascript"></script>
    <script src="javascripts/jquery.tools.min.js" type="text/javascript"></script>

    <script src="javascripts/videolightbox.js" type="text/javascript"></script>

</asp:Content>




