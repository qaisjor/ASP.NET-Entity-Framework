<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="task1.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
   
              <div class="cont"  >
           
        
       <%--new user profile--%> 
                  <div class="container bootstrap snippets bootdey">
    <h1 class="text-primary">Edit Profile</h1>
      <hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
             <asp:Image ID="Image1" CssClass="avatar img-circle img-thumbnail" runat="server" Width="100px" Height="100px" />
          
          <h6>Upload a different photo...</h6>
          
           <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div>
        <h3>Personal info</h3>
        
       
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtName" CssClass="form-control"  required runat="server"></asp:TextBox>
              <%--<input class="form-control" type="text" value="dey-dey">--%>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Age:</label>
            <div class="col-lg-8">
               <asp:TextBox ID="txtAge" CssClass="form-control" required runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Phone:</label>
            <div class="col-lg-8">
               <asp:TextBox ID="txtPhone" CssClass="form-control" required runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <asp:TextBox ID="txtEmail" CssClass="form-control" required runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">City:</label>
            <div class="col-lg-8">
              <div class="ui-select">
                 <asp:DropDownList ID="ddlCity" CssClass="form-control" required runat="server">
                        </asp:DropDownList>
                  <br/>
                   <asp:Button ID="btnEdit" runat="server"  Text="Save" OnClick="btnEdit_Click" />
              </div>
            </div>
          </div>
      
      </div>
  </div>
</div>
<hr>
    </form>
</body>
</html>
