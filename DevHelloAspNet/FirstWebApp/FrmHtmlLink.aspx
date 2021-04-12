<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmHtmlLink.aspx.cs" Inherits="FirstWebApp.FrmHtmlLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>하이퍼링크 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lnkNaver" runat="server" NavigateUrl="https://www.naver.com" Text="Naver(<u>D</u>)" />
            <br />
            <asp:Image ID="imgChange" runat="server" ImageUrl="~/images/ASP-Net-Banners-01.png"
                AlternateText="대체텍스트" Width="100" Height="100" />
            <hr />
            <asp:Button Text="이미지 순환" runat="server" ID="btnChange" OnClick="btnChange_Click" />


        </div>
    </form>
</body>
</html>
