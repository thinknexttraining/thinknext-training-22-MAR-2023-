<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayScholarship.aspx.cs" Inherits="DisplayScholarship" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
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



    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <h1>Student Scholarship Result&nbsp;&nbsp;</h1>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server" GroupingText="View Result:" Font-Size="Small" BackColor="White" Width="380px">
                <br /><table style=" border:solid 1px black; margin-bottom:10%">
              
                    <tr>
                        <td colspan="4" align="center">
                            <asp:Label ID="lblMessage" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr><td><br /></td></tr>
                    <tr>
                  
                        <td>
                            &nbsp;&nbsp;
                        </td>
                      
                        <td>
                            <asp:Label ID="lblStudentMobileNo" runat="server" Font-Size="Small" 
                                Text="Student Mobile No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentMobileNo" runat="server" Font-Size="X-Small"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr><td><br /></td></tr>
                    <tr>
                    
                        <td colspan="4" align="center">
                            <asp:Button ID="btnShowResult" runat="server" Text="Show Result" 
                                onclick="btnShowResult_Click" />
                        </td>
                    </tr>
                    <tr><td><br /></td></tr>
                    </table>
            </asp:Panel>
            <br />
     <div class="fb-like" data-href="http://thinknexttraining.com/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
   <br /> 
    <br />
            <table style="width:930px">
                    <tr>
                        <td width="500px" >
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                                AutoGenerateColumns="False" ForeColor="#333333" GridLines="None">
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                
                               <Columns>
                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStudentName" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="% off">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPercentageoff" runat="server" Text='<%# Eval("PercantageOff") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Test Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTestDate" runat="server" Text='<%# Eval("TestDate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                               </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                            <br /><br />
                        </td>
                    </tr>
                </table>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

