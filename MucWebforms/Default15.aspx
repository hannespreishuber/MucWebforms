<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
    EnableViewState="false" EnableViewStateMac="false" EnableEventValidation="false"
    CodeFile="Default15.aspx.cs" Inherits="Default15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                </ContentTemplate>

            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <img src="img/dribbble-progress-bar[1].gif" />
                </ProgressTemplate>

            </asp:UpdateProgress>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFooder" runat="Server">
</asp:Content>

