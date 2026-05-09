<%@ Page Title="Manage Themes" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true" CodeBehind="ManageThemes.aspx.cs" Inherits="WebProjectNew.ManageThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:980px;margin-left:15px;margin-top:35px;font-family:Georgia;">

<div style="width:851px;height:62px;background:#70677A;color:white;font-size:42px;line-height:62px;padding-left:28px;">
Manage Themes
</div>

<table style="width:880px;border-collapse:collapse;background:#70677A;color:white;font-size:18px;text-align:center;font-family:Georgia;">

<tr style="background:#d5cedc;color:black;height:68px;font-size:21px;">
<th>Themes Name</th>
<th>Duration</th>
<th>Price</th>
<th>Actions</th>
</tr>

<tr style="height:120px;">

<td>
<asp:TextBox ID="txtThemeName" runat="server" Width="170px" Height="30px"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="rfvThemeName" runat="server"
ControlToValidate="txtThemeName"
ErrorMessage="Required"
ForeColor="Red"
Display="Dynamic" />
</td>

<td>
<asp:TextBox ID="txtDuration" runat="server" Width="120px" Height="30px"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="rfvDuration" runat="server"
ControlToValidate="txtDuration"
ErrorMessage="Required"
ForeColor="Red"
Display="Dynamic" />
<br />
<asp:RegularExpressionValidator ID="revDuration" runat="server"
ControlToValidate="txtDuration"
ValidationExpression="^[0-9]+$"
ErrorMessage="Numbers Only"
ForeColor="Yellow"
Display="Dynamic" />
</td>

<td>
<asp:TextBox ID="txtPrice" runat="server" Width="120px" Height="30px"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="rfvPrice" runat="server"
ControlToValidate="txtPrice"
ErrorMessage="Required"
ForeColor="Red"
Display="Dynamic" />
<br />
<asp:RegularExpressionValidator ID="revPrice" runat="server"
ControlToValidate="txtPrice"
ValidationExpression="^[0-9]+$"
ErrorMessage="Numbers Only"
ForeColor="Yellow"
Display="Dynamic" />
</td>

<td>
<asp:Button ID="btnEdit" runat="server"
Text="Edit"
PostBackUrl="~/EditTheme.aspx"
CausesValidation="true"
Width="70px"
Height="35px"
BackColor="White"
ForeColor="Black"
Font-Names="Georgia"
Font-Size="16px" />

&nbsp;&nbsp;

<asp:Button ID="btnDelete" runat="server"
Text="Delete"
CausesValidation="true"
Width="80px"
Height="35px"
BackColor="White"
ForeColor="Black"
Font-Names="Georgia"
Font-Size="16px"
OnClick="btnDelete_Click" />
</td>

</tr>

<tr style="height:70px;background:white;">
<td colspan="4" style="text-align:right;padding-right:15px;">

&nbsp;

<asp:Button ID="btnAddTheme" runat="server"
Text="Add Themes"
PostBackUrl="~/AddThemes.aspx"
CausesValidation="false"
Width="130px"
Height="40px"
BackColor="White"
ForeColor="Black"
Font-Names="Georgia"
Font-Size="16px" />

</td>
</tr>

</table>

<br />

<div style="text-align:center;">
<asp:Label ID="lblMessage" runat="server"
ForeColor="LimeGreen"
Font-Size="20px"
Font-Bold="true">
</asp:Label>
</div>

</div>

</asp:Content>