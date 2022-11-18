<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarPresentacion.aspx.cs" Inherits="Inventario.EditarPresentacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Editar Presentacion</span></h2>
</div> 
    <center>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Panel ID="pnCampos" runat="server" Visible="true" DefaultButton="btnModificar">
            <table style="border:none;">
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblPresentacion" runat="server" Text="Presentacion"></asp:Label><br />
                        <br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox runat="server" ID="txtPresentacion" Width="128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPresentacion" runat="server" ControlToValidate="txtPresentacion" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ErrorMessage="Número Incorrecto." ID="ENum" runat="server" ControlToValidate="txtPresentacion" ValidationExpression="^[0-9]*(\.[0-9]{0,3})?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label runat="server" ID="lblMedida" Text="Unidad"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtMedida" runat="server" Width="128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMedida" runat="server" ControlToValidate="txtMedida" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" colspan="2">
                        <center>
                            <asp:Button ID="btnModificar" runat="server" Text=" Modificar " OnClick="btnModificar_Click" />
                        </center>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </center>
</asp:Content>
