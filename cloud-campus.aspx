<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cloud-campus.aspx.vb" Inherits="cloud_campus1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cloud Campus</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous" />
    <style>
      	body {
			margin: 0;
			padding: 0;
			height: 100%;
			background: #60a3bc !important;
		}
		  .h-100{
			  height:100vh!important;
		  }
		.user_card {
			height: 400px;
			width: 350px;
			margin-top: auto;
			margin-bottom: auto;
			background: #fff;
			position: relative;
			display: flex;
			justify-content: center;
			flex-direction: column;
			padding: 10px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			border-radius: 5px;

		}
		.brand_logo_container {
			position: absolute;
			height: 170px;
			width: 170px;
			top: -75px;
			border-radius: 50%;
			background: #60a3bc;
			padding: 10px;
			text-align: center;
		}
		.brand_logo {
			height: 150px;
			width: 150px;
			border-radius: 50%;
			border: 1px solid rgba(0, 0, 0, 0.19);
		}
		.form_container {
			margin-top: 50px;
		}
		.login_btn {
			width: 100%;
			background: #c0392b !important;
			color: white !important;
		}
		.login_btn:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.login_container {
			padding: 0 2rem;
		}
		.input-group-text {
			background: #c0392b !important;
			color: white !important;
			border: 0 !important;
			border-radius: 0.25rem 0 0 0.25rem !important;
		}
		.input_user,
		.input_pass:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.custom-checkbox .custom-control-input:checked~.custom-control-label::before {
			background-color: #c0392b !important;
		}
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>

                    <div class="container ">
                        <div class="d-flex justify-content-center h-100">
                            <div class="user_card">
                                <div class="d-flex justify-content-center">
                                    <div class="brand_logo_container">
                                        <img src="images/thinknext-square-logo.jpg" class="brand_logo" alt="Logo">
                                    </div>

                                </div>
                                <div class="d-flex justify-content-center form_container">
                                    <div class="form-1">
                                        <div>
                                            <h4 class="mb-3 text-center">ThinkNEXT Cloud Campus</h4>

                                            <asp:Label ID="lblmessgaelogin" runat="server" CssClass="text-danger"></asp:Label>

                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            </div>
                                            <asp:TextBox ID="txtusername" runat="server" class="form-control input_user" MaxLength="10" Placeholder="User Name"></asp:TextBox>
                                        </div>
                                        <div class="input-group mb-2">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                                            </div>
                                            <asp:TextBox ID="txtpassword" runat="server" class="form-control input_pass" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>

                                        <div class="d-flex justify-content-center mt-3 login_container">

                                            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn login_btn" OnClientClick="btnlogin_Click" />
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnlogin" />

                </Triggers>
            </asp:UpdatePanel>


        </div>
    </form>
</body>
</html>
