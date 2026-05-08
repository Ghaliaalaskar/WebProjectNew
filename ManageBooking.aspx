<%@ Page Title="Manage Booking"
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

Manage Booking

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

<th>Client Name</th>
<th>Theme Date</th>
<th>Time</th>
<th>Status</th>
<th>Actions</th>

</tr>

<tr style="height:90px;">
<td>Lama</td>
<td>Baby Shower 12/5/2026</td>
<td>7:00 PM</td>
<td>Pending</td>
<td>
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

<tr style="height:90px;">
<td>Shaden</td>
<td>Graduation 10/5/2026</td>
<td>6:00 PM</td>
<td>Confirmed</td>
<td>
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

<tr style="height:90px;">
<td>Sara</td>
<td>Bridal Shower 15/5/2026</td>
<td>6:00 PM</td>
<td>Cancelled</td>
<td>
<a href="#" style="color:white; text-decoration:none;">Delete</a>
</td>
</tr>

<tr style="height:90px;">
<td>Nawaf</td>
<td>Graduation 10/5/2026</td>
<td>8:00 PM</td>
<td>Confirmed</td>
<td>
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

        <a href="EditBooking.aspx"
style="
background-color:#eeeeee;
border:1px solid gray;
padding:8px 35px;
text-decoration:none;
color:black;
font-size:20px;
font-family:Georgia;
display:inline-flex;
align-items:center;
gap:8px;
margin-right:22px;
">

        <span>Edit</span>

</a>

</div>

</div>

</asp:Content>
