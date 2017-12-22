<%@ Page Language="C#" AutoEventWireup="true" 
    CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1>München am <%=DateTime.Now %></h1>
                <p>This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.</p>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                          <label for="email">Email address:</label>
                   
                        <asp:TextBox runat="server" 
                            type="email"
                            novalidate="true"
                            CssClass="form-control" ID="email" />
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </div>
                <div class="col-md-6">
                    <asp:Button ID="Button2"
                        CssClass="btn btn-danger pull-right"
                        runat="server" Text="Button"
                        OnClick="Button2_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
