<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student-Projects.aspx.cs" Inherits="Student_Projects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<title>Student-testimonial, Six weeks industrial training in Chandigarh, six month industrial training in chandigarh</title>

<meta name="geo.region" content="India" />
<meta name="geo.placename" content="Chandigarh, Mohali, Panchkula, Punjab, Haryana, Himachal " />
<meta content="1 days" name="revisit-after">
<meta name="robots" content="index, follow" />
<meta name="author" content="ThinkNEXT" />
<meta name="copyright" content="ThinkNEXT"/>

        <link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
#matter h5
{
	font-weight:bold;
}
</style>
     <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script> 
      <div class="head1">
    <h3 style="color:#000;" >  Student Projects</h3>
       <div class="ryt">

You are here &nbsp; Home / Student Projects

       </div>


   </div>
   
    <br />



<div id="matter">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/images/logo111.png" 
                Width="320px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="gvdisplay" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" Height="16px" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:TemplateField HeaderText="Sr. No">
                    <ItemTemplate>
            <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Entry">
                        <ItemTemplate>
                            <asp:Label ID="lblid" Visible="false" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        
                            <asp:Label ID="lblDateEntry" runat="server" Text='<%# Eval("DateEntry") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="College Name">
                     <ItemTemplate>
                            <asp:Label ID="lblCollegeName" runat="server" Text='<%# Eval("CollegeName") %>'></asp:Label>
                        </ItemTemplate>
                          
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student Name">
                     <ItemTemplate>
                            <asp:Label ID="lblStudentName" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                          
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Id">
                     <ItemTemplate>
                            <asp:Label ID="lblEmailId" runat="server" Text='<%# Eval("EmailId") %>'></asp:Label>
                        </ItemTemplate>
                          
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Project Name">
                     <ItemTemplate>
                     <a id="A1" href='#' runat="server" target="_blank" style="color:Blue;">
                     <asp:Label ID="lnkprojectname" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label></a>
                        </ItemTemplate>
                          
                    </asp:TemplateField>
                     
                     
                     
                </Columns>
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmessage" runat="server"></asp:Label>
        </td>
    </tr>
   
</table>
 
 </div>          
</asp:Content>

