<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageThemes.aspx.cs" Inherits="WebProjectNew.ManageThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="
width:100%;
padding:20px;
font-family:Georgia;
">

<div style="
background-color:#70677A;
color:white;
font-size:55px;
padding:15px 25px;
">
Manage Themes
</div>

<table style="
width:100%;
border-collapse:collapse;
text-align:center;
background-color:#70677A;
color:white;
font-size:28px;
">

<tr style="
background-color:#ece8f1;
color:black;
height:70px;
font-weight:bold;
">

<th>Themes Name</th>
<th>Duration</th>
<th>Price</th>
<th>Actions</th>

</tr>

<tr style="height:90px;">

<td></td>

<td></td>

<td></td>

<td>

<a href="EditTheme.aspx"
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

<a href="EditTheme.aspx"
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

<a href="EditTheme.aspx"
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

<tr style="
height:70px;
background:white;
">

<td colspan="4"
style="
text-align:right;
padding-right:15px;
">

<a href="AddThemes.aspx"

style="
background:white;
border:1px solid gray;
padding:8px 18px;
text-decoration:none;
color:black;
font-size:18px;
">

Add Themes

</a>

</td>

</tr>

</table>

</div>

</asp:Content>