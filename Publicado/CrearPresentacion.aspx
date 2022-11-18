<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearPresentacion.aspx.cs" Inherits="Inventario.CrearPresentacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Crear Presentación</span></h2> 
    </div>
    <center>
    
        <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonIngresar">
        
        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
    <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="LabelMedida" runat="server" Text="Unidad de Medida:"></asp:Label></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" ID="TextMedida" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Omedida" runat="server" ControlToValidate="TextMedida" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr >
            <td style="border:none;"><asp:Label ID="LabelCantidad" runat="server" Text="Cantidad:"></asp:Label></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" ID="TextCantidad" 
                    runat="server" MaxLength="10"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextCantidad" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ErrorMessage="Número Incorrecto." ID="ENum" runat="server" ControlToValidate="TextCantidad" ValidationExpression="^[0-9]*(\.[0-9]{0,2})?$"></asp:RegularExpressionValidator>
            </td>
        </tr>  
        </table>
        <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " 
                onclick="ButtonIngresar_Click" />
   </asp:Panel>
   </center>
</asp:Content>
