<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateBatch.aspx.cs" Inherits="Admin_CreateBatch" Title="Create Batches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" >

        function togglSession() {
            document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Session';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Session';

            document.getElementById('<%= TextBoxInsert.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') {
                document.getElementById("popup").style.display = 'none';
            } else {
                document.getElementById("popup").style.display = 'block';
            }

        }
       </script>
    <style type="text/css">
        .style1
        {
            width: 205px;
        }
        .style2
        {
            width: 205px;
            height: 12px;
        }
        .style3
        {
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="DVAdd" style="width: 100%; height: 800px; margin-bottom:50px">
     <table id="Table1" style="width: 92%; height: 45px;">
   <tr>
       
   <td>
   <asp:Label id="lblHead" runat="server" forecolor="Green" text="Create Batches" 
           style="font-weight: 700"></asp:Label>
   </td>
   </tr>
   <tr>
   <td>
   <asp:Label ID="lblAddMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
   </td>
   </tr>

</table>
<br />
<br />
<br />
         <table>
             <tr>
                 <td class="style1" >
                     SelectSession:</td>
                 <td>
                     &nbsp;<asp:DropDownList ID="ddlSession" runat="server" Height="30px" Width="352px">
                     </asp:DropDownList>
                  &nbsp;</td>
                 <td>
                  <input class="Allbuttons"  style="width:26px; height:26px; " name="reset" onclick="togglSession();" type="button" value="..." /></td>
             </tr>
             <tr>
                 <td class="style1" >
               
&nbsp; Batch Name:</td>
                 <td>
                     <asp:TextBox ID="txtBName" runat="server" Height="27px" Width="350px" 
                         style="margin-top:2px"></asp:TextBox>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style1" >
&nbsp; Batch Timing:</td>
                 <td>
                     <asp:TextBox ID="txtBTiming" runat="server" Height="27px" Width="350px"  
                         style="margin-top:2px"></asp:TextBox>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Staff ID:</td>
                 <td>
                     <asp:TextBox ID="txtSTID" runat="server" Height="27px" Width="350px"  
                         style="margin-top:2px"></asp:TextBox>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Active:</td>
                 <td>
                 <asp:DropDownList ID="ddlisactive" runat="server" Height="30px" Width="351px" 
                         style="margin-top: 0px">
                 <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>True</asp:ListItem>
                 <asp:ListItem>False</asp:ListItem>
                 </asp:DropDownList>
                    <%-- <asp:TextBox ID="txtIsActive" runat="server" Height="18px" Width="195px" style="margin-top:2px"></asp:TextBox>--%>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style2">
                     </td>
                 <td class="style3">
                 <br />
                     <asp:Button ID="btnCreate" runat="server" Text="Create" Height="25px" 
                         CssClass="Allbuttons" Width="100px" onclick="btnCreate_Click" />
                 </td>
                 <td class="style3">
                     &nbsp;</td>
             </tr>
         </table>

     </div>
     
     <!---Start Popup---->
     <div id="popup" class="corner"
        
            style="display: none; padding: 10px;  width : 370px; height: 150px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 350px;border-color:Red; left: 493px;">
        
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
                    <a onclick="togglSession();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="TextBoxInsert" runat="server" Height="18px" Width="200px"></asp:TextBox>exp:-Jan-May-2015
                        <br />
                       <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="true" OnClick="ButtonInsSave_Click" />
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
</asp:Content>

