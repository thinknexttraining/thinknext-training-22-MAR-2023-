<%@ Page Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="~/Admin/PlacementArticles.aspx.vb" Inherits="PlacementArticles" title="Articles" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style type="text/css">
.clr
{
	margin:0px;
	padding:0px;
	clear:both;
}

.roundededges {
     -moz-border-radius: 15px;
    -webkit-border-radius:15px;
    -khtml-border-radius: 15px;
    border-radius: 15px;
   
    }
</style>
 
<div><table width ="100%"><tr><td>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false" >TNK101</asp:TextBox>
                </td><td></td></tr></table></div>
  <div style="width:100%; height: auto;">
  
  <div id="pageicons" style="width: 100%; height: auto;">
   
       <table id="tabpageicon" style="width: 97%; height: 41px;">
           <tr>
               <td>
                   &nbsp;</td>
               <td style="width: 56px">
                  <img src="../pageicon/syllabus.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td style="width:155px;">
                  <asp:Label ID="Label1" runat="server" Text="Placement Articles"  
                        style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>
    
    <table style="width:100%; height: auto;">
        <tr>
            <td style="height: auto; background-color: #FFFFFF;" align="center">
                &nbsp;<asp:Label ID="lblMsg" runat="server" style="color: #800000"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" style="height: auto;" valign="top" colspan="0">
               
               <div id="fancyy"  style="margin: auto; padding: 6px; width: 90%;  background-image:url('../Images/tpr.png');
    background-repeat:repeat;  height: 528px;  text-align: center; vertical-align: middle;" 
                    class="roundededges">
                    
       <div id="Insidedata" class="roundededges"
                        
             
           
           style=" overflow: auto;  margin : auto auto auto auto; width: 100%; height: 518px; background-color: #FFFFFF; padding-top: 10px;">
           
           
               
                <asp:GridView ID="gdShow" runat="server" CellPadding="0" ForeColor="#333333" 
                    GridLines="None" Width="735px" SkinID="MytextID" 
                    AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" 
                    Height="16px" style="margin-top: 0px; background-color: #FFFFFF;" 
                    ShowHeader="False">
                   
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="Articles" SortExpression="Subject">
                            <ItemTemplate>
                               
                                    
                                    <div ID="diviii" 
                                        style="width: 97%; height: auto; padding-left: 5px; text-align: left;">
                                        <asp:LinkButton ID="lnkbtnSubject" runat="server" CommandName="Subject" 
                                            style="font-size: small; font-weight: 700; color: #990000;" 
                                            Text='<%# Eval("Subject") %>'></asp:LinkButton>
                                        <br />
                                        <asp:Label ID="lblPublishBy" runat="server" Font-Bold="False" 
                                            Text='<%# Eval("PublishedBy") %>'></asp:Label>
                                        &nbsp; Dated :&nbsp;<asp:Label ID="lblDate" runat="server" Font-Bold="False" Font-Size="Small" 
                                            Text='<%# Eval("Date","{0:d}") %>'></asp:Label>&nbsp;<asp:Label ID="lblTime" runat="server" Font-Bold="False" Font-Size="Small" 
                                            Text='<%# Eval("Time","{0:T}") %>'></asp:Label><br />
                                        <asp:Label ID="lblArticleID" runat="server" Text='<%# Eval("ArticleID") %>'></asp:Label>
                                        <asp:Label ID="lblArticle" runat="server" Font-Size="Small" 
                                           style="width:90%;" Text='<%# Mid(Eval("Article"),1,100) %>'></asp:Label>
                                    </div>
                                   
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" 
                        HorizontalAlign="Left" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="MintCream" ForeColor="#284775" />
                </asp:GridView>
               </div>
               </div> 
                
            </td>
        </tr>
        <tr>
            <td align="center" style="height: auto;" valign="top" colspan="0">
               
                &nbsp;</td>
        </tr>
        </table>
        </div>
</asp:Content>

