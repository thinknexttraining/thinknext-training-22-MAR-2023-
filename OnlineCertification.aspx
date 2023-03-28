<%@ Page Title="Certificate Verification" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineCertification.aspx.cs" Inherits="OnlineCertification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link rel="stylesheet" type="text/css" href="style.css" />

    
   <style>     .head1 {
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
    <h3 style="color:#000;" > Online Certification  </h3>
       <div class="ryt">

You are here &nbsp; Home / Online Certification

       </div>


   </div>

    <br /> 
    <br /> 


    <div style="margin-bottom: 150px;">
    <span style="text-decoration: underline; font-weight: bold; font-size: x-large">&nbsp;Certificate 
    Verification
    </span><b style="font-size: x-large">
  <br style="text-decoration: underline" />
    </b><b>
  <br />
    </b>
    <table style="width: 100%">
      
        <tr>
            <td style="width: 212px">
                <b style="font-size: small">Enter Certifiacte Ref No. :</b></td>
            <td style="width: 269px">
                <asp:TextBox ID="txtrefid" runat="server" Height="27px" Width="225px" 
                    BorderColor="Black" style="font-weight: bold" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="btnfind" runat="server" Text="Find" Width="90px" 
                    onclick="btnfind_Click"/>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblmsg" runat="server" ForeColor="Red"  Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
   
    <br />
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="SRNo" Visible="False">
                <ItemTemplate>
                    <asp:Label ID="lblSR" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RefPreNo">
                <ItemTemplate>
                    <asp:Label ID="lblRefpreno" runat="server" Text='<%# Eval("RefPreNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RefNo">
                <ItemTemplate>
                    <asp:Label ID="lblRefno" runat="server" Text='<%# Eval("RefNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Student Name">
                <ItemTemplate>
                    <asp:Label ID="lblStudentname" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Father Name">
                <ItemTemplate>
                    <asp:Label ID="lblfathername" runat="server" Text='<%# Eval("FatherName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Training From">
                <ItemTemplate>
                    <asp:Label ID="lblTF" runat="server" Text='<%# Eval("TFrom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Training To">
                <ItemTemplate>
                    <asp:Label ID="lblTTO" runat="server" Text='<%# Eval("TTo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProjectName">
                <ItemTemplate>
                    <asp:Label ID="lblPName" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course">
                <ItemTemplate>
                    <asp:Label ID="lblcourse" runat="server" Text='<%# Eval("Course") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Grade">
                <ItemTemplate>
                    <asp:Label ID="lblGrade" runat="server" Text='<%# Eval("Grade") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Download">
                <ItemTemplate>
                    <asp:LinkButton ID="lbDownload" runat="server" CommandName="Download">Download</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>






        </asp:GridView>

    </div>

</div>

</asp:Content>

