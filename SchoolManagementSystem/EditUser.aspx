<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="SchoolManagementSystem.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label runat="server" Text="User Name"></asp:Label>
    <asp:TextBox runat="server" Enabled="false" id="usersid" Text="User ID"></asp:TextBox>

    <asp:Label runat="server" Text="User Name"></asp:Label>
    <asp:TextBox runat="server" Enabled="false" Text="User Name"></asp:TextBox>

    <asp:Label runat="server" Text="Role"></asp:Label>
    <asp:DropDownList runat="server"></asp:DropDownList>

    <asp:Label runat="server" Text="Failed Access Count"></asp:Label>
    <asp:TextBox runat="server" TextMode="Number" Enabled="false"></asp:TextBox>
    
    <asp:Label runat="server" Text="User Status"></asp:Label>
    <asp:DropDownList runat="server"></asp:DropDownList>

    <asp:Label runat="server" Text="Lockout Enabled"></asp:Label>
    <asp:TextBox runat="server" TextMode="Email" Text="Email"></asp:TextBox>

    <asp:Label runat="server" Text="User Status"></asp:Label>
    <asp:DropDownList runat="server"></asp:DropDownList>

</asp:Content>
