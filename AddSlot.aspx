<%@ Page Title="Add Slot"
Language="C#"
MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


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

Add Slot

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

Add slot:

</div>

<div style="
padding-top:38px;
padding-left:35px;
padding-right:35px;
padding-bottom:32px;
">

<div style="margin-bottom:22px;">
<label style="display:inline-block; width:120px;">Theme Name:</label>
<select style="width:380px; height:34px; font-size:16px; font-family:Georgia;">
<option>Select Theme:</option>
<option>Baby Shower</option>
<option>Bridal Shower</option>
<option>Graduation</option>
</select>
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block; width:120px;">Date:</label>
<input type="text" value="Select Date:" style="width:373px; height:34px; font-size:16px; font-family:Georgia;" />
</div>

<div style="margin-bottom:22px;">
<label style="display:inline-block; width:120px;">Time:</label>
<select style="width:380px; height:34px; font-size:16px; font-family:Georgia;">
<option>Select Time:</option>
<option>6:00 PM</option>
<option>7:00 PM</option>
<option>8:00 PM</option>
</select>
</div>

<div style="margin-bottom:32px;">
<label style="display:inline-block; width:120px;">Status:</label>
<select style="width:380px; height:34px; font-size:16px; font-family:Georgia;">
<option>Available</option>
<option>Not Available</option>
</select>
</div>

<div style="text-align:right;">

<a href="ManageAvailability.aspx" style="
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
</a><a href="ManageAvailability.aspx" style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 18px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
">
    &nbsp;+Add
</a>

</div>

</div>

</div>

</div>

</asp:Content>