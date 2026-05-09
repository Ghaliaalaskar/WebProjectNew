<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="AddSlot.aspx.cs"
Inherits="WebProjectNew.AddSlot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;
    margin:auto;
    background:white;
    padding:20px;">

    <!-- Title -->
    <div style="background:#5e5a6e;
        color:white;
        font-size:38px;
        font-family:Georgia;
        padding:15px;">
        Add Slot
    </div>

    <!-- Form -->
    <div style="width:700px;
        margin:30px auto;
        border:1px solid #cfcfcf;">

        <div style="background:#f5f5f5;
            padding:20px;
            font-size:20px;
            font-family:Georgia;">
            Add slot:
        </div>

        <div style="background:#5e5a6e;
            padding:35px;">

            <table style="width:100%;">

                <!-- Theme -->
                <tr>

                    <td style="padding:15px;
                        color:white;
                        font-size:18px;
                        font-weight:bold;">
                        Theme Name:
                    </td>

                    <td>

                        <asp:DropDownList ID="ddlTheme"
                            runat="server"
                            Width="400px"
                            Height="35px"
                            Font-Size="16px">

                            <asp:ListItem Text="Select Theme:" Value=""></asp:ListItem>
                            <asp:ListItem>Baby Shower</asp:ListItem>
                            <asp:ListItem>Bridal Shower</asp:ListItem>
                            <asp:ListItem>Graduation</asp:ListItem>

                        </asp:DropDownList>

                        <br />

                        <asp:RequiredFieldValidator
                            ID="rfvTheme"
                            runat="server"
                            ControlToValidate="ddlTheme"
                            InitialValue=""
                            ErrorMessage="Required"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </td>

                </tr>

                <!-- Date -->
                <tr>

                    <td style="padding:15px;
                        color:white;
                        font-size:18px;
                        font-weight:bold;">
                        Date:
                    </td>

                    <td>

                        <asp:TextBox ID="txtDate"
                            runat="server"
                            TextMode="Date"
                            Width="400px"
                            Height="35px"
                            Font-Size="16px">
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

                </tr>

                <!-- Time -->
                <tr>

                    <td style="padding:15px;
                        color:white;
                        font-size:18px;
                        font-weight:bold;">
                        Time:
                    </td>

                    <td>

                        <asp:DropDownList ID="ddlTime"
                            runat="server"
                            Width="400px"
                            Height="35px"
                            Font-Size="16px">

                            <asp:ListItem Text="Select Time:" Value=""></asp:ListItem>
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

                </tr>

                <!-- Status -->
                <tr>

                    <td style="padding:15px;
                        color:white;
                        font-size:18px;
                        font-weight:bold;">
                        Status:
                    </td>

                    <td>

                        <asp:DropDownList ID="ddlStatus"
                            runat="server"
                            Width="400px"
                            Height="35px"
                            Font-Size="16px">

                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Booked</asp:ListItem>

                        </asp:DropDownList>

                        <asp:RequiredFieldValidator
                            ID="rfvTime0"
                            runat="server"
                            ControlToValidate="ddlTime"
                            InitialValue=""
                            ErrorMessage="Required"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </td>

                </tr>

                <!-- Buttons -->
                <tr>

                    <td></td>

                    <td style="padding-top:30px;">

                        <asp:Button ID="btnCancel"
                            runat="server"
                            Text="Cancel"
                            PostBackUrl="~/ManageAvailability.aspx"
                            Width="100px"
                            Height="40px"
                            CausesValidation="false" />

                        &nbsp;&nbsp;&nbsp;

                        <asp:Button ID="btnAdd"
                            runat="server"
                            Text="+Add"
                            Width="100px"
                            Height="40px" />

                    </td>

                </tr>

            </table>

        </div>

    </div>

</div>

</asp:Content>