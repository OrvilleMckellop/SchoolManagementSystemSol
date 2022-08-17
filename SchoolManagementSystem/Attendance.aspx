<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="SchoolManagementSystem.Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:TextBox runat="server" TextMode="Date"></asp:TextBox>

    <asp:GridView runat="server">
        <Columns>

            <asp:TemplateField HeaderText="Student Id">
                <InsertItemTemplate>
                    <asp:TextBox></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="StudentName">
                <InsertItemTemplate>
                    <asp:TextBox></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Gender">
                <InsertItemTemplate>
                    <asp:TextBox></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Attended">
                <InsertItemTemplate>
                    <asp:TextBox></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Comment">
                <InsertItemTemplate>
                    <asp:TextBox></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
</asp:Content>
