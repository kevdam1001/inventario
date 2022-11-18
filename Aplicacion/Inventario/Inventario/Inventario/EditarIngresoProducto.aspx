<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarIngresoProducto.aspx.cs" Inherits="Inventario.EditarIngresoProducto" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <asp:ToolkitScriptManager runat="server"></asp:ToolkitScriptManager>  
    <h2><span> Editar Ingreso Producto</span> </h2>
    </div>
    <center>
        <asp:Panel ID="pnBusqueda" runat="server" Visible="true" DefaultButton="btnBusqueda">
            <table style="border:none;">
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblCodigo" runat="server" Text="Código Producto"></asp:Label>
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Width="128px" ID="txtCodigo" runat="server" MaxLength="30" 
                            ontextchanged="txtCodigo_TextChanged"></asp:TextBox>
                    </td>
                    <td style="border:none;">
                        <asp:Label ID="lblBUbicacion" runat="server" Text="Ubicación:"></asp:Label>
                    </td>
                    <td style="border:none;">
                        <asp:DropDownList Font-Size="Small" ID="ddlBUbicacion" runat="server" Height="21px" Width="128px"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlBUbicacion" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                     </td>
                </tr> 
                <tr>
                    <td style="border:none"; colspan="4" align="center"><center>
                        <asp:Button ID="btnBusqueda" runat="server" Text="Buscar" OnClick="btnBusqueda_Click" CausesValidation="false" />&nbsp;
                    </center></td>
                </tr>
            </table>
            
            <asp:Panel ID="pnDatosEncontrados" runat="server" ScrollBars="Auto" Width="484px">
                <asp:GridView ID="gvDatosEncontrados" runat="server" 
                    AutoGenerateColumns="False" BorderWidth="1px" 
                    OnRowCommand="gvDatosEncontrados_RowCommand" 
                    OnSelectedIndexChanged="gvDatosEncontrados_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Producto" HeaderText="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Producto" />
                        <asp:BoundField DataField="ubicacion" HeaderText="Id_Ubicacion" />
                        <asp:BoundField DataField="OrdenCompra" HeaderText="OrdenDeCompra" />
                        <asp:BoundField DataField="fechaCompra" HeaderText="FechaCompra" />
                        <asp:ButtonField ButtonType="Image" CommandName="Agregar" ImageUrl="~/design/1.png" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            </asp:Panel>
            
            <asp:Panel ID="pnEditarIngreso" runat="server" Visible="false" DefaultButton="btnActualizarIngreso">
                <br />
                <asp:Label ID="lblDetalle" runat="server" Text="Detalle del Producto" Font-Size="Small" Font-Bold="true" Font-Underline="true"></asp:Label>
                <table style="border:none;">
                <tr>
                <td colspan="4">
                    <center> Descripción: <asp:Label ID="lblDescripcion" runat="server" Text="label"></asp:Label></center>
                </td>
                </tr>
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblProveedor" runat="server" Text="Proveedor:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;" colspan="3">
                        <asp:DropDownList ID="ddlProveedor" runat="server" Height="21px" Width="420px"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblUbicacion" runat="server" Text="Ubicación:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;" colspan="3">
                        <asp:DropDownList Font-Size="Small" ID="ddlUbicacion" runat="server" Height="21px" Width="420px"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlUbicacion" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblFactura" runat="server" Text="No. Factura:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Font-Size="Small" Width="128px" ID="txtFactura" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFactura" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                    <td style="border:none;">
                        <asp:Label ID="lblOrden" runat="server" Text="Orden de Compra:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Font-Size="Small" Width="128px" ID="txtOrden" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOrden" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblMarca" runat="server" Text="Marca:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Font-Size="Small" Width="128px" ID="txtMarca" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                    <td style="border:none;">
                        <asp:Label ID="lblUnidades" runat="server" Text="Cantidad:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Font-Size="Small" Width="128px" ID="txtUnidades" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUnidades" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ControlToValidate="txtUnidades" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese número entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblPresentacion" runat="server" Text="Presentación:">
                        </asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:DropDownList ID="ddlPresentacion" runat="server" Height="22px" Width="128px"></asp:DropDownList>
                    </td>
                    <td style="border:none;">
                        <asp:Label ID="lblPrecio" runat="server" Text="Precio Unitario(Q):"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Font-Size="Small" Width="128px" ID="txtPrecio" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrecio" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ErrorMessage="Número Incorrecto." ID="ENum" runat="server" ControlToValidate="txtPrecio" ValidationExpression="^[0-9]*(\.[0-9]{0,2})?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;">
                        <asp:Label ID="lblFechaVenc" runat="server" Text="Fecha de Vencimiento:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;">
                        <asp:TextBox Font-Size="Small" width="128px" ID="txtFechaVencimiento" runat="server"></asp:TextBox >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtFechaVencimiento" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ControlToValidate="txtFechaVencimiento" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFechaVencimiento" Format="dd/MM/yyyy">
                        </asp:CalendarExtender>    
                    </td>
                    <td style="border:none;"><asp:Label ID="LabelCo" runat="server" Text="Fecha de Compra:"></asp:Label><br /><br />               
            </td>  
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" ID="txtFcompra" runat="server"></asp:TextBox >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFcompra" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ControlToValidate="txtFcompra" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtFcompra" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
            </td>  
                </tr>
                <tr>
                    <td   style="border:none;">
                        <asp:Label ID="Label4" runat="server" Text="Observaciones:"></asp:Label>
                        <br /><br />
                    </td>
                    <td style="border:none;" colspan="3">
                        <asp:TextBox ID="TxtObservaciones" runat="server" Height="47px" MaxLength="150" TextMode="MultiLine" Width="414px"></asp:TextBox>
                    </td> 
                </tr>
                <tr>
                    <td style="border:none;" colspan="4">
                    <center>
                        <asp:Button ID="btnActualizarIngreso" runat="server" Text="   Actualizar   " onclick="btnActualizarIngreso_Click" />
                    </center>    
                    </td>
                </tr>
                
                </table>
            </asp:Panel>
            
        </asp:Panel>
    
    </center>

</asp:Content>
