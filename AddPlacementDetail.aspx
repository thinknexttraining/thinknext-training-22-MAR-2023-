<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="~/AddPlacementDetail.aspx.cs" Inherits="AddPlacementDetail" Title="AddPlacementDetail" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script type="text/javascript" >

        function togglCategory() {
            document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Category';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Category';

            document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }

        function togglSubCategory() {
            document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Sub Category';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Sub Category';
            document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }


      
    

</script>
<style type="text/css" >
    .buttonjava
{
height:20px;
width:22px;
padding-bottom:3px;

}

.corner
     {
     	-moz-border-radius: 10px;
     	-webkit-border-radius: 10px;
     	border-radius: 10px; /* future proofing */
     	-khtml-border-radius: 10px;
     	     	     	
     	}

    .style1
    {
        height: 20px;
        width: 257px;
    }
    .style2
    {
        width: 257px;
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
 
   <div class="head1">
    <h3 style="color:#000;" > Addmisssion Placement Detail</h3>
       <div class="ryt">

You are here &nbsp; Home / Addmisssion Placement Detail

       </div>


   </div>


   <br /> 
    <br />
 
    <div style="height: auto; width: 100%;" id="addvacc">
        <table id="tcccaaa" style="width: 100%; height: auto;">
            <tr>
                <td align="center" colspan="8">
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="8">
                        <span style="font-size: small">
                        <span style="font-weight: normal">
                        <asp:Label ID="Label8" runat="server" 
                            style="font-size: large; font-weight: 700" 
                        Text="Add Placement Details"></asp:Label>
                        <br />
                        <br />
                       
                        </span></span>
                            <asp:Panel ID="Panel2" runat="server" BorderColor="Black" 
                GroupingText="Details" Height="325px" style="font-size: small;" Width="807px">
                               
                               
                               
                                <table align="left" style="width:97%; height: 177px;" ID="tabaddvacancy">
                                
                                <tr ID="Tr1" style="width: 100px; height: auto">
                                        <td align="left" style="text-align: center; vertical-align: middle;" 
                                            colspan="4">
                                            <asp:Label ID="lblMsg" runat="server" style="color: #990000; font-size: small;"></asp:Label>
                                        </td>
                                    </tr>
                                    
                                    
                                
                                <tr>
                                        <td align="left" style="width: 126px; ">
                                            <asp:Label ID="Label2" runat="server"  
                                                style="font-size: small" Text="Candidate Name"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 7px">
                                            <asp:TextBox ID="txtcandidate" runat="server" Height="16px"  
                                                style="font-size: x-small" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <td align="left" style="width: 126px; ">
                                            <asp:Label ID="Label16" runat="server" 
                                                style="font-size: small" Text="College Name"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 7px">
                                            <asp:TextBox ID="txtCollegeName" runat="server" Height="16px" 
                                                style="font-size: x-small" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                
                                <tr>
                                        <td align="left" style="width: 126px; ">
                                            <asp:Label ID="Label1" runat="server"
                                                style="font-size: small" Text="Company Name"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 7px">
                                            <asp:TextBox ID="txtCompanyName" runat="server" Height="16px" 
                                                style="font-size: x-small" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                
                                    
                                    <tr ID="dsads" style="width: 100px; height: auto">
                                        <td align="left" style="width: 126px; ">
                                            <asp:Label ID="Label15" runat="server" 
                                                style="font-size: small" Text="Designation"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 7px">
                                            <asp:TextBox ID="txtDesig" runat="server" Height="14px" MaxLength="255" 
                                                 style="font-size: x-small" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                   
                                    
                                        
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblSalaryPackage" runat="server" 
                                style="font-size: small" Text="Salary Package"></asp:Label>
                                        </td>
                                        <td align="left" class="style1">
                                            <asp:TextBox ID="txtsalaryPackage" runat="server" Height="14px" MaxLength="255" 
                                                 style="font-size: x-small" Width="240px"></asp:TextBox>
                                            &nbsp;</td>
                                        
                                        
                                    </tr>
                                    
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblNoOfVacancies1" runat="server" 
                                                style="font-size: small" Text="Category"></asp:Label>
                                        </td>
                                        <td align="left" class="style2">
                                            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
                                                Height="20px" style="font-size: x-small; margin-left: 0px;" Width="206px"> 
   
                                                
                                            </asp:DropDownList>&nbsp; 
                      
                                            
                                            <input class="Allbuttons" style="height:18px; width:18px;" name="reset" 
                                                onclick="togglCategory();" type="button" 
                                                        value="..." />
                                        </td>
                                        <td align="left" style="width: 116px; " class="style30">
                                            <asp:Label ID="LblNoOfVacancies2" runat="server" 
                                                style="font-size: small" Text="Sub Category"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px;">
                                        
                                            <asp:DropDownList ID="ddlSubCategory" runat="server"  AutoPostBack="True" 
                                                Height="16px" style="font-size: x-small; margin-left: 0px;" Width="151px" 
                                                onselectedindexchanged="ddlSubCategory_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            &nbsp;
                                            <input class="Allbuttons"  style="width:18px; height:18px; " name="reset" 
                                                onclick="togglSubCategory();" type="button" 
                                                        value="..." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" 
                                            style="width: 126px; ">
                                            <asp:Label ID="LblNoOfVacancies3" runat="server" 
                                                style="font-size: small" Text="Description"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 44px">
                                            <asp:TextBox ID="txtDescriptions" runat="server" Height="50px" MaxLength="255" 
                                                style="font-size: x-small" TextMode="MultiLine" 
                                                Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="4" 
                                            style="text-align: center; vertical-align: middle;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnAdd" runat="server" CssClass="Allbuttons" Height="26px" 
                                                onclick="btnAdd_Click"  style="font-weight: 700" Text="Add" 
                                                Width="94px" />
                                            &nbsp;&nbsp;
                                            <asp:Button ID="btnShow" runat="server" Height="26px" onclick="btnShow_Click" 
                                                Text="Show" Width="94px" CssClass="Allbuttons" style="font-weight: 700" />
                                            &nbsp;&nbsp;&nbsp;<asp:Button ID="btnExcel" runat="server" 
                                                CssClass="Allbuttons" Height="26px" onclick="btnExcel_Click" 
                                                style="font-weight: 700" Text="Export To Excel" />
                                            </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="4" 
                                            style="text-align: center; vertical-align: middle;">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                    </td>
            </tr>
            <tr>
                <td colspan="8" style="width: 99%; height: 180px">
                        <span style="font-size: small">
                        <span style="font-weight: normal"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecords" runat="server"  
                                            style="font-size: small"></asp:Label></div>
                                            <asp:Panel ID="Panel1" runat="server" Height="317px" ScrollBars="Auto" 
                                           style="width:800px; margin-left: 19px;" Width="782px">
                 &nbsp;&nbsp;&nbsp;       <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"  CellPadding="4" 
    ForeColor="#333333" GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99%; margin-left: 0px;" Font-Size="X-Large" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="650px">
                            <RowStyle ForeColor="#000066" Font-Size="Medium" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" 
                                Font-Size="Small" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" 
                                Font-Size="Medium" />
                    </asp:GridView>
                      </asp:Panel>
                        </span></span>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="8" style="height: auto">
                                        &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="8">
                                        &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="8">
                                        
                                    </td>
            </tr>
            <tr>
                <td colspan="8">
                                        <asp:Panel ID="Panel3" runat="server" Height="317px" ScrollBars="Auto" 
                                           style="width:840px;">
                        
                                          
                                         <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" 
    ForeColor="#333333" GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99% "  >
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Job ID">
                                                        <ItemTemplate>
                                                         <asp:Label ID="LBLJobID" runat="server" Text='<%# Eval("Candidatename") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                                    <asp:BoundField DataField="Salary" HeaderText="Salary" />
                                                    <asp:BoundField DataField="Category" HeaderText="Category" />
                                                    <asp:BoundField DataField="SubCat" HeaderText="SubCat" />
                                                    <asp:BoundField DataField="Ders" HeaderText="Ders" />
                                                    <asp:BoundField DataField="Companyname" HeaderText="Companyname" />
                                                    <asp:BoundField DataField="candidateName" HeaderText="candidateName" />
                                                   
                                                </Columns>
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" 
                                                    HorizontalAlign="Left" />
                                                <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            </asp:GridView>--%>
                            
                                            
                                        </asp:Panel>
                                        
                                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
     <%-- <asp:ListItem>Select</asp:ListItem>
                                                 <asp:ListItem>.NET</asp:ListItem>
                                                 <asp:ListItem>JAVA</asp:ListItem>
                                                 <asp:ListItem></asp:ListItem>
                                                 <asp:ListItem>SAP</asp:ListItem>
                                                 <asp:ListItem>Networking</asp:ListItem>
                                                 <asp:ListItem>Science</asp:ListItem>---%>

    <div id="popup" class="corner"
        
            style="display: None; padding: 10px;  width : 370px; height: 130px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position:static; top: 350px; left: 493px;">
        
        <div id="datainsert" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;" 
            class="corner">
            
            
            <table class="corner" style="border: 2px solid #000000; width: 100%">
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglCategory();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="TextBoxInsert" runat="server" Height="18px" Width="200px"></asp:TextBox>
                    </td>
                    <td style="height: 34px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False" onclick="ButtonInsSave_Click" />
                    </td>
                    <td style="height: 34px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            
            
            </div>
        
        </div>

  <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" 
    ForeColor="#333333" GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99% "  >
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Job ID">
                                                        <ItemTemplate>
                                                         <asp:Label ID="LBLJobID" runat="server" Text='<%# Eval("Candidatename") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                                    <asp:BoundField DataField="Salary" HeaderText="Salary" />
                                                    <asp:BoundField DataField="Category" HeaderText="Category" />
                                                    <asp:BoundField DataField="SubCat" HeaderText="SubCat" />
                                                    <asp:BoundField DataField="Ders" HeaderText="Ders" />
                                                    <asp:BoundField DataField="Companyname" HeaderText="Companyname" />
                                                    <asp:BoundField DataField="candidateName" HeaderText="candidateName" />
                                                   
                                                </Columns>
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" 
                                                    HorizontalAlign="Left" />
                                                <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            </asp:GridView>--%>
        
    </div>
</asp:Content>
