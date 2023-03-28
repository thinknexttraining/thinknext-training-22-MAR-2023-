<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="~/Staff/AddArticles.aspx.vb" Inherits="AddArticles" title="Articles" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register Namespace="Mycontrols" TagPrefix="custom" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1268px; width: 830px;">
     <table style="height: 527px" ><tr><td  style ="height: 538px" valign ="top"  >
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <Triggers >
      <asp:PostBackTrigger  ControlID ="btnShow" />
      </Triggers>
          <ContentTemplate>
        <table style="width:817px; height: 340px;" align="center">
    <tr>
        <td valign="top" align ="center" style="width: 891px; height: 20px;" >
                        <asp:TextBox ID="txtfranchise" runat="server" BackColor="#FFFFCC" 
                            Font-Bold="True" ForeColor="#0066FF" Height="20px" ReadOnly="True" 
                            style="font-size: small" Visible="False" Width="180px">TNK101</asp:TextBox>
                    </td>
    </tr>
            <tr>
                <td align="center" style="width: 891px; height: 20px;" valign="top">
                    <span style="font-size: small"><span style="font-weight: normal">
                    <asp:Label ID="Label8" runat="server" 
                        style="font-size: large; font-weight: 700" Text="Add Articles"></asp:Label>
                    </span></span>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 830px; height: auto;" valign="top">
                    <asp:Panel ID="PanelADD" runat="server" GroupingText="ADD" Height="55px" 
                        HorizontalAlign="Center" style="font-size: small; font-family: Arial;" 
                        Width="553px" Visible="False">
                        <table style="width: 500px; height: 16px;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Enter Category :"></asp:Label>
                                </td>
                                <td align="left" style="width: 221px; ">
                                    <asp:TextBox ID="txtADDNew" runat="server" Height="14px" 
                                        style="font-size: x-small" Width="200px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Button CssClass="Allbuttons" ID="btnADDNew" runat="server" Height="25px" 
                                        style="font-size: small; font-weight: 700" Text="Add" Width="80px" 
                                         />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 830px; height: 20px;" valign="top">
                    <asp:Label ID="lblMsg1" runat="server" ForeColor="Red" style="font-size: small"></asp:Label>
                </td>
            </tr>
    <tr>
        <td align="center" valign="top" style="height: 272px; width: 891px;">
            <asp:Panel ID="Panel2" runat="server" BorderColor="Black" 
                GroupingText="Article Details" Height="533px" style="font-size: small" 
                Width="820px">
                <table align="left" style="height: 227px;">
                    <tr>
                        <td align="left" style="width: 111px; height: 7px;">
                            <asp:Label ID="Label9" runat="server" 
                                style="font-size: small" Text="Category"></asp:Label>
                        </td>
                        <td align="left" colspan="3" style="height: 7px">
                            <asp:DropDownList ID="ddlcategory" runat="server" Height="20px" 
                                style="font-size: x-small" Width="230px" AutoPostBack="True">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:Button ID="btnCategory" runat="server" CssClass="BlackButtonCss" 
                                Height="23px" style="font-size: medium; font-weight: 700" Text="..." 
                                Width="26px" />
                        </td>
                        <td align="left" style="width: 3px; height: 7px;">
                        </td>
                        <td align="left" style="width: 87px; height: 7px;">
                            <asp:Label ID="Label1" runat="server" 
                                style="font-size: small" Text="Article ID"></asp:Label>
                        </td>
                        <td align="left" style="width: 305px; height: 7px;">
                            <asp:TextBox ID="txtArticleID" runat="server" Height="14px" ReadOnly="True" 
                                style="font-size: x-small" Width="275px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 111px; ">
                            <asp:Label ID="Label2" runat="server"  
                                style="font-size: small" Text="Date"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtDate" runat="server" Height="14px" 
                                style="font-size: x-small;" Width="100px"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                                Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtDate" 
                                TodaysDateFormat="MM/dd/yyyy">
                            </cc1:CalendarExtender>
                        </td>
                        <td align="left">
                            <asp:Label ID="lblDate1" runat="server" 
                                style="color: #CC3300; font-size: small;">(MM/dd/yyyy)</asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" style="width: 3px; ">
                        </td>
                        <td align="left" style="width: 87px; ">
                            <asp:Label ID="Label3" runat="server"  
                                style="font-size: small" Text="Time"></asp:Label>
                        </td>
                        <td align="left" style="width: 305px;">
                            <asp:TextBox ID="txtTime" runat="server" Height="14px" 
                                style="font-size: x-small" Width="275px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 111px">
                            <asp:Label ID="Label4" runat="server" 
                                style="font-size: small" Text="Subject"></asp:Label>
                        </td>
                        <td align="left" colspan="3">
                            <asp:TextBox ID="txtSubject" runat="server" Height="14px" MaxLength="255" 
                                style="font-size: x-small" Width="275px"></asp:TextBox>
                        </td>
                        <td align="left" style="width: 3px; ">
                        </td>
                        <td align="left" style="width: 87px; ">
                            <asp:Label ID="Label6" runat="server" 
                                style="font-size: small" Text="Published By"></asp:Label>
                        </td>
                        <td align="left" style="width: 305px;">
                            <asp:TextBox ID="txtPublishedBy" runat="server" Height="14px" MaxLength="100" 
                                style="font-size: x-small;" Width="275px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 111px">
                            &nbsp;</td>
                        <td align="left" colspan="2">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" style="width: 3px; ">
                            &nbsp;</td>
                        <td align="left" style="width: 87px; ">
                            &nbsp;</td>
                        <td align="left" style="width: 305px;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 111px; height: 168px;" valign="top">
                            <asp:Label ID="Label5" runat="server" 
                                style="font-size: small" Text="Article"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left" colspan="6" style="height: auto;" valign="top">
                            <cc2:Editor ID="Editor1" runat="server" Height="400px" NoScript="True" 
                                NoUnicode="True" Width="700px"  />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
                </td>
    </tr>
            <tr>
                <td align="center" style="width: 891px;" valign="top">
                </td>
            </tr>
    <tr>
        <td align="center" style="width: 891px; height: 551px;" valign="top">
                <div style="height: 540px; width: 811px;">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <table style="width:732px; height: 548px;">
                                <tr>
                                    <td style="height: 30px; text-align:center;" valign="top" >
                                        <asp:Button CssClass="Allbuttons" ID="btnShow" runat="server" Height="26px" 
                                            style="font-weight: 700" Text="Show" Width="94px" 
                                             />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button CssClass="Allbuttons" ID="btnAdd" runat="server" Height="26px"  
                                            style="font-weight: 700" Text="Add" Width="94px" 
                                             />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center;  height: 24px" valign="top">
                                        <asp:UpdateProgress ID="UpdateProgressy" runat="server" 
                                            AssociatedUpdatePanelID="UpdatePanel2" DisplayAfter="100">
                                            <ProgressTemplate>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Please wait..........&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
                                                <img align="middle" alt="" src="../images/progressbar.gif" 
                                                    style="width: 194px; height: 15px" /><br />
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 16px; text-align: center;" valign="top">
                                        <asp:Label ID="lblMsg" runat="server" style="color: #990000; font-size: small;"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 1px" valign="top">
                                        <asp:Label ID="lblRecords" runat="server" 
                                            style="font-size: small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="height: 60px" valign="top">
                                        <asp:Panel ID="Panel3" runat="server" Height="401px" ScrollBars="Auto" 
                                            Width="799px">
                                            <asp:GridView ID="gdShow" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" 
                                                ShowFooter="True"   style="font-size: small; " Width="791px">
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="College Name" SortExpression="CollegeName">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCollegeName" runat="server" Text='<%# Eval("CollegeName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ArticleID">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblArticleID" runat="server" Text='<%# Eval("ArticleID") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Category">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtCategory1" runat="server" Text='<%# Eval ("Category") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtDate1" runat="server" Height="16px" 
                                                                Text='<%# Eval("Date","{0:d}") %>' Width="90px"></asp:TextBox>
                                                            <cc1:CalendarExtender ID="txtDate1_CalendarExtender" runat="server" 
                                                                Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtDate1" 
                                                                TodaysDateFormat="MM/dd/yyyy">
                                                            </cc1:CalendarExtender>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date","{0:d}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Time">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtTime1" runat="server" Height="16px" 
                                                                Text='<%# Eval("Time","{0:T}") %>' Width="90px"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblTime" runat="server" Text='<%# Eval("Time","{0:T}")%>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Published By">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtPublishedBy1" runat="server" Height="16px" 
                                                                Text='<%# Eval("PublishedBy") %>' Width="90px"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblPublishedBy" runat="server" Text='<%# Eval("PublishedBy") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Subject">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txtsubject1" runat="server" Text='<%# Eval("Subject") %>' 
                                                                TextMode="MultiLine"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkbtnSubject" runat="server" CommandName="Subject" 
                                                                Text='<%# Eval("Subject") %>'></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Article">
                                                          <ItemTemplate>
                                                            <%--<asp:Label ID="lblNews0" runat="server" Text='<%# Eval("News") %>'></asp:Label>--%>
                                                              <asp:Label ID="lblArticle" runat="server" Text='<%# Eval("Article") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    
                                                    
                                                    
                                                     <asp:TemplateField HeaderText="Active">
                                                       <%-- <EditItemTemplate>
                                                            <asp:DropDownList ID="ddlActive" runat="server">
                                                            </asp:DropDownList>
                                                           
                                                        </EditItemTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblActive" runat="server" Text='<%# Eval("Active") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    
                                                    
                                                    
                                                </Columns>
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                                    HorizontalAlign="Left" />
                                                <EditRowStyle BackColor="#999999" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            </asp:GridView>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
        </td>
    </tr>
      
</table>
        
      </ContentTemplate>
     </asp:UpdatePanel>
   </td></tr></table>
    </div>
</asp:Content>

