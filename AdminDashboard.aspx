<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebProjectNew.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .dashboard-container { text-align: center; padding-top: 20px; }
        .dashboard-title { color: #70677A; font-size: 28px; margin-bottom: 5px; }
        .dashboard-subtitle { color: #8E8E8E; font-size: 14px; margin-bottom: 40px; }
        .stats-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 25px; max-width: 850px; margin: 0 auto; }
        .stat-card { background-color: white; padding: 30px; border-radius: 20px; display: flex; align-items: center; justify-content: space-between; box-shadow: 0 4px 15px rgba(0,0,0,0.05); text-align: left; border: 1px solid #eee; }
        .stat-info h3 { margin: 0; color: #8E8E8E; font-size: 16px; font-weight: 400; }
        .stat-info p { margin: 10px 0 0; font-size: 32px; font-weight: bold; color: #444; }
        .stat-icon { font-size: 45px; color: #70677A; opacity: 0.8; }
        .quick-action-section { margin-top: 50px; text-align: left; max-width: 850px; margin: 50px auto 0 auto; }
        .quick-action-label { color: #8E8E8E; font-size: 14px; margin-bottom: 15px; border-bottom: 1px solid #DDD; display: inline-block; padding-bottom: 5px; }
        .buttons-group { display: flex; flex-wrap: wrap; gap: 15px; justify-content: center; margin-top: 20px; }
        .btn-action { background-color: white; border: 1.5px solid #70677A; color: #70677A; padding: 12px 25px; border-radius: 25px; text-decoration: none; font-size: 14px; display: flex; align-items: center; transition: 0.3s; }
        .btn-action i { margin-right: 10px; }
        .btn-action:hover { background-color: #70677A; color: white; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-container">
        <h1 class="dashboard-title">Admin Dashboard</h1>
        <p class="dashboard-subtitle">Manage and monitor all party planning operations</p>

        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-info">
                    <h3>Total Users</h3>
                    <p><asp:Label ID="lblTotalUsers" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="stat-icon"><i class="fas fa-users"></i></div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h3>Total Bookings</h3>
                    <p><asp:Label ID="lblTotalBookings" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="stat-icon"><i class="far fa-calendar-check"></i></div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h3>Available Slots</h3>
                    <p><asp:Label ID="lblAvailableSlots" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="stat-icon"><i class="fas fa-clock"></i></div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h3>Total Themes</h3>
                    <p><asp:Label ID="lblTotalThemes" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="stat-icon"><i class="far fa-images"></i></div>
            </div>
        </div>

        <div class="quick-action-section">
            <span class="quick-action-label">Quick actions</span>
            <div class="buttons-group">
                <asp:HyperLink ID="lnkAddTheme" runat="server" NavigateUrl="~/AddThemes.aspx" CssClass="btn-action">
                    <i class="fas fa-plus-square"></i> Add new Themes
                </asp:HyperLink>
                <asp:HyperLink ID="lnkAddAvail" runat="server" NavigateUrl="~/AddSlot.aspx" CssClass="btn-action">
                    <i class="fas fa-plus-circle"></i> Add Availability
                </asp:HyperLink>
                <asp:HyperLink ID="lnkViewBook" runat="server" NavigateUrl="~/ManageBookings.aspx" CssClass="btn-action">
                    <i class="fas fa-search"></i> View All Bookings
                </asp:HyperLink>
                <asp:HyperLink ID="lnkManageUsers" runat="server" NavigateUrl="~/ManageUsers.aspx" CssClass="btn-action">
                    <i class="fas fa-user-cog"></i> Manage Users
                </asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>