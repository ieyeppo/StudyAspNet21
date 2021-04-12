<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmInputValid.aspx.cs" Inherits="ValidationWebApp.FrmInputValid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>유효성 검사 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TxtUserId" runat="server" />
            <asp:RegularExpressionValidator ID="ValUserId" runat="server" ControlToValidate="TxtUserId"
                ErrorMessage="아이디를 입력하세요." Display="Static" ForeColor="Red"/>
            (필수)
            <br />
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="ValPassword" runat="server" ControlToValidate="TxtPassword"
                ErrorMessage="암호를 입력하세요." Display="Dynamic"  ForeColor="Red"/>
            (필수)
            <br />
            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="로그인"/>


        </div>
    </form>
</body>
</html>
