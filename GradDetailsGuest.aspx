<%@ Page Title="Graduation Details (Guest)" Language="C#" MasterPageFile="~/MasterDiscoverThemes.Master" AutoEventWireup="true" CodeBehind="GradDetailsGuest.aspx.cs" Inherits="WebProjectNew.GradDetailsGuest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .details-wrapper { background-color: #F4F7FC; padding: 20px; display: flex; justify-content: center; }
        .details-card { background: white; width: 1000px; border-radius: 25px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.05); padding: 40px; }
        
        .theme-header-title { color: #70677A; font-size: 32px; text-align: center; margin-bottom: 30px; font-weight: 500; }
        
        .main-content-row { display: flex; gap: 40px; align-items: flex-start; }
        .image-side { flex: 1; }
        .image-side img { width: 100%; height: 400px; object-fit: cover; border-radius: 20px; border: 1px solid #eee; }
        
        .text-side { flex: 1.2; text-align: left; color: #444; }
        .text-side h3 { color: #70677A; font-size: 20px; margin-bottom: 10px; font-weight: 500; }
        .text-side p { font-size: 15px; line-height: 1.6; color: #666; margin-bottom: 20px; }
        
        .info-item { font-size: 16px; margin-bottom: 10px; font-weight: 600; color: #333; }
        .includes-list { margin-top: 20px; padding-left: 20px; list-style-type: disc; }
        .includes-list li { margin-bottom: 8px; color: #666; font-size: 14px; }
        
        .book-btn-container { text-align: center; margin-top: 40px; }
        
        .btn-log-in-book { 
            background-color: #70677A; 
            color: white; 
            padding: 14px 60px; 
            border-radius: 25px; 
            border: none; 
            font-size: 16px; 
            font-weight: 500; 
            cursor: pointer; 
            transition: 0.3s; 
            text-decoration: none; 
            display: inline-block; 
        }
        .btn-log-in-book:hover { 
            background-color: #5a5263; 
            transform: scale(1.02); 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="details-wrapper">
        <div class="details-card">
            <h1 class="theme-header-title">Graduation Theme Details</h1>
            
            <div class="main-content-row">
                <div class="image-side">
                    <img src="images/grad.jpg" alt="Graduation Theme" />
                </div>

                <div class="text-side">
                    <h3>Description:</h3>
                    <p>A sophisticated graduation celebration designed with a modern black, beige, and white color palette. The setup includes an elegant backdrop, balloon arrangements, and a stylish dessert table to celebrate your academic achievement in a luxurious atmosphere.</p>
                    
                    <div class="info-item">Duration: 5 Hours</div>
                    <div class="info-item">Price: 2,000 SAR</div>

                    <h3>Includes:</h3>
                    <ul class="includes-list">
                        <li>Elegant black &amp; beige backdrop with graduate name</li>
                        <li>Premium balloon arch (black, beige &amp; white)</li>
                        <li>Modern dessert table setup</li>
                        <li>Graduation cap decorations</li>
                        <li>Photo corner with lighting setup</li>
                    </ul>
                </div>
            </div>

            <div class="book-btn-container">
                <asp:Button ID="btnLogin" runat="server" Text="Book Appointment" CssClass="btn-log-in-book" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>
