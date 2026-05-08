<%@ Page Title="Manage Availability"
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

<div style="
width:850px;
height:62px;
background-color:#70677A;
color:white;
font-size:42px;
line-height:62px;
padding-left:28px;
">

Manage Availability

</div>

<table style="
width:850px;
border-collapse:collapse;
background-color:#70677A;
color:white;
font-size:18px;
text-align:center;
">

<tr style="
background-color:#e5dfeb;
color:black;
height:55px;
font-weight:bold;
">

<td>Themes Name</td>
<td>Date</td>
<td>Time</td>
<td>Status</td>
<td>Actions</td>

</tr>

<tr style="height:90px;">

<td></td>

<td></td>

<td></td>

<td></td>

<td>

<a href="EditAvailability.aspx"
style="
color:white;
text-decoration:none;
">
Edit
</a>

&nbsp;&nbsp;

<a href="#"
style="
color:white;
text-decoration:none;
">
Delete
</a>

</td>

</tr>

<tr style="height:90px;">

<td></td>

<td></td>

<td></td>

<td></td>

<td>

<a href="EditAvailability.aspx"
style="
color:white;
text-decoration:none;
">
Edit
</a>

&nbsp;&nbsp;

<a href="#"
style="
color:white;
text-decoration:none;
">
Delete
</a>

</td>

</tr>

<tr style="height:90px;">

<td></td>

<td></td>

<td></td>

<td></td>

<td>

<a href="EditAvailability.aspx"
style="
color:white;
text-decoration:none;
">
Edit
</a>

&nbsp;&nbsp;

<a href="#"
style="
color:white;
text-decoration:none;
">
Delete
</a>

</td>

</tr>

<tr style="height:90px;">

<td></td>

<td></td>

<td></td>

<td></td>

<td>

<a href="EditAvailability.aspx"
style="
color:white;
text-decoration:none;
">
Edit
</a>

&nbsp;&nbsp;

<a href="#"
style="
color:white;
text-decoration:none;
">
Delete
</a>

</td>

</tr>

<tr style="background-color:white;">

<td colspan="5"
style="
text-align:right;
padding:10px;
">

<a href="AddSlot.aspx">

<input type="button"
value="⊕ Add slot"
style="
width:140px;
height:38px;
font-size:18px;
font-family:Georgia;
cursor:pointer;
" />

</a>

</td>

</tr>

</table>

</div>

</asp:Content>
