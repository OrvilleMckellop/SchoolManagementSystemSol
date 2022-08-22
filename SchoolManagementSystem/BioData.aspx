<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="BioData.aspx.cs" Inherits="SchoolManagementSystem.BioData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Site.css" rel="stylesheet" />

    <h1 class="login-header">Bio Data</h1>

    <asp:Table runat="server" class="table-border">
        <asp:TableRow CssClass="table-row">
            <asp:TableCell text="UserId"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="UserId" Text='<%#Eval("UserId") %>'></asp:TableCell>

            <asp:TableCell text="UserName"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="UserName" Text='<%#Eval("UserName") %>'></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow CssClass="table-row">
            <asp:TableCell text="First Name"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="FName" Text='<%#Eval("FirstName") %>'></asp:TableCell>

            <asp:TableCell text="Last Name"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="lName" Text='<%#Eval("LastName") %>'></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow CssClass="table-row">
            <asp:TableCell text="Gender"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="gender" Text='<%#Eval("Gender") %>'></asp:TableCell>

            <asp:TableCell text="Role"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="role" Text='<%#Eval("RoleName") %>'></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow CssClass="table-row">
            <asp:TableCell text="Email"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="email" Text='<%#Eval("Email") %>'></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow CssClass="table-row">
            <asp:TableCell text="Telephone1"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="Telephone1" Text='<%#Eval("Telephone1") %>'></asp:TableCell>

            <asp:TableCell text="Telephone2"></asp:TableCell>
            <asp:TableCell Enabled="false" ID="Telephone2" Text='<%#Eval("Telephone2") %>'></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    

</asp:Content>
