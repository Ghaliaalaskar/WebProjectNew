<%@ Page Title="Bridal Shower Details" Language="C#" MasterPageFile="~/MasterDiscoverThemes.Master" AutoEventWireup="true" CodeBehind="BridalDetailsGuest.aspx.cs" Inherits="WebProjectNew.BridalDetailsGuest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .details-wrapper { background-color: #F4F7FC; padding: 20px; display: flex; justify-content: center; }
        .details-card { background: white; width: 1000px; border-radius: 25px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.05); padding: 40px; }
        
        .theme-header-title { color: #70677A; font-size: 32px; text-align: center; margin-bottom: 30px; font-weight: 500; }
        
        .main-content-row { display: flex; gap: 40px; align-items: flex-start; }
        .image-side { flex: 1; }
        .image-side img { width: 100%; height: 400px; object-fit: cover; border-radius: 20px; border: 1px solid #ddd; }
        
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
            <h1 class="theme-header-title">Bridal Shower Theme Details</h1>
            
            <div class="main-content-row">
                <div class="image-side">
                    <img src="images/bride.jpg" alt="Bridal Shower Theme" />
                </div>

                <div class="text-side">
                    <h3>Description:</h3>
                    <p>An elegant bridal shower setup featuring a luxurious white and gold color palette. The design includes a stylish photo backdrop with gold lettering, a transparent acrylic cake stand, a beautifully decorated white cake, and carefully arranged white flowers placed beside the setup to enhance the overall elegance of the celebration.</p>
                    
                    <div class="info-item">Duration: 4 Hours</div>
                    <div class="info-item">Price: 2,500 SAR</div>

                    <h3>Includes:</h3>
                    <ul class="includes-list">
                        <li>Stylish white photo backdrop with gold lettering</li>
                        <li>Transparent acrylic cake stand</li>
                        <li>Premium white cake display</li>
                        <li>White flower arrangements placed beside the setup</li>
                        <li>Luxury table styling</li>
                    </ul>
                </div>
            </div>

            <div class="book-btn-container">
                <asp:Button ID="btnLogin" runat="server" Text="Book Appointment" CssClass="btn-log-in-book" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>
