<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ImportExcelData.aspx.cs" Inherits="Admin_ImportExcelData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="margin-top:2%;"">
         <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
         <br />
          <span style="font-weight:bold;"">
         <asp:Label ID="Label1" runat="server" Text="Import Excel File " Font-Bold="True" Font-Size="Large"></asp:Label>
                            </span>
         <asp:Panel ID="Panel1" runat="server" GroupingText="Import File">
                       
        <table width="90%" align="lectnter" style="background-image:url(Admin/header.jpg)" >
            <tr>
                
                <td style="text-align: left;" > <asp:FileUpload Width="300" ID="FileUpload1" CssClass="form-control" runat="server" /> </td>
               <td style="text-align: left;"> <asp:Button ID="btn_import" runat="server" CssClass="btn btn-default" Text="View Excel Data" OnClick="btn_import_Click" /> </td> 
               </tr>
                
                <tr>
                 <td style="text-align: left;"> <asp:Button ID="btninsert" runat="server" Text="Insert Data" OnClick="btninsert_Click" Enabled="false" CssClass="btn btn-default"  /></td>
        <%--    <td colspan="2" style="background-image:url(Images/header.jpg); height:30px"></td>--%>
                 <td style="text-align: left;"><asp:Button runat="server" ID="btnExport" Text="Clear" OnClick="btnExport_OnClick" CssClass="btn btn-default" /></td>
            </tr>
        </table>
             </asp:Panel>
          <div id="dvforgeneratingexcel">
                <div style="overflow:scroll ;height: 400px;">
                    <asp:GridView ID="wdgList" runat="server" Height="410px" AutoGenerateColumns="False"
                        Style="width: 99.8%;">
                        <Columns>

                            
                       <asp:TemplateField>
                           <ItemTemplate>
                               <table width="100%">
                                   <tr>
                                       <td class="tdstyle"><strong>Enquiry No : </strong></td> <td class="tdstyle"><asp:label ID="lblEnquiryNo" runat="server"  Text='<%# Eval("EnquiryNo") %>'></asp:label></td>   
                                       <td class="tdstyle"><strong>Mode Of Enquiry :</strong></td> <td class="tdstyle"><asp:label ID="lblModEnq" runat="server" Text='<%# Eval("ModeOfEnquiry") %>'></asp:label></td>
                                       <td class="tdstyle"><strong>College Name :</strong></td> <td class="tdstyle"> <asp:label ID="lblClgName" runat="server" Text='<%# Eval("CollegeName") %>'></asp:label></td>
                                    </tr>
                                     <tr>
                                       <td class="tdstyle"><strong>Qualification : </strong></td> <td class="tdstyle"> <asp:label ID="lblQualification" runat="server" Text='<%# Eval("Qualification") %>'></asp:label></td> </td>   
                                       <td class="tdstyle"><strong>Admission Date :</strong></td> <td class="tdstyle"> <asp:label ID="lblAdmisnDate" runat="server" Text='<%# Eval("AdmissionDate") %>'></asp:label> </td>
                                       <td class="tdstyle"><strong>Student Name :</strong></td> <td class="tdstyle"> <asp:label ID="lblStudentName" runat="server" Text='<%# Eval("StudentName") %>'></asp:label> </td>
                                    </tr>
                                     <tr>
                                       <td class="tdstyle"><strong>Father Name : </strong></td> <td class="tdstyle">  <asp:label ID="lblFatherName" runat="server" Text='<%# Eval("FatherName") %>'></asp:label></td>   
                                       <td class="tdstyle"><strong>Mother Name :</strong></td> <td class="tdstyle"> <asp:label ID="lblMotherName" runat="server" Text='<%# Eval("MotherName") %>'></asp:label> </td>
                                       <td class="tdstyle"><strong>Contact No :</strong></td> <td class="tdstyle"> <asp:label ID="lblContactNo" runat="server" Text='<%# Eval("ContactNo") %>'> </asp:label> </td>
                                    </tr>
                                     <tr>
                                       <td class="tdstyle"><strong>Student Mobile No : </strong></td> <td class="tdstyle"> <asp:label ID="lblStudentMobileNo" runat="server" Text='<%# Eval("StudentMobileNo") %>'></asp:label> </td>   
                                       <td class="tdstyle"><strong>Father Mobile No :</strong></td> <td class="tdstyle"> <asp:label ID="lblFatherMobileNo" runat="server" Text=' <%# Eval("FatherMobileNo") %>'></asp:label></td>
                                       <td class="tdstyle"><strong>Gender :</strong></td> <td class="tdstyle"> <asp:label ID="lblGender" runat="server" Text='<%# Eval("Sex") %>' ></asp:label></td>
                                    </tr>
                                     <tr>
                                       <td class="tdstyle"><strong>EmailID : </strong></td> <td class="tdstyle"> <asp:label ID="lblEmailID" runat="server" Text='<%# Eval("EmailID") %>'></asp:label>  </td>   
                                       <td class="tdstyle"><strong>StatusCode :</strong></td> <td class="tdstyle"> <asp:label ID="lblStatusCode" runat="server" Text='<%# Eval("StatusCode") %>'></asp:label>  </td>
                                       <td class="tdstyle"><strong>Session :</strong></td> <td class="tdstyle"> <asp:label ID="lblSession" runat="server" Text='<%# Eval("Session") %>'></asp:label>  </td>
                                    </tr>
                                     <tr>
                                       <td class="tdstyle"><strong>FranchiseCode : </strong></td> <td class="tdstyle"> <asp:label ID="lblFranchiseCode" runat="server" Text='<%# Eval("FranchiseCode") %>'></asp:label> </td>   
                                       <td class="tdstyle"><strong>BrandName :</strong></td> <td class="tdstyle">  <asp:label ID="lblBrandName" runat="server" Text='<%# Eval("BrandName") %>'></asp:label> </td>
                                       <td class="tdstyle"><strong>WhatsAppNo :</strong></td> <td class="tdstyle"> <asp:label ID="lblWhatsApp" runat="server" Text='<%# Eval("WhatsAppNo") %> '> </asp:label> </td>
                                        
                                    </tr>
                                   <tr>
                                       <td class="tdstyle"><strong>Enquiry Status :</strong></td> <td class="tdstyle"><asp:label ID="lblEnquiryStatus" runat="server" Text='<%# Eval("EnquiryStatus") %>'></asp:label>    </td>
                                   </tr>

                                   </table>
                                   </ItemTemplate>
                           </asp:TemplateField>
                         <%-- <asp:BoundField DataField="EnquiryNo" HeaderText="Enquiry No"></asp:BoundField>
                            <asp:BoundField DataField="ModeOfEnquiry" HeaderText="Mode Of Enquiry"></asp:BoundField>
                            <asp:BoundField DataField="CollegeName" HeaderText="College Name"></asp:BoundField>
                              <asp:BoundField DataField="Qualification" HeaderText="Qualification"></asp:BoundField>
                            <asp:BoundField DataField="AdmissionDate" HeaderText="Admission Date"></asp:BoundField>
                            <asp:BoundField DataField="StudentName" HeaderText="Student Name"></asp:BoundField>
                              <asp:BoundField DataField="FatherName" HeaderText="Father Name"></asp:BoundField>
                            <asp:BoundField DataField="MotherName" HeaderText="Mother Name"></asp:BoundField>
                            <asp:BoundField DataField="ContactNo" HeaderText="Contact No"></asp:BoundField>
                              <asp:BoundField DataField="StudentMobileNo" HeaderText="Student Mobile No"></asp:BoundField>
                            <asp:BoundField DataField="FatherMobileNo" HeaderText="Father Mobile No"></asp:BoundField>
                            <asp:BoundField DataField="Sex" HeaderText="Sex"></asp:BoundField>
                              <asp:BoundField DataField="EmailID" HeaderText="Email ID"></asp:BoundField>
                            <asp:BoundField DataField="StatusCode" HeaderText="Status Code"></asp:BoundField>
                            <asp:BoundField DataField="Session" HeaderText="Session"></asp:BoundField>
                              <asp:BoundField DataField="FranchiseCode" HeaderText="Franchise Code"></asp:BoundField>
                            <asp:BoundField DataField="BrandName" HeaderText="Brand Name"></asp:BoundField>
                            <asp:BoundField DataField="WhatsAppNo" HeaderText="WhatsApp No"></asp:BoundField>
                            <asp:BoundField DataField="EnquiryStatus" HeaderText="Enquiry Status"></asp:BoundField> 
                           --%>
                        </Columns>

                    </asp:GridView>
                </div>
                <div class="pull-right">
                    
                   </div>
            </div>
           
    </div>
</asp:Content>

