<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="SchoolManagementSystem.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <div class="login-form">
        <div class="login-header">
            <h1>Create New User</h1>
            <p>Enter Information for New User</p>
        </div>
        
        <div class="login-border">
                <label class="login-label">User Id</label>
              <asp:TextBox class="login-input" ID="ID_Number" runat="server" TextMode="Number"></asp:TextBox>
         </div>

        <div class="login-border">
                <label class="login-label">Role</label>
              <asp:DropDownList class="login-input" ID="RoleId" runat="server">
                  <asp:ListItem Enabled="true" Text= "Select Role" Value= "-1"></asp:ListItem>
                  <asp:ListItem Text= "Student" Value="1"></asp:ListItem>
                  <asp:ListItem Text= "Teacher" Value="2"></asp:ListItem>
                  <asp:ListItem Text= "Administrator" Value="3"></asp:ListItem>
              </asp:DropDownList>
         </div>

        <div class="login-border">
                <label class="login-label">First Name</label>
              <asp:TextBox class="login-input" ID="FirstName" runat="server"></asp:TextBox>
         </div>

        <div class="login-border">
                <label class="login-label">Last Name</label>
              <asp:TextBox class="login-input" ID="LastName" runat="server"></asp:TextBox>
         </div>

        <div class="login-border">
                <label class="login-label">Email</label>
              <asp:TextBox class="login-input" ID="Email" runat="server" TextMode="Email"></asp:TextBox>
         </div>

        <div class="login-border">
                <label class="login-label">Password</label>
              <asp:TextBox class="login-input" ID="Password" runat="server"></asp:TextBox> <asp:Button runat="server" OnClick="generate_Click" Text="Generate Password"/>
         </div>

        <div class="login-border">
                <label class="login-label">Gender</label>
              <asp:DropDownList class="login-input" ID="Gender" runat="server">
                  <asp:ListItem Enabled="true" Text= "Select Role" Value= "-1"></asp:ListItem>
                  <asp:ListItem Text= "Male" Value="Male"></asp:ListItem>
                  <asp:ListItem Text= "Female" Value="Female"></asp:ListItem>
              </asp:DropDownList>
         </div>

        <div class="login-border">
                <label class="login-label">User Status</label>
              <asp:TextBox class="login-input" ID="UserStatus" runat="server"></asp:TextBox>
         </div>
        <div class="login-border">
        <asp:Button runat="server" OnClick="Createbtn_Click" text="Create User" CssClass="login-submit"/>
        </div>
    </div>
</asp:Content>
