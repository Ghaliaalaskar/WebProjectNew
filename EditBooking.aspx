<%@ Page Title="Edit Booking"
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

Edit Booking

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

Edit booking:

</div>

<div style="
padding-top:38px;
padding-left:35px;
padding-right:35px;
padding-bottom:32px;
">

<div style="margin-bottom:22px;">
<label style="display:inline-block; width:120px;">Client Name:</label>
<input type="text" style="width:374px;height:30px;font-size:16px;font-family:Georgia;" />
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block; width:120px;">Theme:</label>
<input type="text" style="width:374px;height:30px;font-size:16px;font-family:Georgia;" />
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block; width:120px;">Date:</label>
<input type="text" style="width:374px;height:30px;font-size:16px;font-family:Georgia;" />
</div>

<div style="margin-bottom:32px;">
<label style="display:inline-block; width:120px;">Time:</label>
<input type="text" style="width:374px;height:30px;font-size:16px;font-family:Georgia;" />
</div>

<div style="text-align:right;">

    <a href="ManageBooking.aspx"
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
&nbsp;Cancel
</a>

    <a href="ManageBooking.aspx"
style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 18px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
">
&nbsp;Save
</a>

</div>

</div>

</div>

</div>

</asp:Content>
