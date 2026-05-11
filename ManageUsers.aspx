<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"

AutoEventWireup="true"

CodeBehind="ManageUsers.aspx.cs"

Inherits="WebProjectNew.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;margin:auto;background:white;padding:20px;">

    <div style="background:#5e5a6e;color:white;font-size:38px;font-family:Georgia;padding:15px;">

        Manage users

    </div>

    <table style="width:100%;border-collapse:collapse;text-align:center;font-family:Georgia;">

        <tr style="background:white;height:60px;font-size:20px;font-weight:bold;">

            <td>User ID</td>

            <td>Name</td>

            <td>Email</td>

            <td>Phone</td>

            <td>Actions</td>

        </tr>

        <tr style="background:#5e5a6e;height:100px;color:white;">

            <td>

                <asp:TextBox ID="txtUserID" runat="server" Width="100px" Height="30px"></asp:TextBox>

                <br />

                <asp:RequiredFieldValidator ID="rfvUserID" runat="server"

                    ControlToValidate="txtUserID"

                    ErrorMessage="Required"

                    ForeColor="Red">

                </asp:RequiredFieldValidator>

            </td>
            <td>

                <asp:TextBox ID="txtName" runat="server" Width="150px" Height="30px"></asp:TextBox>

                <br />

                <asp:RequiredFieldValidator ID="rfvName" runat="server"

                    ControlToValidate="txtName"

                    ErrorMessage="Required"

                    ForeColor="Red">

                </asp:RequiredFieldValidator>

            </td>

            <td>

                <asp:TextBox ID="txtEmail" runat="server" Width="180px" Height="30px"></asp:TextBox>

                <br />

                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"

                    ControlToValidate="txtEmail"

                    ErrorMessage="Required"

                    ForeColor="Red">

                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator ID="revEmail" runat="server"

                    ControlToValidate="txtEmail"

                    ValidationExpression="\w+@\w+\.\w+"

                    ErrorMessage="Invalid Email"

                    ForeColor="Yellow">

                </asp:RegularExpressionValidator>

            </td>

            <td>

                <asp:TextBox ID="txtPhone" runat="server" Width="150px" Height="30px"></asp:TextBox>

                <br />

                <asp:RequiredFieldValidator ID="rfvPhone" runat="server"

                    ControlToValidate="txtPhone"

                    ErrorMessage="Required"

                    ForeColor="Red">

                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator ID="revPhone" runat="server"

                    ControlToValidate="txtPhone"

                    ValidationExpression="^\d+$"

                    ErrorMessage="Invalid Phone Number"

                    ForeColor="Yellow">

                </asp:RegularExpressionValidator>

            </td>

            <td>

                <asp:Button ID="btnEdit" runat="server"

                    Text="Edit"

                    Width="70px"

                    Height="35px"

                    CausesValidation="false"

                    PostBackUrl="~/EditUser.aspx" />

                &nbsp;

                <asp:Button ID="btnDelete" runat="server"

                    Text="Delete"

                    Width="80px"

                    Height="35px"

                    OnClick="btnDelete_Click" />

            </td>

        </tr>

    </table>

    <br />

    <div style="text-align:right;">

        <asp:Button ID="btnAddUser" runat="server"

            Text="Add User"

            Width="120px"

            Height="40px"

            CausesValidation="false"

            PostBackUrl="~/AddUser.aspx" />

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

</asp:Content>