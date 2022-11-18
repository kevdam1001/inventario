<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarFamilia.aspx.cs" Inherits="Inventario.BuscarFamilia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Buscar Familias</span></h2>
</div>
    <center>
        <asp:Panel ID="pnBusqueda" runat="server" DefaultButton="btnBuscar">
            <table style="border:none;">
                <tr>
                    <td style="border:none;"><asp:Label ID="lblBusqueda" runat="server" Text="Nombre Familia:"></asp:Label></td>
                    <td style="border:none;"><asp:TextBox Width="128px" ID="txtBusquedaFamilia" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="a" ID="OBusqueda" runat="server" ControlToValidate="txtBusquedaFamilia" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none"; colspan="2" align="center">
                        <center>
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                        </center>
                    </td>
                </tr>
            </table>
            <asp:Panel ID="pnListado" runat="server" ScrollBars="Auto" Width="448px">
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="No se han encontrado datos."></asp:Label>
                <asp:GridView ID="gvListadoEncontrado" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
         </asp:Panel>
    </center>

</asp:Content>
