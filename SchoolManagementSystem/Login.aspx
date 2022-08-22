<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SchoolManagementSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="login-form">
          <div class="login-header">
            <h1>Login</h1>
            <p>Please enter your credentials to login.</p>
          </div>
          <div class="login-border">
              <label class="login-label">Email</label>
              <asp:TextBox class="login-input" ID="Email" runat="server" OnClick="" TextMode="Email" placeholder="Email"></asp:TextBox>
          </div>
          <div class="login-border">
                <label class="login-label">Password</label>
              <asp:TextBox class="login-input" ID="Password" runat="server" OnClick="" TextMode="Password" placeholder="Password"></asp:TextBox>
          </div>
            <div class="login-border">
                <asp:Button class="login-submit" ID="Login_Button" runat="server" Text="Login" OnClick="Login_Button_Clik" UseSubmitBehavior="true"/>      
            </div>
            <!--
                <div class="login-border">
                <p class="message">Not registered? <a href="Register.aspx">Register Here</a></p>
            </div>-->

</div>

</asp:Content>
