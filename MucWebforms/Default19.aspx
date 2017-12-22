<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default19.aspx.cs" Inherits="Default19" %>
<%@ OutputCache Duration="60" VaryByParam="none" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%=DateTime.Now %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFooder" Runat="Server">
</asp:Content>

