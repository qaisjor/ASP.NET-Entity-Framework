<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="task1.show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 257px;
        }
        .auto-style4 {
            height: 26px;
            width: 257px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding:0px 50px">

              <table class="auto-style1 table table-striped">
            <tr>
                <td class="auto-style3">customer number</td>
                <td>
                    <asp:Label ID="lblNumber" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">age AVG</td>
                <td>
                    <asp:Label ID="lblAge" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">max Age</td>
                <td class="auto-style2">
                    <asp:Label ID="lblMax" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="search" OnClick="btnSearch_Click" />
                </td>
            </tr>
        </table>

            <h2>show all users</h2>
        
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" />
                <asp:BoundField DataField="age" HeaderText="age" />
                <asp:BoundField DataField="phone" HeaderText="phone" />
                <asp:BoundField DataField="email" HeaderText="email" />
                <asp:BoundField DataField="cityName" HeaderText="city name" />
                <asp:ImageField DataImageUrlField="photo" HeaderText="photo">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="customerID" HeaderText="id" />
                <asp:HyperLinkField DataNavigateUrlFields="customerID" DataNavigateUrlFormatString="Edit.aspx?id={0}" HeaderText="Edit" Text="edit" />
                <asp:HyperLinkField DataNavigateUrlFields="customerID" DataNavigateUrlFormatString="delete.aspx?id={0}" HeaderText="Delete" Text="delete" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
      

              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      

            </div>
    </form>

</body>
</html>
