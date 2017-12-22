<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default18.aspx.cs" Inherits="Default18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="Es sind keine Datensätze zum Anzeigen vorhanden.">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Firma" HeaderText="Firma" SortExpression="Firma" />
        <asp:BoundField DataField="Kostenstelle" HeaderText="Kostenstelle" SortExpression="Kostenstelle" />
        <asp:BoundField DataField="SAPNr" HeaderText="SAPNr" SortExpression="SAPNr" />
        <asp:BoundField DataField="TreffpunktID" HeaderText="TreffpunktID" SortExpression="TreffpunktID" />
        <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
        <asp:BoundField DataField="Von" HeaderText="Von" SortExpression="Von" />
        <asp:BoundField DataField="Bis" HeaderText="Bis" SortExpression="Bis" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
     CacheDuration="60" 
    ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString2 %>" DeleteCommand="DELETE FROM [Anforderung] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Anforderung] ([Firma], [Kostenstelle], [SAPNr], [TreffpunktID], [Datum], [Von], [Bis]) VALUES (@Firma, @Kostenstelle, @SAPNr, @TreffpunktID, @Datum, @Von, @Bis)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString2.ProviderName %>" SelectCommand="SELECT [Id], [Firma], [Kostenstelle], [SAPNr], [TreffpunktID], [Datum], [Von], [Bis] FROM [Anforderung]" UpdateCommand="UPDATE [Anforderung] SET [Firma] = @Firma, [Kostenstelle] = @Kostenstelle, [SAPNr] = @SAPNr, [TreffpunktID] = @TreffpunktID, [Datum] = @Datum, [Von] = @Von, [Bis] = @Bis WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Firma" Type="String" />
        <asp:Parameter Name="Kostenstelle" Type="Int32" />
        <asp:Parameter Name="SAPNr" Type="Int32" />
        <asp:Parameter Name="TreffpunktID" Type="Int32" />
        <asp:Parameter DbType="Date" Name="Datum" />
        <asp:Parameter Name="Von" Type="DateTime" />
        <asp:Parameter Name="Bis" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Firma" Type="String" />
        <asp:Parameter Name="Kostenstelle" Type="Int32" />
        <asp:Parameter Name="SAPNr" Type="Int32" />
        <asp:Parameter Name="TreffpunktID" Type="Int32" />
        <asp:Parameter DbType="Date" Name="Datum" />
        <asp:Parameter Name="Von" Type="DateTime" />
        <asp:Parameter Name="Bis" Type="DateTime" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFooder" Runat="Server">
</asp:Content>

