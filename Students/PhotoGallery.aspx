<%@ Page Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/PhotoGallery.aspx.vb" Inherits="PhotoGallery" title="Photo Gallery" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../styles/prettyPhoto.css"  charset="utf-8" media="screen" />        
    <!-- Arquivos utilizados pelo jQuery lightBox plugin -->
    <script type="text/javascript" src="../javascripts/jquery-1.3.2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="../javascripts/jquery-1.4.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="../javascripts/jquery.prettyPhoto.js" charset="utf-8"></script>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $("a[rel^='prettyPhoto']").prettyPhoto();
            }); 
</script>

 <div style="width: 825px" >
   
        <table style="width: 818px">
            <tr>
                <td align="center" valign="top">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                   
                    
                </td>
            </tr>
            <tr>
                <td align="center" valign="top">
                    <asp:Label ID="Label3" runat="server" 
                        style="font-weight: 700; font-size: large" Text="Photo Gallery"></asp:Label>
                   
                    
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style32" valign="top">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
    <ContentTemplate>
                    <asp:Panel ID="Panel2" runat="server" GroupingText="Show" Height="85px" 
                        style="font-size: small">
                        <table align="center" 
    style="width: 676px">
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label10" runat="server" Text="Category :" ForeColor="Black"></asp:Label>
                                </td>
                                <td align="left" class="style28" colspan="6">
                                    <asp:DropDownList ID="ddlCategory" runat="server" Height="20px" 
                                        style="font-size: x-small" Width="250px">
                                        <asp:ListItem>Select</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left">
                                    &nbsp;</td>
                                <td align="left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:CheckBox ID="ChkDate" runat="server" Text="Date" AutoPostBack="True" />
                                    &nbsp;<asp:Label ID="Label8" runat="server" Text="From :" ForeColor="Black"></asp:Label></td>
                                <td align="left" class="style32" style="width: 51px">
                                    <asp:TextBox ID="txtDateFrom" runat="server" Height="14px" 
                                        style="font-size: x-small" Width="90px"></asp:TextBox>
                                    <cc1:CalendarExtender ID="txtDateFrom_CalendarExtender" runat="server" 
                                        Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtDateFrom" 
                                        TodaysDateFormat="MM/dd/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                                <td align="left" class="style28" style="width: 20px">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Date To :"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtDateTo" runat="server" Height="14px" 
                                        style="font-size: x-small" Width="90px"></asp:TextBox>
                                    <cc1:CalendarExtender ID="txtDateTo_CalendarExtender" runat="server" 
                                        Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtDateTo" 
                                        TodaysDateFormat="MM/dd/yyyy">
                                    </cc1:CalendarExtender>
                                </td>
                                <td align="left">
                                    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="(MM/dd/yyyy)"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:Button CssClass="Allbuttons" ID="btnDisplay" runat="server" Height="25px" 
                                        style="font-weight: 700; font-size: small" Text="Show" Width="80px" />
                                </td>
                                <td align="left">
                                    <asp:Button CssClass="Allbuttons" ID="btnDisplayAll" runat="server" Height="25px" 
                                        style="font-weight: 700; font-size: small" Text="Show All" 
                                    Width="80px" />
                                </td>
                                <td align="left">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    </ContentTemplate>
                     <Triggers>
                         <asp:PostBackTrigger ControlID="btnDisplay" />
                         <asp:PostBackTrigger ControlID="btnDisplayAll" />
                     </Triggers>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="center" class="style32" valign="top">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" style="font-size: small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="center" valign="top">

                    <asp:Panel ID="Panel1" runat="server" Height="538px" HorizontalAlign="Center" 
                        ScrollBars="Auto">
                        <asp:DataList ID="galleryDataList" RepeatColumns="5" runat="server" 
    Height="71px" Width="736px">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td style="background-position: center center; width: 135px; height: 130px; background-image: url('../Images/img_back.png'); background-repeat: no-repeat; vertical-align: middle; text-align: center;" >
                                            <a href='<%# "../" & Eval("Snap")%>' rel="prettyPhoto[pp_gal]" 
                           title='<%# Eval("Description")%>'>
                                            <img src='<%#"../" & Eval("Snap")%>' 
                                                alt='<%# Eval("Title")%>' 
                                                
                                                
                                                style="border-style: none; margin: 6px auto auto auto; height: 100px; width: 100px" /> </a>
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr><td><asp:Label ID="Label11" runat="server" Text='<%# Eval("ID") %>' Visible ="false" ></asp:Label>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("DateEntry") %>' Visible="false" ></asp:Label></td></tr>
                                </table>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <table class="style19">
                                    <tr>
                                        <td rowspan="3" class="style30">
                                            <a href='<%# Eval("Snap")%>' rel="prettyPhoto[pp_gal]" 
                          title='<%# Eval("Description")%>'>
                                            <img alt='<%# Eval("Title")%>' height="60" 
                          src='<%# Eval("Snap")%>' width="60" /> </a>
                                        </td>
                                        <td align="left" class="style29" valign="top">
                                            <asp:Label ID="Label6" runat="server" Text="Title :"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtTitle1" runat="server" Height="14px" 
                          Text='<%# Eval("Title") %>' Width="350px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style29" valign="top">
                                            <asp:Label ID="Label7" runat="server" Text="Description :"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtDescription1" runat="server" 
                          Height="14px" Text='<%# Eval("Description") %>' Width="350px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblID1" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                            <asp:Button CssClass="BlackButtonCss" ID="btnUpdate" runat="server" Height="23px" 
                          style="font-weight: 700; font-size: small" Text="Update" CommandName="Update" />
                                            &nbsp;<asp:Button CssClass="BlackButtonCss" ID="btnCancel" runat="server" Height="23px" 
                          style="font-weight: 700; font-size: small" Text="Cancel" CommandName="Cancel" />
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
      </td>
            </tr>
        </table>
    
    </div>
</asp:Content>

