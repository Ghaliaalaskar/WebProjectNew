<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebProjectNew.register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body, html { margin: 0; padding: 0; height: 100%; font-family: 'Times New Roman', serif; overflow: hidden; }
        .main-bg { 
            background-image: linear-gradient(rgba(30, 20, 40, 0.7), rgba(10, 10, 15, 0.85)), url('bg.jpeg'); 
            background-size: cover; background-position: center; height: 100vh; display: flex; justify-content: center; align-items: center; 
        }
        .reg-card {
            background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(15px); border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 30px 40px; border-radius: 40px; width: 450px; text-align: center; color: white;
        }
        h2 { font-size: 45px; font-weight: normal; margin-bottom: 5px; }
        p { font-size: 20px; margin-bottom: 25px; opacity: 0.9; }
        .input-field {
            width: 100%; background: rgba(255, 255, 255, 0.15); border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 15px; padding: 12px; color: white; font-size: 16px; margin-bottom: 12px; box-sizing: border-box; outline: none;
        }
        .btn-submit {
            width: 100%; background: #3b245a; border: none; color: white; padding: 12px; border-radius: 15px;
            font-size: 22px; cursor: pointer; margin-top: 10px;
        }
        .home-link { position: absolute; bottom: 30px; left: 40px; color: white; font-size: 35px; }

        .main-bg { 
  
    background-image: linear-gradient(rgba(30, 20, 40, 0.7), rgba(10, 10, 15, 0.85)), 
                      url('welcome.jpeg'); 
    background-size: cover; 
    background-position: center; 
    height: 100vh; 
    display: flex; 
    justify-content: center; 
    align-items: center; 
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-bg">
            <div class="reg-card">
                <h2>Registration</h2>
                <p>create an Account</p>
                <asp:TextBox ID="txtName" runat="server" CssClass="input-field" placeholder="Full Name"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
    ErrorMessage="* Name is required" ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:8px; padding-left:10px;"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" placeholder="Email"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
    ErrorMessage="* Email is required" ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:5px; padding-left:10px;"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
    ErrorMessage="* Must be a valid .com email" ValidationExpression="^.*\.com$" 
    ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:8px; padding-left:10px;"></asp:RegularExpressionValidator>

                <asp:TextBox ID="txtPhone" runat="server" CssClass="input-field" placeholder="Phone Number"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" 
    ErrorMessage="* Phone is required" ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:8px; padding-left:10px;"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtPass" runat="server" CssClass="input-field" TextMode="Password" placeholder="Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" 
    ErrorMessage="* Password is required" ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:8px; padding-left:10px;"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtConfirm" runat="server" CssClass="input-field" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirm" 
    ErrorMessage="* Please confirm password" ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:5px; padding-left:10px;"></asp:RequiredFieldValidator>

<asp:CompareValidator ID="cvPass" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPass" 
    ErrorMessage="* Passwords do not match" ForeColor="#FF6B6B" Display="Dynamic" 
    style="display:block; text-align:left; font-size:13px; margin-bottom:8px; padding-left:10px;"></asp:CompareValidator>

                <asp:Button ID="btnReg" runat="server" Text="Register" CssClass="btn-submit" OnClick="btnRegister_Click" />
            </div>
            <a href="welcomepage.aspx" class="home-link"><i class="fa-solid fa-house-chimney-window"></i></a>
        </div>
    </form>
</body>
</html>
