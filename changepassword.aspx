<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="WebProjectNew.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            width: 676px;
        }
        .auto-style7 {
            font-weight: normal;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style9 {
            text-align: center;
            width: 676px;
            font-weight: bold;
        }
        .auto-style10 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style4">
        <tr>
            <td colspan="2">
                <h2>Change password</h2>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <h5 class="auto-style7">This will be your new login password</h5>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <h3><span class="auto-style7">Your password
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" TextMode="Password" Width="200px"></asp:TextBox>
                </h3>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <h3><span class="auto-style7">New password
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style8" TextMode="Password" Width="200px"></asp:TextBox>
                </h3>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <h3><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; confirm new password </span>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style8" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                </h3>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="password does not matched" ForeColor="#CC3300"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BorderStyle="None" ForeColor="#87779A" Text="Cancel" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#87779A" BorderStyle="None" ForeColor="White" Text="Change" Width="100px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#006600"></asp:Label>
            </td>
            <td class="auto-style5">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
