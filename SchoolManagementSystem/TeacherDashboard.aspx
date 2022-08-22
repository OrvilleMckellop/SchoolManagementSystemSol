<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherDashboard.aspx.cs" Inherits="SchoolManagementSystem.TeacherDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidebar">
    <img src="https://www.pngkey.com/png/detail/135-1358799_the-arcanum-logo-cool-logos-not-used.png" alt="Image Load Error" width="70" height="69">
    <h4> Dashboard</h4>
    <a class="sidebar-item" href="BioData.aspx">Teacher Bio Data </a>
    <a class="sidebar-item" href="GradeBook.aspx">Gradebook</a>
    <a class="sidebar-item" href="Attendance.aspx">Attendance Sheet</a>
    <a class="sidebar-item">Assignments</a>
    <a class="sidebar-item">Classes</a>
    <a class="sidebar-item">Library</a>

</div>

</asp:Content>
