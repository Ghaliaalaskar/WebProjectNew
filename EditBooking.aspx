<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="EditBooking.aspx.cs"
Inherits="WebProjectNew.EditBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;margin:auto;background:white;padding:20px;">

    <div style="background:#5e5a6e;
        color:white;
        font-size:38px;
        font-family:Georgia;
        padding:15px;">
        Edit Booking
    </div>

    <br />

    <div style="width:700px;
        margin:auto;
        background:#5e5a6e;
        padding:40px;
        color:white;
        font-family:Georgia;">

        <table style="width:100%;">

            <tr>
                <td style="padding-bottom:20px;">Client Name:</td>

                <td>

                    <asp:TextBox ID="txtClientName"
                        runat="server"
                        Width="350px"
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
            </tr>

            <tr>
                <td style="padding-bottom:20px;">Theme:</td>

                <td>

                    <asp:DropDownList ID="ddlTheme"
                        runat="server"
                        Width="355px"
                        Height="35px">

                        <asp:ListItem Text="Select Theme" Value=""></asp:ListItem>
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

            <tr>
                <td style="padding-bottom:20px;">Date:</td>

                <td>

                    <asp:TextBox ID="txtDate"
                        runat="server"
                        TextMode="Date"
                        Width="350px"
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
            </tr>

            <tr>
                <td style="padding-bottom:20px;">Time:</td>

                <td>

                    <asp:DropDownList ID="ddlTime"
                        runat="server"
                        Width="355px"
                        Height="35px">

                        <asp:ListItem Text="Select Time" Value=""></asp:ListItem>
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

        </table>

        <br />

        <div style="text-align:right;">

            <asp:Button ID="btnCancel"
                runat="server"
                Text="Cancel"
                Width="100px"
                Height="40px"
                CausesValidation="false"
                PostBackUrl="~/ManageBookings.aspx" />

            &nbsp;

            <asp:Button ID="btnSave"
                runat="server"
                Text="Save"
                Width="100px"
                Height="40px"
                OnClick="btnSave_Click" />

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

</div>

</asp:Content>
