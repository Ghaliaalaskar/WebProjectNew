<%@ Page Title="Book Your Appointment" Language="C#" MasterPageFile="~/MasterPickThemes.Master" AutoEventWireup="true" CodeBehind="BookYourAppointment.aspx.cs" Inherits="WebProjectNew.BookYourAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .booking-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            background-color: #F4F7FC;
        }

        .booking-card {
            background-color: white;
            width: 450px;
            padding: 40px;
            border-radius: 25px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.05);
            text-align: center;
        }

        .booking-title {
            color: #70677A;
            font-size: 26px;
            margin-bottom: 30px;
            font-weight: 500;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            color: #888;
            margin-bottom: 8px;
            font-size: 14px;
            padding-left: 5px;
        }

        .input-style {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #E0E0E0;
            border-radius: 12px;
            background-color: #FBFBFB;
            color: #333;
            font-size: 14px;
            box-sizing: border-box;
            outline: none;
        }

        .input-style:focus {
            border-color: #70677A;
        }

        .selected-theme-info {
            background-color: #f0edf2;
            padding: 10px;
            border-radius: 10px;
            margin-bottom: 20px;
            color: #70677A;
            font-weight: bold;
            font-size: 14px;
        }

        .btn-confirm {
            background-color: #70677A;
            color: white;
            padding: 14px;
            width: 100%;
            border-radius: 20px;
            border: none;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            margin-top: 20px;
            transition: 0.3s;
        }

        .btn-confirm:hover {
            background-color: #5a5263;
            transform: translateY(-2px);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="booking-wrapper">
        <div class="booking-card">
            <h2 class="booking-title">Book your Appointment</h2>

            <div class="selected-theme-info">
                Selected Theme: <asp:Label ID="lblSelectedTheme" runat="server" Text="None"></asp:Label>
            </div>

            <div class="form-group">
                <label>Available Dates</label>
                <asp:DropDownList ID="ddlDate" runat="server" CssClass="input-style" AutoPostBack="true" OnSelectedIndexChanged="ddlDate_SelectedIndexChanged">
                    <asp:ListItem Text=" Select Date " Value="0"></asp:ListItem>
                    <asp:ListItem Text="Monday, May 4, 2026" Value="2026-05-04"></asp:ListItem>
                    <asp:ListItem Text="Tuesday, May 5, 2026" Value="2026-05-05"></asp:ListItem>
                    <asp:ListItem Text="Wednesday, May 6, 2026" Value="2026-05-06"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Available Times</label>
                <asp:DropDownList ID="ddlTime" runat="server" CssClass="input-style">
                    <asp:ListItem Text=" Select Time " Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Book now" CssClass="btn-confirm" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>