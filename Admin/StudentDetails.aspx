<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="Admin_StudentDetails" Title="Student Details" EnableEventValidation ="false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 93%;
            text-align:center;
            margin: 3% 0% 5% 6%;
            border:solid 1px #aaa7a7;
        }
        .style4
        {
            width: 76px;
        }
        .style6
        {
            width: 327px;
        }
        .style7
        {
            width: 327px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
            width: 261px;
        }
        .style11
        {
            width: 279px;
        }
        .style12
        {
            height: 45px;
            width: 279px;
        }
        .style13
        {
            width: 261px;
        }
        
        Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;}
.Grid td {
      padding: 2px;
      border: solid 1px #c1c1c1; }
.Grid th  {
      padding : 4px 2px;
      color: #fff;
      background: #363670 url(Images/grid-header.png) repeat-x top;
      border-left: solid 1px #525252;
      font-size: 0.9em; }
.Grid .alt {
      background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }
.Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }
.Grid .pgr table { margin: 3px 0; }
.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  
.Grid .pgr a { color: Gray; text-decoration: none; }
.Grid .pgr a:hover { color: #000; text-decoration: none; }
- See more at: http://www.dotnetfox.com/articles/gridview-custom-css-style-example-in-Asp-Net-1088.aspx#sthash.n5iZOJEX.dpuf
        .style15
        {
            width: 329px;
        }
        .style16
        {
            width: 246px;
        }
    </style>
<script type="text/javascript">
    


        function openss() {
            document.getElementById('adminiframe').style.display = "block"
        }
    function closes() {
        document.getElementById('adminiframe').style.display = "none"
    }

 



    function open() {
        document.getElementById('followup').style.display = 'block'

    }
            function close(){

                document.getElementById('followup').style.display = 'none'
             
        }

  
</script>
    
    <script type="text/C#" >
      public void EnqIDData()
        {
        string a="select * from Admissions  where EnquiryID="<%#Eval("EnquiryID") %>;
        }

    </script>
    <style type="text/css">
        #adminiframe
        {
            position: fixed ;
            display: none;
            height: 459px;
            width: 800px;
            margin-top: 2%;
            z-index: 111;
            background-color: white;
            top: 15%;
        }
        #login12
        {
            width: 100%;
            height: 449px;
            border: none;
        }
        #login101 {
    height: 81%;
    width: 441px;
      border-radius:31px;
      border: solid 3px #0B9A74;
      margin-left:40%;
}



        .tdstyle
        {
            width:90px;
            text-align:left;
          
        }
        .style1
        {
            height: 23px;
        }
        .style3
    {
        width: 221px;
    }
    .style4
    {
        height: 23px;
        width: 221px;
    }
    .style5
    {
        width: 164px;
    }
    .style6
    {
        height: 23px;
        width: 164px;
    }
        .style7
        {
            width: 216px;
        }
        .style8
        {
            height: 23px;
            width: 216px;
        }
        .auto-style2
        {
            height: 23px;
            width: 21%;
        }

          .popupfreetraining
	    {
	        padding-bottom: 20px !important;
	    }

	    .tab1,.tab1 td
	    {
	        border: none;
	    }
	    .recentcomments a {
	        display: inline !important;
	        padding: 0 !important;
	        margin: 0 !important;
	    }

	    #Text1 {
	        width: 169px;
	    }

	    #Text2 {
	        width: 169px;
	    }
	    .popupfreetraining
	    {
             padding: 0px 0px 0px 50px;
	        margin-top: 9px;
	        margin-left: auto;
	        margin-right: auto;
	        width: auto;
	        
	        position: absolute;
	        background-color: white;
	        box-shadow: 0px 15px 25px #000000;
	        top: 70%;
	        left: 42%;
	        border-radius: 5px;
	       
	    }
	    
	    .popupsmsemail1 {
	        padding: 0px 0px 0px 50px;
	        margin-top: 125px;
	        margin-left: auto;
	        margin-right: auto;
	        width: 329px;
	        height: 400px;
	        position: absolute;
	        background-color: white;
	        box-shadow: 0px 15px 25px #000000;
	        top: 15%;
	        left: 31%;
	        border-radius: 5px;
	        -moz-border-radius: 5px;
	        -webkit-border-radius: 5px;
	    }

	    .button {
	        width: 40%;
	        background-color: #0b72a0;
	        border-radius: 2em;
	        margin-left: 59%;
	    }
         .popupemail2 {
     padding: 0px 0px 0px 50px;
        margin-top: -855px;
        margin-left: 15%;
        flex-align: center;
        width: 380px;
        height: 391px;
        position: absolute;
        background-color: white;
        box-shadow: 0px 15px 25px #000000;
        top: 15%;
        left: 30%;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
    }

	    @media screen and (max-width:800px) {
	        .button {
	            margin-right: 5%;
	            width: 50%;
	        }

	        .new {
	            width: 100%;
	        }

	        .logo-right-text {
	            width: 50% !important;
	        }

	        .logo-right-text-content {
	            float: right !important;
	            margin-bottom: 10% !important;
	            width: 100% !important;
	        }

	        .logo-left-text-content {
	            float: left !important;
	        }

	        .social {
	            float: left;
	            margin-bottom: 0px;
	            padding-left: 30px;
	        }
	        .popupemail2
	        {
	            margin: auto !important;
                top: 10% !important;
                position: fixed !important;
	        }
             .popupfreetraining
	        {
	            margin: auto !important;
                top: 10% !important;
                position: absolute !important;
	        }
	    }

	    @media screen and (max-width:1174px)
         {
	        .navbar-nav {
                float: left !important ;
                margin:20px;
                
	        }
	    }
          @media screen and (min-width:768px)
         {
	        .navbar-nav {
                float: left !important ;
                
	        }
	    }




	    @media screen and (max-width:400px) {
	        .new {
	            width: 100%;
	            padding-right: 10%;
	        }

	        .button {
	            width: 100%;
	        }

	        .logo-right-text-content {
	            float: left !important;
	        }

	        .logo-right-text {
	            width: 100% !important;
	            float: left !important;
	        }
	    }
	    @media screen and (max-width:600px)
	    {
	        .popu
	        {
	            height: 360px !important;
	            width: 300px !important;
	        }

	        .popupemail2
	        {
	            width: 360px !important;
	            height: 440px !important;
                left:5% !important;
	        }
            .popupfreetraining{
                left:5%;
	            width: 360px !important;
	            height: 440px !important;
	        }
	    }
           @media (min-width: 320px) and (max-width: 385px)
	    {
	        #popup
	        {
                 width: 294px !important;
	            height: 440px !important;
	            left: 5% !important;
	        }
             #popup #P
	        {
	            margin-left: -10%;
	            margin-top: 1px;
	        }
               .popupemail2
	        {
	            width: 294px !important;
	            height: 440px !important;
	            left: 5% !important;
	        }
	        #Div1 {
	            width: 294px !important;
	        }
	        #P2 {
	            margin-left: -20% !important;
	        }
            .popu {
    height: 363px !important;
    width: 276px !important;
    margin-left: -40px !important;
}
     #popup #P
	        {
	            margin-left: -10%;
	            margin-top: 1px;
	        }

	        .tab1 tbody tr td:first-child
	        {
                padding-left:4px !important;
               
	        }
	        .tab1 tbody tr td:last-child
	        {
                padding-left:0px !important;
                
	        }
	       .popupemail2 #P
	        {
	            margin-left: -10%;
	            margin-top: 1px;
	        }
	       .popupapply #P
	        {
                margin-left: -10%;
	            margin-top: 1px;
	        }
	    }
	    .apply {
	       
	        border-radius: 7px;
	        font-size: 12px;
            margin-top: 4%;
            width: 140px;
            padding: 3px 0px;
            height: auto;
	    }

	 

	    .auto-style4
        {
            height: 23px;
            width: 223px;
        }
        .auto-style5
        {
            width: 2%;
        }
        .auto-style7
        {
            width: 22%;
        }
        .auto-style8
        {
            width: 26%;
        }
        .auto-style9
        {
            float: left;
            width: 22%;
        }
        .auto-style10
        {
            height: 23px;
            width: 26%;
        }
        .auto-style11
        {
            height: 23px;
            float: left;
            width: 22%;
        }
        .auto-style12
        {
            height: 23px;
            width: 2%;
        }
        .auto-style13
        {
            width: 223px;
        }
        .auto-style14
        {
            width: 21%;
        }

	 #followup
     {
         position :absolute ;
         display :none ;
         width :500px;
         margin-left :-47%;
         margin-top :10%;
         z-index :111;

        
        }
        #follow
        {
            height:70%;
            width :439px;
            border-radius :31px;
            border :solid 3px #0b72a0 ;
        }

	</style>
     <style type="text/css">
        .Background
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .Popup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 400px;
            height: 350px;
        }
        .lbl
        {
            font-size:16px;
            font-style:italic;
            font-weight:bold;
        }
         .auto-style15
         {
             width: 90px;
             text-align: left;
             height: 19px;
         }
    </style>

    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(InIEvent);
    </script>
    <link href="colorbox.css" rel="stylesheet" />
       <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        
    <script src="jquery.colorbox.js" type="text/javascript"  ></script> 


