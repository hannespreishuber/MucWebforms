<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    Culture="de-de" UICulture="de-de"
    Trace="false"
    CodeFile="Default14.aspx.cs" Inherits="Default14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:FormView ID="FormView1" runat="server"
        DataKeyNames="Id" ItemType="MucWebforms.Anforderung"
        SelectMethod="FormView1_GetItem"
        UpdateMethod="FormView1_UpdateItem"
        InsertMethod="FormView1_InsertItem"
        DeleteMethod="FormView1_DeleteItem">
        <ItemTemplate>
            <%#Item.Id %><br />
            <%#Item.Firma %>
            <asp:Button ID="Button1" runat="server" Text="edit" CommandName="Edit" />
            <asp:Button ID="Button4" runat="server" Text="New" CommandName="New" />
            <asp:Button ID="Button5" runat="server" Text="delete" CommandName="Delete" />
        </ItemTemplate>
        <EditItemTemplate>
            <%#Item.Id %>
            <asp:TextBox ID="TextBox1" runat="server" Text="<%#BindItem.Firma %>"></asp:TextBox>

            <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" />
            <asp:Button ID="Button3" runat="server" Text="Update" CommandName="Update" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="form-group">
                <label class="col-sm-2 control-label">Firma</label>
                <asp:TextBox ID="txtFirma" runat="server" CssClass="form-control"
                    Text="<%#BindItem.Firma %>"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Bitte Füllen"
                    ControlToValidate="txtFirma"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Treffpunkt</label>

                <asp:DropDownList ID="drpTreffpunkt" runat="server" CssClass="form-control"
                    ItemType="MucWebforms.Treffpunkt"
                    SelectMethod="GetTreffpunkte"
                    DataTextField="Ort"
                    DataValueField="Id"
                    SelectedValue="<%#BindItem.TreffpunktID %>">
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Datum</label>
                     <div class='input-group date  col-sm-10' id='datetimepicker1'>

                        <asp:TextBox ID="txtDatum" runat="server" CssClass="form-control"
                            Text="<%#BindItem.Datum %>" />


                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                  
                </div>
            </div>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                Display="Dynamic"
                ControlToValidate="txtDatum"
                MinimumValue="<%=Date.Now %>"
                MaximumValue="2018/12/31"
                ErrorMessage="Datum in der Zukunft"
                ForeColor="Red"></asp:RangeValidator>


            <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" />
            <asp:Button ID="Button3" runat="server" Text="Insert" CommandName="Insert" />
        </InsertItemTemplate>

    </asp:FormView>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <script src="/Scripts/bootstrap-datetimepicker.js"></script>
    <script>
        $(function () {
            // $('#datetimepicker1').datetimepicker();
            //Format http://momentjs.com/docs/#/displaying/format/
            $('#datetimepicker1').datetimepicker({
                format: 'L'
            });

        });
    </script>



</asp:Content>

