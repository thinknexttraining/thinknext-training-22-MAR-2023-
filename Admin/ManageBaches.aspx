<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageBaches.aspx.cs" Inherits="Admin_ManageBaches" Title="Manage Baches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100%; height: 1055px; margin-bottom:50px" id="DVMain">
 
  <table id="tabpageicon" style="width: 92%; height: 45px;">
   <tr>
       
   <td>
   <asp:Label id="lblMessage" runat="server" forecolor="Green" text="Manage Batches" 
           style="font-weight: 700"></asp:Label>
   </td>
   </tr>
   <tr>
   <td>
   <asp:Label ID="lblmessages" runat="server" ForeColor="Red" Visible="false"></asp:Label>
   </td>
   </tr>
</table>
<asp:Panel ID="Panel1" runat="server" GroupingText="Manage Batches" HorizontalAlign="Center" style="font-size: small;margin-bottom: 0px;">
<br />
           Select Session<asp:DropDownList ID="ddlSession" runat="server"  
               Width="106px" 
        onselectedindexchanged="ddlSession_SelectedIndexChanged" 
        AutoPostBack="True">
        <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
          
         <%--  &nbsp;&nbsp;&nbsp;&nbsp; Select Course<asp:DropDownList ID="ddlCourse" 
               runat="server" Height="17px"  Width="106px"></asp:DropDownList>--%>
           
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; select Batch<asp:DropDownList ID="ddlBatches" runat="server"  Width="106px">
           <asp:ListItem>Select</asp:ListItem>
           </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnsearch" runat="server" Text="search" 
        CssClass="Allbuttons"  Width="106px" onclick="btnsearch_Click"/>
          &nbsp;<br />
          <br />
          <br />
          <br />
          <asp:Panel ID="pln" runat="server" GroupingText="Show Data" style="overflow:auto">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  CellPadding="4" ForeColor="#333333" GridLines="None" 
                  onrowcancelingedit="GridView1_RowCancelingEdit" 
                  onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                  onrowupdating="GridView1_RowUpdating">
                  <RowStyle BackColor="#E3EAEB" />
                  <Columns>
                      <asp:TemplateField HeaderText="BatchID">
                        <EditItemTemplate>
                              <asp:Label ID="lblSess" runat="server" Text='<%# Bind("BatchID") %>'></asp:Label>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblBatchId" runat="server" Text='<%# Eval("BatchID") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                      <asp:TemplateField HeaderText="Session">
                          <EditItemTemplate>
                         
                              <asp:TextBox ID="txtSession" runat="server" Text='<%# Bind("Session") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblSession" runat="server" Text='<%# Eval("Session") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                      <asp:TemplateField HeaderText="BatchName">
                          <EditItemTemplate>
                              <asp:TextBox ID="txtBatchname" runat="server" Text='<%# Bind("BatchName") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblBatchname" runat="server" Text='<%# Eval("BatchName") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                      <asp:TemplateField HeaderText="BatchTimings">
                          <EditItemTemplate>
                              <asp:TextBox ID="txtBatchtiming" runat="server" Text='<%# Bind("BatchTimings") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblBatchTiming" runat="server" Text='<%# Eval("BatchTimings") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                      <asp:TemplateField HeaderText="StaffIDNo">
                          <EditItemTemplate>
                              <asp:TextBox ID="txtStaffid" runat="server" Text='<%# Bind("StaffIDNo") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblStaffidno" runat="server" Text='<%# Eval("StaffIDNo") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                      <asp:TemplateField HeaderText="Active">
                          <EditItemTemplate>
                           <asp:DropDownList ID="ddlIsActive" runat="server" Text='<%# Bind("Active") %>'>
                           <asp:ListItem>True</asp:ListItem>
                           <asp:ListItem>False</asp:ListItem>
                           </asp:DropDownList>
                              <%--<asp:TextBox ID="txtIsActive" runat="server" Text='<%# Bind("Active") %>'></asp:TextBox>--%>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="lblIsActive" runat="server" Text='<%# Eval("Active") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                      <asp:TemplateField HeaderText="Action">
                          <EditItemTemplate>
                              <asp:LinkButton ID="lbUpdate" runat="server" Text="Update" CommandName="Update"></asp:LinkButton>
                              <asp:LinkButton ID="lbCancel" runat="server" Text="Cancel" CommandName="Cancel"></asp:LinkButton>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>
                              <asp:LinkButton ID="lbDelete" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                      
                  </Columns>
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <EditRowStyle BackColor="#7C6F57" />
                  <AlternatingRowStyle BackColor="White" />
              </asp:GridView>
           </asp:Panel>
           </asp:Panel>

 
           </div>
     
</asp:Content>

