<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TemplateWebApp.HomePage" %>

<%@ Register Src="~/Navigator.ascx" TagPrefix="nav" TagName="Navigator" %>
<%@ Register Src="~/Category.ascx" TagPrefix="cat" TagName="Category" %>
<%@ Register Src="~/Catalog.ascx" TagPrefix="ctl" TagName="Catalog" %>
<%@ Register Src="~/Copyright.ascx" TagPrefix="cpy" TagName="Copyright" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>웹 사이트 프레임 만들기</title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
    <style>
        div{
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-12" style="background-color:deeppink">
                <nav:Navigator runat="server" ID="UcNavigator" />
            </div>
        </div>
        <div class="row" style="height:200px">
            <div class="col-md-4" style="background-color:yellow">
                <cat:Category runat="server" ID="UcCategory" />
            </div>
            <div class="col-md-8" style="background-color:deepskyblue">
                <ctl:Catalog runat="server" ID="UcCatalog" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="background-color:mediumpurple">
                <cpy:Copyright runat="server" ID="UcCopyright" />
            </div>
        </div>
    </form>
</body>
</html>