<script type="text/javascript">

    $(document).ready(function () {
        $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
    });
    var prm = Sys.WebForms.PageRequestManager.getInstance();

    prm.add_endRequest(function () {
        $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
    });

</script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        
    <script src="jquery.colorbox.js" type="text/javascript"  ></script> 


<script type="text/javascript">

    $(document).ready(function () {
        $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
    });
    var prm = Sys.WebForms.PageRequestManager.getInstance();

    prm.add_endRequest(function () {
        $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
    });

</script>
     <%# Eval("StudentName") %>
<script type="text/javascript"  language="javascript">
    Sys.Application.add_load()

            </script>

    <div id="followup">
        <iframe name="admin" id="follow" ></iframe>
    </div>
    <div>

        <div>
      
<table width ="100%" style="height: 237px">
<tr><th colspan ="4"><h2>Student Details</h2></th><th class="auto-style5">&nbsp;</th></tr>
<tr><td class="auto-style13">
    <asp:TextBox ID="TxtFranchiseCode" runat="server" BackColor="#FFFFCC" 
        ForeColor="#0066FF" ReadOnly="True" Visible="False" Width="100px">TNK101</asp:TextBox>
    </td><td class="auto-style14"> </td><td></td><td class="auto-style7">
        <%# Eval("Course") %>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Followup Details" /><%# Eval("Duration") %>
    </td></tr>
   
