<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebProjectNew.login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body, html { margin: 0; padding: 0; height: 100%; font-family: 'Times New Roman', serif; overflow: hidden; }
        .main-bg { 
            background-image: linear-gradient(rgba(30, 20, 40, 0.7), rgba(10, 10, 15, 0.85)), url('bg.jpeg'); 
            background-size: cover; background-position: center; height: 100vh; display: flex; justify-content: center; align-items: center; 
        }
        .login-card {
            background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(15px); border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 40px; border-radius: 40px; width: 420px; text-align: center; color: white;
        }
        .user-icon { font-size: 90px; margin-bottom: 10px; }
        h2 { font-size: 45px; font-weight: normal; margin-bottom: 30px; }
        .input-field {
            width: 100%; background: rgba(255, 255, 255, 0.15); border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px; padding: 15px; color: white; font-size: 18px; margin-bottom: 20px; box-sizing: border-box; outline: none;
        }
        .btn-submit {
            width: 100%; background: #3b245a; border: none; color: white; padding: 15px; border-radius: 20px;
            font-size: 22px; cursor: pointer; transition: 0.3s;
        }
        .btn-submit:hover { background: #4d3075; }
        .footer-text { margin-top: 25px; font-size: 18px; }
        .footer-text a { color: white; text-decoration: none; font-weight: bold; }
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
            <div class="login-card">
                <div class="user-icon"><i class="fa-regular fa-circle-user"></i></div>
                <h2>Login</h2>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="txtPass" runat="server" CssClass="input-field" TextMode="Password" placeholder="password"></asp:TextBox>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-submit" PostBackUrl="~/PickTheme.aspx" OnClick="btnLogin_Click"/>
                <div class="footer-text">
                    Don't have an account? <a href="register.aspx">Register</a>
                </div>
            </div>
            <a href="welcomepage.aspx" class="home-link"><i class="fa-solid fa-house-chimney-window"></i></a>
        </div>
    </form>
</body>
</html>