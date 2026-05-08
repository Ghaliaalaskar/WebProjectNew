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

<table style="
width:880px;
border-collapse:collapse;
background-color:#70677A;
color:white;
font-size:20px;
text-align:center;
font-family:Georgia;
">

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

<tr style="height:280px;">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

</table>

<div style="
width:880px;
text-align:right;
background-color:#70677A;
padding-top:10px;
padding-bottom:10px;
">

<a href="AddUser.aspx"
style="
background-color:#eeeeee;
border:1px solid gray;
padding:6px 18px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
margin-right:18px;
">

Add new user

</a>

</div>

</div>

</asp:Content>
