<%@ Page Title="Edit Availability"
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

Edit Availability

</div>

<!-- MAIN BOX -->

<div style="
width:620px;
margin-left:70px;
background-color:#70677A;
color:white;
font-size:20px;
">

<!-- TOP HEADER -->

<div style="
height:62px;
background-color:#d5cedc;
color:black;
font-size:26px;
line-height:62px;
padding-left:20px;
">

Edit Availability

</div>

<!-- CONTENT -->

<div style="
padding-top:38px;
padding-left:35px;
padding-right:35px;
padding-bottom:32px;
">

<!-- Theme -->

<div style="margin-bottom:22px;">

<label style="
display:inline-block;
width:120px;
">
Theme:
</label>

<select style="
width:380px;
height:34px;
font-size:16px;
font-family:Georgia;
background-color:white;
border:1px solid gray;
">

<option>Baby Shower</option>
<option>Bridal Shower</option>
<option>Graduation</option>

</select>

</div>

<!-- Date -->

<div style="margin-bottom:22px;">

<label style="
display:inline-block;
width:120px;
">
Date:
</label>

<input type="text"
value="12/5/2026"
style="
width:370px;
height:30px;
font-size:16px;
font-family:Georgia;
background-color:white;
border:1px solid gray;
padding-left:8px;
" />

</div>

<!-- Time -->

<div style="margin-bottom:22px;">

<label style="
display:inline-block;
width:120px;
">
Time:
</label>

<select style="
width:380px;
height:34px;
font-size:16px;
font-family:Georgia;
background-color:white;
border:1px solid gray;
">

<option>7:00 PM</option>
<option>6:00 PM</option>
<option>8:00 PM</option>

</select>

</div>

<!-- Status -->

<div style="margin-bottom:32px;">

<label style="
display:inline-block;
width:120px;
">
Status:
</label>

<select style="
width:380px;
height:34px;
font-size:16px;
font-family:Georgia;
background-color:white;
border:1px solid gray;
">

<option>Not Available</option>
<option>Available</option>

</select>

</div>

<!-- BUTTONS -->

<div style="text-align:right;">

<a href="ManageAvailability.aspx"
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

<a href="ManageAvailability.aspx"
style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 18px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
">

▣ save

</a>

</div>

</div>

</div>

</div>

</asp:Content>
