<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="ManageAvailability.aspx.cs"
Inherits="WebProjectNew.ManageAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;margin:auto;background:white;padding:20px;">

    <div style="background:#5e5a6e;
        color:white;
        font-size:38px;
        font-family:Georgia;
        padding:15px;">
        Manage Availability
    </div>

    <table style="width:100%;
        border-collapse:collapse;
        text-align:center;">

        <!-- Header -->
        <tr style="background:white;
            height:60px;
            font-size:18px;
            font-weight:bold;">

            <td>Themes Name</td>
            <td>Date</td>
            <td>Time</td>
            <td>Status</td>
            <td>Actions</td>

        </tr>

        <!-- Row -->
        <tr style="background:#5e5a6e;
            height:100px;
            color:white;">

            <!-- Theme -->
            <td>

                <asp:TextBox ID="txtThemeName"
                    runat="server"
                    Width="180px"
                    Height="30px">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvTheme"
                    runat="server"
                    ControlToValidate="txtThemeName"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <!-- Date -->
            <td>

                <asp:TextBox ID="txtDate"
                    runat="server"
                    TextMode="Date"
                    Width="140px"
                    Height="30px">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvDate"
                    runat="server"
                    ControlToValidate="txtDate"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <!-- Time -->
            <td>

                <asp:TextBox ID="txtTime"
                    runat="server"
                    TextMode="Time"
                    Width="120px"
                    Height="30px">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvTime"
                    runat="server"
                    ControlToValidate="txtTime"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

            </td>

            <!-- Status -->
            <td>

                <asp:DropDownList ID="ddlStatus"
                    runat="server"
                    Width="120px"
                    Height="35px">

                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Booked</asp:ListItem>

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

            <!-- Buttons -->
            <td>

                <asp:Button ID="btnEdit"
                    runat="server"
                    Text="Edit"
                    Width="70px"
                    Height="35px" />

                &nbsp;

                <asp:Button ID="btnDelete"
                    runat="server"
                    Text="Delete"
                    Width="70px"
                    Height="35px"
                    CausesValidation="false"
                    OnClick="btnDelete_Click" />

            </td>

        </tr>

        <!-- Add Slot -->
        <tr style="height:70px;background:white;">

            <td colspan="5"
                style="text-align:right;
                padding-right:20px;">

                <asp:Button ID="btnAddSlot"
                    runat="server"
                    Text="Add Slot"
                    PostBackUrl="~/AddSlot.aspx"
                    causesValidation="false"
                    Width="120px"
                    Height="40px" />

            </td>

        </tr>

    </table>

    <br />

    <div style="text-align:center;">

        &nbsp;<asp:Label ID="lblMessage"
            runat="server"
            ForeColor="LimeGreen"
            Font-Size="20px"
            Font-Bold="true">
        </asp:Label>

    </div>

</div>

</asp:Content>