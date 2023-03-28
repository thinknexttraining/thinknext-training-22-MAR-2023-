<%@ Page Language="VB" MasterPageFile="~/Students/MasterPageStudent.master" AutoEventWireup="false" CodeFile="~/Students/PersonalProfile.aspx.vb" Inherits="PersonalProfile" title="Personal Profile"  %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <script type="text/javascript" language="JavaScript">
        function toggle() {
            var state = document.getElementById('<%=selectemails.ClientID %>').style.display;
            if (state == 'block') {
                document.getElementById('<%=selectemails.ClientID %>').style.display = 'none';
            } else {
            document.getElementById('<%=selectemails.ClientID %>').style.display = 'block';
            }
        }
</script>

<script type="text/javascript" >
    function readonlyTrue() {
        var txt = document.getElementsByTagName("input");
        //var txet = document.getElementsByName("abc");
        for (i = 0; i < txt.length; i++) {
            if (txt[i].type == "text") {
                //alert(txt[i].value);
                txt[i].readOnly = true;
                
            }
        }
    }


    function readonlyFalse() {

        document.getElementById("pbotton").style.display = 'block';
        var txt = document.getElementsByTagName("input");
        for (i = 0; i < txt.length; i++) {
            if (txt[i].type == "text") {
                txt[i].readOnly = false;
                txt[i].style.backgroundColor = "white";
            }
        }
    }
    





</script>


  <style type="text/css">
  .textbox
  {
  	width:450px;
  	height:20px;
  	font-family:Times New Roman;
  	border-style:none;
  	background-color:whitesmoke;
  	text-indent:8px;
  	font-size:Small;
  	font-weight:bold;
  	color:slateblue;
  	
  	}
  	
  	.labels
  {
  	width:180px;
  	height:20px;
  	font-family:Times New Roman;
  	font-size:Small; 
  	font-weight:bold; 	
  	}
  
  </style>
  
    <div style="width: 100%; height: 687px; text-align: center; vertical-align: top;" 
        align="center" id="divasdas">
        <div>
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </div>
        <h3 style="margin: 0px; height: 28px"> Personal Profile 
        
        <br /> 
        
        </h3>
        <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
        
        
        <br />
        
        <div id="left" 
            style="width: 639px; height: 573px; float: left; padding-left: 8px;">
            <p id="p1" style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblCollegeName" runat="server" Text="College Name"  
                       CssClass="labels" Width="180px"></asp:Label>
                    <asp:TextBox ID="txtCollegeName" runat="server"  
                ReadOnly="True"  BorderStyle="None" Font-Bold="True" 
                        CssClass="textbox" style=" width: 448px;" ></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblIDNo" runat="server"   Text="ID No." CssClass="labels" 
                        Width="180px"></asp:Label>
        
                    <asp:Label ID="LABELIDNo" runat="server" Width="450px" CssClass="textbox" style=" width: 448px;"></asp:Label>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblName" runat="server"   Text="Name" Width="180px" 
                        CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" SkinID="MytextID" 
                        
                ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblUniRollNo" runat="server"   Text="University Roll No" 
                        Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtUniRollNo" runat="server" 
                        ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblBatch0" runat="server" SkinID="MytextID" Text="Course" 
                        Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtCourse" runat="server" 
                    SkinID="MytextID"  
                    ReadOnly="true" 
                        BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left; height: 24px;">
        
                    <asp:Label ID="lblBatch" runat="server" SkinID="MytextID" Text="Batch" 
                        Width="180px" CssClass="labels" EnableTheming="False"></asp:Label>
                    <asp:TextBox ID="txtBatch" runat="server" 
                    SkinID="MytextID"  
                       ReadOnly="True" 
                        BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left; height: 24px;">
        
                    <asp:Label ID="lblDOB" runat="server" SkinID="MytextID" Text="DOB" 
                    CssClass="labels" Width="180px"></asp:Label>
                    <asp:TextBox ID="txtDOB" runat="server" 
                    SkinID="MytextID"                  
                        ReadOnly="True" 
                        BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left; height: 24px;">
        
                            <asp:Label ID="lblSex0" runat="server"   Text="Training" Width="180px" 
                                CssClass="labels"></asp:Label>
        
                    <asp:Label ID="lbltraining" runat="server" Width="450px" CssClass="textbox" style=" width: 448px;"></asp:Label>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left; height: 24px;">
        
                            <asp:Label ID="lblSex1" runat="server"   Text="Training Type" Width="180px" 
                                CssClass="labels"></asp:Label>
        
                    <asp:Label ID="lbltrainingtype" runat="server" Width="450px" CssClass="textbox" style=" width: 448px;"></asp:Label>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left; height: 24px;">
        
                            <asp:Label ID="lblSex2" runat="server"   Text="Batch Timing" Width="180px" 
                                CssClass="labels"></asp:Label>
        
                    <asp:Label ID="lblbatchtiming" runat="server" Width="450px" CssClass="textbox" style=" width: 448px;"></asp:Label>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                            <asp:Label ID="lblSex" runat="server"   Text="Sex" Width="180px" 
                                CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtSex" runat="server" 
                        ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblEMailID" runat="server" SkinID="MytextID" 
                    Text=" EMail ID" Width="180px" CssClass="labels"></asp:Label>
        
                    <asp:TextBox ID="txtEMailID" runat="server" 
                    SkinID="MytextID"  
                        BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblAdmissionDate" runat="server"   Text="Admission Date" 
                        Width="180px" CssClass="labels"></asp:Label>
        
                    <asp:Label ID="labeladmDate" runat="server" Width="450px" CssClass="textbox" style=" width: 448px;"></asp:Label>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblMobileNo" runat="server" SkinID="MytextID" 
                    Text=" Mobile No." Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtMobileNo" runat="server" 
                    SkinID="MytextID"  
                        BorderStyle="None" MaxLength="10" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblPhoneNo" runat="server"   Text="Phone No." Width="180px" 
                        CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtPhoneNo" runat="server" 
                        ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblFatherName" runat="server"   Text="Father Name" Width="180px" 
                        CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtFatherName" runat="server" 
                        ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblMotherName" runat="server" SkinID="MytextID" 
                        Text="Mother Name" Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtMotherName" runat="server" 
                    SkinID="MytextID" 
                        ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblFatherMobileNo" runat="server" SkinID="MytextID" 
                    Text="Father Mobile No." Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtFatherMobileNo" runat="server" 
                        SkinID="MytextID"  
                        BorderStyle="None" MaxLength="10" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblFatherOccuption" runat="server" SkinID="MytextID" 
                        Text="Father Occupation" Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtOccupation" runat="server" 
                    SkinID="MytextID"  
                   ReadOnly="True" 
                        BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblPermanentaddress" runat="server"   Text="Permanent Address" 
                        Width="180px" CssClass="labels"></asp:Label>
                    <asp:TextBox ID="txtPermanentAddress" runat="server" 
                      
                ReadOnly="True" BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p style="margin: 0px; padding: 2px; text-align: left;">
        
                    <asp:Label ID="lblCorrespondanceAdd" runat="server"   
                        Text="Correspondance Address" CssClass="labels" Width="180px" 
                    ></asp:Label>
                    <asp:TextBox ID="txtCorrspondanceAddress" runat="server" 
                    SkinID="MytextID" 
                        BorderStyle="None" CssClass="textbox" style=" width: 448px;"></asp:TextBox>
        
        </p>
            <p id="pbotton" 
                
                style="display:none; margin: 0px; padding: 10px; text-align: left; height: 25px; font-weight: 700;">
        
                    <asp:Button ID="btnSave" style="margin-left:175px;" runat="server" CssClass="Allbuttons" Height="24px" 
                        Text="Save" Width="98px" />
            &nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancel" style="margin-left:5px;" runat="server" 
                        CssClass="Allbuttons" Height="24px" 
                        Text="Cancel" Width="98px" />
            </p>
        
        </div>
        <div id="right" style="width: 170px; height: 286px; float: right">
        <asp:Image ID="Image1" runat="server" Height="107px" Width="104px" 
                       BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" 
                       ImageUrl="~/Images/defaultuser.png" />
                   <br />
                   
                   
                   <!--    CHANGE PROFILE PICTURE OF STUDENT    -->  
                  <%--  <a href ="#" onclick="toggle()" style="text-decoration:none; color:Blue; " > Change Picture </a>--%>
                    <!--- END  --->
                    
                    
                    
                 
                    <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# "ImageHandler.ashx?ImID="+ Eval("ImageID") %>' Height="150px" Width="150px"/>--%>

                    <br />
                   <%-- <a href="#" onclick="toggle()" style=" margin-left:20px; margin-top:5px;  float:left; text-decoration:none; color:Blue; ">&nbsp;</a></div>
      --%>
