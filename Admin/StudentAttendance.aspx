<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master"  AutoEventWireup="true" CodeFile="StudentAttendance.aspx.cs" Inherits="Admin_StudentAttendance" Title="Student Attendance Report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  id="Main">
<table id="tbshow" style="width:100%; height:auto">
<tr>
<td>&nbsp;</td>
<td>
                    <asp:TextBox ID="txtfranchise" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible ="false" >TNK101</asp:TextBox>
    </td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>Student Id No.</td>
<td>
    <asp:TextBox ID="txtidno" runat="server"></asp:TextBox>
    </td>
<td></td>
<td></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
    &nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>Date(From)</td>
<td>
    <asp:TextBox ID="txtdateFrom" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="txtdateFrom_CalendarExtender" runat="server" Enabled="true" TargetControlID="txtdateFrom"></asp:CalendarExtender>
    </td>
<td>Date(To)</td>
<td>
    <asp:TextBox ID="txtDateTo" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="txtDateTo_CalendarExtender" Enabled="true" TargetControlID="txtDateTo"
        runat="server"      >
    </asp:CalendarExtender>
   
    
    </td>
</tr>
<tr>
<td></td>
<td>
    <asp:Button ID="btnshow" runat="server" Text="Show" Width="71px" 
        onclick="btnshow_Click" CssClass="Allbuttons" style="margin-top:13px" />
    </td>
<td></td>
<td></td>
</tr>
</table>
<div id="grid" style="margin-left:10px">
<p>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnExcel" runat="server" Text="Export to Excel" 
        onclick="btnExcel_Click" CssClass="Allbuttons" />
    &nbsp;&nbsp;
    <asp:Button ID="btnpdf" runat="server" Text="Export to PDF" 
        onclick="btnpdf_Click" Visible="False" CssClass="Allbuttons" />
    &nbsp;&nbsp;
    <asp:Button ID="btnword" runat="server" Text="Export to MS Word" 
        onclick="btnword_Click" CssClass="Allbuttons" />
    
</p>
<div style="overflow:auto">
<asp:GridView ID="gvAttendance" runat="server" AutoGenerateColumns="False" 
                                CellPadding="0" ForeColor="#333333" GridLines="None"  
                                HorizontalAlign="Left"   
                                style="   font-size:small" 
                                Width="99%">
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
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("LectDelievered") %>'></asp:Label>
                                          
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Lectures Attended">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("LectAttended") %>'></asp:Label>
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
 </div>
</div>
</div>
</asp:Content>

