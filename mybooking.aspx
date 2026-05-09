<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="mybooking.aspx.cs" Inherits="WebProjectNew.mybooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            font-weight: normal;
        }
        .auto-style6 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style4">
        <tr>
            <td>
                <h2>My Bookings</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h5 class="auto-style5">View your current or upcoming bookings.</h5>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: center">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="AppointmentID" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="600px" BackColor="#CCCCCC">
                    <Columns>
                    <asp:BoundField DataField="ServiceName" HeaderText="Service Name" />
                    <asp:BoundField DataField="AppointmentDate" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                     <asp:BoundField DataField="AppointmentTime" HeaderText="Time" />
        
                    <asp:TemplateField HeaderText="Actions">
                     <ItemTemplate>
                         <asp:Button ID="btnCancel" runat="server" 
                             CommandName="Delete" 
                             Text="Cancel Booking" 
                             CssClass="btn-danger"
                             CausesValidation="false"
                             OnClientClick="return confirm('Are you sure you want to cancel this booking?');" />
                     </ItemTemplate>
                   </asp:TemplateField>
                      </Columns>
                    <EditRowStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="#87779A" />
               </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" ForeColor="#339933" style="text-align: center"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
