<%@ Page Title="Edit Theme"
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
Edit Themes
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
Edit Themes:
</div>

<div style="
padding-top:35px;
padding-left:35px;
padding-right:35px;
padding-bottom:35px;
">

<div style="margin-bottom:22px;">
<label style="display:inline-block;width:140px;">Theme Name:</label>
<input type="text" style="width:380px;height:34px;font-size:16px;font-family:Georgia;" />
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block;width:140px;vertical-align:top;">Description:</label>
<textarea style="width:380px;height:80px;font-size:16px;font-family:Georgia;"></textarea>
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block;width:140px;">Duration:</label>
<input type="text" style="width:380px;height:34px;font-size:16px;font-family:Georgia;" />
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block;width:140px;">Price:</label>
<input type="text" style="width:380px;height:34px;font-size:16px;font-family:Georgia;" />
</div>

<div style="margin-bottom:35px;">
<label style="display:inline-block;width:140px;">Photo:</label>
<input type="file" style="font-size:16px;font-family:Georgia;" />
</div>

<div style="text-align:right;">

<a href="ManageThemes.aspx"
style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 16px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
margin-right:55px;
">
× Cancel
</a>

<a href="ManageThemes.aspx"
style="
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