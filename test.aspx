<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
                                                <td>
                                                    Page Url
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpDwnPageUrl" runat="server" AppendDataBoundItems="True" Font-Size="10px">
                                                        <asp:ListItem Value="0">(None)</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
    </table>
    </div>
    </form>
</body>
</html>