&nbsp;
 <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Blue">Update Profile</asp:LinkButton>
                                 
</div>


<%-------------------Popup Ends----------------------%>
  
 <div id="selectemails" runat="server"  
           
          style="display:none; padding : 10px; width: 550px; height: 245px;  position: absolute; top: 35%; left: 33%; background-image: url('../Images/tpr.png');">
        <div id="inner" 
            style="margin: auto; width: 99%; height: 99%; background-color: #FFFFFF">
            
            <div id="close" style="float: right; width: 40px; height: 45px">
             <a href ="#" onclick="toggle()" > 
                <img alt="" src="../Images/close.png" /> </a>
            </div>  
            <br /><br />
            <div id="uploader" 
                style="height: 200px; width: 100%;">
                <h4 style="font-size: medium; color: #FF3300">Please select Image *( .jpg, .jpeg, .png ) to Change picture </h4>
                <asp:FileUpload ID="imguploder" runat="server" />
                <br /><br />
                <asp:Button ID="btnUpload" runat="server" CssClass="Allbuttons" Text="Upload" Width="90px" Height="24px" />
                <br /><br />
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Please wait.......Uploading Image<br />
                    <img alt="" src="../Images/progressbar.gif" />
                </ProgressTemplate>
                </asp:UpdateProgress>
                
                </div>
            </div>         
      </div>

<%-------------------Popup Ends----------------------%>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    </asp:Content>


