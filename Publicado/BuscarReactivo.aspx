<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarReactivo.aspx.cs" Inherits="Inventario.BuscarReactivo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Busqueda de Reactivos</span></h2>
        </div>
    <center>
    <asp:Panel ID="Busqueda" runat="server" DefaultButton="ButtonBuscar">
        <table style="border:none;" >
            <tr >
                <td style="border:none;"><asp:Label ID="LabelBusuqeda" runat="server" Text="Código o Nombre Reactivo:"></asp:Label></td>
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
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="600px">
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False" Text="No se han encontrado datos."></asp:Label> 
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <%--<asp:HyperLinkField DataNavigateUrlFields="Usuario" 
                DataNavigateUrlFormatString="EditarUsuarios.aspx?usr={0}" DataTextField="Usuario" HeaderText="Usuario"/>--%>
                <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" />
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Fecha de Vencimiento" HeaderText="Fecha de Vencimiento" />
                <asp:BoundField DataField="Existencia" HeaderText="Existencia" />
           <%--     <asp:BoundField DataField="Rol" HeaderText="Rol" />--%>
            </Columns>
        </asp:GridView>
        </asp:Panel>
    </asp:Panel>
    </center>


</asp:Content>
