<%@ Page Title="Contact Us - ThinkNEXT Technologies" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style>
        h1 {
            color: #ff1f1f;
            font-size: 30PX;
            padding-left: 10px;
            padding-right: 10px;
            background: #ffffff00;
        }

        i.contact-details-item.fa {
            color: blue;
        }

        p {
            font-size: 17px;
        }

        .feedback input {
            width: 100%;
            padding: 8px;
            margin: 8px;
        }

        .feedback textarea {
            width: 100%;
            padding: 8px;
            margin: 8px;
            height: 150px;
        }

        .adress {
            padding: 15px 20px;
            width: 540px;
            background: #fff;
            position: absolute;
            top: 337px;
            left: 129px;
            border: 1px solid;
        }

        .container {
            padding: 30px 0px;
        }

        .otheroffices {
            border: 1px solid;
            background: #fff;
            padding: 21px;
        }

        .Buttonsubmit {
            width: 117px;
            padding: 6px;
            background: #000;
            color: #fff;
            font-size: 17px;
            border: 0px;
            margin-left: 24px;
            font-weight: bold;
        }

        .adressmap {
            width: 100%;
            height: 575px;
        }

        .contact-person-photo {
            float: left;
            max-width: 100px;
        }

            .contact-person-photo img {
                width: 100px;
                border: 1px solid;
                height: 100px;
            }

        .contact-person-data {
            float: left;
            padding-left: 15px;
        }

        @media (max-width: 992px) {
            .adress {
                top: 525px;
                left: 189px;
            }
        }


        @media (max-width: 768px) {
            .adress {
                position: relative;
                width: 100%;
                height: auto;
                left: 0;
                top: 0;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
       <iframe class="adressmap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3431.4209574015586!2d76.74511981460942!3d30.67842999529981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fec0fc0000001%3A0x2fe21eed866f0d52!2sThinkNEXT%20Technologies%20-%20Industrial%20Training%20Internship%20Chandigarh%20Mohali!5e0!3m2!1sen!2sin!4v1641390324437!5m2!1sen!2sin" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

    <div class="page-div">
    <div class="adress">
     <p><strong class="textred">ThinkNEXT Technologies Private Limited</strong><br />
<i class="contact-details-item fa"><strong>Corporate Office (India)</strong></i><br />
											<i class="contact-details-item fa fa-address-book" aria-hidden="true"></i>&nbsp; S.C.F. 113, Sector-65, Mohali (Chandigarh)<br />
																<i class="contact-details-item fa fa-phone" aria-hidden="true"></i>&nbsp; 78374-01000, 78374-02000, 78374-03000, 0172-4656197<br />
																<i class="contact-details-item fa fa-whatsapp" aria-hidden="true"></i>&nbsp;78374-04000<br />
																<i class="contact-details-item fa fa-envelope" aria-hidden="true"></i>&nbsp; info@thinknext.co.in</><br />
																
										</p>
         <h4><strong>Other Offices </strong></h4>
         <ul class="welcomeLinks">
<li>Shivalik Bhawan, Opp. Tara Hall School Shimla (H.P)-03</li>
<li> S.C.F. 62, 2nd Floor, Aggarsain Market Amrik Singh Road, Bathinda (India)</li>
<li> 116, A-3, Paschim Vihar, New Delhi - 110063</li>
<li> 6931 148A Street, Surrey BC Canada V3S 0Y9</li>
<li> 3848 Overland Ave, Unit # 216 Culver City, CA 90232 (USA)</li>
</ul>
			
    </div>
    
    <div class="container">
    <div class="col-lg-7 col-md-7 col-sm-7 feedback">
        <h1 style="padding-left: 15px;">Feedback Form</h1>
        <div style="width:100%;margin-left: 23px;">
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </div>
 <div class="col-lg-6 col-md-6 col-sm-6">
        <asp:TextBox ID="txtName" runat="server" placeholder="Name*"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtName" ValidationExpression="[a-zA-Z ]*$" ></asp:RegularExpressionValidator><br />
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email*"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" ErrorMessage="Enter Valid Email ID" runat="server"  ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
        <asp:TextBox ID="txtMobile" runat="server" placeholder="Phone*"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Valid Mobile Number"  ControlToValidate="txtMobile" ValidationExpression="^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator><br />

    </div>
         <div class="col-lg-6 col-md-6 col-sm-6">
              <asp:TextBox ID="txtComments" TextMode="MultiLine" runat="server" placeholder="Message"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Only Characters are allowed"  ControlToValidate="txtComments" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

    </div>
        <div class="clear-both"></div>

        <asp:Button CssClass="Buttonsubmit" ID="Button1" runat="server" Text="Submit" />
    </div>





        <div class="col-lg-5 col-md-5 col-sm-5 otheroffices">
            <h4>Your Contact</h4>
<div class="contact-person-photo"><img class="" src="images/supportimage2.jpg"  alt="Contact Person Photo" /></div>
<div class="contact-person-data">
    <p><span>Support Executive</span><br />
    <strong>Ms. Amanpreet Kaur</strong><br />
    <span><i class="fa fa-phone"></i>&nbsp; 78374-01000 </span><br />
        <span><i class="fa fa-envelope"></i>&nbsp; info@thinknext.co.in </span><br />
        </p>

</div>
            <div class="clear-both"></div>
           <hr />
            <div class="contact-person-photo"><img class="" src="images/supportimage.jpg"  alt="Contact Person Photo" /></div>
<div class="contact-person-data">
    <p><span>Support Executive</span><br />
    <strong>Ms. Ramandeep Kaur</strong><br />
    <span><i class="fa fa-phone"></i>&nbsp; 78374-02000 </span><br />
        <span><i class="fa fa-envelope"></i>&nbsp; information@thinknext.co.in </span><br />
        </p>

</div>
             <div class="clear-both"></div>
    </div>
        <div class="clear-both"></div>
        </div>
    
    </div>
</asp:Content>

