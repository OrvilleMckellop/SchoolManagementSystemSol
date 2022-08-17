<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GradeBook.aspx.cs" Inherits="SchoolManagementSystem.GradeBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Glengoffe High School</h1>
        <h2> Gradebook</h2>

        &nbsp;<asp:Label ID="Label1" runat="server" Text="Grade"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Term"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="GradeDropDownList" runat="server">
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
    <asp:DropDownList ID="TermDropDownList" runat="server">
        <asp:ListItem Value="0">Choose a Term</asp:ListItem>
        <asp:ListItem Value="1">Term 1</asp:ListItem>
        <asp:ListItem Value="2">Term 2</asp:ListItem>
        <asp:ListItem Value="3">Term 3 </asp:ListItem>
        <asp:ListItem Value="4">Final Term</asp:ListItem>
    </asp:DropDownList>
        <br />

            <asp:GridView ID="GradebookGrid" runat="server" AutoGenerateColumns="false" AllowPaging="true"
      CssClass="table" OnRowEditing="GradebookGrid_RowEditing" OnRowUpdating="GradebookGrid_RowUpdating" OnRowCancelingEdit="GradebookGrid_RowCancelingEdit">

    <Columns>

        <asp:TemplateField HeaderText="Student Id">  
                    <ItemTemplate>  
                        <asp:TextBox Enabled="false" ID="UserId" runat="server" TextMode="Number" Text='<%#Eval("StudentId") %>'></asp:TextBox>  
                    </ItemTemplate>  
                </asp:TemplateField>  

        <asp:TemplateField HeaderText="Grade Level Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_GradeLevelName" runat="server" Text='<%#Eval("GradeLevelName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                <asp:TemplateField HeaderText="Term">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Term" runat="server" Text='<%#Eval("Term") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="Year">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Year" runat="server" Text='<%#Eval("Year") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="Grade 1">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Grade1" runat="server" Text='<%#Eval("Grade1") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Grade1" runat="server" TextMode="Number" Text='<%#Eval("Grade1") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

        <asp:TemplateField HeaderText="Grade 2">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Grade2" runat="server" Text='<%#Eval("Grade2") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Grade2" runat="server" TextMode="Number" Text='<%#Eval("Grade2") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

        <asp:TemplateField HeaderText="Grade 3">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Grade3" runat="server" Text='<%#Eval("Grade3") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Grade3" runat="server" TextMode="Number" Text='<%#Eval("Grade3") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

        <asp:TemplateField HeaderText="Final Grade">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_FinalGrade" runat="server" Text='<%#Eval("FinalGrade") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_FinalGrade" runat="server" TextMode="Number" Text='<%#Eval("FinalGrade") %>'></asp:TextBox>  
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
