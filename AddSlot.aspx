<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddSlot.aspx.cs" Inherits="WebProjectNew.AddSlot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:1000px; margin:auto; background:white; padding:20px;">

        <div style="background:#5e5a6e; color:white; font-size:38px; font-family:Georgia; padding:15px;">
            Add Slot
        </div>

        <div style="width:700px; margin:30px auto; border:1px solid #cfcfcf;">

            <div style="background:#f5f5f5; padding:20px; font-size:20px; font-family:Georgia;">
                Add new slot details:
            </div>

            <div style="background:#5e5a6e; padding:35px;">

                <table style="width:100%;">

                    <tr>
                        <td style="padding:15px; color:white; font-size:18px; font-weight:bold;">Theme Name:</td>
                        <td>
                            <asp:DropDownList ID="ddlTheme" runat="server" Width="400px" Height="35px" Font-Size="16px">
                                <asp:ListItem Text="Select Theme:" Value=""></asp:ListItem>
                                <asp:ListItem Value="1">Baby Shower</asp:ListItem>
                                <asp:ListItem Value="2">Bridal Shower</asp:ListItem>
                                <asp:ListItem Value="3">Graduation</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="rfvTheme" runat="server" ControlToValidate="ddlTheme" 
                                InitialValue="" ErrorMessage="Please select a theme" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td style="padding:15px; color:white; font-size:18px; font-weight:bold;">Date:</td>
                        <td>
                            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="400px" Height="35px" Font-Size="16px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" 
                                ErrorMessage="Date is required" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td style="padding:15px; color:white; font-size:18px; font-weight:bold;">Time:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Time" Width="400px" Height="35px" Font-Size="16px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfvTime" runat="server" ControlToValidate="TextBox1" 
                                ErrorMessage="Time is required" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td style="padding:15px; color:white; font-size:18px; font-weight:bold;">Status:</td>
                        <td>
                            <asp:DropDownList ID="ddlStatus" runat="server" Width="400px" Height="35px" Font-Size="16px">
                                <asp:ListItem>Available</asp:ListItem>
                                <asp:ListItem>Booked</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td style="padding-top:30px;">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" PostBackUrl="~/ManageAvailability.aspx" 
                                Width="100px" Height="40px" CausesValidation="false" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAdd" runat="server" Text="Add Slot" OnClick="btnAdd_Click" 
                                CausesValidation="true" Width="100px" Height="40px" />
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
</asp:Content>