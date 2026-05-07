<%@ Page Title="Edit User"
Language="C#"
MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div style="
width:880px;
margin-left:15px;
margin-top:35px;
font-family:Georgia;
">

<div style="
width:820px;
height:62px;
background-color:#70677A;
color:white;
font-size:42px;
line-height:62px;
padding-left:28px;
margin-bottom:25px;
">

Edit user

</div>

<div style="
width:620px;
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

Edit user:

</div>

<div style="
padding-top:45px;
padding-left:45px;
padding-right:45px;
padding-bottom:45px;
">

<div style="margin-bottom:28px;">
<label style="display:inline-block; width:95px;">Name:</label>

<input type="text"
value="Lama"
style="
width:400px;
height:34px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="margin-bottom:28px;">
<label style="display:inline-block; width:95px;">Email:</label>

<input type="text"
value="la@gmail.com"
style="
width:400px;
height:34px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="margin-bottom:48px;">
<label style="display:inline-block; width:95px;">Phone:</label>

<input type="text"
value="966511033011"
style="
width:400px;
height:34px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="text-align:right;">

<a href="ManageUser.aspx" style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 16px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
margin-right:60px;
">
× Cancel
</a>

<a href="ManageUser.aspx" style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 18px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
">
▣ Save
</a>

</div>

</div>

</div>

</div>

</asp:Content>