<tr><td class="auto-style13">
    <div style="display:none;">
    <asp:CheckBox ID="chkStatus" runat="server" Text="Status" AutoPostBack="True" OnCheckedChanged="chkStatus_CheckedChanged" />
&nbsp;<asp:DropDownList ID="ddladmissiontrype" runat="server" Height="24px" 
            Width="90px" 
        onselectedindexchanged="ddladmissiontrype_SelectedIndexChanged" Enabled="False">
           
            
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    </td>
    <td class="auto-style14">
        <asp:CheckBox ID="chkmodeofenquiry" runat="server" Text="Mode of Enquiry" AutoPostBack="True" OnCheckedChanged="chkmodeofenquiry_CheckedChanged" />
        &nbsp;
                                    <asp:DropDownList ID="ddltraining" runat="server" Height="24px" Width="89px" Enabled="False">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>6 Months</asp:ListItem>
                                        <asp:ListItem>3 Months</asp:ListItem>
                                        <asp:ListItem>2 Months</asp:ListItem>
                                        <asp:ListItem>1 Month</asp:ListItem>
                                        <asp:ListItem>6 Weeks</asp:ListItem>
                                        <asp:ListItem>4 Weeks</asp:ListItem>
                                        
                                        
                                    </asp:DropDownList>
                                    
                                </td>
                                <td class="auto-style8">
         <div style="display:none;">
       
                                    <asp:CheckBox ID="chkSession" runat="server" Text="Session" AutoPostBack="True" OnCheckedChanged="chkSession_CheckedChanged" />
                                    &nbsp;&nbsp;
        <asp:DropDownList ID="ddlsession" runat="server" Height="24px" 
            Width="79px" AutoPostBack="True" Enabled="False">
        </asp:DropDownList></div>
                                    

   <td class="auto-style7">
       
       <div style ="display :none ;">
       &nbsp;<asp:DropDownList ID="ddlcourse" runat="server" 
            onselectedindexchanged="ddlcourse_SelectedIndexChanged" Height="23px" 
            Width="106px" Visible="False">
        </asp:DropDownList></div>
       <%# Eval("WhatsAppNo") %>
       <asp:TextBox ID="TextBox1" runat="server" placeholder="Follwoup Details"></asp:TextBox><%# Eval("ContactNo") %>
    </td></td>
                                <td class="auto-style5">&nbsp;</td></tr>
<tr><td class="auto-style13">
    &nbsp;</td><td class="auto-style14">
        &nbsp;<td class="auto-style8">
        &nbsp;<td class="auto-style7">
        &nbsp;</td><td class="auto-style5">&nbsp;</td></tr>
<tr><td class="auto-style13">Between Date    <div style="display:none ;"> <asp:CheckBox ID="chkbetweendate" runat="server" AutoPostBack="True" 
        oncheckedchanged="chkbetweendate_CheckedChanged" /> </div>
