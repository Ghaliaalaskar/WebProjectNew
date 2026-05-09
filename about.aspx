<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebProjectNew.about" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>About Us - Party Planner</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        body, html { 
            margin: 0; 
            padding: 0; 
            height: 100%; 
            font-family: 'Times New Roman', serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #1a1a1a;
        }

        .main-container {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .about-card {
            background: #2d2a32; 
            width: 85%;
            max-width: 1000px;
            display: flex;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 20px 50px rgba(0,0,0,0.6);
        }

        .text-section {
            flex: 1.2; 
            padding: 50px;
            color: white;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .image-section {
            flex: 1;
            background-image: url('aboutus.jpg');
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat;
            min-height: 450px;
        }

        h2 { 
            font-family: 'Brush Script MT', cursive; 
            font-size: 55px; 
            margin-bottom: 20px; 
            font-weight: normal;
        }

        p { 
            font-size: 18px; 
            line-height: 1.6; 
            margin-bottom: 20px; 
            color: #d1d1d1;
        }

        
        .home-icon-fixed {
            position: fixed;
            bottom: 30px;
            left: 30px;
            background-color: #70677A; 
            color: white;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            text-decoration: none;
            font-size: 24px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            transition: transform 0.3s, background-color 0.3s;
            z-index: 1000;
        }

        .home-icon-fixed:hover {
            background-color: #5D5467;
            transform: scale(1.1); 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-container">
            <div class="about-card">
                <div class="text-section">
                    <h2>About Us</h2>
                    <p>Since our journey started, our goal has been to make celebrations more joyful, stylish, and easy to plan. What began as a love for creating beautiful events has grown into a place people trust for their special occasions.</p>
                    <p>We provide ready-made party sets designed to suit different events such as Graduations, baby shower, bridal shower and other memorable moments.</p>
                    <p>Our aim is to help you enjoy your celebration while we handle the details, creating moments filled with happiness and lasting memories.</p>
                </div>

                <div class="image-section"></div>
            </div>
        </div>

        
        <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/welcomepage.aspx" CssClass="home-icon-fixed">
            <i class="fas fa-home"></i>
        </asp:HyperLink>
    </form>
</body>
</html>
