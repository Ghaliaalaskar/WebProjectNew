<%@ Page Title="Edit User"
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
margin-bottom:25px;
">

Edit User

</div>

<!-- MAIN BOX -->

<div style="
width:640px;
margin-left:70px;
background-color:#70677A;
color:white;
">

<!-- SMALL TITLE -->

<div style="
height:62px;
background-color:#d5cedc;
color:black;
font-size:26px;
line-height:62px;
padding-left:20px;
font-family:Georgia;
">

Edit User:

</div>

<!-- FORM -->

<div style="
padding-top:35px;
padding-left:35px;
padding-bottom:35px;
font-size:22px;
font-family:Georgia;
">

<!-- NAME -->

<div style="margin-bottom:25px;">

<span style="
display:inline-block;
width:95px;
">

Name:

</span>

<input type="text"

style="
width:320px;
height:34px;
font-size:18px;
padding-left:10px;
" />

</div>

<!-- EMAIL -->

<div style="margin-bottom:25px;">

<span style="
display:inline-block;
width:95px;
">

Email:

</span>

<input type="email"

style="
width:320px;
height:34px;
font-size:18px;
padding-left:10px;
" />

</div>

<!-- PHONE -->

<div style="margin-bottom:35px;">

<span style="
display:inline-block;
width:95px;
">

Phone:

</span>

<input type="text"

style="
width:320px;
height:34px;
font-size:18px;
padding-left:10px;
" />

</div>

<!-- BUTTONS -->

<div style="
margin-left:205px;
">

<a href="ManageUsers.aspx"
style="
background-color:white;
color:black;
padding:8px 20px;
text-decoration:none;
font-size:20px;
margin-right:18px;
border:1px solid lightgray;
">

✖ Cancel

</a>

<a href="ManageUsers.aspx"
style="
background-color:white;
color:black;
padding:8px 24px;
text-decoration:none;
font-size:20px;
border:1px solid lightgray;
">

💾Save

</a>

</div>

</div>

</div>

</div>

</asp:Content>
