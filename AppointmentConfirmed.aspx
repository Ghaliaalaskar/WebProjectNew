<%@ Page Title="Appointment Confirmed" Language="C#" MasterPageFile="~/MasterPickThemes.Master" AutoEventWireup="true" CodeBehind="AppointmentConfirmed.aspx.cs" Inherits="WebProjectNew.AppointmentConfirmed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .confirmation-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 70vh;
            background-color: #F4F7FC;
        }

        .confirmation-card {
            background-color: white;
            width: 450px;
            padding: 50px 40px;
            border-radius: 25px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.05);
            text-align: center;
        }

        .main-title {
            color: #70677A;
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: 500;
        }

        .success-message {
            color: #777;
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 40px;
        }

        .btn-details {
            background-color: #70677A;
            color: white;
            padding: 15px 30px;
            width: 100%;
            border-radius: 20px;
            border: none;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            transition: 0.3s;
        }

        .btn-details:hover {
            background-color: #5a5263;
            transform: translateY(-2px);
        }
        
        .success-icon {
            color: #70677A;
            font-size: 60px;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="confirmation-wrapper">
        <div class="confirmation-card">
            <div class="success-icon">
                <i class="fas fa-check-circle"></i>
            </div>
            <h1 class="main-title">Appointment Confirmed!</h1>
            
            <p class="success-message">
                Your booking has been<br /> successfully scheduled.
            </p>

            <asp:Button ID="btnGoDetails" runat="server" Text="Go to Booking Details" CssClass="btn-details" OnClick="btnGoDetails_Click" />
        </div>
    </div>
</asp:Content>