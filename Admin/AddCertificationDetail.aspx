<%@ Page Title="Online Certification" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCertificationDetail.aspx.cs" Inherits="Admin_AddCertificationDetail" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            text-decoration: underline;
        }
       
        .style2
        {
            width: 327px;
        }
        .style3
        {
            width: 195px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
<td style="font-size: large">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style1">Add Online Certification Information</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
</table>
<br />
<asp:Label ID="lblerror" runat="server" Visible="false" ForeColor="Red"></asp:Label>
<br />
<div>

<asp:Panel ID="pnlcerti" runat="server" GroupingText="Certification Information"> 


    <table >
        <tr style="float:left">
            <td class="style3">
              <asp:Label ID="lblRefPreNo" runat="server" Text="RefPreNo" style="margin-left:77px"></asp:Label>  </td>
            <td class="style2">
                <asp:TextBox ID="txtrefpreno" runat="server" BorderStyle="Groove" ></asp:TextBox>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
                <asp:Label ID="lblRefNo" runat="server" Text="Ref No" style="margin-left:60px"></asp:Label> </td>
            <td class="style2">
                <asp:TextBox ID="txtrefno" runat="server" BorderStyle="Groove"></asp:TextBox>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
                <asp:Label ID="lblStudentName" runat="server" Text="Student Name" style="margin-left:100px"></asp:Label> </td>
            <td class="style2">
                <asp:TextBox ID="txtStudentName" runat="server" BorderStyle="Groove"></asp:TextBox>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
               <asp:Label ID="lblFatherName" runat="server" Text="Father Name" style="margin-left:92px"></asp:Label>  </td>
            <td class="style2">
                <asp:TextBox ID="txtFathername" runat="server" BorderStyle="Groove"></asp:TextBox>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
               <asp:Label ID="lblTrainingFrom" runat="server" Text="Training From" style="margin-left:93px"></asp:Label>  </td>
            <td class="style2">
                <asp:TextBox ID="txtTFrom" runat="server" BorderStyle="Groove"></asp:TextBox>
                <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server" TargetControlID="txtTFrom" Format="MM/dd/yyyy"></cc1:CalendarExtender>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
                <asp:Label ID="lblTrainingTo" runat="server" Text="Training To" style="margin-left:78px"></asp:Label> </td>
            <td class="style2">
                <asp:TextBox ID="txtTTO" runat="server" BorderStyle="Groove"></asp:TextBox>
                 <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtTTO" Format="MM/dd/yyyy"></cc1:CalendarExtender>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
               <asp:Label ID="lblProjectName" runat="server" Text=" Project Name" style="margin-left:96px"></asp:Label> </td>
            <td class="style2">
                <asp:TextBox ID="txtprojectName" runat="server" BorderStyle="Groove"></asp:TextBox>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
               <asp:Label ID="lblCourse" runat="server" Text="Course" style="margin-left:53px"></asp:Label>  </td>
            <td class="style2">
                <asp:TextBox ID="txtCourse" runat="server" BorderStyle="Groove"></asp:TextBox>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
               <asp:Label ID="lblGrade" runat="server" Text="Grade" style="margin-left:49px"></asp:Label>  </td>
            <td class="style2">
                <asp:DropDownList ID="ddlGrade" runat="server" Width="148px" >
                    <asp:ListItem>Select Grade</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr style="float:left">
            <td class="style3" >
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="124px"  
                    BorderStyle="Groove" onclick="btnSave_Click" style="margin-top:27px" />
                    <asp:LinkButton ID="lbnext" runat="server" Text="Certification" PostBackUrl="~/Admin/AddCertification.aspx"></asp:LinkButton>
            </td>
        </tr>
    </table>
    </asp:Panel>

</div>
<br />
<asp:Label ID="lblmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
<br />
<asp:Panel ID="pnl1" runat="server" style="overflow:auto; margin-bottom:103px;"> 
<asp:GridView ID="GridCerti" runat="server" AutoGenerateColumns="False" 
        onrowdeleting="GridCerti_RowDeleting" onrowediting="GridCerti_RowEditing" 
        onrowcancelingedit="GridCerti_RowCancelingEdit" 
        onrowupdating="GridCerti_RowUpdating">
    <Columns>
        <asp:TemplateField HeaderText="SrNo" Visible="False">
            <ItemTemplate>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:Label ID="lblID2" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="RefPreNo">
            <ItemTemplate>
                <asp:Label ID="lblrefpreno" runat="server" Text='<%# Eval("RefPreNo") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtrefpno" runat="server" Text='<%# Bind("RefPreNo") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="RefNo">
            <ItemTemplate>
                <asp:Label ID="lblrefno" runat="server" Text='<%# Eval("RefNo") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtRefno" runat="server" Text='<%# Bind("RefNo") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Student Name">
            <ItemTemplate>
                <asp:Label ID="lblstuname" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtstuname" runat="server" Text='<%# Bind("StudentName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Father Name">
            <ItemTemplate>
                <asp:Label ID="lblFname" runat="server" Text='<%# Eval("FatherName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtfname" runat="server" Text='<%# Bind("FatherName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Training From">
            <ItemTemplate>
                <asp:Label ID="lblTF" runat="server" Text='<%# Eval("TFrom") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtTF" runat="server" Text='<%# Bind("TFrom") %>'></asp:TextBox>
                <cc1:CalendarExtender ID="cldr" runat="server" TargetControlID="txtTF" Format="MM/dd/yyyy"></cc1:CalendarExtender>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Training To">
            <ItemTemplate>
                <asp:Label ID="lblTTo" runat="server" Text='<%# Eval("TTo") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtTo" runat="server" Text='<%# Bind("TTo") %>'></asp:TextBox>
                <cc1:CalendarExtender ID="cldretdr" runat="server" TargetControlID="txtTo" Format="MM/dd/yyyy"></cc1:CalendarExtender>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Project Name">
            <ItemTemplate>
                <asp:Label ID="lblPname" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtpname" runat="server" Text='<%# Bind("ProjectName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Course">
            <ItemTemplate>
                <asp:Label ID="lblc" runat="server" Text='<%# Eval("Course") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtc" runat="server" Text='<%# Bind("Course") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Grade">
            <EditItemTemplate>
                <asp:DropDownList ID="ddlG" runat="server" SelectedValue='<%# Bind("Grade") %>'>
                    <asp:ListItem Value="Select Grade">Select Grade</asp:ListItem>
                    <asp:ListItem Value="A">A</asp:ListItem>
                    <asp:ListItem Value="B">B</asp:ListItem>
                    <asp:ListItem Value="C">C</asp:ListItem>
                    <asp:ListItem Value="D">D</asp:ListItem>
                </asp:DropDownList>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblG" runat="server" Text='<%# Eval("Grade") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <EditItemTemplate>
                <asp:LinkButton ID="lbUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>|
                <asp:LinkButton ID="lbCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="lbdelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>|
                <asp:LinkButton ID="lbEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Panel>


</asp:Content>

