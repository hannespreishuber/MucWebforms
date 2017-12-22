<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="chkViewPanel" runat="server"
                AutoPostBack="true"
                Checked="true"
                OnCheckedChanged="chkViewPanel_CheckedChanged" />
            <br />
            <asp:Panel ID="ViewPanel" runat="server">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                <asp:Image ID="Image1" runat="server"  ImageUrl="~/img/RC-Flugzeuge[1].png" />

            </asp:Panel>
            <asp:RadioButtonList ID="RadioButtonList1"
                runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="1" Selected="true">Mann</asp:ListItem>
                <asp:ListItem Value="2">Frau</asp:ListItem>
                <asp:ListItem Value="3">Firma</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:DropDownList ID="DropDownList1" 
                AutoPostBack="true"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                runat="server">
                <asp:ListItem Value="1" Selected="true">Mann</asp:ListItem>
                <asp:ListItem Value="2">Frau</asp:ListItem>
                <asp:ListItem Value="3">Firma</asp:ListItem>

            </asp:DropDownList>

            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
