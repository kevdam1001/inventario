<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Inventario.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <h2><span><asp:Label ID="LabelProductos" runat="server" Visible="true" Text="REPORTES"></asp:Label>
            
            </span></h2> 
    </div>
        
        <asp:Label ID="Label1" runat="server" Text="Seleccione Laboratorio:   "></asp:Label>
        <asp:DropDownList ID="Ubicación" runat="server">
            </asp:DropDownList>
            <br />
            <br />

        <div style="text-align:left" >
            <asp:LinkButton ID="LinkButton12" runat="server" onclick="LinkButton12_Click">REPORTE MENSUAL DEL MOVIMIENTO DE REACTIVOS CONTROLADOS</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">PRODUCTOS DISPONIBLES</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">PRODUCTOS SIN EXISTENCIA</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton_Click">EXISTENCIA PRODUCTOS CONTROLADOS</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton2_Click">COSTO DE PRACTICAS</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton3_Click">PRACTICAS CON PRODUCTOS CONTROLADOS</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">INVENTARIO EQUIPO</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">SALIDA DE PRODUCTOS POR FECHA</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">INGRESO DE PRODUCTOS POR FECHA</asp:LinkButton>
             <br />
            <br />
            <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">PRODUCTOS DADOS DE BAJA</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click">REACTIVOS SIN MOVIMIENTOS</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">REACTIVOS SEGÚN ÚLTIMA FECHA DE USO</asp:LinkButton>
            <br />
            <br />
            

         </div>
  
    
</asp:Content>

