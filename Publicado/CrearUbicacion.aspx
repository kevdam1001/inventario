<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearUbicacion.aspx.cs" Inherits="Inventario.CrearUbicacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Crear Ubicación</span></h2> 
    </div>
    <center>
        <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonIngresar">
        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
    <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="Labelsalon" runat="server" Text="No. Salón:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextSalon" runat="server" MaxLength="10"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Onombre" runat="server" ControlToValidate="TextSalon" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr >
            <td style="border:none;"><asp:Label ID="LabelDesc" runat="server" Text="Descripción:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextDesc" 
                    runat="server" MaxLength="100"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextDesc" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>  
        </table>
        <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " 
                onclick="ButtonIngresar_Click" />
     </asp:Panel>
   </center>
</asp:Content>
