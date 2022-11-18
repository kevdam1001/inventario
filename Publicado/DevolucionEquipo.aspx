<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DevolucionEquipo.aspx.cs" Inherits="Inventario.DevolucionEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2>Devolución<span> Equipo</span></h2>
        </div>
    <center>
    <asp:Panel ID="Busqueda" runat="server" DefaultButton="ButtonBuscar">
        <table style="border:none;" >
            <tr >
                <td style="border:none;"><asp:Label ID="LabelBusuqeda" runat="server" Text="No. Carnet:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="114px" ID="TextBusqueda" 
                        runat="server"></asp:TextBox ></td>
               
            </tr>
            <tr>
             <td style="border:none"; colspan="2" align="center"><center>
                    <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                        onclick="ButtonBuscar_Click" Width="82px" CausesValidation="False"/>
                 </center></td>
            </tr>  
        </table>
        <asp:Panel ID="PanelBusqueda" runat="server" ScrollBars="Auto" Width="615px">
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False" Text="No se han encontrado datos."></asp:Label> 
        <asp:GridView ID="DataEquipo" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px" onrowcommand="DataEquipo_RowCommand">
         <Columns>
             <asp:BoundField DataField="No." HeaderText="No." />
            <asp:BoundField DataField="Carnet" HeaderText="Carnet" />
            <asp:BoundField DataField="Código" HeaderText="Código" />
            <asp:BoundField DataField="Serie" HeaderText="No. de Serie" />
            <asp:BoundField DataField="Descripción" HeaderText="Descripción" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
            <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" />
            <asp:ButtonField ButtonType="Link" CommandName="Guardar"  Text="Aceptar"/>
            </Columns>
    </asp:GridView>
        </asp:Panel>
    </asp:Panel>
    </center>
</asp:Content>
