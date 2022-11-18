<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarProveedor.aspx.cs" Inherits="Inventario.EditarProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Buscar Proveedor</span></h2>
</div>
    <center>
        <asp:Panel ID="pnBusqueda" runat="server" DefaultButton="btnBuscar">
            <table style="border:none;">
                <tr>
                    <td style="border:none;"><asp:Label ID="lblBusqueda" runat="server" Text="Nit Proveedor:"></asp:Label></td>
                    <td style="border:none;"><asp:TextBox with="128px" ID="txtBusquedaNit" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="a" ID="OBusqueda" runat="server" ControlToValidate="txtBusquedaNit" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none"; colspan="2" align="center">
                        <center>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                        </center></td>
                </tr>
            </table>
            <asp:Panel ID="pnListado" runat="server" ScrollBars="Auto" With="448px">
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="No se han encontrado datos."></asp:Label>
                <asp:GridView ID="gvListadoEncontrado" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Nit" DataNavigateUrlFormatString="EditarProveedor.aspx?nit={0}" DataTextField="Nit" HeaderText="Nit" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Telefono 1" HeaderText="Telefono" />
                        <asp:BoundField DataField="Cotacto" HeaderText="Contacto" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </asp:Panel>
    </center>


</asp:Content>
