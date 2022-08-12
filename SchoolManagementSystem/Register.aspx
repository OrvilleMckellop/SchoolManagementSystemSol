<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="SchoolManagementSystem.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-form">
        <form>
          <div class="login-header">
            <h1>Register</h1>
            <p>Please enter your credentials your Information.</p>
          </div>
          <div class="login-border">
                <label class="login-label">Id Number</label>
              <asp:TextBox class="login-input" ID="ID_Number" runat="server" OnClick=""></asp:TextBox>

          </div>
            <div class="login-border">
                <label class="login-label">Email</label>
              <asp:TextBox class="login-input" ID="Email" runat="server" OnClick="" TextMode="Email"></asp:TextBox>

          </div>
          <div class="login-border">
                <label class="login-label">Password</label>
              <asp:TextBox class="login-input" ID="Password" runat="server" OnClick="" TextMode="Password"></asp:TextBox>

          </div>
            <div class="login-border">
                <asp:Button class="login-submit" ID="Register_Button" runat="server" Text="Register" OnClick="Register_Button_Click"/>
                
            </div>
            <div class="login-border">
                <p class="message">Already registered? <a href="Login.aspx">Login Here</a></p>
            </div>
          
        </form>
</div>
</asp:Content>
