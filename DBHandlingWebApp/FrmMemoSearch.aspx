﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoSearch.aspx.cs" Inherits="DBHandlingWebApp.FrmMemoSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>검색 패턴</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>데이터 검색</h3>
            <asp:DropDownList ID="LstSearchField" runat="server">
                <asp:ListItem Value="Name" Selected="True" Text="이름" />
                <asp:ListItem Value="Title" Text="메모" />
            </asp:DropDownList>
            <asp:TextBox ID="TxtSearchQuery" runat="server" />
            <asp:Button ID="BtnSearch" runat="server" Text="검색" OnClick="BtnSearch_Click" />
            <hr />
            <asp:GridView ID="GrdMemoSearchList" runat="server" />
            <asp:Label ID="LblError" runat="server" />
        </div>
    </form>
</body>
</html>
