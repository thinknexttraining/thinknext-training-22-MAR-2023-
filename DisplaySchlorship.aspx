<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="DisplaySchlorship.aspx.cs" Inherits="DisplaySchlorship" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <style type="text/css">
    .style1
    {
        width: 100%;
    }



     .head1 {
            background:url('images/White-Background-9B1.jpg');
    font-family:'Times New Roman';
    font-size: 18px;
    font-weight: 300;
    overflow: hidden;
    padding: 20px 0 0px 23px;
    position: relative;
    width:98%;
   box-shadow: 7px 7px 5px #d7d0d0;
        }


        .ryt {
            float:right;
            background-color:#DE1904;
            padding:7px;
            color:#FFF;
           
          
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
    <h3 style="color:#000;" > Display Scholarship&nbsp;&nbsp;   </h3>
       <div class="ryt">

You are here &nbsp; Home / Display Scholarship

       </div>


   </div>
    <br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/images/logo111.png" 
                Width="320px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel ID="Panel1" runat="server" GroupingText="Display Result">
                <table>
                    <tr>
                        <td colspan="2">
                             <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentMobileNo" runat="server" Text="Student Mobile No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentMobileNo" runat="server" Width="368px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDisplayResult" runat="server" Text="Display Result" 
                                CssClass="Allbuttons" onclick="btnDisplayResult_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>    
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
             <Columns>
                    <asp:TemplateField HeaderText="Sr. No">
                    <ItemTemplate>
            <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
            </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Student Name">
                     <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="% Off">
                     <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("PercantageOff") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            
            
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            
            
            </asp:GridView>
            
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

