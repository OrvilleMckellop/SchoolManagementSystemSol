<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="SchoolManagementSystem.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>      
        <asp:GridView ID="UserGrid" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="UserGrid_RowCancelingEdit"   
  
OnRowEditing="UserGrid_RowEditing" OnRowUpdating="UserGrid_RowUpdating">  
            <Columns>  
                <asp:TemplateField HeaderText="User Id">  
                    <ItemTemplate>  
                        <asp:TextBox Enabled="false" ID="UserId" runat="server" TextMode="Number" Text='<%#Eval("UserId") %>'></asp:TextBox>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="User Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Role Id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_RoleName" runat="server" Text='<%#Eval("RoleId") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:DropDownList ID="txt_RoleName" runat="server" Text='<%#Eval("RoleId") %>'>
                            <asp:ListItem Enabled="true" Text= "Select Role" Value= "-1"></asp:ListItem>
                            <asp:ListItem Text= "Student" Value="1"></asp:ListItem>
                            <asp:ListItem Text= "Teacher" Value="2"></asp:ListItem>
                            <asp:ListItem Text= "Administrator" Value="3"></asp:ListItem>
                        </asp:DropDownList>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="Failed Access Count">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_FailedAccessCount" runat="server" Text='<%#Eval("FailedAccessCount") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_FailedAccessCount" runat="server" TextMode="Number" Text='<%#Eval("FailedAccessCount") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="Lookout Enabled">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_LookoutEnabled" runat="server" Text='<%#Eval("LookoutEnabled") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:DropDownList ID="txt_LookoutEnabled" runat="server" Text='<%#Eval("LookoutEnabled") %>'>
                            <asp:ListItem Enabled="true" Text= "Select Role" Value= "-1"></asp:ListItem>
                            <asp:ListItem Text= "False" Value="False"></asp:ListItem>
                            <asp:ListItem Text= "True" Value="True"></asp:ListItem>
                        </asp:DropDownList>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="Email">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Email" runat="server" Text='<%#Eval("Email") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Email" runat="server" TextMode="Email" Text='<%#Eval("Email") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="User Status">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_UserStatus" runat="server" Text='<%#Eval("UserStatus") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:DropDownList ID="txt_UserStatus" runat="server" Text='<%#Eval("UserStatus") %>'>
                            <asp:ListItem Enabled="true" Text= "Select Role" Value= "-1"></asp:ListItem>
                            <asp:ListItem Text= "Pending" Value="pending"></asp:ListItem>
                            <asp:ListItem Text= "Active" Value="Active"></asp:ListItem>
                            <asp:ListItem Text= "InActive" Value="InActive"></asp:ListItem>
                        </asp:DropDownList>  
                    </EditItemTemplate>  
                </asp:TemplateField> 
        
        <asp:TemplateField HeaderText="Action">  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate> 

        </asp:TemplateField>
            </Columns>  
        </asp:GridView>  
      
    </div>  

</asp:Content>
