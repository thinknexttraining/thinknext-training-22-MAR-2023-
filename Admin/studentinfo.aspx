<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="studentinfo.aspx.cs" Inherits="Admin_studentinfo" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
            height: 26px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 26px;
            width: 374px;
        }
        .auto-style9 {
            width: 374px;
        }
        .auto-style10 {
            text-align: left;
            width: 374px;
        }
        .auto-style11 {
            text-align: center;
            height: 30px;
        }
    </style>
    <script type="text/javascript">
    function HideLabel() {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=validlabel.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };

 <%-- function DisableButton() {
      document.getElementById("<%=btnSubmit.ClientID %>").disabled = true;
      return true;
  }
  window.onbeforeunload = DisableButton;--%>
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="validlabel" runat="server" Text="validlabel" ForeColor="#CC0000" Visible="False"></asp:Label>
            &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblModeOfTraining" runat="server" Font-Size="Medium" Text="MODE OF TRAINING"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlModeOfTraining" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlModeOfTraining_SelectedIndexChanged" Width="193px" Height="25px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Offline</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblCERTIFICATEID" runat="server" Font-Size="Medium" Text="CERTIFICATE ID"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtcertificate" runat="server" CssClass="auto-style4" Width="186px" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtRandomid" runat="server" Width="81px" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGenerate" runat="server" OnClick="Button1_Click" Text="GenerateID" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSTUDENTNAME" runat="server" Font-Size="Medium" Text="STUDENT&nbsp; NAME"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtstudent" runat="server" CssClass="auto-style4" Width="186px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr id="fatherNamerow" runat="server">
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblFatherName" runat="server" Font-Size="Medium" Text="FATHER NAME"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtFatherName" runat="server" CssClass="auto-style4" Width="186px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProjetName" runat="server" Font-Size="Medium" Text="PROJECT NAME"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtprojectname" runat="server" CssClass="auto-style4" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr id="trngfromrow" runat="server">
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTrainingFrom" runat="server" Font-Size="Medium" Text="TRAINING&nbsp; FROM"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txttrainingfrom" runat="server" CssClass="auto-style4" Width="186px" autocomplete="off" ></asp:TextBox>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txttrainingfrom" Format="dd-MMM-yyyy"></asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="lblTrainingTo" runat="server" Font-Size="Medium" Text="TRAINING&nbsp; TO"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txttrainingto" runat="server" CssClass="auto-style4" Width="186px" autocomplete="off"></asp:TextBox>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txttrainingto" Format="dd-MMM-yyyy"></asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;<asp:Label ID="lblCourse" runat="server" Font-Size="Medium" Text="COURSE NAME"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtcoursename" runat="server" CssClass="auto-style4" Width="186px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style5">&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Bold="True" Height="30px" Width="120px"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td> 
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>

   
</asp:Content>

