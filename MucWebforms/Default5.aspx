<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <ul>
                <li><a href="default5?id=2">2</a></li>
                <li><a href="default5?id=3">3</a></li>
                <li><a href="default5?id=4">4</a></li>
            </ul>
            <h2>FriendlyUrsegments</h2>
             <ul>
                <li><a href="/default5/2">2</a></li>
                <li><a href="/default5/3">3</a></li>
                <li><a href="/default5/4">4</a></li>
            </ul>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
