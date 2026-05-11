<%@ Page Title="Discover Themes" Language="C#" MasterPageFile="~/MasterDiscoverThemes.Master" AutoEventWireup="true" CodeBehind="DiscoverThemes.aspx.cs" Inherits="WebProjectNew.DiscoverThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        .discover-wrapper { text-align: center; padding: 40px; background-color: #F4F7FC; }
        .discover-title { color: #70677A; font-size: 28px; margin-bottom: 30px; font-weight: 500; }
        .themes-grid { display: flex; justify-content: center; gap: 25px; flex-wrap: wrap; }
        
        .theme-card { 
            background: white; width: 280px; border-radius: 20px; 
            box-shadow: 0 4px 15px rgba(0,0,0,0.05); overflow: hidden; transition: 0.3s; 
            text-align: center;
        }
        .theme-card img { width: 100%; height: 220px; object-fit: cover; }
        
        .theme-info { 
            padding: 20px; 
            display: flex; 
            flex-direction: column; 
            align-items: center; 
        }
        
        .theme-label { color: #8E8E8E; margin-bottom: 15px; font-size: 16px; font-weight: bold; }
        
        .btn-details { 
            background-color: #C4C4C4; 
            color: white !important; 
            padding: 10px; 
            width: 100%; 
            border-radius: 15px; 
            text-decoration: none;  
            display: block; 
            margin-bottom: 10px; 
            font-size: 14px; 
            border: none; 
            box-sizing: border-box;
            cursor: pointer;
            transition: 0.3s;
            line-height: 20px;
        }
        .btn-details:hover { background-color: #b0b0b0; }

        .btn-book { 
            background-color: #70677A; 
            color: white; 
            padding: 12px; 
            width: 100%; 
            border-radius: 15px; 
            border: none; 
            cursor: pointer; 
            font-size: 14px; 
            transition: 0.3s; 
        }
        .btn-book:hover { background-color: #5a5263; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="discover-wrapper">
        <h1 class="discover-title">Discover Themes</h1>
        <div class="themes-grid">
            <asp:Repeater ID="rptThemes" runat="server">
                <ItemTemplate>
                    <div class="theme-card">
                        <img src='<%# "images/" + Eval("ServicePhoto") %>' alt='<%# Eval("ServicePhoto") %>' />
                        <div class="theme-info">
                            <span class="theme-label"><%# Eval("ServiceName") %></span>
                            
                            <asp:HyperLink ID="lnkDetails" runat="server" CssClass="btn-details" 
                                NavigateUrl='<%# Eval("details_guest_page_url") %>'>Theme Details</asp:HyperLink>
                            
                            <asp:Button ID="btnBook" runat="server" Text="Book Theme" CssClass="btn-book" 
                                OnClick="RedirectToLogin" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>