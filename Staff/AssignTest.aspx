<%@ Page Language="VB" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="false" CodeFile="AssignTest.aspx.vb" Inherits="Admin_AssignTest" title="Assign Test To Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style4
        {
            height: 51px;
        }
        .style5
        {
            width: 150px;
        }
        .style6
        {
            width: 344px;
        }
        .style7
        {
            width: 289px;
        }
    .style8
    {
        width: 252px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

     
   

    <div style="width: 100%; height: auto;">
            
                   <div id="pageicons" style="width: 92%; height: 45px;">

       <table id="tabpageicon" style="width: 92%; height: 45px;">
           <tr>
               <td class="style8">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
               <td style="width: 46px">
                  <img src="../pageicon/attendence.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td style="width: 130px">
                  <asp:Label ID="Label1" runat="server" Text="Assign Test"  
                        
                       style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style8">
                   &nbsp;</td>
               <td style="width: 46px">
                   &nbsp;</td>
               <td style="width: 130px">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style8">
                   &nbsp;</td>
               <td style="width: 46px">
                   &nbsp;</td>
               <td style="width: 130px">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>
     <asp:UpdatePanel ID="xyUpdate" runat="server" UpdateMode="Conditional"><ContentTemplate>
            <table  style="width: 96%; margin-left:20px; height: auto; " id="tabatt" cellpadding="0" cellspacing="0">
                 <tr>
                                    <td align="center" class="style4" 
                                        style="font-family: 'Times New Roman', Times, serif; font-size: small; color: #000000">
                                        <asp:Panel ID="Panel4" runat="server" GroupingText="Select Program" 
                                            Height="59px">
                                            <p id="ppx" style="margin:0px; padding-top: 2px; padding-bottom: 2px;" >
                                            <strong> Select Session  </strong>
                                                <asp:DropDownList ID="drpCourse" runat="server" Height="20px" Width="200px" 
                                                    AutoPostBack="True">
                                                </asp:DropDownList>
                                             <strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Batch&nbsp;
                                                <asp:DropDownList ID="drpgroup" runat="server" Height="20px" Width="200px">
                                                </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:Button ID="btnshow" runat="server" Text="Show" 
                                                    CssClass="Allbuttons" Height="24px" Width="82px" />
                                            </p>
                                        </asp:Panel>
                                    </td>
                                </tr>
                <tr>
                    <td align="center" style="height: auto; " valign="top">
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Please wait. . . . . . . . .&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <img alt="" style="height:14px; width:237px;" src="../Images/progressbar.gif" /> 
                    <br />
                </ProgressTemplate>
                </asp:UpdateProgress>
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Green"></asp:Label> 
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red"></asp:Label>
                            &nbsp;<br />
                        </td>
                </tr>
                <tr>
                    <td align="center" style="height: 63px; text-align: left; margin-left: 20px;" 
                        valign="top">
                        <asp:Panel ID="Panel3" runat="server" GroupingText="Select Test Type" Height="50px" 
                            HorizontalAlign="Center" Width="815px" style="font-size: small">
                            <table style="width: 99%" id="vvcvc">
                                <tr>
                                    <td style="width: 18px">
                                        </td>
                                    <td align="left" style="width: 138px" valign="middle">
                                        <asp:Label ID="lblsetlecturesdelivered" runat="server" SkinID="MytextID" 
                                            style="font-size: small" Text="Select Test Type"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 117px" valign="middle">
                                       <asp:DropDownList ID="dlltesttype" runat="server" Height="23px" Width="327px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Second</asp:ListItem>
                    <asp:ListItem>Third</asp:ListItem>
                    <asp:ListItem>Fourth</asp:ListItem>
                    <asp:ListItem>Fifth</asp:ListItem>
                    <asp:ListItem>Sixth</asp:ListItem>
                </asp:DropDownList>
                                    </td>
                                    <td align="left" style="width: 81px" valign="top">
                                         &nbsp;</td>
                                    <td align="left" style="width: 135px" valign="middle">
                                        &nbsp;</td>
                                    <td align="left" style="width: 119px" valign="middle">
                                        &nbsp;</td>
                                    <td align="left" valign="top" style="width: 92px">
                                         &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: auto; text-align: left;" valign="top">
                    <table style="width: 100%; height: auto;" id="trttrt">
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Button ID="cmdSave" runat="server" CssClass="Allbuttons" Height="25px" 
                                        SkinID="MytextID" style="font-weight: 700" Text="Save" Width="90px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    <span style="color: #990000"><b><span style="font-size: small">
                                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    </b></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <span style="color: #990000"><b><span style="font-size: small">
                                            &nbsp;<table style="width:100%" ID="sdsadsa">
                                                <tr>
                                                    <td class="style7">
                                                        <span style="color: #990000"><b><span style="font-size: small">
                                                        <asp:Label ID="lbltotalrecords" runat="server"></asp:Label>
                                                        </span></b></span>
                                                    </td>
                                                    <td class="style6">
                                                        <span style="color: #990000"><b><span style="font-size: small">
                                                        <asp:Label ID="lblTotalLectures" runat="server" 
                                                            style="font-size: small; font-weight: 700; font-family: Arial" 
                                                            ForeColor="#FF3300"></asp:Label>
                                                        &nbsp;</span></b></span></td>
                                                    <td>
                                                        <span style="color: #990000"><b><span style="font-size: small">
                                                        <asp:Label ID="lblMsg0" runat="server" 
                                                            style="color: #800000; font-size: small; font-weight: 700"></asp:Label>
                                                        </span></b></span>
                                                    </td>
                                                    <td class="style5">
                                                        &nbsp;&nbsp; </td>
                                                    <td align="right">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </span></b></span>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            </table>
                       
                       <asp:Panel ID="Panel1" runat="server" style="Height:400px; "  ScrollBars="Auto" 
                                Width="804px">
                       
                       <asp:GridView ID="gvAttendance" runat="server" AutoGenerateColumns="False" 
                                CellPadding="0" ForeColor="#333333" GridLines="None"  
                                HorizontalAlign="Left"   
                                style="   font-size:small" 
                                Width="99%">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                    HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" 
                                    VerticalAlign="Middle" />
                                <Columns>
                                    <asp:TemplateField HeaderText="ID No">
                                        <ItemTemplate>
                                            <asp:Label ID="lblIDNo" runat="server" style="font-size: small" 
                                                Text='<%# Eval("IDNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="StudentName" HeaderText="Name" />
                                    <asp:BoundField DataField="FatherName" HeaderText="Father Name" />
                                    <asp:BoundField DataField="Course" HeaderText="Course" />
                                    <asp:BoundField DataField="Duration" HeaderText="Duration" />
                                    <asp:BoundField DataField="BatchTimings" HeaderText="BatchTiming" />
                                    <asp:BoundField DataField="BatchName" HeaderText="BatchGroup" />
                                    
                                    
                                    
                                </Columns>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" 
                                    VerticalAlign="Top" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                    HorizontalAlign="Left" />
                                <EditRowStyle BackColor="#999999" VerticalAlign="Middle" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                       
                       </asp:Panel>
                        
                        </td>
                    
                    </tr>
             </table>
              </ContentTemplate></asp:UpdatePanel>
            
       
                  
    </div>
</asp:Content>

