<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearPaginas.aspx.cs" Inherits="Inventario.CrearPaginas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Creación de Páginas</span></h2>
        </div>
      <center>
          <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonCrear">
          
      <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextNombre" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Onombre" runat="server" ControlToValidate="TextNombre" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr> 
      </table>
          <asp:Button ID="ButtonCrear" runat="server" Text="Crear Página" />
          </asp:Panel>
      </center>      
</asp:Content>
