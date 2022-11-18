<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarUbicacion.aspx.cs" Inherits="Inventario.EditarUbicacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Editar Ubicación</span></h2>
</div>
    <center>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Panel ID="pnCampos" runat="server" Visible="true" DefaultButton="btnModificar">
            <table style="border:none;">
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblUbicacion" runat="server" Text="Ubicación"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtIDU" runat="server" Width="128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFielValidator" runat="server" ControlToValidate="txtIDU" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtNombre" runat="server" Width="128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" colspan="2">
                        <center>
                            <asp:Button ID="btnModificar" runat="server" Text="  Modificar  " OnClick="btnModificar_Click" />
                        </center>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </center>
</asp:Content>
