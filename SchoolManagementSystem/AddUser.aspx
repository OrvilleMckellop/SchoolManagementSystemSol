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
              <asp:TextBox class="login-input" ID="Password" runat="server"></asp:TextBox> 
         </div>
            <asp:Button runat="server" OnClick="generate_Click" Text="Generate Password" CssClass="btn-primary"/>


        <div class="login-border">
                <label class="login-label">Gender</label>
              <asp:DropDownList class="login-input" ID="Gender" runat="server">
                  <asp:ListItem Enabled="true" Text= "Select Gender" Value= "-1"></asp:ListItem>
                  <asp:ListItem Text= "Male" Value="Male"></asp:ListItem>
                  <asp:ListItem Text= "Female" Value="Female"></asp:ListItem>
              </asp:DropDownList>
         </div>

        <!-- <div class="login-border">
                <label class="login-label" ID="lbl_GradeLevel">Grade Level</label>
              <asp:DropDownList class="login-input" ID="GradeLevel" runat="server">
                  <asp:ListItem Enabled="true" Text= "Select Grade Level" Value= "-1"></asp:ListItem>
                  <asp:ListItem Text= "Grade 7" Value="1"></asp:ListItem>
                  <asp:ListItem Text= "Grade 8" Value="2"></asp:ListItem>
                  <asp:ListItem Text= "Grade 9" Value="3"></asp:ListItem>
                  <asp:ListItem Text= "Grade 10" Value="4"></asp:ListItem>
                  <asp:ListItem Text= "Grade 11" Value="5"></asp:ListItem>
                  <asp:ListItem Text= "Grade 12" Value="6"></asp:ListItem>
                  <asp:ListItem Text= "Grade 13" Value="7"></asp:ListItem>
              </asp:DropDownList>
                  
         </div> -->

        <!-- <div class="login-border">
                <label class="login-label">Student Id</label>
              <asp:TextBox class="login-input" ID="StudentId" runat="server" TextMode="Number"></asp:TextBox>
         </div> -->

        <!--- 
            <div class="login-border">
                <label class="login-label">Form Class Id</label>
              <asp:DropDownList class="login-input" ID="FormClassId" runat="server" TextMode="Number">
                  <asp:ListItem Enabled="true" Text= "Select Form Class" Value= "-1"></asp:ListItem>
                  <asp:ListItem Text= "7 Emerald" Value="1"></asp:ListItem>
                  <asp:ListItem Text= "7 Jade" Value="2"></asp:ListItem>
                  <asp:ListItem Text= "7 Magenta" Value="3"></asp:ListItem>
                  <asp:ListItem Text= "8 Emerald" Value="4"></asp:ListItem>
                  <asp:ListItem Text= "8 Jade" Value="5"></asp:ListItem>
                  <asp:ListItem Text= "8 Magenta" Value="6"></asp:ListItem>
                  <asp:ListItem Text= "9 Emerald" Value="7"></asp:ListItem>
                  <asp:ListItem Text= "9 Jade" Value="8"></asp:ListItem>
                  <asp:ListItem Text= "9 Magenta" Value="9"></asp:ListItem>
                  <asp:ListItem Text= "10 Emerald" Value="10"></asp:ListItem>
                  <asp:ListItem Text= "10 Jade" Value="11"></asp:ListItem>
                  <asp:ListItem Text= "10 Magenta" Value="12"></asp:ListItem>
                  <asp:ListItem Text= "11 Emerald" Value="13"></asp:ListItem>
                  <asp:ListItem Text= "11 Jade" Value="14"></asp:ListItem>
                  <asp:ListItem Text= "11 Magenta" Value="15"></asp:ListItem>
                  <asp:ListItem Text= "12 Emerald" Value="16"></asp:ListItem>
                  <asp:ListItem Text= "12 Jade" Value="17"></asp:ListItem>
                  <asp:ListItem Text= "12 Magenta" Value="18"></asp:ListItem>
                  <asp:ListItem Text= "13 Emerald" Value="19"></asp:ListItem>
                  <asp:ListItem Text= "13 Jade" Value="20"></asp:ListItem>
                  <asp:ListItem Text= "13 Magenta" Value="21"></asp:ListItem>
              </asp:DropDownList>
         </div> -->

        <div class="login-border">
        <asp:Button runat="server" OnClick="Createbtn_Click" text="Create User" CssClass="login-submit"/>
        </div>
    </div>
</asp:Content>
