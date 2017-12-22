<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default17.aspx.cs" Inherits="Default17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table id="gridview">
        <tbody></tbody>
    </table>
    <script>
        $.ajax({
            type: "POST",
            contentType: "application/json",
            dataType: "json",
            url: "/webservice.asmx/LadeDaten",
            data: '{anzahl:2}',
            success: function (result) {
                $.each(result.d, function (index, row) {

                       tr = $('<tr>');
                    tr.append("<td>" + row.Id + "</td>");
                    tr.append("<td>" + row.Ort + "</td>");
                    $('#gridview tbody').append(tr);
                });
            }
        });

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFooder" runat="Server">
</asp:Content>

