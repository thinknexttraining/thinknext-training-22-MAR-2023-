<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/AddPhotoGallery.aspx.vb" Inherits="AddPhotoGallery" title="Photo Gallery" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <link href="../styles/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <!-- Arquivos utilizados pelo jQuery lightBox plugin -->
    <script type="text/javascript" src="../javascripts/jquery-1.3.2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="../javascripts/jquery-1.4.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="../javascripts/jquery.prettyPhoto.js" charset="utf-8"></script>
       
       
       
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $("a[rel^='prettyPhoto']").prettyPhoto();
            }); 
</script>
    <style type="text/css">
        
           
        
        .style32
    {
        height: 93px;
    }
        .style33
        {
            width: 109px;
        }
        .style34
        {
            height: 21px;
        }
        </style>
 <div style="width: 826px; height: 850px;">
        <table style="width: 820px" >
            <tr>
                <td align="center" class="style34" >
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                                        
                </td>
            </tr>
            <tr>
                <td align="center" class="style32" >
                    <asp:Label ID="Label3" runat="server" 
                        style="font-size: large; font-weight: 700" Text="Photo Gallery"></asp:Label>
                                        
                </td>
            </tr>
            <tr>
                <td  align="center" style="height:auto;" >
                    <asp:Panel ID="Panel16" runat="server" GroupingText="ADD" Height="55px" 
                        HorizontalAlign="Center" style="font-size: small; font-family: Arial;" 
                        Width="553px" Visible="False">
                        <table style="width: 500px; height: 16px;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text="Enter Category :"></asp:Label>
                                </td>
                                <td align="left" style="width: 221px; ">
                                    <asp:TextBox ID="txtADDNew" runat="server" Height="14px" 
                                        style="font-size: x-small" Width="200px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Button CssClass="Allbuttons" ID="btnADDNew" runat="server" Height="25px" 
                                        style="font-size: small; font-weight: 700" Text="ADD" Width="80px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td  align="center">
                    <asp:Label ID="lblmsg" runat="server" style="color: #FF0000" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Panel ID="Panel2" runat="server" Width="726px" 
                        GroupingText="ADD Date-Wise" Height="50px" HorizontalAlign="Center" 
                        style="font-size: small">
                        <table align="center">
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label15" runat="server" 
                                        Text="Select Date :"></asp:Label>
                                    &nbsp;
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtDate" runat="server" Height="14px" 
                                        style="font-size: x-small" Width="90px"></asp:TextBox>
                                    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                                        Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtDate" 
                                        TodaysDateFormat="MM/dd/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                                <td align="left">
                                    <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="(MM/dd/yyyy)"></asp:Label>
                                </td>
                                <td align="left" >
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label18" runat="server" Text="Category :"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlCategory" runat="server" Height="20px" 
                                        style="font-size: x-small" Width="200px">
                                        <asp:ListItem>Select</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left">
                                    <asp:Button CssClass="Allbuttons" ID="Button1" runat="server" Height="25px" style="font-weight: 700" 
                                        Text="..." Width="27px" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td  align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" Width="748px">
                                <table >
                                    <tr>
                                        <td align="left" >
                                            <asp:Label ID="Label5" runat="server" Text="Image :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
                                        </td>
                                        <td align="left" >
                                            &nbsp;</td>
                                        <td align="left" >
                                            <asp:Label ID="Label19" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtTitle1" runat="server" Height="14px" 
                                                style="font-size: x-small" Width="150px"></asp:TextBox>
                                        </td>
                                        <td align="left" >
                                            <asp:Label ID="Label10" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtImgDsc1" runat="server" Height="14px" Width="150px" 
                                                style="font-size: x-small"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" >
                                            <asp:Label ID="Label6" runat="server" Text="Image :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:FileUpload ID="FileUpload2" runat="server" Width="215px" />
                                        </td>
                                        <td align="left" >
                                            &nbsp;</td>
                                        <td align="left" >
                                            <asp:Label ID="Label20" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtTitle2" runat="server" Height="14px" 
                                                style="font-size: x-small" Width="150px"></asp:TextBox>
                                        </td>
                                        <td align="left" >
                                            <asp:Label ID="Label11" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtImgDsc2" runat="server" Height="14px" Width="150px" 
                                                style="font-size: x-small"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="Label7" runat="server" Text="Image :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:FileUpload ID="FileUpload3" runat="server" Width="215px" />
                                        </td>
                                        <td align="left" >
                                            &nbsp;</td>
                                        <td align="left" >
                                            <asp:Label ID="Label21" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtTitle3" runat="server" Height="14px" 
                                                style="font-size: x-small" Width="150px"></asp:TextBox>
                                        </td>
                                        <td align="left" >
                                            <asp:Label ID="Label12" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtImgDsc3" runat="server" Height="14px" Width="150px" 
                                                style="font-size: x-small"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" >
                                            <asp:Label ID="Label8" runat="server" Text="Image :"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:FileUpload ID="FileUpload4" runat="server" Width="215px" />
                                        </td>
                                        <td align="left">
                                            &nbsp;</td>
                                        <td align="left">
                                            <asp:Label ID="Label22" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtTitle4" runat="server" Height="14px" 
                                                style="font-size: x-small" Width="150px"></asp:TextBox>
                                        </td>
                                        <td align="left" >
                                            <asp:Label ID="Label13" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtImgDsc4" runat="server" Height="14px" Width="150px" 
                                                style="font-size: x-small"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="Label9" runat="server" Text="Image :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:FileUpload ID="FileUpload5" runat="server" Width="215px" />
                                        </td>
                                        <td align="left" >
                                            &nbsp;</td>
                                        <td align="left" >
                                            <asp:Label ID="Label23" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtTitle5" runat="server" Height="14px" 
                                                style="font-size: x-small" Width="150px"></asp:TextBox>
                                        </td>
                                        <td align="left" >
                                            <asp:Label ID="Label14" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left" >
                                            <asp:TextBox ID="txtImgDsc5" runat="server" Height="14px" Width="150px" 
                                                style="font-size: x-small"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnUpload" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>Please wait......
                        <img src="../images/progressbar.gif" />
                    </ProgressTemplate>
                    </asp:UpdateProgress>
                    </td>
            </tr>
            <tr>
                <td align="center" >
                    <asp:Button CssClass="Allbuttons" ID="btnUpload" runat="server" 
                        style="font-weight: 700; font-size: small" Text="Upload New Image(s)" 
                        Width="164px" Height="25px" />
                </td>
            </tr>
            <tr>
                <td align="center">
                      <asp:Panel ID="Panel3" runat="server" Height="431px" HorizontalAlign="Center" 
                        ScrollBars="Auto" Width="748px">
                        <asp:DataList ID="galleryDataList" RepeatColumns="2" runat="server" 
    Height="50px" Width="736px">
                            <ItemTemplate>
                                <table ID="dsfdsfds" style="width: 99%; height: auto" >
                                    <tr>
                                        <td rowspan="4" 
                                            style="background-image: url('../Images/img_back.png'); background-repeat: no-repeat; background-position: center center; text-align: center; vertical-align: middle; width: 135px; height: 130px;">
                                            <a href='<%# "../" & Eval("Snap") %>' rel="prettyPhoto[pp_gal]" 
                           title='<%# Eval("Description")%>'>
                                            
                                             <img src='<%# "../" & Eval("Snap") %>' 
                                               alt="<%# Eval("Snap")%>"  
                                                
                                                style="border-style: none; margin: 6px auto auto auto; height: 100px; width: 100px" /> </a>
                                        </td>
                                        <td align="left" >
                                            <asp:Label ID="Label6" runat="server" style="color: #0066FF" Text="Category :"></asp:Label>
                                        </td>
                                        <td align="left" class="style33" >
                                            <asp:Label ID="lblCategory" runat="server" style="font-size: small" 
                                                Text='<%# Eval("Category") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" >
                                            <asp:Label ID="Label5" runat="server" style="color: #0066FF" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left" class="style33" >
                                            <asp:Label ID="lblTitle" runat="server" style="font-size: small" 
                                                Text='<%# Eval("Title") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" >
                                            <asp:Label ID="Label4" runat="server" Text="Description :" 
                                                style="color: #0066FF"></asp:Label>
                                        </td>
                                        <td align="left" class="style33">
                                            <asp:Label ID="lblDescription" runat="server" style="font-size: small" 
                                                Text='<%# eval("Description") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2">
                                            &nbsp;&nbsp;<asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button CssClass="Allbuttons" 
                                                ID="btnEdit" runat="server" CommandName="Edit" Height="23px" 
                                                style="font-weight: 700; font-size: small" Text="Edit" Width="60px" />
                                            &nbsp;<asp:Button CssClass="Allbuttons" ID="btnDelete" runat="server" CommandName="Delete" Height="23px" 
                                                style="font-weight: 700; font-size: small" Text="Delete" Width="60px" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <table ID="vxcv" style="width: 99%; height: auto" >
                                    <tr>
                                        <td rowspan="4" 
                                        style="background-image: url('../Images/img_back.png'); background-repeat: no-repeat; background-position: center center; text-align: center; vertical-align: middle; width: 135px; height: 130px;">
                                            <a href='<%# Eval("Snap")%>' rel="prettyPhoto[pp_gal]" 
                          title='<%# Eval("Description")%>'>
                                            <img alt='<%# Eval("Title")%>' 
                          src='<%# "../" & Eval("Snap")%>' style="height: 100px; width: 100px" /> </a>
                                        </td>
                                        <td align="left" valign="top">
                                            <asp:Label ID="Label8" runat="server" Text="Category :"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtCategory" runat="server" Height="14px" 
                                                Text='<%# Eval("Category") %>' Width="144px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:Label ID="Label6" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtTitle1" runat="server" Height="14px" 
                                                Text='<%# Eval("Title") %>' Width="144px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left"  valign="top">
                                            <asp:Label ID="Label7" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtDescription1" runat="server" 
                          Height="14px" Text='<%# Eval("Description") %>' Width="144px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblID1" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                            <asp:Button CssClass="Allbuttons" ID="btnUpdate" runat="server" Height="23px" 
                          style="font-weight: 700; font-size: small" Text="Update" CommandName="Update" Width="80px" />
                                            &nbsp;<asp:Button CssClass="Allbuttons" ID="btnCancel" runat="server" Height="23px" 
                          style="font-weight: 700; font-size: small" Text="Cancel" CommandName="Cancel" Width="80px" />
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                        </asp:DataList>
                    </asp:Panel></td>
            </tr>
            </table>
    </div>
</asp:Content>

