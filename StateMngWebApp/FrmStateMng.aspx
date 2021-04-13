<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmStateMng.aspx.cs" Inherits="StateMngWebApp.FrmStateMng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>상태관리</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>서버에 저장</h3>
            Application 개체 : <asp:TextBox ID="TxtApplication" runat="server" /><br />
            Session 개체 : <asp:TextBox ID="TxtSession" runat="server" /><br />
            Cache 개체 : <asp:TextBox ID="TxtCache" runat="server" /><br />

            <h3>클라이언트에 저장</h3>
            Cookies 개체 : <asp:TextBox ID="TxtCookies" runat="server" /><br />
            ViewState 개체 : <asp:TextBox ID="TxtViewState" runat="server" /><br />
            <hr />
            <asp:LinkButton ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="저장" />
            &nbsp;
            <asp:LinkButton ID="BtnPostBack" runat="server" Text="다시 게시" />
        </div>
    </form>
</body>
</html>
