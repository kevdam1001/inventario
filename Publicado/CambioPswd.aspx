<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CambioPswd.aspx.cs" Inherits="Inventario.CambioPswd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Cambiar Contraseña</span></h2> 
    </div>
    <center>
        <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonIngresar">
        <asp:Label ID="LabelError" runat="server" 
            Text="La contraseña actual no ha sido ingresada correctamente." ForeColor="Red" 
            Visible="False"></asp:Label>
    <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="LabelMedida" runat="server" Text="Contraseña Actual:"></asp:Label></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" ID="TextPass" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Omedida" runat="server" ControlToValidate="TextPass" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr >
            <td style="border:none;"><asp:Label ID="LabelCantidad" runat="server" Text="Nueva Contraseña:"></asp:Label></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" ID="TextNueva" 
                    runat="server" MaxLength="50" TextMode="Password"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextNueva" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            </td>
        </tr> 
        <tr>
            <td style="border:none;"><asp:Label ID="Label1" runat="server" Text="Confirmar Contraseña:"></asp:Label></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" ID="TextConfirmar"  
                    runat="server" MaxLength="50" TextMode="Password"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextConfirmar" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:CompareValidator id="CompareValidator1" 
             runat="server" ErrorMessage="Las contraseñas nuevas no coinciden." 
             ControlToValidate="TextConfirmar" 
             ControlToCompare="TextNueva"></asp:CompareValidator>
            </td>
        </tr> 
        </table>
        <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " 
                onclick="ButtonIngresar_Click" />
                
        </asp:Panel>
   </center>
</asp:Content>
