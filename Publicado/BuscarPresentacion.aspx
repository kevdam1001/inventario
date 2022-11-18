<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarPresentacion.aspx.cs" Inherits="Inventario.BuscarPresentacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <h2><span>Buscar Presentación</span></h2>
    </div>
    <center>
        <asp:Panel ID="pnBusqueda" runat="server" DefaultButton="btnBuscar">
            <table style="border:none;">
                <tr>
                    <td style="border:none;"><asp:Label ID="lblBusqueda" runat="server" Text=" Presentación: "></asp:Label></td>
                    <td style="border:none;"><asp:TextBox ID="txtBuscarPresentacion" Width="128px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="a" ControlToValidate="txtBuscarPresentacion" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                <td style="border:none"; colspan="2" align="center">
                    <center>
                        <asp:Button ID="btnBuscar" runat="server" Text=" Buscar " onclick="btnBuscar_Click"/>
                    </center>
                </td>
                </tr>
            </table>

            <asp:Panel ID="pnListado" runat="server" ScrollBars="Auto" Width="448px">
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="No se han encontrado datos"></asp:Label>
                <asp:GridView ID="gvListadoEncontrado" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id_Medida" DataNavigateUrlFormatString="EditarPresentacion.aspx?idP={0}" DataTextField="Id_Medida" HeaderText="ID" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Unidad" />
                    </Columns>
                </asp:GridView>

            </asp:Panel>

        </asp:Panel>
    </center>
</asp:Content>
