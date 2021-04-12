<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmTable.aspx.cs" Inherits="FirstWebApp.FrmTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>테이블 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tbl" runat="server" BorderWidth="1">
                <asp:TableRow>
                    <asp:TableCell Text="1행 1열" />
                </asp:TableRow>
            </asp:Table>

            <table style="border: 1px solid black;">
                <thead>
                    <th>제목1</th>
                    <th>제목2</th>
                    <th>제목3</th>
                </thead>
                <tr>
                    <td>글1</td>
                    <td>글2</td>
                    <td>글3</td>
                </tr>
                <tr>
                    <td>글4</td>
                    <td>글5</td>
                    <td>글6</td>
                </tr>
            </table>
            <br />
            <asp:DropDownList ID="CboPhoneNum" runat="server">
                <asp:ListItem Text="010" />
                <asp:ListItem Value="019" Text="019" />
                <asp:ListItem Value="018" Text="018" />
                <asp:ListItem Text="017" />
                <asp:ListItem Text="016" />
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
