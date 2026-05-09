<%@ Page Title="Manage Users"
Language="C#"
MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div style="
width:980px;
margin-left:15px;
margin-top:35px;
font-family:Georgia;
">

<!-- TITLE -->

<div style="
width:851px;
height:62px;
background-color:#70677A;
color:white;
font-size:42px;
line-height:62px;
padding-left:28px;
">
Manage users
</div>

<!-- TABLE -->

<table style="
width:880px;
border-collapse:collapse;
background-color:#70677A;
color:white;
font-size:18px;
text-align:center;
font-family:Georgia;
">

<!-- HEADER -->

<tr style="
background-color:#d5cedc;
color:black;
height:68px;
font-size:21px;
">

<th>User ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Role</th>
<th>Actions</th>

</tr>

<!-- INPUT ROW -->

<tr>

<!-- USER ID -->

<td class="auto-style17">

<asp:TextBox ID="txtID"
runat="server"
Width="80px"
Height="30px">
</asp:TextBox>

<br />

<asp:RequiredFieldValidator
ID="rfvID"
runat="server"
ControlToValidate="txtID"
ErrorMessage="Required"
ForeColor="Red">
</asp:RequiredFieldValidator>

</td>

<!-- NAME -->

<td class="auto-style17">

<asp:TextBox ID="txtName"
runat="server"
Width="120px"
Height="30px">
</asp:TextBox>

<br />

<asp:RequiredFieldValidator
ID="rfvName"
runat="server"
ControlToValidate="txtName"
ErrorMessage="Required"
ForeColor="Red">
</asp:RequiredFieldValidator>

</td>

<!-- EMAIL -->

<td class="auto-style17">

<br />

<asp:TextBox ID="txtEmail"
runat="server"
Width="150px"
Height="30px">
</asp:TextBox>

    <br />

<asp:RequiredFieldValidator
ID="rfvEmail"
runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Required"
ForeColor="Red">
</asp:RequiredFieldValidator>

<br />

<asp:RegularExpressionValidator
ID="revEmail"
runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"
ForeColor="Yellow">
</asp:RegularExpressionValidator>

</td>

<!-- PHONE -->

<td class="auto-style17">

<br />

<asp:TextBox ID="txtPhone"
runat="server"
Width="120px"
Height="30px">
</asp:TextBox>

    <br />

<asp:RequiredFieldValidator
ID="rfvPhone"
runat="server"
ControlToValidate="txtPhone"
ErrorMessage="Required"
ForeColor="Red">
</asp:RequiredFieldValidator>

<br />

<asp:RegularExpressionValidator
ID="revPhone"
runat="server"
ControlToValidate="txtPhone"
ValidationExpression="^05\d{8}$"
ErrorMessage="Invalid Phone Number"
ForeColor="Yellow">
</asp:RegularExpressionValidator>

</td>

<!-- ROLE -->

<td class="auto-style17">

<asp:DropDownList ID="ddlRole"
runat="server"
Width="110px"
Height="35px">

<asp:ListItem Text="Select"
Value="">
</asp:ListItem>

<asp:ListItem Text="Admin"
Value="Admin">
</asp:ListItem>

<asp:ListItem Text="Customer"
Value="Customer">
</asp:ListItem>

</asp:DropDownList>

<br />

<asp:RequiredFieldValidator
ID="rfvRole"
runat="server"
ControlToValidate="ddlRole"
InitialValue=""
ErrorMessage="Required"
ForeColor="Red">
</asp:RequiredFieldValidator>

</td>

<!-- BUTTON -->

<td class="auto-style17">

<asp:Button ID="btnAdd"
runat="server"
Text="Add new user"
PostBackUrl="~/AddUser.aspx"
CausesValidation="true"
Width="120px"
Height="38px"
BackColor="White"
ForeColor="Black" />

</td>

</tr>

</table>

<br />

<asp:ValidationSummary
ID="ValidationSummary1"
runat="server"
ForeColor="Red"
HeaderText="Please fill all required fields" Height="121px"/>

</div>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style17 {
            height: 158px;
        }
    </style>
</asp:Content>


