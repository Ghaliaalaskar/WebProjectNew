<%@ Page Title="Manage Users"
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
margin-bottom:0px;
">

Manage users

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

<th>User ID</th>
<th>name</th>
<th>Email</th>
<th>Phone</th>
<th>Role</th>
<th>Actions</th>

</tr>

<tr style="height:90px;">
<td>50014</td>
<td>Lama</td>
<td>lae@gmail.com</td>
<td>966511033011</td>
<td>Client</td>

<td>
<a href="EditUser.aspx"
style="color:white; text-decoration:none;">Edit</a>

&nbsp;&nbsp;

<a href="#"
style="color:white; text-decoration:none;">Delete</a>
</td>

</tr>

<tr style="height:90px;">
<td>11234</td>
<td>Shaden</td>
<td>snh@gmail.com</td>
<td>966505181433</td>
<td>Client</td>

<td>
<a href="EditUser.aspx"
style="color:white; text-decoration:none;">Edit</a>

&nbsp;&nbsp;

<a href="#"
style="color:white; text-decoration:none;">Delete</a>
</td>

</tr>

<tr style="height:90px;">
<td>90900</td>
<td>Sara</td>
<td>sl2@gmail.com</td>
<td>966555263162</td>
<td>Client</td>

<td>
<a href="EditUser.aspx"
style="color:white; text-decoration:none;">Edit</a>

&nbsp;&nbsp;

<a href="#"
style="color:white; text-decoration:none;">Delete</a>
</td>

</tr>

<tr style="height:90px;">
<td>33896</td>
<td>Nawaf</td>
<td>nnm@gmail.com</td>
<td>966559322444</td>
<td>Client</td>

<td>
<a href="EditUser.aspx"
style="color:white; text-decoration:none;">Edit</a>

&nbsp;&nbsp;

<a href="#"
style="color:white; text-decoration:none;">Delete</a>
</td>

</tr>

</table>

<div style="
width:880px;
text-align:right;
margin-top:0px;
background-color:#70677A;
padding-top:12px;
padding-bottom:12px;
">

    <a href="AddUser.aspx"

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

    <span>Add new user</span>

</a>

</div>

</div>

</asp:Content>
