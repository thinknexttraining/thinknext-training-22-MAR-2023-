<%@ Page  Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/ShowVacancies.aspx.vb" Inherits="ShowVacancies" Title="Vacancies" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <style>
   .Category
   {
   	text-align:left;
   	line-height:20px;
   		background-color:Gray;
   	color:White;
   	 -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    -khtml-border-radius: 4px;
    border-radius: 4px;
    padding:2px 2px 2px 2px;
    
   
   	
   	}
   	
   	.Category:hover
   	{
   		font-weight:bold;
   		cursor:pointer;
   		}
   		
   		
   		
   	.SubCategory
   {
   	text-align:left;
   	line-height:20px;
   	font-size:15px;
   	color:Black;
   	padding-left:2px;
   	text-decoration:none;
   	
   	}
   	
   	.SubCategory:hover
   	{
   		color:Red;
   		font-weight:bold;
   		text-decoration:underline;
   		
   		}
   	
   	
   	.roundedcorner {
     -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -khtml-border-radius: 5px;
    border-radius: 5px;
}
   	
   	
   
   </style>



   
   
    <div id="classifiedTop"  
        style="width: 100%; height: auto; background-color: #FFFFFF; padding-top: 5px; padding-bottom: 20px;">
    
     <%--<div id="xxxxxx" 
            style=" width: 100%; height: 61px; float: Right; background-color: #FF9900;" 
            id="right">


         <table id="tablesearch" 
             style=" height: 50px; float: right; width: 664px;">
             <tr>
                 <td style="width: 238px; padding-left: 20px; padding-top: 5px;">
                     <asp:TextBox ID="txtsearchbox" runat="server" Height="26px" Width="200px"></asp:TextBox>
                     <asp:TextBoxWatermarkExtender ID="txtsearchbox_TextBoxWatermarkExtender" 
                         runat="server" Enabled="True" TargetControlID="txtsearchbox" 
                         WatermarkText="Enter your Search Here">
                     </asp:TextBoxWatermarkExtender>
                     <br />
                     eg: laptop, used car, nokia mobiles etc</td>
                 <td style="width: 187px; padding-top: 5px;">
                     <asp:DropDownList ID="ddlLocation" style="padding-top:5px; line-height:26px;" 
                         runat="server" Height="28px" Width="180px">
                     </asp:DropDownList>
                 </td>
                 <td style="width: 97px; padding-top: 5px; padding-left: 20px;">
                     <asp:Button ID="Button2" runat="server" CssClass="roundedcorner" 
                         style="border-style:none; text-align:center; line-height:28px;" BackColor="Black" ForeColor="White" 
                         Height="28px" Text="Search" Width="90px" />
                 </td>
             </tr>
         </table>


     </div>--%>
<div>
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </div>
    <div id="mainclassified" 
        style="width: 99%; height: 600px; background-color: #FFFFFF;overflow:auto">
        <h2 style="margin: 0px; padding: 2px; width: 100%; height: 25px; text-align: center; vertical-align: middle; font-size: large; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
            Placement Detail
             </h2>
        <h2 style="margin: 2px; padding: 2px; width: 100%; height: 25px; text-decoration:underline; text-align: center; vertical-align: middle; font-size: small; font-family: 'Times New Roman', Times, serif; font-weight: normal; color: #0066FF;">
        Select a Job category to get complete detail</h2>
        <asp:DataList ID="DataList1" runat="server" style="margin-left:28px; margin-right:auto;" RepeatColumns="3" Width="803px">
            <ItemTemplate>
                <div id="divCatefory" class="roundedcorner" 
                    style="padding: 5px; margin: 5px; width: 230px;overflow:auto; height: 264px; background-image: url('../images/tpr.png'); background-repeat: repeat;">

                 
                    <asp:LinkButton ID="linkcategory" runat="server" Font-Size="Small"  style="text-decoration:none;"
                        ForeColor="White" 
                        PostBackUrl='<%# "ShowJobsDetail.aspx?sinct="+ Eval("Category").ToString %>' 
                        Text='<%# Eval("Category") %>' CssClass="SubCategory" Font-Bold="True" 
                        Height="20px" Width="220px"></asp:LinkButton>
                    <br />
                    <div id="divSubCategoty"  class="roundedcorner"
                        style="padding: 5px; margin:  5px 5px 5px 3px; width: 210px; height: 221px; background-color: #FFFFFF; text-align: left;overflow:auto">
                        <asp:DataList ID="DataListSub" runat="server" 
                            onitemcommand="DataListSub_ItemCommand">
                            <ItemTemplate>
                                <img src="../Images/point.png" style="width: 12px; height: 12px; margin-top: 3px;" />
                                <asp:LinkButton ID="lnkSubCategory" runat="server" PostBackUrl='<%#"ShowJobsDetail.aspx?sct="+ Eval("SubCategory").ToString+"&ct="+Eval("Category").ToString %>'
                                    Text='<%# Eval("SubCategory") %>' ForeColor="#0099FF" CssClass="SubCategory" 
                                    CommandName="Select" Font-Size="Small"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                 
                </div>
            </ItemTemplate>
        </asp:DataList>



</div>



 </div>
</asp:Content>

