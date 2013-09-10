<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebApp.MainPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Asset Management</title>
    <link href="~/Styles/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-header">
            <h1>Asset Management</h1>
        </div>
        <div class="content">
            <div class="search-panel">
                <h3>Search</h3>
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button" OnClick="btnSearch_Click" />
            </div>
            <div class="results-panel">
                <asp:GridView ID="gvResults" runat="server" CssClass="grid-view" AutoGenerateColumns="true"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
