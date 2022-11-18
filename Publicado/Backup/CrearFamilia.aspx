<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearFamilia.aspx.cs" Inherits="Inventario.CrearFamilia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Crear Familia</span></h2> 
    </div>
    
    <center>
    <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonIngresar">
    
        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
    <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextFamilia" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Onombre" runat="server" ControlToValidate="TextFamilia" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
        <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " 
                onclick="ButtonIngresar_Click" />
     </asp:Panel>
   </center>
</asp:Content>
