<%@ Page Title="Edit Theme" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true" CodeBehind="EditTheme.aspx.cs" Inherits="WebProjectNew.EditTheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:980px;margin-left:15px;margin-top:35px;font-family:Georgia;">

<div style="width:851px;height:62px;background-color:#70677A;color:white;font-size:42px;line-height:62px;padding-left:28px;margin-bottom:25px;">
Edit Themes
</div>

<div style="width:650px;margin-left:70px;background-color:#70677A;color:white;font-size:20px;">

<div style="height:62px;background-color:#d5cedc;color:black;font-size:26px;line-height:62px;padding-left:20px;">
Edit Themes:
</div>

<div style="padding:35px;">

<div style="margin-bottom:18px;">
<label style="display:inline-block;width:140px;">Theme Name:</label>
<asp:DropDownList ID="ddlThemeName" runat="server" Width="360px" Height="35px">
<asp:ListItem Text="Select Theme" Value=""></asp:ListItem>
<asp:ListItem Text="Baby Shower" Value="Baby Shower"></asp:ListItem>
<asp:ListItem Text="Bridal Shower" Value="Bridal Shower"></asp:ListItem>
<asp:ListItem Text="Graduation" Value="Graduation"></asp:ListItem>
</asp:DropDownList>
<br />
<asp:RequiredFieldValidator ID="rfvThemeName" runat="server"
ControlToValidate="ddlThemeName" InitialValue=""
ErrorMessage="Required" ForeColor="Red" Display="Dynamic" />
</div>

<div style="margin-bottom:18px;">
<label style="display:inline-block;width:140px;vertical-align:top;">Description:</label>
<asp:TextBox ID="txtDescription" runat="server"
TextMode="MultiLine"
Width="360px"
Height="80px">
</asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="rfvDescription" runat="server"
ControlToValidate="txtDescription"
ErrorMessage="Required" ForeColor="Red" Display="Dynamic" />
</div>

<div style="margin-bottom:18px;">
<label style="display:inline-block;width:140px;">Duration:</label>
<asp:TextBox ID="txtDuration" runat="server" Width="360px" Height="32px"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="rfvDuration" runat="server"
ControlToValidate="txtDuration" ErrorMessage="Required" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revDuration" runat="server"
ControlToValidate="txtDuration" ValidationExpression="^[0-9]+$"
ErrorMessage="Numbers Only" ForeColor="Yellow" Display="Dynamic" />
</div>

<div style="margin-bottom:18px;">
<label style="display:inline-block;width:140px;">Price:</label>
<asp:TextBox ID="txtPrice" runat="server" Width="360px" Height="32px"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="rfvPrice" runat="server"
ControlToValidate="txtPrice" ErrorMessage="Required" ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revPrice" runat="server"
ControlToValidate="txtPrice" ValidationExpression="^[0-9]+$"
ErrorMessage="Numbers Only" ForeColor="Yellow" Display="Dynamic" />
</div>

<div style="margin-bottom:25px;">
<label style="display:inline-block;width:140px;">Photo:</label>
<asp:FileUpload ID="FileUpload1" runat="server" />
</div>

<div style="margin-top:35px;text-align:center;">

<a href="ManageThemes.aspx"
style="
display:inline-block;
width:100px;
height:38px;
line-height:38px;
background:#eeeeee;
border:1px solid gray;
text-decoration:none;
color:black;
font-size:17px;
font-family:Georgia;
margin-right:20px;
text-align:center;
vertical-align:middle;
">
&nbsp;Cancel
</a>

<asp:Button
ID="btnSave"
runat="server"
Text="Save"
Width="100px"
Height="40px"
BackColor="#eeeeee"
ForeColor="Black"
BorderColor="Gray"
Font-Names="Georgia"
Font-Size="17px"
OnClick="btnSave_Click" />

</div>

<br />

<div style="text-align:center;">
<asp:Label ID="lblMessage" runat="server" ForeColor="LimeGreen" Font-Size="20px" Font-Bold="true"></asp:Label>
</div>

</div>
</div>
</div>

</asp:Content>