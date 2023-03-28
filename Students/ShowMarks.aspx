<%@ Page Title="" Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="ShowMarks.aspx.vb" Inherits="Students_ShowMarks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 483px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 839px; height: auto">
    <div id="pageicons" style="width: 100%; height: 44px;">
   
       <table id="tabpageicon" style="width: 97%; height: 41px;">
           <tr>
               <td>
               </td>
               <td class="style1">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
               <td style="width: 79px">
                  <img src="../pageicon/attendence.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td style="width:389px;">
                  <asp:Label ID="Label1" runat="server" Text="Marks Detail"  
                        
                       style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td style="width: 516px">
               </td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>
    
<table style="height: auto; width: 824px;">
 
   
    <tr>
        <td valign="top" style="height: 3px" align="center">
            <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label></td>
    </tr>
    <tr>
        <td align="center" valign="top" style="height: auto">
               
               
                <asp:Panel ID="Panel1" runat="server" Height="400px" Width="834px" 
                 ScrollBars="Auto">
                <asp:GridView ID="gvSubjectDetail" runat="server" CellPadding="1" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" Height="16px" 
                      Width="806px" PageSize="15" style="font-size: small; margin-bottom: 4px;">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField DataField="AttMarksDate" HeaderText="Date" />
                        <asp:BoundField DataField="IDNo" HeaderText="ID No" />
                        <asp:BoundField DataField="StudentName" HeaderText="Name" />
                        <asp:BoundField DataField="Course" HeaderText="Program" />
                        <asp:BoundField DataField="TotalMarks" HeaderText="Total lMarks " />
                        <asp:BoundField DataField="ObtainMarks" HeaderText="Obtained Marks" />
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
       </div>
</asp:Content>

