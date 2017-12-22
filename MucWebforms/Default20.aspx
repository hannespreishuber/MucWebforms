<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default20.aspx.cs" Inherits="Default20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
<asp:LoginName ID="LoginName1" runat="server" />
    <%=User.Identity.IsAuthenticated %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFooder" Runat="Server">
</asp:Content>

