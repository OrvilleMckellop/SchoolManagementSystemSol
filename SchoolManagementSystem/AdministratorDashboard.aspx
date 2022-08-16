<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="AdministratorDashboard.aspx.cs" Inherits="SchoolManagementSystem.AdministratorDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidebar">
    <img src="https://www.pngkey.com/png/detail/135-1358799_the-arcanum-logo-cool-logos-not-used.png" alt="Image Load Error" width="70" height="69">
    <h4> Dashboard</h4>
    <a class="sidebar-item" href="Users.aspx">Users</a>
    <a class="sidebar-item">Gradebook</a>  
    <a class="sidebar-item">Assignments</a>
    <a class="sidebar-item">Classes</a>
    <a class="sidebar-item">Library</a>
</div>
</asp:Content>
