<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcomepage.aspx.cs" Inherits="WebProjectNew.welcomepage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Party Planner</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            font-family: 'Times New Roman', serif; 
            overflow: hidden;
        }

        .main-bg {
            background-image: linear-gradient(rgba(30, 20, 40, 0.7), rgba(10, 10, 15, 0.85)), 
                              url('welcome.jpeg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
            color: #ffffff;
        }

        .nav-bar {
            padding: 25px 50px;
            display: flex;
            gap: 35px;
            background: rgba(255, 255, 255, 0.05); 
        }

        .nav-link {
            text-decoration: none;
            color: #f0f0f0;
            font-size: 22px;
            letter-spacing: 0.5px;
            transition: 0.3s;
        }

        .nav-link:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        h1 {
            font-size: 68px;
            font-weight: 300;
            margin-bottom: 40px;
            color: #ffffff;
            letter-spacing: 1px;
            text-transform: capitalize;
        }

        .btn-container {
            display: flex;
            gap: 20px;
            margin-bottom: 35px;
        }

        .btn-action {
            background: rgba(255, 255, 255, 0.12); 
            border: 1px solid rgba(255, 255, 255, 0.2);
            color: #ffffff;
            padding: 12px 60px;
            border-radius: 15px; 
            font-size: 24px;
            cursor: pointer;
            backdrop-filter: blur(10px); 
            transition: 0.3s;
        }

        .btn-action:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        .slogan {
            font-style: italic;
            font-size: 24px;
            margin-bottom: 45px;
            color: #d1d1d1;
        }

        .btn-discover {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.15);
            color: #ffffff;
            padding: 15px 90px;
            border-radius: 12px;
            font-size: 26px;
            text-decoration: none;
            backdrop-filter: blur(10px);
            transition: 0.4s;
        }

        .btn-discover:hover {
            background: rgba(255, 255, 255, 0.15);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-bg">
            
            <nav class="nav-bar">
               
                <a href="welcomepage.aspx" class="nav-link">Home</a>
                <a href="DiscoverThemes.aspx" class="nav-link">Themes</a>
                <a href="about.aspx" class="nav-link">About us</a>
            </nav>

            <div class="content">
                <h1>welcome to party planner</h1>

                <div class="btn-container">
                    
                    <asp:Button ID="btnReg" runat="server" Text="Registration" CssClass="btn-action" PostBackUrl="register.aspx" />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-action" PostBackUrl="login.aspx" />
                </div>

                <p class="slogan">plan your perfect party with us !!</p>

                
                <asp:HyperLink ID="lnkDiscover" runat="server" NavigateUrl="DiscoverThemes.aspx" CssClass="btn-discover">Discover Themes</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
