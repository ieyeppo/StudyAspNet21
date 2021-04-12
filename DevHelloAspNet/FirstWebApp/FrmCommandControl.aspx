<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCommandControl.aspx.cs" Inherits="FirstWebApp.FrmCommandControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>명령컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            버튼컨트롤:
            <asp:Button ID="btnButton" runat="server" Text="버튼" OnClick="btnButton_Click" />
            <br />
            링크버튼 컨드롤:
            <asp:LinkButton ID="btnLink" runat="server" Text="링크버튼" OnClick="btnLink_Click" />
            <br />

        </div>
    </form>
</body>
</html>
