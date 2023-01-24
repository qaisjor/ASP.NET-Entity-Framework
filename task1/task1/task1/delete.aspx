<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="task1.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
         <div class="cont"  >
            <h1>Delete customer </h1>

            <table class="auto-style1 table table-striped">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName"  runat="server" Text="Name"></asp:Label>
                        :</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblNa" runat="server" Text="Label"></asp:Label>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName0" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td class="auto-style3">
                       <asp:Label ID="lblAge" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName1" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style3">
                       <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName2" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblPhone" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName3" runat="server" Text="Emal"></asp:Label>
                    </td>
                    <td class="auto-style3">
                       <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName4" runat="server" Text="Photo"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Image width="100px" Height="100px" ID="Image1" runat="server" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnDelete" runat="server"  Text="Delete Customer" OnClick="btnDelete_Click" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        <br/><br/> <br/>
    </form>
</body>
</html>
