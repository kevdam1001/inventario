<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Inventario.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <h2><span><asp:Label ID="LabelProductos" runat="server" Visible="false" Text="PRODUCTOS PROXIMOS A VENCER"></asp:Label></span></h2> 
    </div>
     <asp:GridView ID="DataProducto" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px">
         <Columns>
            <%-- <asp:BoundField DataField="Producto" HeaderText="Producto" />--%>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Presentaci�n" HeaderText="Presentaci�n" />
            <asp:BoundField DataField="Unidades" HeaderText="Unidades" />
            <asp:BoundField DataField="Existencia" HeaderText="Existencia Total" />
            <asp:BoundField DataField="FechaVencimiento" HeaderText="Vencimiento" />
            
            <asp:BoundField DataField="Ubicaci�n" HeaderText="Ubicaci�n" />
         </Columns>
    </asp:GridView>
    
    <div class="article">
        <h2><span><asp:Label ID="LabelEquipo" runat="server" Visible="false" Text="EQUIPO PRESTADO"></asp:Label></span></h2> 
    </div>
    
    <asp:GridView ID="DataEquipo" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px">
         <Columns>
            <asp:BoundField DataField="Carnet" HeaderText="Carnet" />
            <asp:BoundField DataField="C�digo" HeaderText="C�digo" />
            <asp:BoundField DataField="Serie" HeaderText="No. de Serie" />
            <asp:BoundField DataField="Descripci�n" HeaderText="Descripci�n" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
            
            <asp:BoundField DataField="Ubicaci�n" HeaderText="Ubicaci�n" />
         </Columns>
    </asp:GridView>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

