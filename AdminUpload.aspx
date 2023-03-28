<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminUpload.aspx.cs" Inherits="AdminUpload" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
        .auto-style1 {
            width: 68px;
            height: 20px;
        }
        .auto-style2 {
            width: 101px;
            height: 20px;
        }
        .auto-style3 {
            width: 277px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
<div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="head1">
    <h3 style="color:#000;" > Admin upload</h3>
       <div class="ryt">

You are here &nbsp; Home / Admin upload

       </div>


   </div>


   <br /> 
    <br />

<table>
<tr><td style=" height: 61px; width: 947px;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" 
        Font-Size="12pt" onclick="LinkButton1_Click">News &amp; Events</asp:LinkButton>
    &nbsp;&nbsp;|<asp:LinkButton ID="LinkButton2" runat="server" BackColor="White" 
        Font-Size="12pt" onclick="LinkButton2_Click">Vacancies</asp:LinkButton>&nbsp;|<asp:LinkButton ID="LinkButton3" runat="server" BackColor="White" 
        Font-Size="12pt" onclick="LinkButton3_Click">Other Information</asp:LinkButton>|<asp:LinkButton ID="LinkButton4"  BackColor="White" Font-Size="12pt" runat="server" OnClick="LinkButton4_Click">Hot jobs</asp:LinkButton>&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Sign out" />
    </td></tr>
<tr><td style="width: 947px">&nbsp;</td></tr></table>
    <asp:Panel ID="newsandeventspnl" runat="server" GroupingText="Add News & Events" >
    <table>
    <tr><td style="width: 68px"></td><td style="width: 101px">&nbsp;</td><td style="width: 277px">
        <asp:Label ID="lblnewsmssg" runat="server"></asp:Label>
        </td><td></td></tr>
    <tr><td style="width: 68px"></td><td style="width:101px">
        <asp:Label ID="Label2" runat="server" Text="Enter File Name"></asp:Label>
        </td><td style="width: 277px">
            <asp:TextBox ID="txtNews" runat="server" Height="116px" TextMode="MultiLine" 
                Width="255px"></asp:TextBox>
        </td><td>
            <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Width="221px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>NewsEvents</asp:ListItem>
                <asp:ListItem>Placement News</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
    <tr><td style="width: 68px"></td><td style="width: 101px">
        <asp:Label ID="Label3" runat="server" Text="UploadFile"></asp:Label>
        </td><td style="width: 277px">
            <asp:FileUpload ID="flpNews" runat="server" />
        </td><td></td></tr>
    <tr><td class="auto-style1"></td><td class="auto-style2"></td><td class="auto-style3">
        </td><td class="auto-style4"></td></tr>
    <tr><td style="width: 68px"></td><td style="width: 101px"></td><td style="width: 277px">
        <asp:Button ID="Button4" runat="server" onclick="Button1_Click" Text="Submit" />
        </td><td></td></tr>
    
    </table>
    
    </asp:Panel>
    <asp:Panel ID="vacanciespnl" runat="server" GroupingText="Add Vacancies" Visible="false">
    <table>
    <tr><td></td><td>&nbsp;</td><td>
        <asp:Label ID="lblvacancy" runat="server"></asp:Label>
        </td><td></td></tr>
    <tr><td></td><td style="width:100px">
        <asp:Label ID="Label5" runat="server" Text="Enter File Name"></asp:Label>
        </td><td>
            <asp:TextBox ID="txtVacancy" runat="server" Height="116px" TextMode="MultiLine" 
                Width="255px"></asp:TextBox>
        </td><td></td></tr>
    <tr><td></td><td>
        <asp:Label ID="Label6" runat="server" Text="UploadFile"></asp:Label>
        </td><td>
            <asp:FileUpload ID="flpVacancy" runat="server" />
        </td><td></td></tr>
    <tr><td></td><td></td><td>
        &nbsp;&nbsp;
        </td><td></td></tr>
    <tr><td></td><td></td><td>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVaupdate" runat="server" Text="Update" />
        </td><td></td></tr>
    
    </table>
    
    </asp:Panel>
    <asp:Panel ID="infopnl" runat="server" GroupingText="Add Other Information" Visible="false">
    <table>
    <tr><td></td><td>&nbsp;</td><td>
        <asp:Label ID="lblinfo" runat="server"></asp:Label>
        </td><td></td></tr>
    <tr><td style="height: 36px"></td><td style="height: 36px">
        <asp:Label ID="Label8" runat="server" Text="Enter Important Information"></asp:Label>
        </td><td style="height: 36px">
            <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
        </td><td style="height: 36px"></td></tr>
    <tr><td></td><td>
        &nbsp;</td><td>
            &nbsp;</td><td></td></tr>
    <tr><td></td><td>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
            Visible="false" />
        </td><td>
            <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                Text="Update" />
        </td><td></td></tr>
    <tr><td></td><td></td><td></td><td></td></tr>
    </table>
    
    </asp:Panel>
    <asp:Panel ID="Panel1" GroupingText="hotjobs" runat="server" Visible="false">

         <table>
    <tr><td colspan="4">&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="2">
                     <asp:Label ID="Label19" runat="server" ForeColor="#CC0000"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="Label13" runat="server" Text="Job Title"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtejobtit" runat="server" Height="16px" Width="189px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtejobtit" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="aa"></asp:RequiredFieldValidator>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="Label15" runat="server" Text="Company name"></asp:Label>
                 </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtecompnam" runat="server" Height="16px" Width="189px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtecompnam" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="aa"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="Label16" runat="server" Text="Address"></asp:Label>
                 </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtejobtyp" runat="server" Height="16px" Width="189px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtejobtyp" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="aa"></asp:RequiredFieldValidator>
                 </td>
             </tr>
    <tr><td style="width: 68px"></td><td style="width:101px">
        <asp:Label ID="Label10" runat="server" Text="Job Description"></asp:Label>
        </td><td style="width: 277px">
            <asp:TextBox ID="txtejobdesc" runat="server" Height="116px" TextMode="MultiLine" 
                Width="255px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtejobdesc" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="aa"></asp:RequiredFieldValidator>
        </td><td>
            <br />
            <br />
        </td></tr>
    <tr><td class="auto-style1"></td><td class="auto-style2">
        <asp:Label ID="Label17" runat="server" Text="Date Posted"></asp:Label>
        </td><td class="auto-style3">
            <asp:TextBox ID="txtedatpost" runat="server" Height="16px" Width="189px"></asp:TextBox>
            <asp:CalendarExtender ID="txtedatpost_CalendarExtender" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtedatpost">
            </asp:CalendarExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtedatpost" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="aa"></asp:RequiredFieldValidator>
        </td><td class="auto-style4"></td></tr>
    <tr><td style="width: 68px"></td><td style="width: 101px"></td><td style="width: 277px">
        &nbsp;</td><td>&nbsp;</td></tr>
    <tr><td style="width: 68px"></td><td style="width: 101px"></td><td style="width: 277px">
        <asp:Button ID="Button6" runat="server" Height="28px" OnClick="Button6_Click" Text="Save" Width="70px" ValidationGroup="aa" />
        </td><td></td></tr>
    <tr><td colspan="4">
       
             


       



        </td></tr>
    </table>
    

    </asp:Panel>


    <br />
    
    


</div>
<div id="maindiv" style="border-style: solid; border-color: inherit; border-width: 1px; height:650px; overflow:auto;" >
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <asp:GridView ID="Gridhotjobs" runat="server" AutoGenerateColumns="False" OnRowEditing="Gridhotjobs_RowEditing" OnRowCancelingEdit="Gridhotjobs_RowCancelingEdit" OnRowUpdating="Gridhotjobs_RowUpdating" OnRowDeleting="Gridhotjobs_RowDeleting"  >
         <Columns>
             <asp:TemplateField HeaderText="SNo">
                 <EditItemTemplate>
                     <asp:Label ID="Lblsno" runat="server" Text='<%# Bind("SNo") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Lblsno1" runat="server" Text='<%# Bind("SNo") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Job_Title">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtjobtit" runat="server" Text='<%# Bind("Job_Title") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lbljobtit" runat="server" Text='<%# Bind("Job_Title") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Company_Name">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtcompnam" runat="server" Text='<%# Bind("Company_Name") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lblcompnam" runat="server" Text='<%# Bind("Company_Name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Job_description">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtjobdesc" runat="server" Text='<%# Bind("Job_description") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lbljobdesc" runat="server" Text='<%# Bind("Job_description") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Address">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtjobty" runat="server" Text='<%# Bind("Job_Type") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lbljobty" runat="server" Text='<%# Bind("Job_Type") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Date_posted">
                 <EditItemTemplate>
                   <%--  <asp:TextBox ID="txtdatpos" runat="server" Text='<%# Bind("Date_posted") %>'></asp:TextBox><asp:Label ID="lbltext" runat="server" Text="(dd/MM/yyyy)" ForeColor="#cc0000"></asp:Label>
                     <asp:CalendarExtender ID="txtdatpos_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdatpos">--%>
                     <%--</asp:CalendarExtender>--%>
                   <%--  <asp:TextBox ID="txtdatpos"  Text='<%# Bind("Date_posted") %>' runat="server"></asp:TextBox>
                     <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" Format="dd/MM/yyyy" TargetControlID="txtdatpos">
                     </asp:CalendarExtender>--%>
                     <asp:Label ID="lbldatepost" runat="server" Text='<%# Bind("Date_posted") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lbldatpos" runat="server" Text='<%# Bind("Date_posted") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:CommandField ShowEditButton="True" />
             <asp:CommandField ShowDeleteButton="True" />
         </Columns>


        </asp:GridView>
    <asp:GridView ID="GridInfo" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" Width="1280px"  OnRowEditing="GridInfo_RowEditing" OnRowUpdating="GridInfo_RowUpdating" OnRowCancelingEdit="GridInfo_RowCancelingEdit">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="S.No">
                <EditItemTemplate>
                    <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Srno") %>'></asp:TextBox>--%>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Srno") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Srno") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Width="80px" />
                <ItemStyle Width="80px" />
            </asp:TemplateField>
           <%-- <asp:TemplateField HeaderText="Select">
                <HeaderTemplate>
                    Select All<br />
                    <asp:CheckBox ID="chkAll" runat="server" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkSelect" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="File Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" Width="750px" runat="server" Text='<%# Bind("FileName") %>'></asp:TextBox>

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label  ID="lblFileName" runat="server" Text='<%# Bind("FileName") %>'></asp:Label>
                                    </ItemTemplate>
                <HeaderStyle Width="800px" />
                <ItemStyle Width="800px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="Lblcateg" runat="server" Text='<%#Bind("Category") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="Lblcateg1" runat="server" Text='<%#Bind("Category") %>'></asp:Label>
                </EditItemTemplate>
                <HeaderStyle Width="200px" />
                <ItemStyle Width="200px" />
            </asp:TemplateField> 
           <%-- <asp:BoundField DataField="Category" HeaderText="Category" />--%>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkdel" runat="server" onclick="lnkdel_Click">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <br />
    <br />

</div>
    <%--  <asp:TextBox ID="txtdatpos" runat="server" Text='<%# Bind("Date_posted") %>'></asp:TextBox><asp:Label ID="lbltext" runat="server" Text="(dd/MM/yyyy)" ForeColor="#cc0000"></asp:Label>
                     <asp:CalendarExtender ID="txtdatpos_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdatpos">--%>

</asp:Content>

