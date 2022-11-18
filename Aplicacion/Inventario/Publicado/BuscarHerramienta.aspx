<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarHerramienta.aspx.cs" Inherits="Inventario.BuscarHerramienta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Busqueda de Herramienta</span></h2>
        </div>
    <center>
    <asp:Panel ID="Busqueda" runat="server" DefaultButton="ButtonBuscar">
        <table style="border:none;" >
            <tr >
                <td style="border:none;"><asp:Label ID="LabelBusuqeda" runat="server" Text="Herramienta:"></asp:Label></td>
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
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto"> 
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id_herramienta" 
                DataNavigateUrlFormatString="EditarHerramienta.aspx?he={0}" DataTextField="descripcion" HeaderText="Descripción"/>
                <asp:BoundField DataField="Nombre" HeaderText="Ubicación" />
                <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
            </Columns>
        </asp:GridView>
        </asp:Panel>
    </asp:Panel>
    </center>
</asp:Content>
