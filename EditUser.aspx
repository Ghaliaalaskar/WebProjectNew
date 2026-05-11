<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master"
AutoEventWireup="true"
CodeBehind="EditUser.aspx.cs"
Inherits="WebProjectNew.EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:1000px;margin:auto;background:white;padding:20px;">

    <div style="background:#5e5a6e;color:white;font-size:38px;font-family:Georgia;padding:15px;">
        Edit User
    </div>

    <br />

    <div style="width:600px;margin:auto;border:1px solid #cccccc;font-family:Georgia;">

        <div style="background:#eeeeee;padding:18px;font-size:22px;">
            Edit User:
        </div>

        <div style="background:#5e5a6e;padding:35px;color:white;">

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Name:</label>

                <asp:TextBox ID="txtName" runat="server"
                    Width="300px"
                    Height="30px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvName"
                    runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Email:</label>

                <asp:TextBox ID="txtEmail" runat="server"
                    Width="300px"
                    Height="30px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ValidationExpression="\w+@\w+\.\w+"
                    ErrorMessage="Invalid Email"
                    ForeColor="Yellow">
                </asp:RegularExpressionValidator>
            </div>

            <div style="margin-bottom:22px;">
                <label style="display:inline-block;width:120px;">Phone:</label>

                <asp:TextBox ID="txtPhone" runat="server"
                    Width="300px"
                    Height="30px"
                    Font-Size="16px"
                    Font-Names="Georgia">
                </asp:TextBox>

                <br />

                <asp:RequiredFieldValidator
                    ID="rfvPhone"
                    runat="server"
                    ControlToValidate="txtPhone"
                    ErrorMessage="Required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <br />

               <asp:RegularExpressionValidator 
                 ID="revPhone" 
                    runat="server" 
                  ControlToValidate="txtPhone" 
                     ValidationExpression="^[0-9]{10}$" 
                     ErrorMessage="يرجى إدخال رقم هاتف صحيح (10 أرقام)." 
                    ForeColor="Red">
                    </asp:RegularExpressionValidator>
                    
            </div>

            <div style="text-align:right;">
                <asp:Button ID="btnCancel" runat="server"
                    Text="Cancel"
                    Width="100px"
                    Height="40px"
                    CausesValidation="false"
                    PostBackUrl="~/ManageUsers.aspx" OnClick="btnCancel_Click1" />

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
                    Font-Size="18px"
                    Font-Bold="true">
                </asp:Label>
            </div>

        </div>

    </div>

</div>

</asp:Content>