&nbsp;</td>
<td class="auto-style14">
     
   
    <asp:Label ID="lbltext" runat="server" Text=" From:" style=""></asp:Label>
    <asp:TextBox ID="txtdatefrom" runat="server" 
        style="margin-bottom: 0px" Height="16px" Width="87px" ></asp:TextBox>
    <asp:CalendarExtender ID="cal" TargetControlID ="txtdatefrom" runat ="server"   ></asp:CalendarExtender></td>
    <td> To:&nbsp;
    <asp:TextBox ID="txtdateto" runat="server" 
        ontextchanged="txtdateto_TextChanged" Width="87px"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID ="txtdateto" runat ="server"  ></asp:CalendarExtender></td>
    
   <td class="auto-style9"><asp:Button ID="btnsubmit" runat="server" Text="Display" CssClass="Allbuttons" 
            onclick="btnsubmit_Click" Width="65px" Height="24px" /></td>
        
    </tr>
<tr><td class="auto-style13">&nbsp;</td>
<td colspan ="4">
        
       <asp:Button ID="btnexcel" runat="server" Text="Export to Excel" 
           OnClick="btnexcel_Click" Visible="False"  CssClass="Allbuttons" width="110px"/>

    <asp:CheckBox ID="chkdisplayallenquiryadmission" runat="server" 
        Text="Click here to see all admission, Enquiry  and Call Back" Visible="False" />
    </tr>
<tr><td class="auto-style4"></td><td class="auto-style2">
    <td class="auto-style10"><td class="auto-style11">
        
       &nbsp;</td>
        
        <td class="auto-style12">
        </td></tr>
<tr><td class="auto-style13">
    </td><td class="auto-style14">
    <td class="auto-style8">
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
    <td class="auto-style7">
        </td><td class="auto-style5">
        </td></tr>
</table>

