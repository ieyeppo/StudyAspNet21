<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoModify.aspx.cs" Inherits="DBHandlingWebApp.FrmMemoModify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>데이터 수정</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            번호 : <asp:Label ID="LblNum" runat="server" /><br />
            이름 : <asp:TextBox ID="TxtName" runat="server" /><br />
            이메일 : <asp:TextBox ID="TxtEmail" runat="server" /><br />
            메모 : <asp:TextBox ID="TxtTitle" runat="server" /><br />
            <asp:Button ID="BtnModify" runat="server" Text="저장" OnClick="BtnModify_Click" />&nbsp;
            <asp:Button ID="BtnList" runat="server" Text="리스트" OnClick="BtnList_Click" />
            <hr />
            <asp:Label ID="LblError" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
