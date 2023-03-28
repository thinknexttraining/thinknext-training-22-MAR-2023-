<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="AddQuestionPaper.aspx.cs" Inherits="Staff_AddQuestionPaper" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .button_example
        {}
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="height: auto; width: 838px; margin-right: 0px;"> 
      
    <table style="width: 834px; height: auto;">
        <tr>
            <td align="center" class="style3">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                                       
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                <asp:Label ID="lblDetail" runat="server" 
                    style="font-size: large; font-weight: 700;">Add QuestionPaper</asp:Label>
                                       
            </td>
        </tr>
        <tr>
            <%--<td align="center" style="height: 28px">
                    <asp:Panel ID="PanelADD" runat="server" GroupingText="ADD" Height="55px" 
                        HorizontalAlign="Center" style="font-size: small; font-family: Arial;" 
                        Width="595px">
                        <table style="width: 500px; height: 16px;" align="center">
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Enter"></asp:Label>
                                    &nbsp;<asp:Label ID="lblAddNew" runat="server"></asp:Label></td>
                                <td align="left" style="width: 221px; ">
                                    <asp:TextBox ID="txtADDNew" runat="server" Height="14px" 
                                        style="font-size: x-small" Width="200px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Button CssClass="Allbuttons" ID="btnADDNew" runat="server" Height="25px" 
                                        style="font-size: small; font-weight: 700" Text="ADD" Width="80px" 
                                         />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
            </td>--%>
        </tr>
        <tr>
            <td align="center" style="height: 7px">
                <asp:Label ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel2" runat="server" BorderColor="Black" 
                            GroupingText="QuestionPapers" Height="137px" style="font-size: small" 
                            Width="708px">
                            <table style="width:580px; height: 89px;">
                                <tr>
                                    <td align="left" style="width: 174px">
                                        &nbsp;</td>
                                    <td align="left" style="width: 534px">
                                        <asp:Label ID="lblcourse" runat="server"  
                                            style="font-size: small" Text="Course :"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 318px">
                                        <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" 
                                            Height="20px" style="font-size: x-small" Width="200px">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" style="width: 130px; height: 20px";>
                                        &nbsp;</td>
                                    <td align="left" style="width: 449px; height: 20px";>
                                        &nbsp;</td>
                              <td align="left" style="width: 358px">
                                        <asp:Label ID="Label2" runat="server" 
                                            style="font-size: small" Text="Batch:"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 144px">
                                        <asp:TextBox ID="txtbatch" runat="server" Height="15px" 
                                            style="font-size: small" Width="160px"></asp:TextBox>
                                      
                                    </td>
                                   
                              </tr>
                                <tr>
                                    <td align="left" style="width: 174px; height: 20px;">
                                        &nbsp;</td>
                                    <td align="left" style="width: 534px; height: 20px;">
                                        <asp:Label ID="lblsession" runat="server"  
                                            style="font-size: small" Text="Session :"></asp:Label>
                                    </td>
                                   <td align="left" style="width: 318px">
                                        <asp:DropDownList ID="ddlsession" runat="server" AutoPostBack="True" 
                                            Height="20px" style="font-size: x-small" Width="200px">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" style="width: 130px; height: 20px;">
                                        &nbsp;</td>
                                    <td align="left" style="width: 449px; height: 20px;">
                                        &nbsp;</td>
                                    
                                    <td align="left" style="width: 534px">
                                        <asp:Label ID="lbldate" runat="server" 
                                            style="font-size: small" Visible="false" Text="Date :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtdate" runat="server" Height="15px" Width="160px" Visible="false"></asp:TextBox>
                                        <cc1:CalendarExtender ID="txtDateEntry_CalendarExtender" runat="server" 
                                            Enabled="True" Format="MM/dd/yyyy" TargetControlID="txtdate" 
                                            TodaysDateFormat="MM/dd/yyyy">
                                        </cc1:CalendarExtender>
                                        

                                    </td>
                               
                           
                              
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                   <%-- <Triggers>
                        <asp:PostBackTrigger ControlID="btnCategory" />
                        <asp:PostBackTrigger ControlID="btnPublisher" />
                        <asp:PostBackTrigger ControlID="btnSource" />
                    </Triggers>--%>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="height: 8px" valign="top" align="center">
                                &nbsp;</td>
                                
        </tr>
        
        
        <tr>
            <td style="height: 8px" valign="top" align="center">
                                <asp:Button CssClass="Allbuttons" ID="btnShow" runat="server" Height="26px" style="font-weight: 700" 
                                    Text="Show" Width="89px" OnClick="btnShow_Click"  />
                                </td>
        </tr>
        <tr>
            <td valign="top" align="center" class="style4">
                                <asp:Panel ID="Panel4" runat="server" GroupingText="Upload Question Papers" 
                                    Height="83px" style="font-size: small" Width="716px">
                                    
                                    
                                    <table style="width:650px; height: 34px;">
                                        <tr>
                                            <td style="width: 124px; height: 9px">
                                                &nbsp;</td>
                                            <td align="left" style="width: 80px; height: 9px" valign="middle">
                                                <asp:Label ID="lblFileName" runat="server"
                                                    style="font-size: small" Text="File Name"></asp:Label>
                                            </td>
                                            <td align="left" style="width: 200px; height: 9px" valign="top">
                                                <asp:FileUpload ID="UploadFile" runat="server" Height="25px"  
                                                    style="font-size:small" Width="223px" />
                                            </td>
                                            <td style="height: 9px" align="left" valign="top">
                                                <asp:Button ID="btnupload" runat="server" CssClass="button_example"
                                                    Text="Upload" OnClick="btnupload_Click" Width="96px"  />
                                            </td>
                                            <td style="height: 9px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 22px" colspan="5">
                                                <asp:Label ID="Label4" runat="server" ForeColor="#FF3300" 
                                                    Text="(.doc, .pdf, .txt, .xls, .xlsx, .docx, .rtf, .ppt, .pps, .pptx, .ppsx only)"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                </asp:Panel>
                            </td>
        </tr>
        <tr>
            <td align="center" style="height: 172px" valign="top">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <table style="width: 97%; height: 400px;">
                            <tr>
                                <td>
                                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" style="font-size: small"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 819px">
                                    <asp:Label ID="lblRecords" runat="server" style="font-size: small"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 410px; width: 819px;" valign="top">
                                    <asp:Panel ID="Panel1" runat="server" Height="405px" ScrollBars="Auto" 
                                        Width="819px">
                                        <asp:GridView ID="gdShow" runat="server" AllowSorting="True" 
                                            AutoGenerateColumns="False" CellPadding="4" Font-Size="Small" 
                                            ForeColor="#333333" GridLines="None" Height="33px" PageSize="8"   
                                            style="font-size: small" Width="815px" OnRowCancelingEdit="gdShow_RowCancelingEdit" OnRowDeleting="gdShow_RowDeleting" OnRowEditing="gdShow_RowEditing" OnRowUpdating="gdShow_RowUpdating">
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" 
                                                VerticalAlign="Middle" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Date Entry">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDateEntry" runat="server" 
                                                            Text='<%# Eval("DateEntry", "{0:d}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" Width="70px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Course">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblcourse" runat="server" Text='<%# Eval("course") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("course") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Batch">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblbatch" runat="server" Text='<%# Eval("Batch") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Batch") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                   <%-- <EditItemTemplate>
                                                        <asp:TextBox ID="txtTitle0" runat="server" Font-Size="Small" Height="14px" 
                                                            Text='<%# Eval("Title") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Session">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblsession" runat="server" Text='<%# Eval("Session") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <%--<EditItemTemplate>
                                                        <asp:TextBox ID="txtAuthor0" runat="server" Font-Size="Small" Height="14px" 
                                                            Text='<%# Eval("Author") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <%--<asp:TemplateField HeaderText="QuestionPaperID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblQuestionPaperID" runat="server" Text='<%# Eval("QuestionPaperID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtEdition0" runat="server" Font-Size="Small" Height="14px" 
                                                            Text='<%# Eval("Edition") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>--%>
                                                
                                             <%--   <asp:TemplateField HeaderText="FileName">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFileName" runat="server" Text='<%# Eval("FileName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                   <%-- <EditItemTemplate>
                                                        <asp:TextBox ID="txtSource" runat="server" Font-Size="Small" Height="14px" 
                                                            Text='<%# Eval("Source") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                <%--    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="UserID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblUserID" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtCategory" runat="server" Height="14px" 
                                                            Text='<%# Eval("Category") %>' Width="110px"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" Width="90px" />
                                                </asp:TemplateField>--%>
                                                <asp:TemplateField HeaderText="File Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFileName" runat="server" Text='<%# Eval("FileName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="User ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblUserID" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                </asp:TemplateField>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            </Columns>
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#999999" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                            </td>
        </tr>
        </table>
     <%-- <asp:DropDownList ID="ddlPub1" runat="server" 
                                            SelectedValue='<%# Eval("Publisher") %>' style="font-size: x-small" 
                                            AutoPostBack="True">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>--%>
    </div>
</asp:Content>

