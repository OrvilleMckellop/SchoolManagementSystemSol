<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Users.aspx.cs" Inherits="SchoolManagementSystem.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Literal ID="DynamicTable" runat="server"></asp:Literal>
    </div>
    <table>
        <tr>
            <th>heading</th>
        </tr>
        <tr>
            <td>data</td>
        </tr>
    </table>

</asp:Content>
