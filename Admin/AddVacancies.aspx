<%@ Page Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="~/Admin/AddVacancies.aspx.vb" Inherits="AddVacancies" title="Vacancies" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
 
    <script type="text/javascript" language="javascript" >

       
    
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
        width: 102px;
    }

    .style2
    {
        height: 35px;
    }

    .style3
    {
        width: 99%;
        height: 345px;
    }

</style>
 
 
 
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
                        Text="Add Vacancies Details"></asp:Label>
                        <br />
                       
                        </span></span>
                    </td>
            </tr>
            <tr>
                <td colspan="8" class="style3">
                   <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>--%>
                            <asp:Panel ID="Panel2" runat="server" BorderColor="Black" 
                GroupingText="Details" Height="261px" style="font-size: small;" Width="807px">
                               
                                <table align="left" style="width:97%; height: 256px;" ID="tabaddvacancy">
                                    <tr ID="dsads" style="width: 100px; height: auto">
                                        <td align="left" style="text-align: center; vertical-align: middle;" 
                                            colspan="4">
                                            <asp:Label ID="lblMsg" runat="server" style="color: #990000; font-size: small;"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr ID="dsads" style="width: 100px; height: auto">
                                        <td align="left" style="width: 126px; ">
                                            <asp:Label ID="Label15" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Job Title | Desg."></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 7px">
                                            <asp:TextBox ID="txtJobTitle" runat="server" Height="14px" MaxLength="255" 
                                                SkinID="MytextID" style="font-size: x-small" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 126px; ">
                                            <asp:Label ID="Label1" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Company Name"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 7px">
                                            <asp:TextBox ID="txtCompanyName" runat="server" Height="16px" SkinID="MytextID" 
                                                style="font-size: x-small" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblQualification" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Qualification Required"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 251px">
                                            <asp:TextBox ID="txtQualification" runat="server" Height="16px" MaxLength="100" 
                                                SkinID="MytextID" style="font-size: x-small;" Width="240px"></asp:TextBox>
                                        </td>
                                        <td align="left" style="width: 116px; " class="style30">
                                            <asp:Label ID="LblSpecificSkillRequired" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Experience"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px">
                                            <asp:TextBox ID="txtexperience" runat="server" Height="14px" MaxLength="255" 
                                                style="font-size: x-small" Width="240px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblSalaryPackage" runat="server" SkinID="MytextID" 
                                style="font-size: small" Text="Salary Package"></asp:Label>
                                        </td>
                                        <td align="left" style="height: 20px; width: 251px">
                                            <asp:TextBox ID="txtsalaryPackage" runat="server" Height="14px" MaxLength="255" 
                                                SkinID="MytextID" style="font-size: x-small" Width="240px"></asp:TextBox>
                                        </td>
                                        <td align="left" style="width: 116px; height: 20px;" >
                                            <asp:Label ID="Label6" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Interview Schedule"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px; height: 20px;">
                                            <asp:TextBox ID="txtschedule" runat="server" Height="14px" MaxLength="100" 
                                                SkinID="MytextID" style="font-size: x-small;" Width="240px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblNoOfVacancies" runat="server" SkinID="MytextID" 
                                style="font-size: small" Text="No. of Vacancies"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 251px">
                                            <asp:TextBox ID="txtNoOfVacancies" runat="server" Height="14px" MaxLength="255" 
                                SkinID="MytextID" style="font-size: x-small" Width="240px"></asp:TextBox>
                                        </td>
                                        <td align="left" style="width: 116px; " class="style30">
                                            <asp:Label ID="LblNoOfVacancies4" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Venu"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px;">
                                            <asp:TextBox ID="txtvenu" runat="server" Height="14px" MaxLength="255" 
                                                SkinID="MytextID" style="font-size: x-small" Width="240px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblNoOfVacancies1" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Category"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 251px">
                                            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
                                                Height="20px" style="font-size: x-small; margin-left: 0px;" Width="206px">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>&nbsp; <input class="Allbuttons" style="width:18px;" 
                                                name="reset" onclick="togglCategory();" type="button" 
                                                        value="..." />
                                        </td>
                                        <td align="left" style="width: 116px; " class="style30">
                                            <asp:Label ID="LblNoOfVacancies2" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Sub Category"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px;">
                                            <asp:DropDownList ID="ddlSubCategory" runat="server" 
                                                Height="20px" style="font-size: x-small; margin-left: 0px;" Width="206px">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;<input class="Allbuttons"  style="width:18px;" name="reset" 
                                                onclick="togglSubCategory();" type="button" 
                                                        value="..." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" 
                                            style="width: 126px; ">
                                            <asp:Label ID="LblNoOfVacancies3" runat="server" SkinID="MytextID" 
                                                style="font-size: small" Text="Description"></asp:Label>
                                        </td>
                                        <td align="left" colspan="3" style="height: 44px">
                                            <asp:TextBox ID="txtDescriptions" runat="server" Height="50px" MaxLength="255" 
                                                SkinID="MytextID" style="font-size: x-small" TextMode="MultiLine" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="4" 
                                            style="text-align: center; vertical-align: middle;">
                                            <asp:Button ID="btnShow" runat="server" CssClass="Allbuttons" Height="26px" 
                                                SkinID="MytextID" style="font-weight: 700" Text="Show" Width="94px" />
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnAdd" runat="server" CssClass="Allbuttons" Height="26px" 
                                                SkinID="MytextID" style="font-weight: 700" Text="Add" Width="94px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="4" 
                                            style="text-align: center; vertical-align: middle;">
                                            &nbsp;</td>
                                    </tr>
                                   
                                </table>
                            </asp:Panel>
                        <%--</ContentTemplate>
                    </asp:UpdatePanel>--%>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="8" class="style2">
                                        </td>
            </tr>
            <tr>
                <td align="center" colspan="8">
                                        &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="8">
                                        <asp:Label ID="lblRecords" runat="server" SkinID="MytextID" 
                                            style="font-size: small"></asp:Label>
                                    </td>
            </tr>
            <tr>
                <td colspan="8">
                                     <asp:Panel ID="Panel3" runat="server" Height="317px" ScrollBars="Auto" 
                                           style="width:840px;">
     <asp:GridView ID="gdShow" runat="server" AutoGenerateColumns="False" CellPadding="4" 
    ForeColor="#333333" GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99% "  >
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Job ID">
                                                        <ItemTemplate>
                                                            <asp:Label ID="LBLJobID" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Left" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
                                                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                                    <asp:BoundField DataField="Qualification" 
                                                        HeaderText="Qualification Req." />
                                                    <asp:BoundField DataField="Experience" HeaderText="Experience" />
                                                    <asp:BoundField DataField="SalaryPackage" HeaderText="Salary Package" />
                                                    <asp:BoundField DataField="InterviewSchedule" HeaderText="Interwiew Schedule" />
                                                    <asp:BoundField DataField="NoOfVacancy" HeaderText="No Of Vacancies" />
                                                    <asp:BoundField DataField="venues" HeaderText="Venues" />
                                                    <asp:BoundField DataField="Category" HeaderText="Category" />
                                                    <asp:BoundField DataField="SubCategory" HeaderText="Sub Category" />
                                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                                    <asp:BoundField DataField="PostedOn" HeaderText="Posted On" />
                                                    <asp:TemplateField HeaderText="Delete Add">
                                                        <ItemTemplate>
                                                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" 
                                                    HorizontalAlign="Left" />
                                                <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            </asp:GridView>
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
                <td class="style1">
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
        
     <%-----------------pop up---------------------%>

    <div id="popup" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 130px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 350px; left: 493px;">
        
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
                            Width="90px" CausesValidation="False" />
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

  <%-----------------pop up---------------------%>
        
    </div>
</asp:Content>

