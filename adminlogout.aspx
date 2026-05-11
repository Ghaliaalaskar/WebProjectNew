<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminlogout.aspx.cs" Inherits="WebProjectNew.adminlogout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            text-align: center;
            font-family: Georgia;
            font-size: 22px;
            padding: 40px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style17">
        <tr>
            <td class="auto-style18">
                <br /><br />
                <strong>Are you sure you want to log out from Admin Panel?</strong>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <%-- زر التأكيد باللون المختار --%>
                <asp:Button ID="Button3" runat="server" 
                    BackColor="#726A7A" 
                    BorderColor="Black" 
                    BorderStyle="Solid" 
                    BorderWidth="1px" 
                    OnClick="Button3_Click" 
                    Text="Yes, Log out" 
                    Width="200px" 
                    Height="40px" 
                    ForeColor="White" 
                    Font-Bold="true" />
            </td>
        </tr>
    </table>
</asp:Content>