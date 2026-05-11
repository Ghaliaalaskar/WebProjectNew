<%@ Page Title="User Home" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="WebProjectNew.userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .dashboard-wrapper { padding: 0; background-color: #FFFFFF; min-height: 700px; display: flex; flex-direction: column; }
        .welcome-header { background-color: #70677A; color: #FFFFFF; padding: 25px 35px; font-size: 26px; font-family: 'Times New Roman', serif; width: 100%; box-sizing: border-box; margin-bottom: 40px; }
        .stats-container { display: flex; gap: 25px; padding: 0 35px; margin-bottom: 50px; }
        .stat-card { background-color: #70677A; flex: 1; padding: 35px 20px; border-radius: 45px; color: white; text-align: center; box-shadow: 0 10px 20px rgba(0,0,0,0.15); }
        .stat-card h3 { font-size: 22px; margin-bottom: 15px; font-weight: normal; }
        .stat-card .value { font-size: 40px; font-weight: bold; }
        .booking-section { padding: 0 35px; }
        .booking-section h2 { color: #70677A; font-family: 'Brush Script MT', cursive; font-size: 50px; margin-bottom: 25px; }
        
        .custom-table { width: 100%; border-collapse: separate; border-spacing: 0 12px; }
        .custom-table th { background-color: #5D5467; color: white; padding: 18px; text-align: center; font-size: 18px; }
        .custom-table td { background-color: #70677A; color: white; padding: 18px; text-align: center; font-size: 16px; border:none; }
        .status-badge { background-color: #8E8499; padding: 7px 20px; border-radius: 25px; font-size: 14px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-wrapper">
        <div class="welcome-header">
            Welcome, <asp:Label ID="lblUserName" runat="server" Text="User"></asp:Label>! Let's plan your next party!
        </div>

        <div class="stats-container">
            <div class="stat-card">
                <h3>Total Bookings</h3>
                <div class="value"><asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label></div>
            </div>
            <div class="stat-card">
                <h3>Upcoming Events</h3>
                <div class="value"><asp:Label ID="lblUpcoming" runat="server" Text="0"></asp:Label></div>
            </div>
            <div class="stat-card">
                <h3>Completed Booking</h3>
                <div class="value"><asp:Label ID="lblCompleted" runat="server" Text="0"></asp:Label></div>
            </div>
        </div>

        <div class="booking-section">
            <h2>&nbsp;</h2>
        </div>
    </div>
</asp:Content>