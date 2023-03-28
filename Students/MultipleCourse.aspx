<%@ Page Language="C#" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="true" CodeFile="MultipleCourse.aspx.cs" Inherits="Students_MultipleCourse" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script src="../js/jquery-1.4.1.min.js" type="text/javascript"></script>


 
   <script type="text/javascript" language="javascript" >

       function togglCategory() 
       {

           document.getElementById('<%= lblinsert.ClientID %>').innerHTML = 'Enter Category';
            document.getElementById('<%= hiddentext.ClientID %>').value = 'Enter Category';

            document.getElementById('<%= ChkliCourse.ClientID %>').Text = '';
            var state1 = document.getElementById("popup").style.display;
            if (state1 == 'block') 
            {
                document.getElementById("popup").style.display = 'none';
            }
            else
              
            {
                document.getElementById("popup").style.display = 'block';
            }

        }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Select Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CausesValidation="True" 
        CellPadding="5" CellSpacing="4" 
        onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" Width="100px" TextAlign="Left">
        <asp:ListItem>ui</asp:ListItem>
        <asp:ListItem>uiuiuii</asp:ListItem>
        <asp:ListItem>iuuui</asp:ListItem>
        <asp:ListItem>uiuiui</asp:ListItem>
        <asp:ListItem>iuuiuuiu</asp:ListItem>
    </asp:CheckBoxList>
    
    
    <input class="Allbuttons"  style="width:18px; height:18px; " name="reset" onclick="togglCategory();" type="button" value="..."/>
  
  
  
  
  
  
  
    
    <div id="popup" 
        
            style="display: none; padding: 10px;  width : 370px; height:300px; background-image: url('../Images/tpr.png'); background-repeat: repeat;  position: fixed; top: 250px; left: 493px;">
        
        <div id="datainsert" 
            
            style="margin: auto; margin-top:1px; width: 100%; height: 100%; background-color: #FFFFFF;overflow:auto" >
            
            
            <table >
                <tr>
                    <td style="height: 35px; width: 74px">
                    </td>
                    <td style="width: 244px; height: 35px; vertical-align: bottom;">
                        <asp:Label ID="lblinsert" style="margin-right:10px;" runat="server"></asp:Label>
                        <asp:HiddenField runat="server" ID="hiddentext" />
                    </td>
                    <td style="height: 35px; text-align: center; vertical-align: top;">
                    <a onclick="togglCategory();" href="#" id="anchor" 
                            style="margin-top:2px; margin-right: 15px; margin-bottom:10px; font-size: small; font-weight: bold" > Close</a></td>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px; text-align: right;">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:TextBox ID="TextBoxInsert" runat="server" Height="18px" Width="200px"></asp:TextBox>
                        
                        <asp:CheckBoxList ID="ChkliCourse" runat="server" RepeatLayout="Table" RepeatDirection="Vertical"></asp:CheckBoxList>
                    </td>
                   <%-- </td>--%>
                </tr>
                <tr>
                    <td style="height: 34px; width: 74px">
                        &nbsp;</td>
                    <td style="width: 244px; height: 34px">
                        <asp:Button ID="ButtonInsSave" runat="server" Height="25px" Text="Save" 
                            Width="90px" CausesValidation="False"  OnClick="ButtonInsSave_Click"/>
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

