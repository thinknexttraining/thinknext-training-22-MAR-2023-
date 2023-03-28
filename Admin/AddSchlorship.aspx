<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSchlorship.aspx.cs" Inherits="AddSchlorship" Title="Add Scholarship"%>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script><script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        $(function () {
            $(".numeric").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                $(".error").css("display", ret ? "none" : "inline");
                return ret;
            });
            $(".numeric").bind("paste", function (e) {
                return false;
            });
            $(".numeric").bind("drop", function (e) {
                return false;
            });
        });
    </script>
    <style type="text/css">
        body
        {
            font-size: 9pt;
            font-family: Arial;
        }
    </style>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
               <h2> Add Schlorship</h2></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td align="left">
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="368px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                College Name</td>
            <td>
                <asp:TextBox ID="txtcollegename" Width="368px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                Course</td>
            <td>
                <asp:TextBox ID="txtcourse" Width="368px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                %Off</td>
            <td>
                <asp:TextBox ID="txtpercantageoff" Width="368px" CssClass="numeric" runat="server"></asp:TextBox>
            </td>
            <td>
                 <span class="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
            
            </td>
        </tr>
        <tr>
            <td align="left">
                Test Date</td>
            <td>
                <asp:TextBox ID="txttestdate" Width="368px" runat="server"></asp:TextBox>
                
                <asp:CalendarExtender ID="txttestdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txttestdate">
                </asp:CalendarExtender>
                
            </td>
        </tr>
        <tr>
            <td align="left">
                Date Entry</td>
            <td>
                <asp:TextBox ID="txtdateentry" Width="368px" runat="server"></asp:TextBox>
                   
                <asp:CalendarExtender ID="txtdateentry_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdateentry">
                </asp:CalendarExtender>
                   
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnaddschloership" runat="server" Text="Add Schlorship" 
                     Width="191px" onclick="btnaddschloership_Click" CssClass="Allbuttons" />
                <asp:CheckBox ID="chkexcel" runat="server" Text="Click here for upload excel" 
                    AutoPostBack="True" oncheckedchanged="chkexcel_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblfirstmessage" Visible="false" runat="server" Font-Size="10pt" ForeColor="Red" 
                    Text="Before upload excel file you have to create the below mention coloumn in excel file"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblsecondmsg" Visible="false" runat="server" Font-Size="10pt" ForeColor="Red" 
                    Text="Student Name,CollegeName,Course,PercantageOff,TestDate,DateEntry"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblthirdmsg" Visible="false" runat="server" Font-Size="10pt" ForeColor="Red" 
                    Text="Fill the data into all column"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="lblselect" runat="server" Text="Select File" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUploadExcelFile" Visible="false" runat="server" />
&nbsp;<asp:Button ID="btnimport" runat="server" Visible="false" Text="Import Excel" 
                    onclick="btnimport_Click" />
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

