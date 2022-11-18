<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarProducto.aspx.cs" Inherits="Inventario.EditarProducto" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolKit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
<asp:ToolkitScriptManager runat="Server" />
<h2><span>Editar Producto</span></h2>
</div>
<center>
    <asp:Panel ID="pnBusqueda" runat="server" Visible="true" DefaultButton="btnBuscar">
<table style="border:none;">
<tr>
    <td style="border:none;"><asp:Label ID="lblCodigo" runat="server" Text="Código o Nombre Producto"></asp:Label> </td>
    <td style="border:none;"><asp:TextBox Width="128px" ID="txtBuscarProducto" runat="server" MaxLength="30"></asp:TextBox> </td>
</tr>

<tr>
    <td style="border:none;" colspan="2" align="center"><center>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" CausesValidation="false" />
    </center>
    </td>
    <%--<td style="border:none;" colspan="2" align="center"><center>
        <asp:Button ID="btnBuscarExistencias" runat="server" Text="Buscar Existencias" OnClick="btnBuscarExistencias_Click" CausesValidation="false" />
    </center>
    </td>--%>
</tr>
<%--<tr>
     <td style="border:none;" colspan="2" align="center"><center>
        <asp:Button ID="BuscarReactivoFV" runat="server" Text="Buscar Reactivo Rango Fecha Vencimiento" OnClick="BuscarReactivoFV_Click" CausesValidation="false" />
    </center>
    </td>
</tr>--%>
</table>
<asp:Panel ID="pnDatosEncontrados" runat="server" ScrollBars="Auto" Width="484px">
    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    <asp:GridView ID="gvListadoEncontrado" runat="server" 
        AutoGenerateColumns="False" BorderWidth="1px" 
        OnRowCommand="gvListadoEncontrado_RowCommand" OnSelectedIndexChanged="gvListadoEncontrado_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Código" HeaderText="Código"/>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:ButtonField ButtonType="Image" CommandName="Agregar" 
                ImageUrl="~/design/1.png" />
        </Columns>
    </asp:GridView>
</asp:Panel>

<asp:Panel ID="pnIngreso" runat="server" Visible="false" DefaultButton="btnActualizar">
    <br />
    <asp:Label ID="lblDetalle" runat="server" Text="Detalle del Producto" Font-Size="Small" Font-Bold="true" Font-Underline="true" ></asp:Label>
    <table style="border:none;">
    <tr>
    <td colspan="4">
        <center> Descripción: <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label></center>
    </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label><br /><br />
        </td>
        <td style="border:none;" colspan="3">
            <asp:TextBox ID="txtNombre" runat="server" Width="420px">
            </asp:TextBox>

        </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblFamilia" runat="server" Text="Familia:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="ddlFamilia" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
        <td style="border:none;">
            <asp:Label ID="lblClasificacion" runat="server" Text="Clasificación:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlClasificacion" runat="server" Height="22px" Width="128px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblControlado" runat="server" Text="Controlado:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlControlado" runat="server" Height="22px" Width="128px">
                <asp:ListItem>NO</asp:ListItem>
                <asp:ListItem>SI</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="border:none;">
            <asp:Label ID="lblExplosivo" runat="server" Text="Explosivo:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlExplosivo" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblComburente" runat="server" Text="Comburente:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlComburente" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
        <td style="border:none;">
            <asp:Label ID="lblInflamable" runat="server" Text="Inflamable:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlInflamable" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblIrritante" runat="server" Text="Irritante:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlIrritante" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
        <td style="border:none;">
            <asp:Label ID="lblNocivo" runat="server" Text="Nocivo:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlNocivo" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblToxicidad" runat="server" Text="Toxicidad:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlToxicidad" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
        <td style="border:none;">
            <asp:Label ID="lblCorrosivo" runat="server" Text="Corrosivo:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlCorrosivo" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
    </tr>
    
    <tr>
        <td style="border:none;">
            <asp:Label ID="lblPeligroAmbiente" runat="server" Text="Peligroso para el Ambiente:"></asp:Label>
            <br />
        </td>
        <td style="border:none;">
            <asp:DropDownList ID="ddlPAmbiente" runat="server" Height="22px" Width="128px"></asp:DropDownList>
        </td>
        <td style="border:none;">
            <asp:Label ID="lblCAS" runat="server" Text="CAS:"></asp:Label>
            <br /><br />
        </td>
        <td style="border:none;">
            <asp:TextBox ID="txtCAS" runat="server" Height="22px" Width="128px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="border:none;" colspan="4">
            <center>
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
            </center>
        </td>
    </tr>
    </table>
        </asp:Panel>
    </asp:Panel>
</center>
</asp:Content>
