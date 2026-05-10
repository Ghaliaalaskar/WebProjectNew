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
            transition: 0.3s;
        }

        .input-style:focus {
            border-color: #70677A;
            background-color: #ffffff;
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
                <%-- التواريخ تُحمل من الداتابيس مع فلترة المحجوز منها --%>
                <asp:DropDownList ID="ddlDate" runat="server" CssClass="input-style" 
                    AutoPostBack="True" OnSelectedIndexChanged="ddlDate_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource1" DataTextField="AvailableDate" DataValueField="AvailableDate">
                    <asp:ListItem Text=" Select Date " Value="0"></asp:ListItem>
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Availability] WHERE NOT EXISTS (SELECT 1 FROM [Appointments] WHERE [Appointments].AppointmentDate = [Availability].AvailableDate AND [Appointments].AppointmentTime = [Availability].AvailableTime)">
                </asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label>Available Times</label>
                <asp:DropDownList ID="ddlTime" runat="server" CssClass="input-style" 
                    DataSourceID="SqlDataSource1" DataTextField="AvailableTime" DataValueField="AvailableTime">
                    <asp:ListItem Text=" Select Time " Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Book now" CssClass="btn-confirm" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>