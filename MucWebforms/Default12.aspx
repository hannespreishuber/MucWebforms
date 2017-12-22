<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:TextBox ID="txtSuche" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="Button" />
    <hr />
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <%#Eval("Ort") %><br />
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

