<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="SchoolManagementSystem.StudentDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidebar">
    <img src="https://www.pngkey.com/png/detail/135-1358799_the-arcanum-logo-cool-logos-not-used.png" alt="Image Load Error" width="70" height="69">
    <h4> Dashboard</h4>
    <a class="sidebar-item" href="BioData.aspx">StudentBioData</a>
    <a class="sidebar-item" href="GradeBook.aspx">Gradebook</a>  
    <a class="sidebar-item">Assignments</a>
    <a class="sidebar-item" href="Class.aspx">Classes</a>
    <a class="sidebar-item" href="Library.aspx">Library</a>
            
</div>

</asp:Content>
