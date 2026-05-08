<%@ Page Title="Manage Themes"
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

Manage Themes

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
<td>Duration</td>
<td>Price</td>
<td>Actions</td>

</tr>

<tr style="height:90px;">

<td></td>

<td></td>

<td></td>

<td>

<a href="EditbabyThemes.aspx"
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

<td>

<a href="EditbridelThemes.aspx"
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

<td>

<a href="EditgradThemes.aspx"
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

<td colspan="4"
style="
text-align:right;
padding:10px;
">

<a href="AddThemes.aspx">

<input type="button"
value="Add Themes"
style="
width:120px;
height:35px;
font-size:16px;
font-family:Georgia;
cursor:pointer;
" />

</a>

</td>

</tr>

</table>

</div>

</asp:Content>