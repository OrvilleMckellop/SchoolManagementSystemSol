<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GradeBook.aspx.cs" Inherits="SchoolManagementSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Glengoffe High School</h1>
        <h2> Gradebook</h2>

    <div> 

        &nbsp;<asp:Label ID="Label1" runat="server" Text="Grade"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Term"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="0">Choose a Grade</asp:ListItem>
        <asp:ListItem Value="1">Grade 7</asp:ListItem>
        <asp:ListItem Value="2">Grade 8</asp:ListItem>
        <asp:ListItem Value="3">Grade 9</asp:ListItem>
        <asp:ListItem Value="4">Grade 10</asp:ListItem>
        <asp:ListItem Value="5">Grade 11</asp:ListItem>
        <asp:ListItem Value="6">Grade 12</asp:ListItem>
        <asp:ListItem Value="7">Grade 13</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Value="0">Choose a Term</asp:ListItem>
        <asp:ListItem Value="1">Term 1</asp:ListItem>
        <asp:ListItem Value="2">Term 2</asp:ListItem>
        <asp:ListItem Value="3">Term 3 </asp:ListItem>
        <asp:ListItem Value="4">Final Term</asp:ListItem>
    </asp:DropDownList>
        <br />

        <table> 
            <tr>
                <td> Subject</td>
                <td><asp:TextBox ID="subject" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td> Teacher</td>
                <td><asp:TextBox ID="teacher" runat="server"></asp:TextBox></td>
            </tr>
                    <tr>
                <td> Grade 1</td>
                <td><asp:TextBox ID="grade1" runat="server"></asp:TextBox></td>
            </tr>
                        <tr>
                <td> Grade 2</td>
                <td><asp:TextBox ID="grade2" runat="server"></asp:TextBox></td>
            </tr>
                        <tr>
                <td> Grade 3</td>
                <td><asp:TextBox ID="grade3" runat="server"></asp:TextBox></td>
            </tr>
                        <tr>
                <td> Final Grade</td>
                <td><asp:TextBox ID="finalGrade" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Insert" />
                    <asp:Button ID="Button2" runat="server" Text="Delete" />
                    <asp:Button ID="Button3" runat="server" Text="Update" />
                    <asp:Button ID="Button4" runat="server" Text="View" />
                </td>

            </tr>
            
        </table>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>
