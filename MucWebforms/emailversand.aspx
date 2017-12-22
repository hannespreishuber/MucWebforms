<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emailversand.aspx.cs" Inherits="emailversand" %>

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
                <div class="col-md-6">
                    <h1>email senden</h1>
                    <div class="form-group">
                        <label for="email">email</label>
                        <asp:TextBox ID="email" runat="server"
                            TextMode="Email"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <a href="#" Class="btn btn-default" 
                            onclick="form1.reset();return false;"
                            >cancel</a>
                        <asp:Button ID="btnOk" runat="server" Text="ok" 
                            CssClass="btn btn-success"
                            OnClick="btnOk_Click"
                            OnClientClick="return confirm('wirklich senden?');"
                            />

                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
