<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Anforderung] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Anforderung] ([Firma], [Kostenstelle], [SAPNr], [TreffpunktID], [Datum], [Von], [Bis]) VALUES (@Firma, @Kostenstelle, @SAPNr, @TreffpunktID, @Datum, @Von, @Bis)" SelectCommand="SELECT * FROM [Anforderung] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Anforderung] SET [Firma] = @Firma, [Kostenstelle] = @Kostenstelle, [SAPNr] = @SAPNr, [TreffpunktID] = @TreffpunktID, [Datum] = @Datum, [Von] = @Von, [Bis] = @Bis WHERE [Id] = @Id">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
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
    <asp:FormView ID="FormView1" runat="server"
        DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <asp:LinkButton ID="NewButton"
                Text="New"
                CssClass="btn btn-primary"
                CommandName="New"
                runat="server" />

        </EmptyDataTemplate>
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Firma:
            <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
            <br />
            Kostenstelle:
            <asp:TextBox ID="KostenstelleTextBox" runat="server" Text='<%# Bind("Kostenstelle") %>' />
            <br />
            SAPNr:
            <asp:TextBox ID="SAPNrTextBox" runat="server" Text='<%# Bind("SAPNr") %>' />
            <br />
            TreffpunktID:
            <asp:TextBox ID="TreffpunktIDTextBox" runat="server" Text='<%# Bind("TreffpunktID") %>' />
            <br />
            Datum:
            <asp:TextBox ID="DatumTextBox" runat="server" Text='<%# Bind("Datum") %>' />
            <br />
            Von:
            <asp:TextBox ID="VonTextBox" runat="server" Text='<%# Bind("Von") %>' />
            <br />
            Bis:
            <asp:TextBox ID="BisTextBox" runat="server" Text='<%# Bind("Bis") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualisieren" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Firma:
            <asp:TextBox ID="FirmaTextBox" runat="server" Text='<%# Bind("Firma") %>' />
            <br />
            Kostenstelle:
            <asp:TextBox ID="KostenstelleTextBox" runat="server" Text='<%# Bind("Kostenstelle") %>' />
            <br />
            SAPNr:
            <asp:TextBox ID="SAPNrTextBox" runat="server" Text='<%# Bind("SAPNr") %>' />
            <br />
            TreffpunktID:
            <asp:TextBox ID="TreffpunktIDTextBox" runat="server" Text='<%# Bind("TreffpunktID") %>' />
            <br />
            Datum:
            <asp:TextBox ID="DatumTextBox" runat="server" Text='<%# Bind("Datum") %>' />
            <br />
            Von:
            <asp:TextBox ID="VonTextBox" runat="server" Text='<%# Bind("Von") %>' />
            <br />
            Bis:
            <asp:TextBox ID="BisTextBox" runat="server" Text='<%# Bind("Bis") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Einfügen" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Firma:
            <asp:Label ID="FirmaLabel" runat="server" Text='<%# Bind("Firma") %>' />
            <br />
            Kostenstelle:
            <asp:Label ID="KostenstelleLabel" runat="server" Text='<%# Bind("Kostenstelle") %>' />
            <br />
            SAPNr:
            <asp:Label ID="SAPNrLabel" runat="server" Text='<%# Bind("SAPNr") %>' />
            <br />
            TreffpunktID:
            <asp:Label ID="TreffpunktIDLabel" runat="server" Text='<%# Bind("TreffpunktID") %>' />
            <br />
            Datum:
            <asp:Label ID="DatumLabel" runat="server" Text='<%# Bind("Datum") %>' />
            <br />
            Von:
            <asp:Label ID="VonLabel" runat="server" Text='<%# Bind("Von") %>' />
            <br />
            Bis:
            <asp:Label ID="BisLabel" runat="server" Text='<%# Bind("Bis") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Bearbeiten" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Löschen" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Neu" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

