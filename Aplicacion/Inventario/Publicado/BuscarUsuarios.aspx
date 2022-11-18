<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarUsuarios.aspx.cs" Inherits="Inventario.BuscarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Busqueda de Usuarios</span></h2>
        </div>
    <center>
    <asp:Panel ID="Busqueda" runat="server" DefaultButton="ButtonBuscar">
        <table style="border:none;" >
            <tr >
                <td style="border:none;"><asp:Label ID="LabelBusuqeda" runat="server" Text="Usuario:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="128px" ID="TextBusqueda" runat="server"></asp:TextBox >
                <asp:RequiredFieldValidator ErrorMessage="a" ID="OBusqueda" runat="server" ControlToValidate="TextBusqueda" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
             <td style="border:none"; colspan="2" align="center"><center>
                    <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                        onclick="ButtonBuscar_Click"/>
                 </center></td>
            </tr>  
        </table>
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="448px">
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False" Text="No se han encontrado datos."></asp:Label> 
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Usuario" 
                DataNavigateUrlFormatString="EditarUsuarios.aspx?usr={0}" DataTextField="Usuario" HeaderText="Usuario"/>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" />
                <asp:BoundField DataField="Rol" HeaderText="Rol" />
            </Columns>
        </asp:GridView>
        </asp:Panel>
    </asp:Panel>
    </center>
</asp:Content>
