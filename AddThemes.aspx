<%@ Page Title="Add Themes"
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
margin-bottom:25px;
">

Add Themes

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

Add Themes:

</div>

<div style="
padding-top:35px;
padding-left:45px;
padding-right:45px;
padding-bottom:30px;
">

<div style="margin-bottom:22px;">
<label style="
display:inline-block;
width:120px;
">Name:</label>

<input type="text" style="
width:370px;
height:32px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="margin-bottom:22px;">
<label style="
display:inline-block;
width:120px;
">Duration:</label>

<input type="text" style="
width:370px;
height:32px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="margin-bottom:22px;">
<label style="
display:inline-block;
width:120px;
">Description:</label>

<input type="text" style="
width:370px;
height:32px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="margin-bottom:28px;">
<label style="
display:inline-block;
width:120px;
">Price:</label>

<input type="text" style="
width:370px;
height:32px;
font-size:18px;
font-family:Georgia;
" />

</div>

<div style="
display:flex;
align-items:center;
margin-top:10px;
">

<a href="#" style="
color:white;
text-decoration:none;
font-size:17px;
margin-right:140px;
">
☁ Add photo
</a>

<a href="ManageThemes.aspx" style="
color:#9b1c1c;
text-decoration:none;
font-size:22px;
margin-right:55px;
">
CANCEL
</a>

<a href="ManageThemes.aspx" style="
color:green;
text-decoration:none;
font-size:22px;
">
DONE
</a>

</div>

</div>

</div>

</div>

</asp:Content>