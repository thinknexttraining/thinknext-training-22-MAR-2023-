<%@ Page Title="Create Group" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateGroups.aspx.cs" Inherits="Admin_CreateGroups"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
<style type="text/css">
        #pbg
        {
            height: 32px;
        }
           
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>
    <div>
        <asp:TextBox ID="txtfranchise" runat="server" BackColor="#FFFFCC" 
            Font-Bold="True" ForeColor="#0066FF" Height="20px" 
            ontextchanged="txtfranchise_TextChanged" ReadOnly="True" 
            style="font-size: small" Visible="False" Width="180px">TNK101</asp:TextBox>
        </div>
     <h3 style="height: 20px"> Create Groups  
       </h3>
      
       <p style="margin:auto; border: 2px solid #666666; padding: 4px 0px 0px 0px; margin: 0px; width: 100%; height: 42px;" > 
       <strong>Select Session&nbsp;</strong>
       <asp:DropDownList ID="ddlsessionmonth" runat="server" >
       <asp:ListItem>Select</asp:ListItem>
       <asp:ListItem>Jan-June</asp:ListItem>
       <asp:ListItem>July-Dec</asp:ListItem>
       </asp:DropDownList>
       &nbsp;&nbsp;&nbsp;
       <strong>Select Program&nbsp;&nbsp; </strong>
           <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="200px">
           </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chkAll" runat="server" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" CssClass="Allbuttons" Height="24px" 
               onclick="Button1_Click" Text="Show" Width="90px" />
           <br />
           <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
           <div id="pbg" style="padding: 5px; margin: 1px; height: auto; width: 66%"> 
               <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                   <ProgressTemplate>
                       Processing Please wait............
                       <img src="../images/progressbar.gif" /></ProgressTemplate>
               </asp:UpdateProgress>
               <br />
           </div>
           
             <div id="divupdategroup" runat="server"  
               style="border: 2px solid #000000; display:none; padding: 5px; margin: auto; height: auto; width: 99%"> 
              
              <strong>Select Group Name&nbsp;&nbsp; </strong>
                 <asp:TextBox ID="txtgroupname" runat="server" Height="16px" Width="204px"></asp:TextBox>
                 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btncreategroup" runat="server" Text="..." CssClass="Allbuttons"/>
                 <asp:Button ID="btnupdate" runat="server" CssClass="Allbuttons" Height="24px" 
                     Text="Update Group" Width="120px" 
                     onclick="btnupdate_Click" />
           </div>
           <div ID="groupdata" style="text-align:center; width: 100%; height: auto; padding-top: 10px; padding-bottom: 5px;  ">
        <!-------------------------------------------------------Grid----------------------------------> 
        <asp:Panel ID="pnl" runat="server" ScrollBars="Auto" Height="500px" >   
               <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                   GridLines="None" Height="16px" style="margin:auto; font-size: small" Width="800px" 
                   AutoGenerateColumns="False">
                    
                   
                <RowStyle  BackColor="#FFF7E7" ForeColor="#8C4510" />
                   <Columns>
                       <asp:TemplateField HeaderText="Select">
                           <ItemTemplate>
                               <asp:CheckBox ID="chk" runat="server"/>
                           </ItemTemplate>
                           <HeaderTemplate>
                               <asp:CheckBox ID="Chkall" runat="server" AutoPostBack="True" 
                                   oncheckedchanged="Chkall_CheckedChanged" />
                           </HeaderTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="SrNo">
                           <ItemTemplate>
                               <asp:Label ID="lblserialno" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:BoundField DataField="IDNo" HeaderText="IDNo" />
                       <asp:BoundField DataField="Course" HeaderText="Course" />
                       <asp:BoundField DataField="TrainingBatch" HeaderText="Batch" />
                       <asp:BoundField DataField="BatchTiming" HeaderText="Timing" />
                       <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                       <asp:BoundField DataField="BatchGroup" HeaderText="Group" />
                   </Columns>
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <EditRowStyle BackColor="#999999" />
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               </asp:GridView>
               </asp:Panel> 
           </div>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
           <p>
           </p>
           
        </p>
      
<%--   </ContentTemplate>
    </asp:UpdatePanel>
  --%>
   
</asp:Content>

