<%@ Page  Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/ShowJobsDetail.aspx.vb" Inherits="ShowJobsDetail" Title="Jobs Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>

.roundedcorner {
     -moz-border-radius:6px;
    -webkit-border-radius: 6px;
    -khtml-border-radius: 6px;
    border-radius: 6px;
}

</style>


<div>
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </div>
<div id="clsadDetail" 
        style="width: 100%; height: auto; background-color: #FFFFFF; ">
         <h2 style="margin: 0px; padding: 2px; width: 100%; height: 25px; text-align: center; vertical-align: middle; font-size: large; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
            Jobs Detail
             </h2>
        
        <div id="Rifdsfght" 
            style=" padding: 10px 3px 10px 3px; overflow: auto; width: 100%; height: 550px; float: right; text-align: center; vertical-align: top;">
            <asp:Label ID="lblrecord" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
           style="margin-left:2px; margin-right:auto; margin-left:auto; margin-right:auto; " 
        ShowHeader="False" Width="97%" BorderStyle="None" GridLines="None">
        <Columns>
            <asp:TemplateField>
                <FooterTemplate>
                    <table ID="tabdet" style="width: 99%; height: auto;">
                        <tr>
                            <td colspan="2" style="height: 10px; ">
                                <span ID="GridView1_Label30_3" 
                                    style="color:#FF3300;font-size:Medium;font-weight:bold;">Databound</span> &nbsp;<div 
                                    ID="divrights" 
                                    style="width: 310px; height: 20px; float: right; background-color: #99CCFF; padding-top: 2px; padding-bottom: 2px; padding-left: 5px;">
                                    Posted On: <span ID="GridView1_Label34_3" style="font-size:Small;">Databound</span> 
                                    &nbsp;&nbsp; Posted By : <span ID="GridView1_Label35_3" style="font-size:Small;">Databound</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 76px; vertical-align: top;">
                                <div ID="leftdiv" class="roundedcorner" 
                                    style="width: 90px; height: 80px; float: left; text-align: center; vertical-align: middle; background-image: url('images/tpr.png'); background-repeat: repeat;">
                                    <img id="GridView1_Image2_3" Src="" 
                    style="height:70px;width:80px;margin-top:5px; margin-left:auto; margin-right:auto;" />
                                </div>
                                <div ID="RightDiv" style="width: 85%; height: 70px; float: Right;">
                                    <span ID="GridView1_Label36_3">Databound</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 530px">
                                E-mail : <span ID="GridView1_Label32_3">Databound</span> &nbsp; Contact No.
                                <span ID="GridView1_Label33_3">Databound</span>
                            </td>
                            <td>
                                Price&nbsp;&nbsp; <span ID="GridView1_Label37_3">Databound</span>
                            </td>
                        </tr>
                    </table>
                </FooterTemplate>
                <HeaderTemplate>
                    <table ID="tabdet" style="width: 99%; height: auto;">
                        <tr>
                            <td colspan="2" style="height: 10px; ">
                                <span ID="GridView1_Label30_2" 
                                    style="color:#FF3300;font-size:Medium;font-weight:bold;">Databound</span> &nbsp;<div 
                                    ID="divrights" 
                                    style="width: 310px; height: 20px; float: right; background-color: #99CCFF; padding-top: 2px; padding-bottom: 2px; padding-left: 5px;">
                                    Posted On: <span ID="GridView1_Label34_2" style="font-size:Small;">Databound</span> 
                                    &nbsp;&nbsp; Posted By : <span ID="GridView1_Label35_2" style="font-size:Small;">Databound</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 76px; vertical-align: top;">
                                <div ID="leftdiv" class="roundedcorner" 
                                    style="width: 90px; height: 80px; float: left; text-align: center; vertical-align: middle; background-image: url('images/tpr.png'); background-repeat: repeat;">
                                    <img id="GridView1_Image2_2" Src="" 
                    style="height:70px;width:80px;margin-top:5px; margin-left:auto; margin-right:auto;" />
                                </div>
                                <div ID="RightDiv" style="width: 85%; height: 70px; float: Right;">
                                    <span ID="GridView1_Label36_2">Databound</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 530px">
                                E-mail : <span ID="GridView1_Label32_2">Databound</span> &nbsp; Contact No.
                                <span ID="GridView1_Label33_2">Databound</span>
                            </td>
                            <td>
                                Price&nbsp;&nbsp; <span ID="GridView1_Label37_2">Databound</span>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                <div id="placementdetaildiv" style="width: 100%; height: auto; padding: 1px; text-align: center; vertical-align: middle; " >
                   
                    <table class="roundedcorner" style="margin: auto auto 15px auto; border: 6px solid #666666; width: 95%; height: auto; " 
                        id="tabdetss">
                        <tr>
                            <td style="height: 17px; text-align: left;" colspan="2">
                                <asp:Label ID="Label30" runat="server" Text='<%# Eval("JobTitle") %>' 
                                style="text-decoration:underline;"    Font-Bold="True" Font-Size="18px" ForeColor="#FF3300"></asp:Label>
                                &nbsp;
                                
                                <div ID="divrights" class="roundedcorner" 
                                    
                                    
                                    style="padding: 2px 2px 2px 5px; width: 180px; height: 20px; float: right; background-color: #99CCFF; margin-right: 8px; font-size: medium; font-family: 'Times New Roman', Times, serif;">
                                    Job Posted On:
                                    <asp:Label ID="Label34" runat="server" 
                                        Font-Size="14px" Font-Bold="True" Text='<%# Eval("PostedOn") %>'></asp:Label>
                                    &nbsp;&nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 10px; text-align: left;">
                                <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Size="Small" 
                                    ForeColor="#0066FF" Text='<%# Eval("CompanyName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 10px; text-align: left; width: 224px;">
                                <span ID="ctl00_ContentPlaceHolder1_LblQualification" style="font-size: small">
                                <b>Qualification Required</b> :
                                <asp:Label ID="Label39" runat="server" Font-Bold="True" 
                                    Text='<%# Eval("Qualification") %>'></asp:Label>
                                </span>
                            </td>
                            <td style="height: 10px; text-align: left; width: 50%;"">
                                <b>Experience</b> : <span ID="ctl00_ContentPlaceHolder1_LblQualification0" 
                                    style="font-size: small">
                                <asp:Label ID="Label40" runat="server" Font-Bold="True" 
                                    Text='<%# Eval("Experience") %>'></asp:Label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: auto; vertical-align: top;" colspan="2">
                                <div ID="RightDiv" style="width: 99%; height: auto; text-align: left;">
                                    <b>Description</b> :
                                    <asp:Label ID="Label36" runat="server" Font-Size="Small" 
                                        Text='<%# Eval("Description") %>'></asp:Label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 224px; text-align: left;">
                                <span style="color: #0066FF"> <b>Total Vacancies</b> :</span>
                                &nbsp;<asp:Label ID="Label32" runat="server" Text='<%# Eval("NoOfVacancy") %>' 
                                    Font-Bold="True" Font-Size="Small"></asp:Label>&nbsp; 
                            </td>
                            <td style="text-align: left">
                                <span style="color: #0066FF"><b>Salary</b> :</span>
                                <asp:Label ID="Label41" runat="server" Text='<%# Eval("SalaryPackage") %>' 
                                    Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left">
                            <span style="color: #0066FF"> <b>Interview Schedule</b> : </span>
                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("InterviewSchedule") %>' 
                                    Font-Bold="True" Font-Size="Small"></asp:Label>
                            
                            
                                &nbsp;&nbsp; <span style="color: #0066FF"> <b>Venue</b> : </span>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Venues") %>' 
                                    Font-Bold="True" Font-Size="Small"></asp:Label>
                                
                                </td>
                        </tr>
                    </table>
                 </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        
        
        </div>
    </div>
</asp:Content>

