<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="ManageBookings.aspx.cs"
Inherits="WebProjectNew.ManageBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;margin:auto;background:white;padding:20px;">

    <div style="background:#5e5a6e;
        color:white;
        font-size:38px;
        font-family:Georgia;
        padding:15px;">
        Manage Booking
    </div>

    <table style="width:100%;
        border-collapse:collapse;
        text-align:center;
        font-family:Georgia;">

        <tr style="background:white;
            height:60px;
            font-size:18px;
            font-weight:bold;">

            <td>Client Name</td>
            <td>Theme Date</td>
            <td>Time</td>
            <td>Status</td>
            <td>Actions</td>

        </tr>

        <tr style="background:#5e5a6e;
            height:100px;
            color:white;">

            <td>

                <asp:TextBox ID="txtClientName"
                    runat="server"
                    Width="170px"
                    Height="30px">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvClientName"
                    runat="server"
                    ControlToValidate="txtClientName"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <td>

                <asp:TextBox ID="txtThemeDate"
                    runat="server"
                    TextMode="Date"
                    Width="150px"
                    Height="30px">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvThemeDate"
                    runat="server"
                    ControlToValidate="txtThemeDate"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <td>

                <asp:DropDownList ID="ddlTime"
                    runat="server"
                    Width="120px"
                    Height="35px">

                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                    <asp:ListItem>4:00 PM</asp:ListItem>
                    <asp:ListItem>5:00 PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                    <asp:ListItem>7:00 PM</asp:ListItem>

                </asp:DropDownList>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvTime"
                    runat="server"
                    ControlToValidate="ddlTime"
                    InitialValue=""
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <td>

                <asp:DropDownList ID="ddlStatus"
                    runat="server"
                    Width="130px"
                    Height="35px">

                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                    <asp:ListItem>Confirmed</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Cancelled</asp:ListItem>

                </asp:DropDownList>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvStatus"
                    runat="server"
                    ControlToValidate="ddlStatus"
                    InitialValue=""
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <td>

                <asp:Button ID="btnDelete"
                    runat="server"
                    Text="Delete"
                    Width="80px"
                    Height="35px"
                    OnClick="btnDelete_Click" />

            </td>

        </tr>

    </table>

    <br />

    <div style="text-align:right;">

        <asp:Button ID="btnEditBooking"
            runat="server"
            Text="Edit Booking"
            Width="150px"
            Height="40px"
            CausesValidation="false"
            PostBackUrl="~/EditBooking.aspx" />

    </div>

    <br />

    <div style="text-align:center;">

        <asp:Label ID="lblMessage"
            runat="server"
            ForeColor="LimeGreen"
            Font-Size="20px"
            Font-Bold="true">
        </asp:Label>

    </div>

</div>

</asp:Content>