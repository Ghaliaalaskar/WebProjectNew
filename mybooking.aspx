<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="mybooking.aspx.cs" Inherits="WebProjectNew.mybooking" %>
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
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style4">
        <tr>
            <td>
                <h2>My Bookings</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h5 class="auto-style5">View your current or upcoming bookings.</h5>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" style="text-align: center" Width="728px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
