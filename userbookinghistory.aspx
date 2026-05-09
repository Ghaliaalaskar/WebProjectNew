<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="userbookinghistory.aspx.cs" Inherits="WebProjectNew.userbookinghistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            font-weight: normal;
        }
        .table-style {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>
                <h2 class="auto-style6"><strong>Booking History</strong></h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <h5 class="auto-style6">View your booking history</h5>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table-style" BackColor="#CCCCCC" OnSelectedIndexChanged="GridViewHistory_SelectedIndexChanged" Width="600px">
                <Columns>
                 <asp:BoundField DataField="ServiceName" HeaderText="Service Name" />
                 <asp:BoundField DataField="AppointmentDate" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                  <asp:BoundField DataField="AppointmentTime" HeaderText="Time" />
                 </Columns>
                <EmptyDataTemplate>
        <div style="text-align:center; padding:20px;">
            No booking history found.
        </div>
    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#87779A" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
