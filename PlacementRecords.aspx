<%@ Page Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true" CodeFile="PlacementRecords.aspx.cs" Inherits="PlacementRecords" Title="PlacementRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 

 

    
   <style>     .head1 {
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








    <script type="text/javascript" language="javascript">

        function togglCategory() {

            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }
    </script>
    <script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
           <img class="w-100" src="images/placements.jpg" alt="Placement Records" title="Placement Records" />
    </div>
  
    <div class="container">
        <div class="col-lg-12">
            <div style="width: 100%; height: 710px">
                <table style="width: 100%; height: 173px; margin-bottom: 0px;" cellpadding="0"
                    cellspacing="0">
                    <tr>
                        <td align="center" style="height: 10px" valign="top">&nbsp;</td>
                    </tr>

                    <tr>
                        <td align="center" style="height: 49px" valign="top" rowspan="1">&nbsp;&nbsp;&nbsp;
       
       <asp:Label ID="lblPlacementRecords" runat="server" Style="font-size: x-large; font-weight: 700;"
           Text="Placements After Training" ForeColor="#336699" Font-Size="X-Large"></asp:Label>



                        </td>


                    </tr>
                    <tr>
                        <td align="center" valign="top">
                            <asp:Label ID="lblMsg" runat="server" Font-Size="Small" SkinID="MytextID"
                                Style="color: #CC3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top">
                            <asp:Label ID="lblTotal" runat="server" Font-Size="Small" SkinID="MytextID"
                                Style="color: #000000" Visible="False"></asp:Label>
                            <%--<input class="Allbuttons" style="width: 201px; height: 27px; float: right; margin-bottom: 8px;" name="reset" onclick="togglCategory();" type="button" value="List of Interviews Conduct" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <%-- GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99%
     <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"  CellPadding="4" 
    ForeColor="#333333" GridLines="None" Height="16px" 
     HorizontalAlign="Left" ShowFooter="True" style="font-size: 11px; Width:99% " Font-Size="X-Large" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="740px">
                            <RowStyle ForeColor="#000066" Font-Size="Medium" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" 
                                Font-Size="Small" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" 
                                Font-Size="Medium" />
                    </asp:GridView>
      "--%>
                    <tr>
                        <td colspan="8" style="width: 99%; height: 180px" style="height: 400px; width: 925px;" align="center" valign="top">

                            <asp:Panel ID="Panel1" runat="server" Height="585px"  style="overflow:scroll;"
                                Width="100%">
                                <asp:GridView ID="gdShow" runat="server"
                                    CellPadding="4" ForeColor="#333333"
                                    GridLines="None" Width="99%"
                                    HorizontalAlign="Center"
                                    AutoGenerateColumns="False" Style="font-size: Small; margin-right: 0px;"
                                    PageSize="30" Font-Size="XX-Small" OnSelectedIndexChanged="gdShow_SelectedIndexChanged">
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="left" />
                                    <Columns>
                                        <asp:BoundField DataField="CandidateName" HeaderText="Name of Candidate">
                                            <HeaderStyle HorizontalAlign="left" />
                                            <ItemStyle HorizontalAlign="left" Width="30%" Wrap="False" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CollegeName"
                                            HeaderText="College Name">
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="30%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CompanyName" HeaderText="Company Name">
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="30%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AddDate" HeaderText="Placement Date">
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" Width="120px" />
                                        </asp:BoundField>
                                        <%--<asp:BoundField DataField="Result" HeaderText="Result">
                                     <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="120px" />
                                    </asp:BoundField>--%>
                                    </Columns>
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"
                                        HorizontalAlign="Left" />
                                    <EditRowStyle BackColor="#999999" Font-Size="Small" HorizontalAlign="Left"
                                        VerticalAlign="Middle" Wrap="False" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"
                                        HorizontalAlign="Center" />
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: red; float: right"><strong>More than 850 placements so far. List is being updated </strong></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div style="display: none; box-shadow: 0px 15px 25px #000000; padding: 10px; width: 934px; height: 466px; background-image: url('Images/tpr.png'); background-repeat: repeat; position: fixed; top: 91px; left: 195px;">

                <div id="datainsert" style="margin: auto; margin-top: 1px; width: 100%; height: 100%; background-color: #FFFFFF;">
                    <table>
                        <tr>
                            <td class="style9"></td>
                            <td style="text-align: center; vertical-align: top;" class="style7">
                                <font style="font-weight: bold; font-size: larger;"><asp:Label ID="record" runat="server" Text="Interview Conducting Records:"></asp:Label></font></td>
                            <td style="text-align: center; vertical-align: top;" class="style1">
                                <a onclick="togglCategory();" href="#" id="anchor"
                                    style="margin-top: 2px; margin-right: 15px; margin-bottom: 10px; font-size: small; font-weight: bold">Close</a></td>
                        </tr>
                        <tr>
                            <td class="style9">&nbsp;</td>
                            <td style="text-align: center; vertical-align: top;" class="style7">
                                <asp:Label ID="lblmessage" runat="server" Visible="false" ForeColor="Red"></asp:Label></td>
                            <td style="text-align: center; vertical-align: top;" class="style1">&nbsp;</td>
                        </tr>
                    </table>
                    <div style="overflow: auto;">
                        <asp:GridView ID="GridView1" runat="server" Width="100%" BackColor="White"
                            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>