</div>

 <div id="details" style="width: 100%; height: 534px; text-align: center; vertical-align: top; margin-top: 10px"> 
        
           <div id="sadasds" runat="server" style="overflow:auto; height:534px; width:808px; margin-left:auto; margin-right:auto; padding-left:10px; " >
          
            <%# Eval("EmailID") %>
                <asp:GridView ID="gvdetails" runat="server" Height="16px"    
                    style="font-size: small" CellPadding="4" Width="100%" OnRowCancelingEdit="gvdetails_RowCancelingEdit"  DataKeyNames ="EnquiryNo" OnRowUpdating="gvdetails_RowUpdating" OnRowEditing="gvdetails_RowEditing" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnRowCommand="gvdetails_RowCommand">
               <RowStyle BackColor="White" ForeColor="#330099" />
               <Columns>
               
                       <asp:TemplateField>
                           <ItemTemplate>
                               <table width="100%">
                                   <tr><td class="tdstyle"><strong>Session : </strong></td> <td class="tdstyle"><%# Eval("Session") %></td>
                                   
                              <td class="tdstyle"><strong>Admission Date :</strong></td> <td class="tdstyle"><%# Eval("AdmissionDate") %></td>
                                  
                                   <td class="tdstyle"><strong>Enquiry No :</strong></td> <td class="tdstyle"><a href="FollowupDetails.aspx?enquiry=<%# Eval("EnquiryNo") %>" target="admin101" onclick="openss()" ><%# Eval("EnquiryNo") %></a></td>
                                   
                                    </tr>
                                  
                                   <tr>
                                      <td class="tdstyle"><strong>Student Name : </strong></td> <td class="tdstyle"><%# Eval("StudentName") %></td>
                                   <td class="tdstyle"><strong>Course :</strong></td> <td class="tdstyle"><%# Eval("Course") %></td>

                                   <td class="tdstyle"><strong>Duration :</strong></td> <td class="tdstyle"><%# Eval("Duration") %></td>
                                        
                                   </tr>
                                   <tr>
                                   
                             
                                    <td class="tdstyle"><strong>WhatsApp No : </strong></td> <td class="tdstyle"><%# Eval("WhatsAppNo") %></td>
                                  
                                   <td class="tdstyle"><strong>Contact No :</strong></td> <td class="tdstyle"><%# Eval("ContactNo") %></td>
                                   
                                    <td class="tdstyle"><strong>Email ID :</strong></td> <td class="tdstyle"><%# Eval("EmailID") %></td>

                                   </tr>
                               <tr> 
                                   
                              <td class="tdstyle"><strong>City :</strong></td> <td class="tdstyle"><%# Eval("City") %></td>
                                  
                                   <td class="tdstyle"><strong>Reference By :</strong></td> <td class="tdstyle"><%# Eval("ReferenceBy") %></td>
                                   
                                    <td class="tdstyle"><strong>Reference Contact No :</strong></td> <td class="tdstyle"><%# Eval("refContactNo") %></td> 
                                   </tr>
                              
                                   <tr>
                                       <td class="tdstyle"><strong>Reference Email ID : </strong></td> <td class="tdstyle"><%# Eval("RefEmailID") %></td>
                                   
                              <td class="tdstyle"><strong>Reference Designation :</strong></td> <td class="tdstyle"><%# Eval("RefDesignation") %></td>
                                  
                                  
                                   
                                    <td class="tdstyle"><strong>Seminar Person :</strong></td> <td class="tdstyle"><%# Eval("SeminarPerson") %></td>

                                   </tr>
                                   <tr>
                                       <td class="tdstyle"><strong>Mode Of Enquiry :</strong></td> <td class="tdstyle"><%# Eval("ModeOfEnquiry") %></td>
                                        <td class="tdstyle"><strong>College Name :</strong></td> <td class="tdstyle"><%# Eval("CollegeName") %></td>
                                       <td class="tdstyle"><strong>Student Mobile No :</strong></td> <td class="tdstyle"><%# Eval("StudentMobileNo") %></td>
                                   </tr>
                                   <tr>
                                    <td class="tdstyle"><strong>Representative Name :</strong></td> <td class="tdstyle"><%# Eval("RepresentativeName") %></td>
                                       <td class="tdstyle"><strong>Visited :</strong></td> <td class="tdstyle"><%# Eval("Visited") %></td>
                                        <td class="tdstyle"><strong>Followup Date :</strong></td> <td class="tdstyle"><%# Eval("FollowupDate") %></td>
                                        
                                   </tr>
                                   <tr>
                                    <td class="tdstyle"><strong>Next Followup Date :</strong></td> <td class="tdstyle"><%# Eval("NextFollowupDate") %></td>
                                        <td class="tdstyle"><strong>Enquiry Status :</strong></td> <td class="tdstyle"><%# Eval("EnquiryStatus") %></td>
                                   </tr>
                               </table>
                           </ItemTemplate>
                           <EditItemTemplate>
                                <table width="100%">
                                   <tr><td class="tdstyle"><strong>Session : </strong></td> <td class="tdstyle"><%# Eval("Session") %></td>
                                   
                              <td class="tdstyle"><strong>Admission Date :</strong></td> <td class="tdstyle"><%# Eval("AdmissionDate") %></td>
                                  
                                   <td class="tdstyle"><strong>Enquiry No :</strong></td> <td class="tdstyle"><a href="FollowupDetails.aspx?enquiry=<%# Eval("EnquiryNo") %>" target="admin101" onclick="openss()" ><%# Eval("EnquiryNo") %></a></td>
                                   
                                    </tr>
                                  
                                   <tr>
                                      <td class="tdstyle"><strong>Student Name : </strong></td> 
                                       <td class="tdstyle"><asp:TextBox ID="ss"  Width="150px" runat="server" Text='<%# Eval("StudentName") %>'></asp:TextBox> </td>

                                   <td class="tdstyle"><strong>Course :</strong></td>
                                   <td class="tdstyle"><asp:TextBox ID="Txtcourse" runat="server" Text=' <%# Eval("Course") %>' Width="150px" Height="16px"></asp:TextBox></td>

                                   <td class="tdstyle"><strong>Duration :</strong></td> <td class="tdstyle"><%# Eval("Duration") %></td>

                                   </tr>
                                    
                                                                        
                                   <tr>
                                        <td class="tdstyle"><strong>Enquiry No : </strong></td>
                                          <td class="tdstyle"><asp:Label ID="lblen" runat="server" Text=' <%# Eval("EnquiryNo") %>' Width="50px"></asp:Label>
                                        </td> 
                                     
                                       
                                       </tr>
                             
                                       <tr>
                                           <td class="tdstyle"><strong>WhatsApp No : </strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtwn" runat="server" Text=' <%# Eval("WhatsAppNo") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Contact No :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtcontactno" runat="server" Text=' <%# Eval("ContactNo") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Email ID :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtemi" runat="server" Text='<%# Eval("EmailID") %>' Width="150px"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="tdstyle"><strong>City :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtcity" runat="server" Text='<%# Eval("City") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Reference By :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtrb" runat="server" Text='<%# Eval("ReferenceBy") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Reference Contact No :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtrcn" runat="server" Text='<%# Eval("refContactNo") %>' Width="150px"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="tdstyle"><strong>Reference Email ID : </strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtremi" runat="server" Text='<%# Eval("RefEmailID") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Reference Designation :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtrd" runat="server" Text='<%# Eval("RefDesignation") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Seminar Person :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtsp" runat="server" Text='<%# Eval("SeminarPerson") %>' Width="150px"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="tdstyle"><strong>Mode Of Enquiry :</strong></td>
                                           <td class="tdstyle"><%# Eval("ModeOfEnquiry") %></td>
                                           <td class="tdstyle"><strong>College Name :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtcn" runat="server" Text='<%# Eval("CollegeName") %>' Width="150px"></asp:TextBox>
                                           </td>
                                           <td class="tdstyle"><strong>Student Mobile No :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtsmn" runat="server" Text='<%# Eval("StudentMobileNo") %>' Width="150px"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="tdstyle"><strong>Representative Name :</strong></td>
                                           <td class="tdstyle">
                                               <asp:TextBox ID="txtrn" runat="server" Text='<%# Eval("RepresentativeName") %>' Width="150px"></asp:TextBox>
                                               <td class="tdstyle"><strong>Visited :</strong></td><td class="tdstyle"><%# Eval("Visited") %> </td>
                                        <td class="tdstyle"><strong>Followup Date :</strong></td> <td class="tdstyle"><%# Eval("FollowupDate") %></td>
                                           </td>
                                       </tr>
                                    <tr>
                                           
                                        <td class="tdstyle"><strong>Next Followup Date :</strong></td> <td class="tdstyle"><%# Eval("NextFollowupDate") %></td>
                                        <td class="tdstyle"><strong>Enquiry Status :</strong></td> <td class="tdstyle">   <asp:DropDownList ID="ddlEnquiryStatus" runat="server" OnSelectedIndexChanged="ddlEnquiryStatus_SelectedIndexChanged" DataTextField='<%#Eval("EnquiryStatus")%>'  Width ="150px">
                                <%--<asp:ListItem Text="Select" Value="0">Select</asp:ListItem>--%>
                                 <asp:ListItem Text="Open" Value="0">Open</asp:ListItem>
                               <asp:ListItem Text="Close" Value="1">Close</asp:ListItem>
                           </asp:DropDownList></td> 
                                       </tr>

                                  
                               </table>
                           </EditItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update"   />
                           <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="Cancel" />
                
                       </EditItemTemplate>
                   </asp:TemplateField>
        </Columns>
               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
           </asp:GridView>
                  <div id="adminiframe">

                         
                         
                           <img alt="Close" src="../images/close.png" onclick="closes()" style="cursor:pointer; margin-top: 11px; margin-left:94%;position:absolute; height:35px; width:35px; border-style:none; "  />
                           <iframe name="admin101" id="login12" scrolling="no" > </iframe>
                          
                             </div>
               <%# Eval("City") %>
         </div>

    </div>
   
