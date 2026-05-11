<%@ Page Title="Cancel Booking" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="usercancelbooking.aspx.cs" Inherits="WebProjectNew.usercancelbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .cancel-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            text-align: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .cancel-title {
            color: #3b245a;
            margin-bottom: 20px;
        }
        .input-box {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
        }
        .btn-cancel {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
            width: 100%;
        }
        .btn-cancel:hover {
            background-color: #c0392b;
        }
        .msg-label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cancel-container">
        <h2 class="cancel-title">Cancel Your Booking</h2>
        <p>Please enter the Booking ID you wish to cancel:</p>
        
        <asp:TextBox ID="txtBookingID" runat="server" CssClass="input-box" placeholder="Example: 101"></asp:TextBox>
        
        <br />
        
        <asp:Button ID="btnCancelBooking" runat="server" Text="Cancel Booking Now" 
            CssClass="btn-cancel" OnClick="btnCancelBooking_Click" 
            OnClientClick="return confirm('Are you sure you want to cancel this booking?');" />

        <asp:Label ID="lblMessage" runat="server" CssClass="msg-label"></asp:Label>
    </div>
</asp:Content>