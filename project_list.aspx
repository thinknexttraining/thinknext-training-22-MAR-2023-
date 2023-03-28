<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project_list.aspx.cs" Inherits="project_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="border: 0px solid #ffd800;">
        <br />
         <br />
        <div style="border: 0px solid #ff0000; background-color: #1d4fd9; width: 100%; padding:12px;">
            <span style="font-size: 30px; color: #fff;">Project List</span>

        </div>
        <br />

        <div style="border: 0px solid #ff0000;">
            <div style="border: 0px solid #000000; height: 40px; width: 29%; float: left; padding-left: 80px;">
                <span style="font-family: 'Times New Roman'; font-size: 18px; color: #333; font-weight: bold;">Select Technology</span>
            </div>
            <div style="border: 0px solid #000000; height: 40px; width: 69%; float: right">
                <asp:DropDownList ID="ddl_technology" runat="server" Width="90%" Height="80%" Font-Bold="True" Style="border: 2px solid #333" AutoPostBack="True" OnSelectedIndexChanged="ddl_technology_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div style="clear: both"></div>
            <div>
                <div style="border: 0px solid #333">
                    <table style="border: 0px solid #333; margin-left: 40px;">
                        <tr>
                            <th style="width: 40%">Project Title</th>
                            <th style="width: 30%; padding-left:30px;">Technology Used</th>
                            <th style="width: 30%; text-align: center;">Request</th>
                        </tr>
                    </table>
                </div>

                <asp:GridView ID="grd_projects" runat="server" AutoGenerateColumns="false" ShowHeader="false">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="border: 0px solid #333; width:1235px; margin-left: 40px;">
                                    <tr>
                                        <td style="width: 40%; border-right:1px solid #333; ">
                                            <asp:Label ID="lbl_title" runat="server" Text='<% #Eval("title") %>'></asp:Label></td>
                                        <td style="width: 30%; border-right:1px solid #333; padding-left:50px;">
                                            <asp:Label ID="lbl_technology" runat="server" Text='<% #Eval("technology_used") %>'></asp:Label></td>
                                        <td style="width: 30%; text-align: center;">
                                            <asp:LinkButton ID="lb_request" runat="server" OnCommand="lb_request_Command" CommandArgument='<% #Eval("title") %>' Text="Request"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

