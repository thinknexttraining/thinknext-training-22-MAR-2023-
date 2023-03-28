<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true" CodeFile="VerifyCertificate.aspx.cs" Inherits="VerifyCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .cert-detail{width: 743px; margin: auto;padding: 16px;box-shadow: 1px 1px 1px 1px;margin-bottom: 30px;text-align: center;  }
        th{
           text-align:center;
        }
        @media screen and (max-width:768px) {
.cert-detail{
    width:100%;
    margin:auto;
    overflow:scroll;
}

        }
        div.card {
  width: 100%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
}

div.header {
  background-color: #4CAF50;
  color: white;
  padding: 10px;
  font-size: 40px;
}

div.container {
  padding: 10px;
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-image">  
    <img src="images/verify-certificate-min.jpg"  alt="Verify Certificate" title="Verify Certificate" />
     </div>
    <br />

    <div class="cert-detail" style="min-height:400px;">
        <div class="form-group">
            <div class="row" >
                <div class="col-md-4" >
                     <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"  ></asp:Label>
                </div>
                 <div class="col-md-4" >
                      <asp:TextBox ID="txtsearch" placeholder="Enter Your Certificate ID" runat="server"></asp:TextBox>
                </div>
                 <div class="col-md-4" >
                     <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="Search" Width="110px" />
                </div>
            </div>

        </div>
    <br />
        <div id="divOffline" runat="server" visible="false" style="padding-top: 2px">
            <div class="card">
                <div class="header">
                    <h3><strong>Certificate Detail</strong></h3>
                </div>
                <div class="card-body">
                        <div class="form-group" style="padding-top:4px;" >
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="inputEmail4">CertificateId</label>
                                    <asp:TextBox ID="txtCertificateId" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label for="inputPassword4">Student Name</label>
                                    <asp:TextBox ID="txtStudentName" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="padding-top:4px;" >
                            <div class="row">
                            <div class="col-md-6">
                                <label for="inputCity">Project Name</label>
                                <asp:TextBox ID="txtProjectName" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="inputState">Course</label>
                                <asp:TextBox ID="txtCourse" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            </div>
                        <div class="form-group" style="padding-top:4px;" >
                            <div class="row">
                            <div class="col-md-6">
                                <label for="inputCity">Training From</label>
                                <asp:TextBox ID="txtTrainingFrom" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="inputState">TrainingTo</label>
                                <asp:TextBox ID="txtTrainingTo" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            </div>
                </div>
            </div>
        </div>
        <div id="divOnlline" runat="server" visible="false">
             <div class="card">
                <div class="header">
                    <h3><strong>Certificate Detail</strong></h3>
                </div>
                <div class="card-body">
                    <div class="form-group" style="padding-top:4px;" >
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="inputEmail4">CertificateId</label>
                                    <asp:TextBox ID="txtOnlineCertificateId" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label for="inputPassword4">Student Name</label>
                                    <asp:TextBox ID="txtOnlineStudentName" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="padding-top:4px;" >
                            <div class="row">
                            <div class="col-md-6">
                                <label for="inputCity">Project Name</label>
                                <asp:TextBox ID="txtOnlineProjectName" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="inputState">Course</label>
                                <asp:TextBox ID="txtOnlineCourse" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            </div>
                     <div class="form-group" style="padding-top:4px;" >
                            <div class="row">
                            <div class="col-md-6">
                                 <label for="inputPassword4">Date Of Issue</label>
                                    <asp:TextBox ID="txtDateOfIssue" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                </div>
                                  <div class="col-md-6">
                                      </div>
                                </div>
                         </div>
                    </div>
                 </div>
        </div>
    </div>

    <br />
    <br />

</asp:Content>

