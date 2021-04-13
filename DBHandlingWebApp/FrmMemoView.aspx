<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoView.aspx.cs" Inherits="DBHandlingWebApp.FrmMemoView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>상세보기 패턴</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>상세보기</h3>

            번호 : <asp:Label ID="LblNum" runat="server" /><br />
            이름 : <asp:Label ID="LblName" runat="server" /><br />
            이메일 : <asp:Label ID="LblEmail" runat="server" /><br />
            메모 : <asp:Label ID="LblTitle" runat="server" /><br />
            작성일 : <asp:Label ID="LblPostDate" runat="server" /><br />
            IP주소 : <asp:Label ID="LblPostIP" runat="server" /><br />

            <hr />

            <asp:HyperLink ID="LnkMemoModify" runat="server" Text="수정" />
            <asp:HyperLink ID="LnkMemoDelete" runat="server" Text="삭제" />
            <asp:HyperLink ID="LnkMemoList" runat="server" Text="리스트"  NavigateUrl="~/FrmMemoList.aspx"/>

            <asp:Label ID="LblError" runat="server" ForeColor="Red"/>
        </div>
    </form>
</body>
</html>
