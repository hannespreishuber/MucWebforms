<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="list-group">
        <asp:Repeater ID="rptTreffpunkt" runat="server"
            ItemType="MucWebforms.Treffpunkt"
            SelectMethod="rptTreffpunkt_GetData">
            <ItemTemplate>
                <li class="list-group-item">
                    <a href='detail.aspx?id=<%#Item.Id %>'>
                        <h3>
                            <%#Item.Ort %>
                            <span class="badge pull-right"><%#Item.Anforderungen.Count %> </span>
                        </h3>
                    </a>
                    <ul>
                        <asp:Repeater ID="rptAnforderungen"
                            ItemType="MucWebforms.Anforderung"
                            DataSource="<%#Item.Anforderungen %>"
                            runat="server">
                            <ItemTemplate>
                                <li><%#Item.Firma %></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

</asp:Content>

