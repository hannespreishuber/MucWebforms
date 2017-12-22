<%@ Page Language="C#" %>

<%@ Import Namespace="MucWebforms" %>
<script runat="server">


    protected void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "application/vnd.ms-excel";

    }

    public IEnumerable<Treffpunkt> rptTreffpunkt_GetData()
    {
        var ef = new Model1();
        return ef.Treffpunkt;
    }
</script>
<table>
    <asp:repeater id="rptTreffpunkt" runat="server"
        itemtype="MucWebforms.Treffpunkt"
        selectmethod="rptTreffpunkt_GetData">
            <ItemTemplate>
                 <tr>
        <td><%#Item.Id %></td>
        <td><%#Server.HtmlEncode(Item.Ort) %></td>
    </tr>
             </ItemTemplate>
         </asp:repeater>

</table>
