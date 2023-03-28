<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlBulkCopy.aspx.cs" Inherits="Admin_SqlBulkCopy"  Title="DataBase Attachment"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    

</head>

<body>
    
 
    <form id="form1" runat="server">
   <asp:ScriptManager ID="MainScriptManager" runat="server" />

    <div id="dvmain" runat="server" style="background-color:Gray;height: 620px;">
    
    <asp:UpdatePanel runat="server" id="Panel22">
            <ContentTemplate>

    
        <asp:Panel ID="Panel1" runat="server" Height="277px" Width="655px" 
            style="float:left;border:6px solid rgb(204, 204, 204)" BackImageUrl="../images/1931391.jpg" >
            
            <asp:label ID="lblSourceDtail" runat="server" Text="Enter Source Detail Here:" 
                ForeColor="White" style="font-weight:900"></asp:label>
            <br />
            </b>
            <table class="style1">
                <tr>
              
                    <td>
                        <asp:TextBox ID="txtsorceIP" runat="server" Width="300px" placeholder="Enter Ip NO." style="margin-left: 60px; height:25px;  border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
               
                    <td>
                        <asp:TextBox ID="txtsourceDB" runat="server" Width="300px" placeholder="Enter Database Name" style="margin-left: 60px;margin-top:6px;height:25px ;border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtSourceUN" runat="server" Width="300px" placeholder="Enter UserName" style="margin-left: 60px;margin-top:6px;height:25px ;border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                   
                    <td>
                        <asp:TextBox ID="txtsourcePwd" runat="server" Width="300px" TextMode="Password" placeholder="Enter Password" style="margin-left: 60px;margin-top:6px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtSourtblname" runat="server" Width="300px" placeholder="Enter Table Name" style="margin-left: 60px;margin-top:6px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                
            </table>
    
        </asp:Panel>
        <asp:Panel ID="panel2" runat="server" style="float:right;width:652px;border:6px solid rgb(204, 204, 204)" Height="276" BackImageUrl="../images/1931391.jpg">
           
            <asp:Label ID="lbldestDetail" runat="server" Text="Enter Destination Detail Here:" ForeColor="White"  style="font-weight:900" ></asp:Label>
            <br />
            </b>
            <asp:Label ID="lbldes" runat="server" ForeColor="Blue" Visible="false"></asp:Label>
            <table class="style1">
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtDestIP" runat="server" Width="300px" placeholder="Enter IP No.:" style="margin-left: 60px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtDestDB" runat="server" Width="300px" placeholder="Enter Database Name:" style="margin-left: 60px;margin-top:6px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtDestUN" runat="server" Width="300px" placeholder=" Enter UserName:" style="margin-left: 60px;margin-top:6px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtDestPwd" runat="server" Width="300px" TextMode="Password" placeholder="Enter Password:" style="margin-left: 60px;margin-top:6px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="txtDestblname" runat="server" Width="300px" placeholder="Enter  Table Name:" style="margin-left: 60px;margin-top:6px;height:25px; border: 2px solid #666666"></asp:TextBox>
                    </td>
                </tr>
               
            </table>
            
            </asp:Panel>
         
            
       
       
                  
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Please wait. . . . . . . . .&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <img alt="" style="height:14px; width:237px;" src="../Images/progressbar.gif" /> 
                    <br />
                </ProgressTemplate>
                </asp:UpdateProgress>
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Green"></asp:Label>
                            <br />
                    
        
            
             
            <asp:Button ID="btnAttached" runat="server" Text="Attachement" style="margin-top: 65px; margin-left: 100px; width: 143px; height: 48px;" onclick="btnAttached_Click" SkinID="MytextID"/>
           <asp:Button ID="btntruncate" runat="server" Text="Delete Records Destination Table" 
                    Height="48px" onclick="btntruncate_Click"/>
                    
            <panel id="pnl123" runat="server"  style="margin-top:-107px;width:654px;float:left;border:6px solid rgb(204, 204, 204);background-color:Maroon">
            <table>
                <caption>
                   
            <asp:Label ID="lblDetails" runat="server" Text="TO Get A Primery Key Click On Fetch Button Below After Fill Source Detail: " ForeColor="White"></asp:Label>
                    <tr>
                        
                        <td>
                            <asp:DropDownList ID="ddlgetid" runat="server" style="margin-left: 60px;" Width="306px">
                            <asp:ListItem>--Select Primery Key--</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="btnfetchid" runat="server" onclick="btnfetchid_Click" 
                                text="Fetch" />
                        </td>
                    </tr>
                  
                </caption>
            </table>
            </panel>
            <panel  style="margin-top:20px;width:654px;float:left;border:6px solid rgb(204, 204, 204);background-color:Maroon">
            <table>
            <caption>
            <asp:Label ID="lblInsertTable" runat="server" ForeColor="white" Text="Create Table In Destination"></asp:Label>
            <tr>
            
            <td><asp:TextBox ID="txtCreateTable" runat="server" TextMode="MultiLine" style="width: 345px; height: 110px;" PlaceHolder="Enter Insert Query here...."> </asp:TextBox> 
                <asp:Button ID="btnCreateTbl" runat="server" Text="create" 
                    onclick="btnCreateTbl_Click" /> </td>
            
            </tr>
           
            </caption>
            </table>
            </panel>
            <asp:DropDownList ID="ddlid" runat="server" Visible="false" >
            
                </asp:DropDownList>
            
         
            <%--<tr>
            
            <td>
             Create Table In Destination
            </td>
           
                      <asp:TextBox ID="txtCreateTbl" runat="server" TextMode="MultiLine" style="width: 368px; height: 114px;"></asp:TextBox>

            
        <asp:Button ID="btnCraetetbl" runat="server" Text="Create Table"/>
           
            </tr></table>--%>
           <%-- <table>
            <tr>
            <td style="padding-left:400px">
             Truncate Table From Destination
            </td>
            
           <td>
            <asp:Button ID="btnTrunc" runat="server" Text="X"/>
            </td>
            </tr>
            <asp:Label ID="lblDest" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            </table>--%>
            </ContentTemplate>
             </asp:UpdatePanel>
              
    </div>

    </form>

</body>

</html>