</div>
    
    <div id="Div1" 
       
          style="width: 100%; height: 534px; text-align: center; vertical-align: top; margin-top: 10px"> 
        
           <div style="overflow:auto; height:534px; width:808px; margin-left:auto; margin-right:auto; padding-left:10px; " >
               <asp:GridView ID="GridView1" runat="server" Height="16px"   
               style="font-size: small" CellPadding="4" 
                  Width="792px" 
                  AutoGenerateColumns="False" ShowFooter="false" BackColor="White" BorderColor="#CC9966" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand"
                   BorderStyle="None" BorderWidth="1px" DataKeyNames="EnquiryNo">
               <RowStyle BackColor="White" ForeColor="#330099" />
                   
               <Columns>
                      <asp:TemplateField>
                       <ItemTemplate>
                            <table width="100%">
                                   <tr><td class="auto-style15"><strong>Session : </strong></td> <td class="auto-style15"><%# Eval("Session") %></td>
                                   
                              <td class="auto-style15"><strong>Enquiry No :</strong></td> <td class="auto-style15"><%# Eval("EnquiryNo") %></td> 
                                                  
                                      <td class="tdstyle"><strong>Name : </strong></td> <td class="tdstyle"><%# Eval("Name") %></td>
                                   <td class="tdstyle"><strong>College Name :</strong></td> <td class="tdstyle"><%# Eval("CollegeName") %></td>
