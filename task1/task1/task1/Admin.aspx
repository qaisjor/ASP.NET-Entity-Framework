<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="task1.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 258px;
        }
        .auto-style4 {
            width: 51px;
        }

        body {
           background-color:black;
           color:white
        }
        .cont {
          
          border-radius: 20px;
          width:70%;
          margin:0 auto;
          box-shadow: 10px 5px 5px gray;
          overflow:hidden;
          margin-top:20px;
          padding:20px;
        }
        #GridView1 {
          width:100%;
           border-radius: 20px;
        }
    </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body >
    <form id="form1" runat="server">
        <div class="cont"  >
            <h1>Add new customer </h1>

            <table class="auto-style1 table table-striped">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName"  runat="server" Text="Name"></asp:Label>
                        :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName"  required runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName0" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAge" required runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName1" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlCity" required runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName2" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPhone" required runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName3" runat="server" Text="Emal"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" required runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblName4" runat="server" Text="Photo"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Add Customer" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        <br/><br/> <br/>
            <h2>All Users</h2>
       <%-- <asp:Label ID="lbltable" runat="server" Text="Label"></asp:Label>--%>

            <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" />
                    <asp:BoundField DataField="age" HeaderText="age" />
                    <asp:BoundField DataField="phone" HeaderText="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" />
                    <asp:BoundField DataField="cityName" HeaderText="City Name" />
                    <asp:ImageField DataImageUrlField="photo" HeaderText="photo">
                        <ItemStyle Width="100px" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />

            </asp:GridView>
        </div>
    </form>
</body>
</html>
