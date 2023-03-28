<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="VerifyCertificate.aspx.cs" Inherits="Admin_VerifyCertificate" Title="Verify Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.abox{float:left; width:95%; border:1px solid #000; margin:20px 20px 0 20px; padding:10px 0}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" > 
<div>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false" >TNK101</asp:TextBox>
                </div>
<h3>Verify Certificate</h3>
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="Allbuttons" style="height:24px;width:150px;font-weight: 700; font-size: small; text-decoration:none; padding:5px 20px">View Certificate</asp:LinkButton>
    
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="Allbuttons" style="height:24px;width:150px;font-weight: 700; font-size: small; text-decoration:none; padding:5px 20px">Insert Certificate Details</asp:LinkButton>
    
    <asp:Panel ID="Panel1" runat="server">
     <div class="abox">
       Enter Ref No. <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       <br /><br />
        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="Allbuttons" style="height:24px;width:150px;font-weight: 700; font-size: small; text-decoration:none; padding:5px 20px">View</asp:LinkButton>
        </div>
    </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server">
     <div class="abox">
       <table>
       <tr>
       <td>Ref No.</td> <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
       <td> Student Name</td> <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
       <td>Father Name</td> <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td> Training From</td> <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
       <td>Training To</td> <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> </td>
       <td>Project Name</td> <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
       </tr>
       
         <tr>
       <td> Course</td> <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
       <td>Grade </td> <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox> </td>
       <td></td><td></td>
       </tr>
       
       <tr><td><br /></td></tr>
       <tr><td colspan="6"><asp:LinkButton ID="LinkButton5" runat="server" CssClass="Allbuttons" style="height:24px;width:150px;font-weight: 700; font-size: small; text-decoration:none; padding:5px 20px">Submit</asp:LinkButton></td></tr>
       </table>
       
        
       
        
        </div>
    </asp:Panel>
</asp:Content>

