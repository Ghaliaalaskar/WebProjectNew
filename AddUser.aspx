<%@ Page Title="Add User"
Language="C#"
MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="AddUser.aspx.cs"
Inherits="WebProjectNew.AddUser" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div style="
width:980px;
margin-left:15px;
margin-top:35px;
font-family:Georgia;
">

<div style="
width:851px;
height:62px;
background-color:#70677A;
color:white;
font-size:42px;
line-height:62px;
padding-left:28px;
margin-bottom:25px;
">
Add new user
</div>

<div style="
width:650px;
margin-left:70px;
background-color:#70677A;
color:white;
font-size:20px;
">

<div style="
height:62px;
background-color:#d5cedc;
color:black;
font-size:26px;
line-height:62px;
padding-left:20px;
">
Add new user:
</div>

<div style="
padding-top:35px;
padding-left:35px;
padding-right:35px;
padding-bottom:35px;
">

<!-- NAME -->

<div style="margin-bottom:20px;">

<label style="
display:inline-block;
width:100px;
">
Name:
</label>

<asp:TextBox
ID="txtName"
runat="server"
Width="360px"
Height="32px">
</asp:TextBox>

<br />

<div style="margin-left:105px;">

<asp:RequiredFieldValidator
ID="rfvName"
runat="server"
ControlToValidate="txtName"
ErrorMessage="Required"
ForeColor="Red"
Display="Dynamic">
</asp:RequiredFieldValidator>

</div>

</div>

<!-- EMAIL -->

<div style="margin-bottom:20px;">

<label style="
display:inline-block;
width:100px;
">
Email:
</label>

<asp:TextBox
ID="txtEmail"
runat="server"
Width="360px"
Height="32px">
</asp:TextBox>

<br />

<div style="margin-left:105px;">

<asp:RequiredFieldValidator
ID="rfvEmail"
runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Required"
ForeColor="Red"
Display="Dynamic">
</asp:RequiredFieldValidator>

<br />

<asp:RegularExpressionValidator
ID="revEmail"
runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"
ForeColor="Yellow"
Display="Dynamic">
</asp:RegularExpressionValidator>

</div>

</div>

<!-- PHONE -->

<div style="margin-bottom:25px;">

<label style="
display:inline-block;
width:100px;
">
Phone:
</label>

<asp:TextBox
ID="txtPhone"
runat="server"
Width="360px"
Height="32px">
</asp:TextBox>

<br />

<div style="margin-left:105px;">

<asp:RequiredFieldValidator
ID="rfvPhone"
runat="server"
ControlToValidate="txtPhone"
ErrorMessage="Required"
ForeColor="Red"
Display="Dynamic">
</asp:RequiredFieldValidator>

<br />

<asp:RegularExpressionValidator
ID="revPhone"
runat="server"
ControlToValidate="txtPhone"
ValidationExpression="^[0-9]+$"
ErrorMessage="Numbers Only"
ForeColor="Yellow"
Display="Dynamic">
</asp:RegularExpressionValidator>

</div>

</div>

&nbsp;<!-- BUTTONS --><div style="
margin-top:35px;
display:flex;
justify-content:center;
gap:20px;
">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="ManageUsers.aspx"
style="
display:inline-block;
width:100px;
height:38px;
line-height:38px;
text-align:center;
background-color:#eeeeee;
border:1px solid gray;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
vertical-align:middle;
">
Cancel
</a>&nbsp;&nbsp;

<asp:Button
ID="btnSave"
runat="server"
Text="▣ Save"
Width="100px"
Height="38px"
BackColor="#eeeeee"
ForeColor="Black"
BorderColor="Gray"
Font-Names="Georgia"
Font-Size="17px"
OnClick="btnSave_Click" />

</div>

<br />

<!-- SUCCESS MESSAGE -->

<div style="text-align:center;">

<asp:Label
ID="lblMessage"
runat="server"
ForeColor="LimeGreen"
Font-Size="20px"
Font-Bold="true">
</asp:Label>

</div>

</div>

</div>

</div>

</asp:Content>
