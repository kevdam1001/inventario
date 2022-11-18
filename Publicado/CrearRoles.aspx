<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearRoles.aspx.cs" Inherits="Inventario.CrearRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Creación de Roles</span></h2>
        </div>
        <center> 
            <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonIngresar">
            
        <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre Rol:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextNombre" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Onombre" runat="server" ControlToValidate="TextNombre" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr> 
        </table>
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Tipos de Operaciones" />
                <asp:TemplateField HeaderText="¿Puede Acceder?"  ControlStyle-Width="60px">
                    <ItemTemplate>
                    <center>
                        <asp:CheckBox ID="Permiso" runat="server" />
                    </center>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " 
                onclick="ButtonIngresar_Click" />
        </asp:Panel>
        </center>
    
</asp:Content>
