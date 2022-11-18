<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarProveedor.aspx.cs" Inherits="Inventario.EditarProveedor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80px;
        }
        .auto-style2 {
            width: 78px;
        }
        .auto-style3 {
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <h2><span>Editar Proveedor</span></h2>
    </div>
    <center>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Panel ID="pnCampos" runat="server" Visible="true" DefaultButton="btnModificar">
            <table style="border:none;">
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblNit" runat="server" Text="NIT:"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtNit" runat="server" Font-Size="Small" Width="128px" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txtNit" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                    <td style="border:none;" class="auto-style3">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtNombre" runat="server" Font-Size="Small" Width="128px" MaxLength="150"></asp:TextBox>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:" ></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtDireccion" runat="server" Font-Size="Small" Width="128px" MaxLength="110"></asp:TextBox>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                    <td style="border:none;" class="auto-style3">
                        <asp:Label ID="lblRegimen" runat="server" Text="Régimen:" ></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtRegimen" runat="server" Font-Size="Small" Width="128px" MaxLength="75"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblContacto" runat="server" Text="Contacto:"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtContacto" runat="server" Font-Size="Small" Width="128px" MaxLength="60"></asp:TextBox>
                    </td>
                    <td style="border:none;" class="auto-style3">
                        <asp:Label ID="lblTelefono1" runat="server" Text="Teléfono 1:"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtTelefono1" runat="server" Font-Size="Small" Width="128px" MaxLength="8"></asp:TextBox>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono1" SetFocusOnError="true">*.</asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ControlToValidate="txtTelefono1" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese Número Entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td style="border:none;" class="auto-style1">
                        <asp:Label ID="lblTelefono2" runat="server" Text="Teléfono 2:"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtTelefono2" runat="server" Font-Size="Small" Width="128px" MaxLength="8"></asp:TextBox>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono2" SetFocusOnError="true">*.</asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ControlToValidate="txtTelefono2" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Ingrese Número Entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                    </td>
                    <td style="border:none;" class="auto-style3">
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo:"></asp:Label><br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox ID="txtCorreo" runat="server" Font-Size="Small" Width="128px" MaxLength="80"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;" colspan="4">
                        <center>
                            <asp:Button ID="btnModificar" runat="server" Text="   Modificar   " OnClick="btnModificar_Click" />
                        </center>
                    </td>
                </tr>

            </table>

        </asp:Panel>
    </center>

</asp:Content>
