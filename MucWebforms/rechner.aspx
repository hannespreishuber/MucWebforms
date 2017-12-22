<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rechner.aspx.cs" Inherits="rechner" %>

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
            <div class="row">
                <div class="col-md-12>"></div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox1"
                            runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6 col-xs-1">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="btn-group" role="group">
                        <asp:Button ID="Button1" runat="server" Text="plus" class="btn btn-default" />
                        <asp:Button ID="Button2" runat="server" Text="minus" class="btn btn-default" />
                    </div>

                </div>

            </div>
        </div>
    </form>
</body>
</html>
