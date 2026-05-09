<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="AddThemes.aspx.cs"
Inherits="WebProjectNew.AddThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:900px;margin:auto;">

    <h1 style="background:#5b566e;color:white;padding:15px;font-family:Georgia;font-size:45px;">
        Add Themes
    </h1>

    <div style="width:650px;margin:auto;background:#5b566e;padding:40px;">

        <h2 style="color:white;font-family:Georgia;">
            Add New Theme:
        </h2>

        <table style="width:100%;">

            <tr>
                <td style="color:white;font-size:26px;font-family:Georgia;width:190px;">
                    Name:
                </td>

                <td>
                    <asp:TextBox ID="txtName" runat="server"
                        Width="330px" Height="35px" Font-Size="16px">
                    </asp:TextBox>

                    <br />

                    <asp:RequiredFieldValidator ID="rfvName" runat="server"
                        ControlToValidate="txtName"
                        ErrorMessage="Required"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="color:white;font-size:26px;font-family:Georgia;">
                    Description:
                </td>

                <td>
                    <asp:TextBox ID="txtDescription" runat="server"
                        TextMode="MultiLine"
                        Width="330px"
                        Height="90px"
                        Font-Size="16px">
                    </asp:TextBox>

                    <br />

                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server"
                        ControlToValidate="txtDescription"
                        ErrorMessage="Required"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="color:white;font-size:26px;font-family:Georgia;">
                    Duration:
                </td>

                <td>
                    <asp:TextBox ID="txtDuration" runat="server"
                        Width="330px" Height="35px" Font-Size="16px">
                    </asp:TextBox>

                    <br />

                    <asp:RequiredFieldValidator ID="rfvDuration" runat="server"
                        ControlToValidate="txtDuration"
                        ErrorMessage="Required"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revDuration" runat="server"
                        ControlToValidate="txtDuration"
                        ValidationExpression="^\d+$"
                        ErrorMessage="Numbers Only"
                        ForeColor="Yellow">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td style="color:white;font-size:26px;font-family:Georgia;">
                    Price:
                </td>

                <td>
                    <asp:TextBox ID="txtPrice" runat="server"
                        Width="330px" Height="35px" Font-Size="16px">
                    </asp:TextBox>

                    <br />

                    <asp:RequiredFieldValidator ID="rfvPrice" runat="server"
                        ControlToValidate="txtPrice"
                        ErrorMessage="Required"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revPrice" runat="server"
                        ControlToValidate="txtPrice"
                        ValidationExpression="^\d+$"
                        ErrorMessage="Numbers Only"
                        ForeColor="Yellow">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td style="color:white;font-size:26px;font-family:Georgia;">
                    Photo:
                </td>

                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="330px" />

                    <br />

                    <asp:RequiredFieldValidator ID="rfvPhoto" runat="server"
                        ControlToValidate="FileUpload1"
                        ErrorMessage="Required"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

        </table>

        <br /><br />

        <div style="text-align:center;">

            <asp:Button ID="btnCancel" runat="server"
                Text="Cancel"
                Width="100px"
                Height="40px"
                CausesValidation="false"
                PostBackUrl="~/ManageThemes.aspx" />

            &nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnAdd" runat="server"
                Text="Add"
                Width="100px"
                Height="40px"
                OnClick="btnSaveTheme_Click" />

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

</asp:Content>