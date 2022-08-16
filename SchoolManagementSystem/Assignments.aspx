<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignments.aspx.cs" Inherits="SchoolManagementSystem.Assignments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <title>Assignments</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>

<form id="form1" runat="server">
<div class="col-md-8 col-md-offset-2"> <%//USED TO SPECIFY LENGTH OF TEXTBOXES  %>

    <%--//HEADER--%>
    <br />
  <div style="margin-left: auto; margin-right: auto; text-align: center;">
    <asp:Label ID="Label3" runat="server" Text="ASSIGNMENTS" Font-Bold="true" Font-Size="X-Large"
        CssClass="StrongText"></asp:Label>
      </div>
      <br />
      <br />

    <table class="table" >
        <tr>
            <th>Assignment Id</th>
                <td> <asp:TextBox runat="server" ID="txtAssignmentId"
                    CssClass="form-control"></asp:TextBox></td>    <%--THE CssClass lengthens the text boxes--%>
        </tr>
        
         <tr>
            <th>Title</th>
                <td> <asp:TextBox runat="server" ID="txtTitle"
                    CssClass="form-control"></asp:TextBox></td>
        </tr>
       
         <tr>
            <th>Description</th>
                <td> <asp:TextBox runat="server" ID="txtDescription"
                    CssClass="form-control"></asp:TextBox></td>
        </tr>


          <th>File Upload:  </th>
  <td> <asp:FileUpload ID="FileUpload1" runat="server" /> 
        <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click"  Text="Save" style="width:85px" />
         </td>
        
        <asp:Label ID="lblmessage" runat="server" />
    <tr>

        
       
        <!--SCRIPT FOR SUBTLE DATE PICKER-->    
        <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
<!-- Bootstrap -->
<!-- Bootstrap DatePicker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Bootstrap DatePicker -->
<script type="text/javascript">
    $(function () {
        $('[id*=txtDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd/mm/yyyy",
            language: "tr"
        });
    });
</script>
        <!--FINISHED SCRIPT FOR SUBTLE DATE PICKER--> 
        <th>Due Date:  </th>
        <td><asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox></td>

         <tr>
            <th>Teacher Id</th>
                <td> <asp:TextBox runat="server" ID="txtTeacherId"
                    CssClass="form-control"></asp:TextBox></td>
        </tr>
        <br />
         <tr>
            <th>Assigned Class </th>
                <td> <asp:TextBox runat="server" ID="txtAssignedClass"
                    CssClass="form-control"></asp:TextBox></td>
        </tr>
     </table>
        <%--To add date picker--%>
       
       
        <%--End date picker--%>
  
    <table class="table" >
      
        <td>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit"
                CssClass="btn btn-success" OnClick="btnsubmit_Click"/> <%-- Green Button color--%>

        </td>
        <td>
            <asp:Button runat="server" ID="btncancel" Text="Cancel" 
                 CssClass="btn btn-danger" /> <%--Red Button color--%>
        </td>
    </tr>
    
        </table>
    
</form>
</body>
</html>


