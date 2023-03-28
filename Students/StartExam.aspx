<%@ Page Title="Start Exam " Language="C#" MasterPageFile="~/Students/MasterPageStudent.master"   AutoEventWireup="true" CodeFile="StartExam.aspx.cs" Inherits="StartExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">

    function myTimer(startVal, interval, outputId, dataField) {
        this.value = startVal;
        this.OutputCntrl = document.getElementById(outputId);
        this.currentTimeOut = null;
        this.interval = interval;
        this.stopped = false;
        this.data = null;
        var formEls = document.form1.elements; 
        if (dataField) {
            for (var i = 0; i < formEls.length - 1; i++) {
                if (formEls[i].name == dataField) {
                    this.data = formEls[i];
                    i = formEls.length + 1;
                }
            }
        }

        myTimer.prototype.go = function () {
            if (this.value > 0 && this.stopped == false) {
                this.value = (this.value - this.interval);
                if (this.data) {
                    this.data.value = this.value;
                }
                var current = this.value;
                this.OutputCntrl.innerHTML = this.Hours(current) + ':' + this.Minutes(current) + ':' + this.Seconds(current);
                this.currentTimeOut = setTimeout("Timer.go()", this.interval);
            }
            else {
                alert('Time Out!');
                window.location('Home.aspx');
            }



        }
        myTimer.prototype.stop = function () {
            this.stopped = true;
            if (this.currentTimeOut != null) {
                clearTimeout(this.currentTimeout);
            }
        }
        myTimer.prototype.Hours = function (value) {
            return Math.floor(value / 3600000);
        }
        myTimer.prototype.Minutes = function (value) {
            return Math.floor((value - (this.Hours(value) * 3600000)) / 60000);
        }
        myTimer.prototype.Seconds = function (value) {
            var hoursMillSecs = (this.Hours(value) * 3600000)
            var minutesMillSecs = (this.Minutes(value) * 60000)
            var total = (hoursMillSecs + minutesMillSecs)
            var ans = Math.floor(((this.value - total) % 60000) / 1000);

            if (ans < 10)
                return "0" + ans;

            return ans;
        }
    }           



    </script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" style="text-align: center">
      
     
        <tr>
            <td bgcolor="#0033cc">
                <asp:Label ID="lblTotal" runat="server" Font-Size="20pt" ForeColor="White" ></asp:Label>
                &nbsp;
                <asp:Label ID="lbloutof" runat="server" Font-Size="20pt" ForeColor="White" ></asp:Label>
                <asp:Label ID="lblconvert" runat="server" Font-Size="20pt" ForeColor="White" ></asp:Label>
                <asp:Label ID="lbltotalquestion" runat="server" Font-Size="20pt" 
                    ForeColor="White" ></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <%--<asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>--%>
                    <asp:TextBox ID="txtfranchiseCode" runat="server" Font-Bold="True" Height="20px" 
                        ReadOnly="True" style="font-size: small" Width="180px" BackColor="#FFFFCC" 
                        ForeColor="#0066FF" Visible="False">TNK101</asp:TextBox>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td>
&nbsp;
                </td>
            <td>
                
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">

<ContentTemplate>

<asp:Label ID="lblTimerCount" runat="server" Font-Size="20pt" 

Font-Bold="True" ForeColor="Green"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;

<asp:Label ID="Label2" runat="server" Font-Size="20pt" 

Text="Time remaining...." ForeColor="Green" style="font-weight: 700"></asp:Label>

    <br />
    <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
    </asp:Timer>
    <br />

<br />

</ContentTemplate>

</asp:UpdatePanel>


</td>
            <td>
                
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <table style="text-align: center; margin: 0 0 0 262px;">
                <tr>
                <td>
                <asp:Panel ID="Panel1" runat="server" Height="158px" Width="267px"   >
                    <table id="Data" style="text-align: center">
                    <tr>
                    <td colspan="2">
                   
                     
                                    &nbsp;</td>
                    </tr>
                        <tr>
                            <td colspan="2" style="color: #FF0000; font-weight: bold;">
                                Q:
                                <asp:Label ID="lblquestion" runat="server" ForeColor="Red" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblAnswerall" runat="server" Text="Select Answer" 
                                    ></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:RadioButtonList ID="chklistans" runat="server" AutoPostBack="True" onselectedindexchanged="chklistans_SelectedIndexChanged" 
                                    >
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="chklistans" ErrorMessage="Please Select an Answer" 
                                    ForeColor="Red" ValidationGroup="Ans"></asp:RequiredFieldValidator>
                                </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                                <asp:Button ID="btnnextquestion" runat="server" onclick="btnnextquestion_Click" 
                                    Text="Next"  CssClass="Allbuttons" 
                                    style="font-size: small; font-weight: 700" Width="57px" />
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
                </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmessage" runat="server" Font-Size="20pt" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
   
        <tr>
            <td>
                                <asp:GridView ID="GridView1" runat="server" Visible="False">
                                </asp:GridView>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
   
        <tr>
            <td>
                                <asp:Button ID="btnsubmit" runat="server" Text="Finish" 
                    Visible="False" onclick="btnsubmit_Click"   CssClass="Allbuttons" style="font-size: small; font-weight: 700"/>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
   
    </table>
</asp:Content>

