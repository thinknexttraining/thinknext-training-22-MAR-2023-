<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DownloadsyllabusIELTS.aspx.vb" Inherits="BroucherDownload" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Brochure Download - ThinkNEXT Technologies</title>
    <script type="text/javascript">
        function ShowProgress() {
            setTimeout(function () {
                var modal = $('<div />');
                modal.addClass("modal");
                $('body').append(modal);
                var loading = $(".loading");
                loading.show();
                var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                loading.css({ top: top, left: left });
            }, 1);
        }

        $('form').live("submit", function () {
            ShowProgress();
        });
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    
        <style>


span.buttonicon::before {
    font-family: FontAwesome;
    content: "\f019";
    /* font-size: 13px; */
    position: absolute;
    left: 17px;
    top: 0px;
    pointer-events: none;
    color: white;
}
.buttonicon{
position:relative;
}
.dnloadbtn{
padding: 6px 15px 6px 40px;
}
</style>
   
</head>

<body style="background:transparent;">
    <form id="from" runat="server">

        <div class="container1 text-center">
            <h4 class="text-dark">Download Brochure Now</h4>
            <br />
            <div class="row m-0">
                <div class="col-12 col-sm-4 mb-4">
                    <asp:TextBox ID="Emailid" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ErrorMessage="Email ID field cannot be blank." runat="server" ControlToValidate="Emailid" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Enter Valid Email ID." runat="server" ControlToValidate="Emailid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                <div class="col-12 col-sm-4 mb-4">
                    <asp:TextBox ID="Phoneno" runat="server" type="text" class="form-control" placeholder="Mobile No." MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Mobile Number field cannot be blank." ControlToValidate="Phoneno" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number." ControlToValidate="Phoneno" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>

                <div class="col-12 col-sm-4 mb-4">
                    <span class="buttonicon">
                    <asp:Button ID="btnadd" runat="server" class="btn btn-dark text-white dnloadbtn" Text="Download Brochure" OnClick="btnadd_Click1" />
                        </span>
                </div>
                <div class="col-12">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Label ID="lblresult" runat="server" Visible="False"></asp:Label>
                </div>
            </div>
        </div>


    </form>

</body>
</html>