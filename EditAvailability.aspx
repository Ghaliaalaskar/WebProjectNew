<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="EditAvailability.aspx.cs"
Inherits="WebProjectNew.EditAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;margin:auto;background:white;padding:20px;">

    <div style="background:#5e5a6e;color:white;font-size:38px;font-family:Georgia;padding:15px;">
        Edit Availability
    </div>

    <br />

    <div style="width:650px;margin:auto;border:1px solid #cccccc;font-family:Georgia;">

        <div style="background:#eeeeee;padding:18px;font-size:22px;">
            Edit Availability
        </div>

        <div style="background:#5e5a6e;padding:35px;color:white;">

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Theme:</label>

                <asp:DropDownList ID="ddlTheme" runat="server"
                    Width="380px"
                    Height="34px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                    <asp:ListItem Text="Select Theme:" Value=""></asp:ListItem>
                    <asp:ListItem>Baby Shower</asp:ListItem>
                    <asp:ListItem>Bridal Shower</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                </asp:DropDownList>

                <br />

                <asp:RequiredFieldValidator ID="rfvTheme" runat="server"
                    ControlToValidate="ddlTheme"
                    InitialValue=""
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Date:</label>

                <asp:TextBox ID="txtDate" runat="server"
                    TextMode="Date"
                    Width="375px"
                    Height="30px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator ID="rfvDate" runat="server"
                    ControlToValidate="txtDate"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Time:</label>

                <asp:DropDownList ID="ddlTime" runat="server"
                    Width="380px"
                    Height="34px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                    <asp:ListItem Text="Select Time:" Value=""></asp:ListItem>
                    <asp:ListItem>4:00 PM</asp:ListItem>
                    <asp:ListItem>5:00 PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                    <asp:ListItem>7:00 PM</asp:ListItem>
                </asp:DropDownList>

                <br />

                <asp:RequiredFieldValidator ID="rfvTime" runat="server"
                    ControlToValidate="ddlTime"
                    InitialValue=""
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Status:</label>

                <asp:DropDownList ID="ddlStatus" runat="server"
                    Width="380px"
                    Height="34px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                    <asp:ListItem Text="Select Status:" Value=""></asp:ListItem>
                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Booked</asp:ListItem>
                </asp:DropDownList>

                <br />

                <asp:RequiredFieldValidator ID="rfvStatus" runat="server"
                    ControlToValidate="ddlStatus"
                    InitialValue=""
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div style="text-align:right;">

                <asp:Button ID="btnCancel" runat="server"
                    Text="Cancel"
                    Width="100px"
                    Height="40px"
                    CausesValidation="false"
                    PostBackUrl="~/ManageAvailability.aspx" />

                &nbsp;&nbsp;

                <asp:Button ID="btnSave" runat="server"
                    Text="Save"
                    Width="100px"
                    Height="40px"
                    OnClick="btnSave_Click" />

            </div>

            <br />

            <div style="text-align:center;">
                <asp:Label ID="lblMessage" runat="server"
                    ForeColor="LimeGreen"
                    Font-Size="20px"
                    Font-Bold="true">
                </asp:Label>
            </div>

        </div>

    </div>

</div>

</asp:Content>