<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
        CssClass="table"
        AlternatingRowStyle-BackColor="silver"
       
        AutoGenerateColumns="false" DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        EmptyDataText="Es sind keine Datensätze zum Anzeigen vorhanden."
        AllowSorting="True">
        <Columns>
            <asp:CommandField
                ControlStyle-CssClass="btn btn-default"
                
                ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" 
                HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Ort"
                ControlStyle-CssClass="form-control"
                HeaderText="Ort" SortExpression="Ort" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
        DeleteCommand="DELETE FROM [Treffpunkt] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Treffpunkt] ([Ort]) VALUES (@Ort)"
        SelectCommand="SELECT [Id], [Ort] FROM [Treffpunkt]" UpdateCommand="UPDATE [Treffpunkt] SET [Ort] = @Ort WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ort" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ort" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

