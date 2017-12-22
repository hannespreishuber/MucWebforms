<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" 
    TagName="WebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>tolle Seite</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            <p><a class="btn btn-default" role="button" href="#">View details »</a></p>
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            <p><a class="btn btn-default" role="button" href="#">View details »</a></p>
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-default" role="button" href="#">View details »</a></p>
        </div>
    </div>
    <div class="row">
        <uc1:WebUserControl runat="server" Heading="Wien" ID="WebUserControl" />
        <uc1:WebUserControl runat="server" Heading="Berlin" ID="WebUserControl1" />
        <uc1:WebUserControl runat="server" Heading="Burghausen" ID="WebUserControl2" />
    </div>

</asp:Content>