</tr>
<tr>
                                   <td class="tdstyle"><strong>Course :</strong></td> <td class="tdstyle"><%# Eval("Course") %></td>
                                        
                              <td class="tdstyle"><strong>Mobile No : </strong></td> <td class="tdstyle"><%# Eval("MobileNo") %></td>
                                                                                                                                
                                    <td class="tdstyle"><strong>Email ID :</strong></td> <td class="tdstyle"><%# Eval("EmailID") %></td>
    <td class="tdstyle"><strong>Followup Date :</strong></td> <td class="tdstyle"><%# Eval("DateEntry") %></td>
 </tr>
                               <tr> 
                                   <td class="tdstyle"><strong>Followup Remarks :</strong></td> <td class="tdstyle"><%# Eval("FollowupRemarks") %></td>
                                   
                                    <td class="tdstyle"><strong>Next Date Entry :</strong></td> <td class="tdstyle"><%# Eval("NextDateEntry") %></td> 
                                     <td class="tdstyle"><strong>Date :</strong></td> <td class="tdstyle"><%# Eval("Date") %></td>
                                   <td class="tdstyle"><strong>Status :</strong></td> <td class="tdstyle"><%#Eval("Status") %></td> 
                                   </tr>
                               <tr>
                                           <td class="tdstyle"><strong>Visited :</strong></td>
                                           <td class="tdstyle"><%# Eval("Visited") %> </td>
                                       </tr>
                                 
                               </table>
                          <%-- <asp:Label ID="lblSession" runat="server" Text='<%# Eval("Session") %>'></asp:Label>--%>
                       </ItemTemplate>
                        <EditItemTemplate>
                                <table width="100%">
                                   <tr><td class="auto-style15"><strong>Session : </strong></td> 
                                       <td class="auto-style15"><asp:Label ID="lblSession" runat="server" Text=' <%# Eval("Session") %>' Width="50px" /></td>
                                   
                              <td class="auto-style15"><strong>Enquiry No :</strong></td>
                                        <td class="auto-style15"><asp:Label ID="lblEnquiryNo" runat="server" Text='<%# Eval("EnquiryNo") %>' Width="50px" /></td> 
                                                  
                                      <td class="tdstyle"><strong>Name : </strong></td>
                                        <td class="tdstyle">  <asp:TextBox ID="lblName1" runat="server" Text='<%# Eval("Name") %>'  Width ="150px"></asp:TextBox></td>
                                   <td class="tdstyle"><strong>College Name :</strong></td>
                                        <td class="tdstyle"><asp:Label ID="lblCollegeName" runat="server" Text='<%# Eval("CollegeName") %>' Width="50px" /></td>
</tr>
<tr>
                                   <td class="tdstyle"><strong>Course :</strong></td> 
    <td class="tdstyle"><asp:Label ID="lblCourse" runat="server" Text='<%# Eval("Course") %>' Width="50px" /></td>
                                        
                              <td class="tdstyle"><strong>Mobile No : </strong></td>
     <td class="tdstyle"><asp:Label ID="lblMobileNo" runat="server" Text='<%# Eval("MobileNo") %>' Width="50px" /></td>
                                                                                                                                
                                    <td class="tdstyle"><strong>Email ID :</strong></td> 
    <td class="tdstyle"><asp:Label ID="lblEmailID" runat="server" Text='<%# Eval("EmailID") %>' Width="50px" /></td>
    <td class="tdstyle"><strong>Followup Date :</strong></td>
     <td class="tdstyle"><asp:Label ID="lblDateEntry" runat="server" Text='<%# Eval("DateEntry") %>' Width="50px" /></td>
 </tr>
                               <tr> 
                                   <td class="tdstyle"><strong>Followup Remarks :</strong></td> 
                                   <td class="tdstyle"><asp:TextBox ID="txtfollowupremarks" runat="server" Text='<%# Eval("FollowupRemarks") %>' Width ="150px"></asp:TextBox></td>
                                   
                                    <td class="tdstyle"><strong>Next Date Entry :</strong></td> 
                                   <td class="tdstyle"> <asp:TextBox ID="txtnextfollowupdate" runat="server" Text='<%# Eval("NextDateEntry") %>'  Width ="150px"></asp:TextBox>
  <asp:CalendarExtender ID="cal" TargetControlID ="txtnextfollowupdate" runat ="server" ></asp:CalendarExtender></td>
                                     <td class="tdstyle"><strong>Date :</strong></td>
                                   <td class="tdstyle"><asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date") %>' Width="50px" /></td>
                                    
                                   <td class="tdstyle"><strong>Status :</strong></td>
                                    <td class="tdstyle">   <asp:DropDownList ID="ddlist" runat="server" OnSelectedIndexChanged="ddlist_SelectedIndexChanged" DataTextField='<%#Eval("Status") %>'  Width ="150px">
                                <%--<asp:ListItem Text="Select" Value="0">Select</asp:ListItem>--%>
                                 <asp:ListItem Text="Clear" Value="0">Clear</asp:ListItem>
                               <asp:ListItem Text="Pending" Value="1">Pending</asp:ListItem>
                           </asp:DropDownList></td> 
                                   </tr>
                                     <tr>
                                           <td class="tdstyle"><strong>Visited :</strong></td>
                                           <td class="tdstyle"><%# Eval("Visited") %> </td>
                                       </tr>
                               </table>
                           </EditItemTemplate>
                     
                       
                   </asp:TemplateField>
                  
                  
                  
                  
                  
                  
                
                  
                 
                   
                   <asp:TemplateField HeaderText="Edit">
                       <ItemTemplate>
                           <asp:Button ID="txtedit" runat="server" Text="Edit" CommandName="edit" />
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:Button ID="btnupdate1" runat="server" Text="Update" CommandName="update" />
                           <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="cancel" />
                       </EditItemTemplate>
                   </asp:TemplateField>
                                                               
                                     
                    
               </Columns>
                                  <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
                   

           </asp:GridView>
               
         </div>
 
    </div>

   
    <div id="tab2" runat="server" style="z-index:100; display:none  ;" class="popupfreetraining">
            <p id="P1" style="height:19px; margin:0px; text-align:right; padding: 2px 15px 2px 15px; " >
            >
              <img alt="Close" src="../images/close.png" style="margin-top:3px; margin-right:3px; height:35px; width:35px; border-style:none; "  /> </a> </p>
            <p id="P2" style="width: 284px !important;" align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="Small" Font-Bold="True"  Style="color:#FFF; background-color: #f83c3c; padding:2%; "
                ForeColor="Red" Text="Register for Placement Drive"></asp:Label></p>
            <div class="popu" style="height: 74%; width:auto; border:solid 1px #aaa7a7; margin-right:44px; border-radius:10px; margin-left: -8px; margin-top: 3px;padding-bottom:8px !important" 
                                                    align="left">

