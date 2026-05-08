<%@ Page Title="Manage Availability"
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
margin-bottom:0px;
">

Manage Availability

</div>

<table style="
width:880px;
border-collapse:collapse;
margin-top:0px;
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

<th>Themes Name</th>
<th>Date</th>
<th>Time</th>
<th>Status</th>
<th>Actions</th>

</tr>

<tr style="height:90px;">
<td>Baby Shower</td>
<td>12/5/2026</td>
<td>7:00 PM</td>
<td>Not Available</td>
<td>
<a href="EditAvailability.aspx" style="color:white; text-decoration:none;">Edit</a>
&nbsp;&nbsp;
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

<tr style="height:90px;">
<td>Bridal Shower</td>
<td>15/5/2026</td>
<td>6:00 PM</td>
<td>Available</td>
<td>
<a href="EditAvailability.aspx" style="color:white; text-decoration:none;">Edit</a>
&nbsp;&nbsp;
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

<tr style="height:90px;">
<td>Graduation</td>
<td>10/5/2026</td>
<td>6:00 PM</td>
<td>Available</td>
<td>
<a href="EditAvailability.aspx" style="color:white; text-decoration:none;">Edit</a>
&nbsp;&nbsp;
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

<tr style="height:90px;">
<td>Graduation</td>
<td>10/5/2026</td>
<td>8:00 PM</td>
<td>Not Available</td>
<td>
<a href="EditAvailability.aspx" style="color:white; text-decoration:none;">Edit</a>
&nbsp;&nbsp;
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

</table>

<div style="
width:880px;
text-align:right;
margin-top:0px;
background-color:#d9d9d9;
padding-top:12px;
padding-bottom:12px;
">

    <a href="AddSlot.aspx"
style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 16px;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
display:inline-flex;
align-items:center;
gap:4px;
margin-right:12px;
">

    <span>&nbsp;Add slot</span>

</a>

</div>

</div>

</asp:Content>
