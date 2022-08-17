<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Attendance.aspx.cs" Inherits="SchoolManagementSystem.Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <asp:GridView ID="AttendanceGrid" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="AttendanceGrid_RowCancelingEdit" 
            OnRowEditing="AttendanceGrid_RowEditing" OnRowUpdating="AttendanceGrid_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Form Class">
                <ItemTemplate>
                    <asp:Label ID="lbl_FormClass" runat="server" Text='<%#Eval("FormClass") %>'></asp:Label>  
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Student Id">
                <ItemTemplate>
                    <asp:Label ID="lbl_StudentId" runat="server" Text='<%#Eval("StudentId") %>'></asp:Label>  
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="StudentName">
                <ItemTemplate>
                    <asp:Label ID="lbl_UserName" runat="server" Text='<%#Eval("FullName") %>'></asp:Label>  
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="lbl_Gender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>  
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                   <asp:Label ID="lbl_Date" runat="server" Text='<%#Eval("Date") %>'></asp:Label>  
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Attended">
                <ItemTemplate>
                    <asp:Label ID="lbl_Attended" runat="server" Text='<%#Eval("Attended") %>'></asp:Label>  
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList runat="server"  ID="cb_Attended">
                        <asp:ListItem Enabled="true" Text="select one" Value="-1" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="true">Present</asp:ListItem>
                        <asp:ListItem Value="false">Absent</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Comment">
                <ItemTemplate>
                    <asp:Label ID="lbl_Comment" runat="server" Text='<%#Eval("Comment") %>'></asp:Label>  
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_Comment" runat="server" TextMode="MultiLine"></asp:TextBox>
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
</asp:Content>

 


