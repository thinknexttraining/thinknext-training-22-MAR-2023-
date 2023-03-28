<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCertification.aspx.cs" Inherits="Admin_AddCertification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 145px;
        }
       .rounded_corners
    {
        border: 1px solid #A1DCF2;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        overflow: scroll ;
        height :500px;
    }
    .rounded_corners td, .rounded_corners th
    {
        border: 1px solid #A1DCF2;
        font-family: Arial;
        font-size: 10pt;
        text-align: center;
    }
    .rounded_corners table table td
    {
        border-style: none;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblENt" runat="server" Text="Upload Certificates" 
                    style="font-weight: 700; font-size: x-large"></asp:Label>
            </td>
           
        </tr>
       
    </table>
    <asp:Panel ID="pnl" runat="server" GroupingText="Upload File">
    <table class="style1">
    <tr >
    <td class="style2">
    <asp:Label ID="lblno" runat="server" Text="Enter Certificate No:"></asp:Label>
    </td>
    <td style="float:left">
    <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
    </td>
    </tr>
        <caption>
            <br />
            <tr>
                <td class="style2">
                    <asp:Label ID="lblup" runat="server" Text="Select File"></asp:Label>
                </td>
                <td style="float:left"> 
                    <asp:FileUpload ID="fupcertificates" runat="server" style="margin-top:17px"/>
                   
       
                </td>
            </tr>
        </caption>
       <tr>
       <td>
       
       </td>
       <td style="float:left">
       <asp:Button ID="btnupload" runat="server" Text="Upload" onclick="btnupload_Click" style="margin-top:17px; width:129px"/>
        &nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server" Forecolor="Red"> </asp:Label>
       </td>
       </tr>
    
   
    
    </table>
     
    </asp:Panel>
    <br />
    <asp:Label ID="lblmessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    <br />
     <div class="rounded_corners" style="width: 408px">
    <asp:Panel ID="pnldetail" runat="server">
    <asp:GridView ID="GDVdetails" runat="server" AutoGenerateColumns="False" Width="384px" > 
    
        <Columns>
            <asp:TemplateField HeaderText="SrNo" Visible="False">
                <ItemTemplate>
                    <asp:Label ID="lblsr" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lblsr2" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Certificate No">
                <ItemTemplate>
                    <asp:Label ID="lblCNO" runat="server" Text='<%# Eval("CertificateNo") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCNO" runat="server" Text='<%# Bind("CertificateNo") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="File Name">
                <ItemTemplate>
                    <asp:Label ID="lblFN" runat="server" Text='<%# Eval("FileName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:FileUpload ID="flpname" runat="server" Enabled='<%# Bind("FileName") %>' />
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="lbEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>|
                    <asp:LinkButton ID="lbDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="lbUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>|
                    <asp:LinkButton ID="lbCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    
    </asp:GridView>
    
    </asp:Panel>
    </div>
</asp:Content>

