<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="usereditbooking.aspx.cs" Inherits="WebProjectNew.usereditbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td colspan="2">
                <h2>Edit Booking</h2>
            </td>
        </tr>
        <tr>
            <td>Edit your upcoming booking</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>
