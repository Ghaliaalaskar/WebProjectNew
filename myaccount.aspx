<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="WebProjectNew.myaccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
        background-color: #FFFFFF;
    }
    .auto-style5 {
        font-weight: normal;
    }
    .auto-style6 {
        text-align: left;
    }
    .auto-style7 {
        font-weight: bold;
            margin-left: 189px;
        }
    .auto-style9 {
        font-weight: bold;
        text-align: left;
    }
    .auto-style10 {
        font-weight: bold;
        width: 683px;
        text-align: left;
    }
    .auto-style11 {
        text-align: left;
        }
        .auto-style12 {
            margin-left: 189px;
        }
        .auto-style13 {
            text-align: left;
            height: 43px;
        }
        .auto-style14 {
            text-align: left;
            height: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style4">
    <tr>
        <td class="auto-style14" colspan="2">
            <h2>Personal info</h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <h5 class="auto-style5">View and edit your personal info below</h5>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            <h3 class="auto-style6">&nbsp; <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name</span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style7" Width="200px"></asp:TextBox>
            </h3>
        </td>
        <td class="auto-style6">
            <h3 class="auto-style6"><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style7" Width="200px"></asp:TextBox>
            </h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style9" colspan="2">
            <h3 class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">Email
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </span>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Write the email in correct form" Font-Bold="False" Font-Size="Small" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style7" Width="300px"></asp:TextBox>
            </h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style9" colspan="2">
            <h3 class="auto-style6"><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone Number
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                </span>
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style12" Width="300px"></asp:TextBox>
            </h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/changepassword.aspx">Change password</asp:HyperLink>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Discard" BorderStyle="None" ForeColor="#87779A" style="text-align: right" Width="100px" />
        &nbsp;
            <br />
        </td>
        <td class="auto-style13">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Update" BackColor="#87779A" BorderStyle="None" ForeColor="White" Width="100px" OnClick="Button1_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="#006600"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
