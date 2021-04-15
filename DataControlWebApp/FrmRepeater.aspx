<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRepeater.aspx.cs" Inherits="DataControlWebApp.FrmRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Repeater 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="CtlMemoList" runat="server" DataSourceID="SdsMemoList" />
            <asp:SqlDataSource ID="SdsMemoList" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT [Num], [Name], [Title] FROM [Memos] ORDER BY [Num] DESC" />
        </div>
    </form>
</body>
</html>
