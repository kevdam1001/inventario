<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarEquipo.aspx.cs" Inherits="Inventario.BuscarEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Busqueda de Equipo</span></h2>
        </div>
    <center>
    <asp:Panel ID="Busqueda" runat="server" DefaultButton="ButtonBuscar">
        <table style="border:none;" >
            <tr >
                <td style="border:none;"><asp:Label ID="LabelBusuqeda" runat="server" Text="Codigo URL:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="128px" ID="TextBusqueda" runat="server"></asp:TextBox >
                
                </td>
                <td style="border:none;"><asp:Label ID="LabelBu" runat="server" Text="No. Serie:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="128px" ID="TextSerie" runat="server"></asp:TextBox >
                </td>
            </tr>
            <tr>
             <td style="border:none"; colspan="4" align="center"><center>
                    <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                        onclick="ButtonBuscar_Click" Width="82px"/>
                 </center></td>
            </tr>  
        </table>
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" >
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False" Text="No se han encontrado datos."></asp:Label> 
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Codigo,No. de Serie" 
                    DataNavigateUrlFormatString="EditarEquipo.aspx?co={0}&se={1}" 
                    DataTextField="Codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="No. de Serie" HeaderText="No. Serie" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:BoundField DataField="Nombre" HeaderText="Ubicación" />
                <asp:BoundField DataField="Prestado" HeaderText="Prestado" />
            </Columns>
        </asp:GridView>
        </asp:Panel>
    </asp:Panel>
    </center>
</asp:Content>
