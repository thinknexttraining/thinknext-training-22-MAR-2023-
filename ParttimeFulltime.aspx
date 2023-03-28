<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ParttimeFulltime.aspx.cs" Inherits="ParttimeFulltime" Title="PartTime/FullTime Placements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <title>ThinkNEXT offers Part-Time Full-Time Job during training</title>
   

        <link rel="stylesheet" type="text/css" href="style.css" />
    
   <style>   
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
    <h1 style="color:#000;" > Part time / Full time  </h1>
       <div class="ryt">

You are here &nbsp; Home / Part time / Full time

       </div>


   </div>

    <br /> 
    <br /> 


    <div style="width: 100%; height: 710px; overflow:hidden">
       <table style="width:100%; height: 173px; margin-bottom: 0px; overflow:scroll;" cellpadding="0" 
            cellspacing="0">
   <tr><td align="center" style="height: 10px" valign="top">
       &nbsp;</td></tr>
  
   <tr><td align="center" style="height: 49px" valign="top" rowspan="1">
       
       &nbsp;&nbsp;&nbsp;
       
       <asp:Label ID="lblPlacementRecords" runat="server" style="font-size:x-large; font-weight: 700;" 
           Text="PartTime/FullTime Job During Training" ForeColor="#336699" Font-Size="X-Large"></asp:Label>
       
           
       </td>
       
       
       </tr>
    <tr>
        <td align="center" valign="top">
            <asp:Label ID="lblMsg" runat="server" Font-Size="Small" SkinID="MytextID" 
                style="color: #CC3300"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" valign="top">
            <asp:Label ID="lblTotal" runat="server" Font-Size="Small" SkinID="MytextID" 
                style="color: #000000" Visible="False"></asp:Label>
        </td>
    </tr>  <%-- GridLines="None" Height="16px" 
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
        <td colspan="8" style="width: 99%; height: 180px">
                           
                             <asp:Panel ID="Panel1" runat="server" Height="585px" style="overflow:scroll;"
                                 Width="100%">
                            <asp:GridView ID="gdShow" runat="server"  
    CellPadding="4" ForeColor="#333333" 
                GridLines="None"    Width="99%" 
                HorizontalAlign="Center" 
                AutoGenerateColumns="False" style="font-size:Small; margin-right: 0px;"  
    PageSize="30" Font-Size="XX-Small" >
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="left" />
                                <Columns >
                                    <asp:BoundField DataField="CandidateName" HeaderText="Name of Candidate" 
                        >
                                        <HeaderStyle HorizontalAlign="left" />
                                        <ItemStyle  HorizontalAlign="left" Width="130px" Wrap="False" />
                                    </asp:BoundField>
                                    
                                    <asp:BoundField DataField="AddDate" HeaderText="Placement Date" 
                        >
                                        <HeaderStyle HorizontalAlign="left" />
                                        <ItemStyle  HorizontalAlign="left" Width="130px" Wrap="False" />
                                    </asp:BoundField>
                                    
                                    <asp:BoundField DataField="CollegeName" 
                        HeaderText="College Name" Visible="False"  >
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="130px" />
                                    </asp:BoundField>
                                    <%--<asp:BoundField DataField="CompanyName" HeaderText="Company Name" 
                         >
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="130px" />
                                    </asp:BoundField>--%>

                                    <asp:BoundField DataField="JobType" HeaderText="Job Type">
                                     <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="120px" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Result" HeaderText="Result">
                                     <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Width="120px" />
                                    </asp:BoundField>


                                   <%-- <asp:BoundField DataField="Result" HeaderText="Result">
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
    
    </table>
    </div>
</asp:Content>

