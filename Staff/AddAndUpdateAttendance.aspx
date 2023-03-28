<%@ Page Language="C#" MasterPageFile="~/Staff/MasterAdmin.master" AutoEventWireup="true" CodeFile="AddAndUpdateAttendance.aspx.cs" Inherits="Staff_AddAndUpdateAttendance" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <script type="text/javascript" >
   function numericValue() {
       var lectDel = document.getElementById('<%=textBoxLectDelivered.ClientID%>');
       var lectATT = document.getElementById('<%=textBoxLectAttended.ClientID%>');
       if (lectDel.value == lectATT.value)
       {
       alert("equal");
       }
           
       else{
           alert("not equal");}
      </script>
      
      <style type="text/css">
        .style4
        {
            height: 51px;
        }
        .style5
        {
            width: 150px;
        }
        .style6
        {
            width: 344px;
        }
        .style7
        {
            width: 289px;
        }
        .style8
        {
            width: 266px;
        }
          .style9
          {
              width: 216px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100%; height: auto;">
            
                   <div id="pageicons" style="width: 92%; height: 45px;">

       <table id="tabpageicon" style="width: 92%; height: 45px;">
           <tr>
               <td class="style8">
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
               <td style="width: 46px">
                  <img src="../pageicon/attendence.png" alt=""  
                        style="height:34px; width: 36px;" />
                 </td>
               <td class="style9">
                  <asp:Label ID="Label1" runat="server" Text="Add/Update Attendance"  
                        style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700;"></asp:Label> 
                    </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style8">
                   &nbsp;</td>
               <td style="width: 46px">
                   &nbsp;</td>
               <td class="style9">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style8">
                   &nbsp;</td>
               <td style="width: 46px">
                   &nbsp;</td>
               <td class="style9">
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
   
   </div>
   <%--  <asp:UpdatePanel ID="xyUpdate" runat="server" UpdateMode="Conditional"><ContentTemplate>--%>
            <table  style="width: 96%; height: auto; " id="tabatt" cellpadding="0" cellspacing="0">
                 <tr>
                                    <td align="center" class="style4" 
                                        style="font-family: 'Times New Roman', Times, serif; font-size: small; color: #000000">
                                        <asp:Panel ID="Panel4" runat="server" GroupingText="Select Program" 
                                            Height="100px" >
                                            <p id="ppx" style="margin:0px; padding-top: 2px; padding-bottom: 2px;" >
                                            <strong> Select Session</strong>
                                                <asp:DropDownList ID="drpCourse" runat="server" Height="20px" Width="200px" 
                                                    AutoPostBack="True" 
                                                    onselectedindexchanged="drpCourse_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Select Batch</b>&nbsp;
                                                <asp:DropDownList ID="drpgroup" runat="server" Height="20px" Width="200px">
                                                </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnshow" runat="server" Text="Show" 
                                                    CssClass="Allbuttons" Height="24px" Width="82px" onclick="btnshow_Click" />
                                            </p>
                                            <p style="margin:0px; height: 30px; padding:2px; " >
                                            <strong> Select Date :&nbsp; </strong>
                                                <asp:TextBox ID="txtdate" runat="server" Height="16px" Width="162px"></asp:TextBox>
                                                <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                                                     TargetControlID="txtdate" 
                                                    Format="MM/dd/yyyy" >
                                                </cc1:CalendarExtender>
                                                <b>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="0" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" 
                                                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                                    style="   font-size:small" Width="99%">
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                                        HorizontalAlign="Center" />
                                                    <RowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" 
                                                        VerticalAlign="Middle" />
                                                    <Columns>
                                                        <asp:BoundField DataField="AttDate" HeaderText="Date" />
                                                        <asp:TemplateField HeaderText="ID No">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblIDNo" runat="server" style="font-size: small" 
                                                                    Text='<%# Eval("IDNo") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="StudentName" HeaderText="Name" />
                                                        <asp:BoundField DataField="Course" HeaderText="Course" />
                                                        <asp:BoundField DataField="Duration" HeaderText="Duration" />
                                                        <asp:BoundField DataField="BatchGroup" HeaderText="BatchGroup" />
                                                        <asp:TemplateField HeaderText="Lectures Delivered">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="LectDelivered" runat="server" Font-Size="X-Small" 
                                                                    Height="14px" MaxLength="3" onkeyUp="return checkInputLectAtt(this)" 
                                                                    style="text-align: center; font-size: x-small; background-color:Transparent;" 
                                                                    Text='<%# Eval("LectDelievered") %>' Width="50px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Lectures Attended">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="LectAttended" runat="server" Font-Size="X-Small" Height="14px" 
                                                                    MaxLength="3" onkeyUp="return checkInputLectAtt(this)" 
                                                                    style="text-align: center; font-size: x-small;  background-color:Transparent;" 
                                                                    Text='<%# Eval("LectAttended") %>' Width="50px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" 
                                                        VerticalAlign="Top" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                                        HorizontalAlign="Left" />
                                                    <EditRowStyle BackColor="#999999" VerticalAlign="Middle" />
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                </asp:GridView>
                                                </b>
                                            </p>
                                        </asp:Panel>
                                    </td>
                                </tr>
                <tr>
                    <td align="center" style="height: auto; " valign="top">
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
                        </td>
                </tr>
                <tr>
                    <td align="center" style="height: 63px; text-align: left;" 
                        valign="top">
                        <asp:Panel ID="Panel3" runat="server" GroupingText="Set Lectures" Height="88px" 
                            HorizontalAlign="Center" Width="799px" style="font-size: small">
                            <table style="width: 99%" id="vvcvc">
                                <tr>
                                    <td style="width: 18px">
                                        </td>
                                    <td align="left" style="width: 138px" valign="middle">
                                        <asp:Label ID="lblsetlecturesdelivered" runat="server" SkinID="MytextID" 
                                            style="font-size: small" Text="Set Lectures Delivered :"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 117px" valign="middle">
                                        <asp:TextBox ID="textBoxLectDelivered" runat="server" Height="14px"  
                                            MaxLength="3" SkinID="MytextID" style="font-size: x-small; margin-bottom: 0px;" 
                                            Width="100px"></asp:TextBox>
                                    </td>
                                    <td align="left" style="width: 81px" valign="top">
                                         <asp:Button ID="btnAddLectDelivered" CssClass="Allbuttons" 
                                             OnClientClick="return SetLectDelivered(); " runat="server"  
                                             style="font-size: small;  font-weight: 700" Text="Set" Width="43px" 
                                             onclick="btnAddLectDelivered_Click" />
                                    </td>
                                    <td align="left" style="width: 135px" valign="middle">
                                        <asp:Label ID="lblsetlecturesAttended" runat="server" SkinID="MytextID" 
                                            style="font-size: small" Text="Set Lectures Attended :"></asp:Label>
                                    </td>
                                    <td align="left" style="width: 119px" valign="middle">
                                        <asp:TextBox ID="textBoxLectAttended" runat="server" Height="14px"   
                                            MaxLength="3" SkinID="MytextID" style="font-size: x-small" Width="100px"></asp:TextBox>
                                    </td>
                                    <td align="left" valign="top" style="width: 92px">
                                         <asp:Button   CssClass="Allbuttons" ID="btnLecturesAttended" runat="server"  
                                            Height="24px" style="font-weight: 700;" Text="Set " 
                                            Width="42px" ValidationGroup="LAT" onclick="btnLecturesAttended_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: auto; text-align: left;" valign="top">
                    <table style="width: 100%; height: auto;" id="trttrt">
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Button ID="cmdSave" runat="server" CssClass="Allbuttons" Height="25px" 
                                        SkinID="MytextID" style="font-weight: 700" Text="Save" Width="90px" 
                                        onclick="cmdSave_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" CssClass="Allbuttons" 
                                        Height="25px" SkinID="MytextID" style="font-weight: 700" Text="Update" 
                                        Width="90px" Visible="False" onclick="btnUpdate_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnExport" runat="server" CssClass="Allbuttons" 
                                        Height="25px" SkinID="MytextID" style="font-weight: 700" Text="Export To Excel" 
                                        Width="121px" onclick="btnExport_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    <span style="color: #990000"><b><span style="font-size: small">
                                    &nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" 
                                        style="font-size: medium; font-family: 'Times New Roman', Times, serif" 
                                        Text="*    0: Absent    1: Present   L: Leave"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                    </b></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <span style="color: #990000"><b><span style="font-size: small">
                                            &nbsp;<table style="width:100%" ID="sdsadsa">
                                                <tr>
                                                    <td class="style7">
                                                        <span style="color: #990000"><b><span style="font-size: small">
                                                        <asp:Label ID="lbltotalrecords" runat="server"></asp:Label>
                                                        </span></b></span>
                                                    </td>
                                                    <td class="style6">
                                                        <span style="color: #990000"><b><span style="font-size: small">
                                                        <asp:Label ID="lblTotalLectures" runat="server" 
                                                            style="font-size: small; font-weight: 700; font-family: Arial" 
                                                            ForeColor="#FF3300"></asp:Label>
                                                        &nbsp;</span></b></span></td>
                                                    <td>
                                                        <span style="color: #990000"><b><span style="font-size: small">
                                                        <asp:Label ID="lblMsg0" runat="server" 
                                                            style="color: #800000; font-size: small; font-weight: 700"></asp:Label>
                                                        </span></b></span>
                                                    </td>
                                                    <td class="style5">
                                                        &nbsp;&nbsp; </td>
                                                    <td align="right">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </span></b></span>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            </table>
                       
                       <asp:Panel ID="Panel1" runat="server" style="Height:400px; "  ScrollBars="Auto" 
                                Width="804px">
                       
                       <asp:GridView ID="gvAttendance" runat="server" AutoGenerateColumns="False" 
                                CellPadding="0" ForeColor="#333333" GridLines="None"  
                                HorizontalAlign="Left"   
                                style="   font-size:small" 
                                Width="100%">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                    HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" 
                                    VerticalAlign="Middle" />
                                <Columns>
                                    <asp:TemplateField HeaderText="ID No">
                                        <ItemTemplate>
                                            <asp:Label ID="lblIDNo" runat="server" style="font-size: small" 
                                                Text='<%# Eval("IDNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="StudentName" HeaderText="Name" />
                                    <asp:BoundField DataField="FatherName" HeaderText="Father Name" />
                                    <asp:BoundField DataField="Course" HeaderText="Course" />
                                    <asp:BoundField DataField="Duration" HeaderText="Duration" />
                                 <%--  <asp:BoundField DataField="BatchTimings" HeaderText="BatchTiming" />--%>
                                    <asp:BoundField DataField="BatchName" HeaderText="BatchGroup" />
                                  <%--  <asp:BoundField DataField="EnquiryNo" HeaderText="EnquiryNo" />--%>
                                    <asp:BoundField DataField="Active" HeaderText="Active" Visible="false" />
                                    <asp:TemplateField HeaderText="Lectures Delivered">
                                        <ItemTemplate>
                                            <asp:TextBox ID="LectDelivered" runat="server" Font-Size="X-Small" 
                                                Height="14px" MaxLength="3"                                                
                                                style="text-align: center; font-size: x-small; background-color:Transparent;" 
                                                Width="50px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkLecture" runat="server"  
                                                onclick ="return GetSelectedRow(this)" />
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="chkall" runat="server"   Height="20px" 
                                                Width="20px" />
                                        </HeaderTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Lectures Attended">
                                        <ItemTemplate>
                                            <asp:TextBox ID="LectAttended" runat="server" Font-Size="X-Small" onkeyUp="return checkInputLectAtt(this)" 
                                                Height="14px" MaxLength="3" 
                                                style="text-align: center; font-size: x-small;  background-color:Transparent;" 
                                                Width="50px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                              <%--  <asp:TemplateField HeaderText="Remove">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbremove" runat="server" CommandName="Delete" 
                                                onclick="lbremove_Click">Remove</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                </Columns>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" 
                                    VerticalAlign="Top" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                                    HorizontalAlign="Left" />
                                <EditRowStyle BackColor="#999999" VerticalAlign="Middle" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                            
                            
                            
                       </asp:Panel>
                        
                        </td>
                    
                    </tr>
             </table>
             <%-- </ContentTemplate></asp:UpdatePanel>--%>
            
       
                  
    </div>
</asp:Content>

