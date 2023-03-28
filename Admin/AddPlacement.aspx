<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master"  AutoEventWireup="true" CodeFile="AddPlacement.aspx.cs" Inherits="Admin_AddPlacement" Title="Add Placement" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script> 
<script type="text/javascript" src="../js/gridviewScroll.min.js"></script>  
   
    
    <script type="text/javascript" language="javascript">
        $(document).ready(function() {
       
            gridviewScroll();
        });
      
        function gridviewScroll() {
            $('#<%=GridPlacement.ClientID%>').gridviewScroll({
                width: 860,
                height: 500,
                freezesize: 0
            });
        } 
       </script>
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



        function Company() {
            debugger;
            document.getElementById('<%= lblEnters.ClientID %>').innerHTML = 'Enter Company Type';
            document.getElementById('<%= HiddenField1.ClientID %>').value = 'Enter Company Type';

            document.getElementById('<%= txtInserting.ClientID %>').Text = '';
            var state1 = document.getElementById("Popupss").style.display;
            if (state1 == 'block') {
                document.getElementById("Popupss").style.display = 'none';
            } else {
                document.getElementById("Popupss").style.display = 'block';
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

        $(document).ready(function() {
            gridviewScroll();
        });

        function gridviewScroll() {
            $('#<%=GridPlacement.ClientID%>').gridviewScroll({
                width: 860,
                height: 300,
                freezesize: 0
            });
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
     	border-top-width: 10px; /* future proofing */
     	-khtml-border-radius: 10px;
     	     	     	
     	}

    .style1
        {
            height: auto;
            width: AUTO;
        }
  
    
    
    
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
     	border-top-width: 10px; /* future proofing */
     	-khtml-border-radius: 10px;
     	     	     	
     	}

    .style1
    {
        height: 20px;
        width: 200px;
    }
    .style2
    {
        width: 245px;
    }
 
 
  
    .style3
    {
        height: 20px;
        width: 245px;
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
                        Text="Add Placement Details"></asp:Label>
                        <br />
                        <br />
                       
                        </span></span>
                        <asp:Panel ID="pnl" runat="server" GroupingText="Select Type First" Width="807px" style="font-size: small;">
                        <asp:RadioButton ID="rdplace" runat="server" Text="Placement" 
                                style="float:left;margin-left:30%;" AutoPostBack="True" GroupName="a" 
                                oncheckedchanged="rdplace_CheckedChanged"/>
                        <asp:RadioButton ID="rdinter"  runat="server" Text="InterView" 
                                style="float:right;margin-right:30%;" AutoPostBack="True" GroupName="a" 
                                oncheckedchanged="rdinter_CheckedChanged"/>
                        </asp:Panel>
                        <%--&nbsp;&nbsp;&nbsp;<asp:Button ID="btnExcel" runat="server" 
                                                CssClass="Allbuttons" Height="26px" onclick="btnExcel_Click" 
                                                style="font-weight: 700" Text="Export To Excel" Visible="False" />--%>
                            <asp:Panel ID="Panel2" runat="server" BorderColor="Black" 
                GroupingText="Details" Height="450px" style="font-size: small;" Width="807px">
                               
                               
                               
                                <table align="left" style="width:97%; height: 177px;" ID="tabaddvacancy">
                                
                                <tr ID="Tr1" style="width: 100px; height: auto">
                                        <td align="left" style="text-align: center; vertical-align: middle;" 
                                            colspan="4">
                                            <asp:Label ID="lblMessage" runat="server"  Font-Size="Medium" 
                                                ForeColor="Red"></asp:Label>
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
                                        <td align="left" class="style3">
                                            <asp:TextBox ID="txtsalaryPackage" runat="server" Height="14px" MaxLength="255" 
                                                 style="font-size: x-small" Width="150px"></asp:TextBox>
                                           </td>
                                        <td align="left" style="width: 126px" class="style30">
                                        <asp:Label ID="lblDate" runat="server" Text="Placement Date"></asp:Label>
                                        </td>
                                        <td  align="left" class="style1">
                                        <asp:TextBox ID="txtDate" runat="server" Height="14px" MaxLength="255" 
                                                 style="font-size: x-small" Width="150px"></asp:TextBox>
                                                 <cc1:CalendarExtender ID="cnd" runat="server" TargetControlID="txtDate" Format="MM/dd/yyyy"></cc1:CalendarExtender>
                                                 
                                        </td>
                                        
                                    </tr>
                                    
                                    <tr>
                                        <td align="left" style="width: 126px" class="style30">
                                            <asp:Label ID="LblNoOfVacancies1" runat="server" 
                                                style="font-size: small" Text="Category"></asp:Label>
                                        </td>
                                        <td align="left" class="style2">
                                            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
                                                Height="18px" style="font-size: x-small; margin-left: 0px;" Width="170px" 
                                                onselectedindexchanged="ddlCategory_SelectedIndexChanged">
                                                
                                            </asp:DropDownList>&nbsp; 
                      
                                            
                                            <input class="Allbuttons" style="height:18px; width:18px;" name="reset" onclick="togglCategory();" type="button"  value="..." />
                                        </td>
                                        <td align="left" style="width: 116px; " class="style30">
                                            <asp:Label ID="LblNoOfVacancies2" runat="server"  
                                                style="font-size: small" Text="Sub Category"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px;">
                                        
                                            <asp:DropDownList ID="ddlSubCategory" runat="server"  AutoPostBack="True" 
                                                Height="18px" style="font-size: x-small; margin-left: 0px;" Width="140px" 
                                                onselectedindexchanged="ddlSubCategory_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            &nbsp;
                                            <input class="Allbuttons"  style="width:18px; height:18px; " name="reset" 
                                                onclick="togglSubCategory();" type="button" 
                                                        value="..." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style30" style="width: 126px">
                                            &nbsp;</td>
                                        <td align="left" class="style2">
                                            &nbsp;</td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            &nbsp;</td>
                                        <td align="left" style="width: 229px;">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" 
                                            style="width: 126px; " class="style30">
                                            <asp:Label ID="lbljtype" runat="server" Text="Job Type"></asp:Label>
                                            &nbsp;</td>
                                        <td align="left" class="style2">
                                            <asp:DropDownList ID="ddljobtype" runat="server" Width="170px"  Height="18px" style="font-size: x-small">
                                                <asp:ListItem>Select Type</asp:ListItem>
                                                <asp:ListItem>Part Time</asp:ListItem>
                                                <asp:ListItem>Full Time</asp:ListItem>
                                                <asp:ListItem>InterView</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label>
                                            &nbsp;</td>
                                        <td align="left" style="width: 229px;">
                                            <asp:DropDownList ID="ddlresult" runat="server" Width="140px" Height="18px" style="font-size: x-small">
                                                <asp:ListItem>Select Result</asp:ListItem>
                                                <asp:ListItem>Hired</asp:ListItem>
                                                <asp:ListItem>Awaited</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                  
                                    <tr>
                                        <td align="left" class="style30" style="width: 126px">
                                            &nbsp;</td>
                                        <td align="left" class="style2">
                                            &nbsp;</td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            &nbsp;</td>
                                        <td align="left" style="width: 229px;">
                                            &nbsp;</td>
                                    </tr>
                                  
                                    <tr>
                                        <td align="left" class="style30" style="width: 126px">
                                            <asp:Label ID="lblLogo" runat="server" Text="Company Logo"></asp:Label>
                                            </td>
                                        <td align="left" class="style2">
                                            <asp:FileUpload ID="fupllogo" runat="server" style="font-size: x-small" 
                                                Width="170px"  Height="25px"/>
                                        </td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px;">
                                            <asp:TextBox ID="txtcity" runat="server" Height="14px" MaxLength="255" 
                                                 style="font-size: x-small" Width="170px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style30" style="width: 126px">
                                            &nbsp;</td>
                                        <td align="left" class="style2">
                                            &nbsp;</td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            &nbsp;</td>
                                        <td align="left" style="width: 229px;">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style30" style="width: 126px">
                                            <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
                                        </td>
                                        <td align="left" class="style2">
                                            <asp:DropDownList ID="ddlStatus" runat="server" style="font-size: x-small" 
                                                Width="170px"  Height="18px">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem>Not MOU</asp:ListItem>
                                                <asp:ListItem>IN MOU</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            <asp:Label ID="lbltype" runat="server" Text="Type of Company"></asp:Label>
                                        </td>
                                        <td align="left" style="width: 229px;">
                                            <asp:DropDownList ID="ddltype" runat="server" style="font-size: x-small" 
                                                Width="140px"  Height="18px"><asp:ListItem Value="-1">Select</asp:ListItem>
                                            </asp:DropDownList><input class="Allbuttons"  style="width:18px; height:18px; " name="reset" 
                                                onclick="Company();" type="button" 
                                                        value="..." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style30" style="width: 126px">
                                            &nbsp;</td>
                                        <td align="left" class="style2">
                                            &nbsp;</td>
                                        <td align="left" class="style30" style="width: 116px; ">
                                            &nbsp;</td>
                                        <td align="left" style="width: 229px;">
                                            &nbsp;</td>
                                    </tr>
                                  
                                    <tr>
                                        <td align="left" 
                                            style="width: 126px;">
                                            <asp:Label ID="LblNoOfVacancies3" runat="server" style="font-size: small" 
                                                Text="Description"></asp:Label>
                                            </td>
                                        <td align="left" colspan="3" style="height: 44px">
                                            <asp:TextBox ID="txtDescriptions" runat="server" Height="50px" MaxLength="255" 
                                                style="font-size: x-small" TextMode="MultiLine" Width="550px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="4" 
                                            style="text-align: center; vertical-align: middle;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnAdd" runat="server" CssClass="Allbuttons" Height="26px" 
                                                onclick="btnAdd_Click" style="font-weight: 700" Text="Add" Width="94px" />
                                            &nbsp;&nbsp;
                                            <%-- <asp:Button ID="btnShow" runat="server" Height="26px" onclick="btnShow_Click" 
                                                Text="Show" Width="94px" CssClass="Allbuttons" style="font-weight: 700" 
                                                Visible="False" />--%>
                                            <%--&nbsp;&nbsp;&nbsp;<asp:Button ID="btnExcel" runat="server" 
                                                CssClass="Allbuttons" Height="26px" onclick="btnExcel_Click" 
                                                style="font-weight: 700" Text="Export To Excel" Visible="False" />--%> </td>
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
            <td>
            </td>
            <td></td>
            </tr>
            <tr>
                <td colspan="8" style="width: 99%; height: 400px">
                        <span style="font-size: small">
                        <span style="font-weight: normal"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecords" runat="server" 
                                            style="font-size: small" Visible="false"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Names="Andalus" 
                                Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                                ForeColor="Red" Visible="False"></asp:Label>
                        </div>
                   
                                                <!---- Second GridView Start -- --->
                  <asp:GridView ID="GridPlacement" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" Font-Size="XX-Small" 
                         ForeColor="#333333" GridLines="None" Height="16px" PageSize="15" ShowFooter="True" Width="126px" onrowcancelingedit="GridPlacement_RowCancelingEdit" 
                         onrowdeleting="GridPlacement_RowDeleting" onrowediting="GridPlacement_RowEditing" onrowupdating="GridPlacement_RowUpdating" 
                        onrowdatabound="GridPlacement_RowDataBound" style=" font-size: small; height:auto; width:auto "  Visible="true">
           
                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                         <Columns>
                             <asp:TemplateField HeaderText="CandidateName" ControlStyle-BackColor="#dae2f5">
                             <EditItemTemplate>
                             <asp:TextBox ID="txtCandiName" runat="server" Text='<%#Bind("CandidateName") %>' > </asp:TextBox>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="lblCandiName" runat="server" Text='<%# Eval("CandidateName") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             <asp:TemplateField HeaderText="CollegeName">
                             <EditItemTemplate>
                             <asp:TextBox ID ="txtCollegeName" runat ="server"
                                         Text='<%# Bind("CollegeName") %>'></asp:TextBox>
                             </EditItemTemplate>                                 
                                 <ItemTemplate>
                                  <asp:Label ID="lblCollegeName" runat="server" Text='<%#Eval("CollegeName") %>' > </asp:Label>
                                    
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             <asp:TemplateField HeaderText="CompanyName">
                             <EditItemTemplate>
                          
                             <asp:TextBox ID="txtCompanyName" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="lblCompanyname" runat="server" Text='<%#Eval("CompanyName") %>' > </asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                           
                             <asp:TemplateField HeaderText="Designation">
                             <EditItemTemplate>
                            <asp:TextBox ID="txtDesignation" runat="server" Text ='<%# Bind("Designation") %>'></asp:TextBox>
                                         
                             </EditItemTemplate>
                                 <ItemTemplate>
                                  <asp:Label ID="lblDesignation" runat="server" Text='<%#Eval("Designation") %>' > </asp:Label>
                                     
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             <asp:TemplateField HeaderText="Salary">
                             <EditItemTemplate>
                            <asp:TextBox ID ="txtSalary" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                  <asp:Label ID="lblSalary" runat="server" Text='<%#Eval("Salary") %>' > </asp:Label>
                                     
                                         
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             <asp:TemplateField HeaderText="Category">
                             <EditItemTemplate>
                            
                             <asp:TextBox ID="txtCategory" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                      <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Category") %>'> </asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             <asp:TemplateField HeaderText="SubCategory">
                             <EditItemTemplate>
                             
                             <asp:Label ID="lblCollegeName1" runat="server" Text='<%#Eval("CollegeName") %>' Visible="false" ></asp:Label>
                                 <asp:Label ID="lblCandidatename1" runat="server" Text='<%#Eval("Candidatename") %>' Visible="false" ></asp:Label>
                                 <asp:Label ID="lblCompanyname1" runat="server" Text='<%#Eval("Companyname") %>' Visible="false" ></asp:Label>
                                 
                             <asp:TextBox ID="txtSubCategory" runat="server" Text='<%# Bind("SubCategory") %>'></asp:TextBox>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                 <asp:Label ID="lblSubCategory" runat="server" Text='<%#Eval("SubCategory") %>' > </asp:Label>
                                     
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                            <asp:TemplateField HeaderText="JobType">
                             <EditItemTemplate>
                            <asp:DropDownList ID="ddljobtype" runat="server" Text='<%# Bind("JobType") %>'>
                            <asp:ListItem>Select Type</asp:ListItem>
                            <asp:ListItem>Part Time</asp:ListItem>
                            <asp:ListItem>Full Time</asp:ListItem>
                            </asp:DropDownList>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                  <asp:Label ID="lbljobtype" runat="server" Text='<%#Eval("JobType") %>' > </asp:Label>
                                     
      
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             
                              <asp:TemplateField HeaderText="Result">
                             <EditItemTemplate>
                            <asp:DropDownList ID="ddlresult" runat="server" Text='<%# Bind("Result") %>'>
                            <asp:ListItem>Select Result</asp:ListItem>
                            <asp:ListItem>Hired</asp:ListItem>
                            <asp:ListItem>Awaited</asp:ListItem>
                            </asp:DropDownList>
                             </EditItemTemplate>
                                 <ItemTemplate>
                                  <asp:Label ID="lblResult" runat="server" Text='<%#Eval("Result") %>' > </asp:Label>
                                     
      
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                           <asp:TemplateField HeaderText="Edit/Delete">
                             
                                 <ItemTemplate>
                                 <asp:Button ID="Edit" runat="server" Text="Edit"  CommandName="Edit" style="width: 60px;" BackColor="PaleGreen"/>
                                 <asp:Button ID="btnDelete" runat="server"  CommandName="Delete" Text="Delete" style="width: 60px;" BackColor="#FF0000 "/> 
                                 </ItemTemplate>
                                 <EditItemTemplate>
                                 
                                 
                                 <asp:Button ID="lbUpadte" runat="server" Text="Update" CommandName="Update" style="width: 60px;" BackColor="PaleGreen" />
                                 <asp:Button ID="lbCancel" runat="server" Text="Cancel" CommandName="Cancel" style="width: 60px;"  BackColor="#FF0000 "/>
                                 </EditItemTemplate>
                                 <ControlStyle Width="150px" />
                             </asp:TemplateField></Columns>
                           
                        
                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                         <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     </asp:GridView>
                                        
                                                       
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
        
     <div id="popup" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 130px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 350px; left: 493px;">
        
        <div id="datainsert" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;" 
            class="corner">
            
            
            <table class="corner">
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
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False"  OnClick="ButtonInsSave_Click"/>
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







        <div id="Popupss" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 130px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 350px; left: 493px;">
        
        <div id="Div2" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;" 
            class="corner">
            
            
            <table class="corner">
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblEnters" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="HiddenField1" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="Company();" href="#" id="a1" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="txtInserting" runat="server" Height="18px" Width="200px"></asp:TextBox>
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="btnsubmit" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False" OnClick="btnsubmit_Click"/>
                            <%--OnClick="btnsubmit_Click"--%>
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

    <%--<div id="popup" class="corner"
        
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
                            Width="90px" CausesValidation="False"  />
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
        
        </div>--%>

  
        
    </div>
</asp:Content>

