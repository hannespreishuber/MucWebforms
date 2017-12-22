<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-4">
            <div class="input-group  input-group-lg">
                <asp:TextBox ID="txtsuche" runat="server"
                    placeholder="Search"
                    CssClass="form-control"></asp:TextBox>
                <span class="input-group-btn">
                    <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
                SelectCommand="SELECT * FROM [Treffpunkt] WHERE ([Ort] LIKE '%' + @Ort + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtsuche" 
                        DefaultValue="%"
                        Name="Ort" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>



            <ul class="list-group">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li class="list-group-item">
                            <a href='detail.aspx?id=<%#Eval("id") %>'>
                                <%#Eval("Ort") %>
                                <span class="badge pull-right"><%#Eval("Id") %> </span>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

</asp:Content>