<table class="tab1" align="center" border="1" id="Table1" style="width:100%;">
  <tbody><tr>
    <td style="float:left";>Name</td>
    <td colspan="2">
        <asp:TextBox ID="txtnamename" runat="server" Height="22px" Width="140px" style="text-transform: capitalize;"></asp:TextBox>        &nbsp;</td>
   
  </tr>
  <tr>
    <td style="float:left;  margin-top:10%;">Mobile No</td>
    <td colspan="2">
        <asp:TextBox ID="txtmobilenono" runat="server"  style=" Height:22px; Width:140px; margin-top:5%;"></asp:TextBox>
&nbsp;</td>
  
  </tr>
  <tr>
    <td style="float:left; margin-top:10%;">E-mail ID</td>
    <td colspan="2">
        <asp:TextBox ID="txtemailidid" runat="server" style=" Height:22px; Width:140px; margin-top:5%;"></asp:TextBox>
&nbsp;</td>
  
  </tr>
  <tr>
    <td style="float:left; margin-top:8%;">College Name</td>
    <td colspan="2">
        <asp:TextBox ID="txtcollegenamename" runat="server" style=" Height:22px; Width:140px; margin-top:5%; text-transform: capitalize;"></asp:TextBox>
      </td>
   </tr>
  <tr>
    <td style="float:left; margin-top:10%";> Batch </td>
    <td colspan="2" style="padding-left:0px;">
        &nbsp;  
          <asp:TextBox ID="txtbatchch" runat="server" style=" Height:22px; Width:142px; margin-top:5%; text-transform: capitalize;"></asp:TextBox>
 </td>
  </tr>
      <tr>
    <td style="float:left; margin-top:10%";> Qualification </td>
    <td colspan="2" style="padding-left:0px;">
        &nbsp;  
          <asp:TextBox ID="txtqualificationn" runat="server" style=" Height:22px; Width:142px; margin-top:5%; text-transform: capitalize;"></asp:TextBox>
 </td>
  </tr>
      
<%# Eval("ReferenceBy") %>
</tbody>
</table>
                <br />
<table style="border:none;">
<tbody>
<tr>
        <td style="float:right; margin-right: 98px;border:none; margin-top:-5%;">
        <asp:Button ID="Button1" runat="server" EnableTheming="False" Text="Submit" OnClientClick="javascript:validate12()" OnClick="Button1_Click" />
        </td>
  </tr>
</tbody>
</table>
 </div>  
   


<p style="padding-top: 6px">  <span id="Span1" style="color:Red;font-size:X-Small;font-weight:bold;text-align:center;"></span> </p>
    </div>

</asp:Content>
