<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="OnlineCoursesForAdmin.aspx.cs" Inherits="Admin_OnlineCoursesForAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        input[type="text"] {
        width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:60%; margin:auto;text-align:left">
        <h2 style="text-align:center;">Add Online Course</h2>
        <table>
            <tr>
                <td style="width:40%">Course Name</td>
               <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Discounted Prce</td>
               <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            
              <tr>
                <td>Orginal Price</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Discount % </td>
               <td> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>

             <tr>
                <td>Buy now Link </td>
                <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>

               <tr>
                <td>Upload Image </td>
                <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                   
            </tr>
            <tr><td><br /></td></tr>
            <tr>   <td colspan="2" style="text-align:center;"><asp:Button ID="Button1" runat="server" Text="Button" style=" width: 100px;    background: #000;color: #fff;font-size: 17px; border: 0;    border-radius: 5px; padding: 5px;" /></td></tr>
        </table>
        
    </div>
    
</asp:Content>

