<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="userlogout.aspx.cs" Inherits="WebProjectNew.userlogout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 { width: 100%; background-color: #FFFFFF; }
        .auto-style4 { text-align: center; font-family: Georgia; font-size: 20px; padding: 20px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style4">
                <strong>Are you sure you want to log out?</strong><br /><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <%-- زر العودة: يوجهك مباشرة لصفحة لوحة التحكم --%>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <%-- زر نعم: ينفذ كود تسجيل الخروج في ملف الـ CS --%>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Yes" BackColor="#87779A" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Width="200px" Height="30px" />
            </td>
        </tr>
    </table>
</asp:Content>