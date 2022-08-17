<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SchoolManagementSystem.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <section class="section-A">
        <h1 style="color: yellow;">
            Welcome to Glengoffe High School 
        </h1>
        <h2 style="color: yellow;"> Home of Excellence </h2>
        <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Images/Glengoffe-High-School.jpg" Width="1000px" style="margin:0 auto; display:block;" />
        </section>

        <section class="section-B">
        <h2> Mission Statement</h2>
        <p> Our vision is to develop well rounded, confident and responsible individuals who aspire to achieve their full potential.</p>
        <p>We will do this by providing a welcoming, happy, safe, and supportive learning environment in which everyone is equal and all achievements are celebrated.</p>
        <asp:Image ID="Image3" runat="server" Height="500px" ImageAlign="Middle" ImageUrl="~/Images/20220429_131402.jpg" Width="1000px" style="margin:0 auto; display:block;" />
        </section>

        <section class="section-A">
        <h2 style="color: white;"> Brief History </h2>
        <p style="color: white;"> Glengoffe High School is situated in the hills of St. Catherine and was first established in
1969. The school is located in a small farming community and many students are from low
income families. </p>
        <p style="color: white; 20px;">Students are mostly from nearby communities in St. Catherine but some
come from the adjoining parishes such as St. Mary and St Andrew.</p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/20220429_130743.jpg" Height="500px" Width="1000px" style="margin:0 auto; display:block;" />
         </section>

</asp:Content>
