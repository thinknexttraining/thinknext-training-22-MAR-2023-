<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TESTaspx.aspx.cs" Inherits="TESTaspx" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%--<script language="javascript" type="text/javascript">
         function divexpandcollapse(divname) {
             var div = document.getElementById(divname);
             var img = document.getElementById('img' + divname);
             if (div.style.display == "none") {
                 div.style.display = "inline";
                 img.src = "minus.gif";
             } else {
                 div.style.display = "none";
                 img.src = "plus.gif";
             }
         }
</script>--%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                icons: icons
            });
            $("#toggle").button().click(function () {
                if ($("#accordion").accordion("option", "icons")) {
                    $("#accordion").accordion("option", "icons", null);
                } else {
                    $("#accordion").accordion("option", "icons", icons);
                }
            });
        });
    </script>






    
    <style type="text/css">

         
      .tbl td {
    border: 1px solid;
        padding: 4px 20px;
}
        .tbl
        {
            border: 1px solid;
                   margin: 5px 0px;
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

      
  





    
</head>
<body>
    <form id="form1" runat="server">
     <%--<div>
<asp:GridView ID="gvParentGrid" runat="server" DataKeyNames="JobID" Width="300px"
AutoGenerateColumns="false" OnRowDataBound="gvUserInfo_RowDataBound" GridLines="None" BorderStyle="Solid" BorderWidth="1px"  BorderColor="#df5015">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<RowStyle BackColor="#E1E1E1" />
<AlternatingRowStyle BackColor="White" />
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>
<asp:TemplateField ItemStyle-Width="20px">
<ItemTemplate>
<a href="JavaScript:divexpandcollapse('div<%# Eval("JobID") %>');">
<img id="imgdiv<%# Eval("JobID") %>" width="9px" border="0" src="plus.gif" />
</a>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="JobID" HeaderText="JobID" HeaderStyle-HorizontalAlign="Left"/>
<asp:BoundField DataField="JobTitle" HeaderText="JobTitle" HeaderStyle-HorizontalAlign="Left" />
<asp:TemplateField>
<ItemTemplate>
<tr>
<td colspan="100%">
<div id="div<%# Eval("JobID") %>" style="display: none; position: relative; overflow: auto">
<asp:GridView ID="gvChildGrid" runat="server" AutoGenerateColumns="false" BorderStyle="Double"  BorderColor="#df5015" GridLines="None" Width="300px">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<RowStyle BackColor="#E1E1E1" />
<AlternatingRowStyle BackColor="White" />
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>
<asp:BoundField DataField="JobID" HeaderText="JobID" HeaderStyle-HorizontalAlign="Left"/>
<asp:BoundField DataField="Salary" HeaderText="Salary" HeaderStyle-HorizontalAlign="Left" />
</Columns>
</asp:GridView>
</div>
</td>
</tr>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</div>--%>

<div id="accordion" style="width: 500px;">
        <asp:Repeater ID="repAccordian" runat="server" >
            <ItemTemplate>
                <h3 style="width:979px;">
                    <%#Eval("Jobtitle")%>
                    <br></br></h3>
                <div style="width:949px;font-size:small;">
                    <table>
                        <tr>
                            <td class="style1">
                                <b>Area</b>
                            </td>
                            <td class="style2">
                                <%#Eval("jobCategory")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Experience</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Experience")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Location</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Location")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Qualification</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Qualification")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Salary</b>
                            </td>
                            <td class="style2">
                                <%#Eval("Salary")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Job</b>
                            </td>
                            <td class="style2">
                                <%#Eval("JobSummary")%>
                            </td>
                        </tr>
                        <tr colspan="2">
                        <td colspan="2"><b>Required skill</b><%#Eval("Skill")%></td>
                        </tr>
                        <tr>
                        <td class="style1"><asp:Button ID="Button4" runat="server" Text="Apply" CommandName="E" CommandArgument='<%#Eval("JobId") %>'/></td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    

 
    </form>
</body>
</html>
