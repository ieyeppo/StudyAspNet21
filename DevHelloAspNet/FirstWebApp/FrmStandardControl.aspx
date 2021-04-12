<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmStandardControl.aspx.cs" Inherits="FirstWebApp.FrmStandardControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>표준컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>SingleLine</h2>
            이름 : 
            <asp:TextBox ID="TxtSingleLine" runat="server" CssClass="myTextAlign" />
            <br />
            <h2>MultiLine</h2>
            소개 : 
            <asp:TextBox ID="TxtMultiLine" runat="server" TextMode="MultiLine" />
            <br />
            <h2>Password</h2>
            암호 : 
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" />
            <hr />
            <asp:Button ID="BtnOK" runat="server" Text="확인" OnClick="BtnOK_Click"/>
            <br />


            <h1>표준컨드롤</h1>

            <h2>[1]순수 HTML 사용해서 버튼 만들기</h2>
            <input type="button" value="버튼1" id="BtnInput" />
            <br />
            <h2>[2]runat 속성을 추가해서 서버 컨트롤 버튼 만들기</h2>
            <input type="button" value="버튼2" runat="server" id="BtnHtml" />
            <br />
            <h2>[3]ASP.NET 표준 컨트롤을 사용해서 버튼 만들기</h2>
            <asp:Button Text="버튼3" runat="server" id="BtnServer" OnClick="BtnServer_Click"/>
            <br />
            현재시간 : 
            <asp:Label ID="LblDateTime" runat="server" BackColor="DeepPink" BorderColor="White"
                BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
            


        </div>
    </form>
</body>
</html>
