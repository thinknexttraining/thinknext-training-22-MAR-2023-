<%@ Page Title="Display cholarship" Language="C#" MasterPageFile="~/Admin/AdminMaster.master"EnableEventValidation="false" AutoEventWireup="true" CodeFile="DisplaySchlorship.aspx.cs" Inherits="DisplaySchlorship" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link href="../grid21.css" rel="stylesheet" type="text/css" />
  <style type="text/css">
    .style1
    {
        width: 100%;
    }
    body
    {
        font-family: Arial;
        font-size: 10pt;
    }
    .GridPager a, .GridPager span
    {
        display: block;
        height: 15px;
        width: 15px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
    .GridPager a
    {
        background-color: #f5f5f5;
        color: #969696;
        border: 1px solid #969696;
    }
    .GridPager span
    {
        background-color: #A1DCF2;
        color: #000;
        border: 1px solid #3AC0F2;
    }
    .footergreen
    {
    	  
    	border: 0px solid #A1DCF2;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
        	background: rgb(254,252,234); /* Old browsers */
background: -moz-linear-gradient(top, rgba(254,252,234,1) 11%, rgba(40,106,213,1) 20%, rgba(40,106,213,1) 31%, rgba(40,106,213,1) 43%, rgba(40,106,213,1) 52%, rgba(40,106,213,1) 66%, rgba(40,106,213,1) 80%, rgba(40,106,213,1) 89%, rgba(40,106,213,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(11%,rgba(254,252,234,1)), color-stop(20%,rgba(40,106,213,1)), color-stop(31%,rgba(40,106,213,1)), color-stop(43%,rgba(40,106,213,1)), color-stop(52%,rgba(40,106,213,1)), color-stop(66%,rgba(40,106,213,1)), color-stop(80%,rgba(40,106,213,1)), color-stop(89%,rgba(40,106,213,1)), color-stop(100%,rgba(40,106,213,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(254,252,234,1) 11%,rgba(40,106,213,1) 20%,rgba(40,106,213,1) 31%,rgba(40,106,213,1) 43%,rgba(40,106,213,1) 52%,rgba(40,106,213,1) 66%,rgba(40,106,213,1) 80%,rgba(40,106,213,1) 89%,rgba(40,106,213,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(254,252,234,1) 11%,rgba(40,106,213,1) 20%,rgba(40,106,213,1) 31%,rgba(40,106,213,1) 43%,rgba(40,106,213,1) 52%,rgba(40,106,213,1) 66%,rgba(40,106,213,1) 80%,rgba(40,106,213,1) 89%,rgba(40,106,213,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(254,252,234,1) 11%,rgba(40,106,213,1) 20%,rgba(40,106,213,1) 31%,rgba(40,106,213,1) 43%,rgba(40,106,213,1) 52%,rgba(40,106,213,1) 66%,rgba(40,106,213,1) 80%,rgba(40,106,213,1) 89%,rgba(40,106,213,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(254,252,234,1) 11%,rgba(40,106,213,1) 20%,rgba(40,106,213,1) 31%,rgba(40,106,213,1) 43%,rgba(40,106,213,1) 52%,rgba(40,106,213,1) 66%,rgba(40,106,213,1) 80%,rgba(40,106,213,1) 89%,rgba(40,106,213,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fefcea', endColorstr='#286ad5',GradientType=0 );
    }

</style>
  <script type="text/javascript" language="javascript" >

      function togglCategory() {
          document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'ScholarShip Detail';
          document.getElementById('<%= hiddentext.ClientID %>').value = 'ScholarShip Detail';

//          document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
          var state1 = document.getElementById("popup1").style.display;
          if (state1 == 'block') {
              document.getElementById("popup1").style.display = 'none';
          } else {
              document.getElementById("popup1").style.display = 'block';
          }

      }

//      function togglSubCategory() {
//          document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Sub Category';
//          document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Sub Category';
//          document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
//          var state1 = document.getElementById("popup").style.display;
//          if (state1 == 'block') {
//              document.getElementById("popup").style.display = 'none';
//          } else {
//              document.getElementById("popup").style.display = 'block';
//          }

//      }

  


</script>






    <table class="style1">
    <tr>
        <td>
            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Underline="True" 
                Text="Scholarship Detail"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" 
                Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;
            <%-- </td>--%>
        </td>
    </tr>
   
    <tr>
        <td>
  <div style="height:428px;width:835px;overflow:scroll ;background-color:#245EC1;" class="footergreen"   >          
<div  >
       <div class="" >
        <div style="background-color:#245EC1;height:auto;width:818px;margin-left: 0px;border-color:White;" class="rounded-corners">
        
            <asp:GridView ID="GridView1" runat="server"  
    CssClass="mGrid"  HeaderStyle-CssClass="gri" 
    
    AlternatingRowStyle-CssClass="alt" onrowdatabound="GridView1_RowDataBound1" 
           FooterStyle-BorderWidth ="10px"  style="margin-top:-1px;margin-bottom:15px;"
            
            onpageindexchanging="GridView1_PageIndexChanging"  
                HeaderStyle-BorderColor ="#245DBD"   HeaderStyle-BorderWidth="2px" HeaderStyle-BorderStyle="Groove"
            onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="4"  
            onsorting="GridView1_Sorting" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand" Width="818px" 
                onrowediting="GridView1_RowEditing">
                 
                <PagerStyle CssClass = "GridPager" />
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
             <Columns>
                    <asp:TemplateField HeaderText="Sr. No">
                    <ItemTemplate>
            <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Entry">
                        <ItemTemplate>
                            <asp:Label ID="Label26" runat="server" Text='<%# Eval("DateEntry") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Test Date">
                     <ItemTemplate>
                            <asp:Label ID="Label25" runat="server" Text='<%# Eval("TestDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="College Name">
                     <ItemTemplate>
                            <asp:Label ID="Label24" runat="server" Text='<%# Eval("CollegeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student Name">
                    <HeaderTemplate >
                   <div style="margin-top:11px;"> Student Name</div>
                  <div style="height:27px;margin-left:-11;">
                   <asp:TextBox ID="TextBox1" runat="server" Width="80px"></asp:TextBox>
                   
                   <%-- <asp:Button ID="button1" runat="server" Text="Search" Width="30px" style="background-image:url('images/search1.png');" BackColor="Red" />--%>
                   <div style="height:35px;width:35px;">
                   <asp:ImageButton ID="image" 
                           style="height: 35px; width: 38px; border-width: 0px; margin-left: 99px; margin-top: -27px;" 
                           ImageUrl="~/images/search1.png" runat="server" onclick="image_Click"   />
                    </div>
                    </div>
                    </HeaderTemplate>
                     <ItemTemplate>
                            <asp:Label ID="Label23" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course">
                     <ItemTemplate>
                            <asp:Label ID="Label22" runat="server" Text='<%# Eval("Qualification") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="% Off">
                     <ItemTemplate>
                            <asp:Label ID="Label21" runat="server" Text='<%# Eval("PercantageOff") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit" Visible="False">
                    <ItemTemplate>
                    
                    <asp:Button ID="Button21" runat ="server"  Text="Submit" 
                            onclick="Button21_Click" /> 
                    
                    </ItemTemplate>
                    
                    
                      </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="False">
                    <ItemTemplate>
                    
                    <asp:Label ID="scholar" runat="server" Text='<%# Eval("ScholarshipID") %>' Visible="false" ></asp:Label>
                    
                    
                    </ItemTemplate>
                    
                    </asp:TemplateField>
                </Columns>
            
            
                <FooterStyle />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <HeaderStyle />
            
            
            </asp:GridView>
            </div>
            </div>
            </div>
       
       
       
       </div>     
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
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" Visible="False" />
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
            <asp:Label ID="Label27" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
</table>






 <div id="popup1" class="corner"
        
            style="display: none; padding: 10px;  width : 470px; height: 319px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 218px; left: 493px;border:12px;">
        
        <div id="datainsert" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #0B55C4;" 
            class="corner">
            
            
            <table class="corner">
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblinsert" Visible="true" style="margin-right:10px;color:#FFEAEA ;font-weight:bold; margin-left:-119px;font-size:18px;text-decoration:underline;font-family:Cooper Black; " runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglCategory();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold;color:White;" > Close</a></td>
                </tr>
               
               
                <tr>
                  
                    <td align="right" valign="bottom" style="width:140px;"> <asp:Label ID="lab1" Text="SrNo" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label>   </td>
                     <td style="width: 244px;padding-top:14px;">
                     <asp:TextBox ID="srno1"  style="margin-left :-52px;" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                   
                    
                   <td align="right" valign="top" style="width:140px;">  <asp:Label ID="Label2" Text="DateEntry" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label>   </td> 
                   <td style="width: 244px">
                   <asp:TextBox ID="DateEntry1"  style="margin-left :-52px;" ReadOnly="true"  runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                   
                    
                    <td align="right" valign="top" style="width:140px;"> <asp:Label ID="Label3" Text="Test Date" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label>  </td>  
                    <td style="width: 244px">
                    <asp:TextBox ID="TestDate1"  style="margin-left :-52px;" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                  
                   
                     <td align="right" valign="top" style="width:140px;"><asp:Label ID="Label4" Text="College Name" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label></td> 
                      <td style="width: 244px">
                        <asp:TextBox ID="CollegeName1"  style="margin-left :-52px;" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                  
                    
                     <td align="right" valign="top" style="width:140px;"> <asp:Label ID="Label5" Text="Student Name" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label> </td>
                     <td style="width: 244px">
                       <asp:TextBox ID="StudentName1"  style="margin-left :-52px;" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    
                     <td align="right" valign="top" style="width:140px;"><asp:Label ID="Label6" Text="Qualification" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label></td> 
                      <td style="width: 244px">
                        <asp:TextBox ID="Qualification1"  style="margin-left :-52px;" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    
                   
                    <td align="right" valign="top" style="width:140px;"> <asp:Label ID="Label7" Text="Percentage" runat="server" ForeColor="White" Font-Bold="true"   ></asp:Label> </td>  
                     <td style="width: 244px">
                    <asp:TextBox ID="PercantageOff1" style="margin-left :-52px;" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    
                    <td style="width: 244px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                   
                    <td style="width: 244px; height: 34px">
                        
                    </td>
                    <td style="height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Update" style="margin-top:-17px;" 
                            Width="90px" CausesValidation="False"  OnClick="ButtonInsSave_Click"/></td>
                </tr>
                 <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="TextBoxInsert" runat="server" Visible="false"   Height="18px" Width="200px"></asp:TextBox>
                    </td>
                   <%-- </td>--%>
                </tr>
            </table>
            
            
            </div>
        
        </div>


    
</asp:Content>

