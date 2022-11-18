<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IngresoProducto.aspx.cs" Inherits="Inventario.IngresoProducto" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <asp:ToolkitScriptManager runat="Server" />
    <h2><span>Ingreso Producto</span></h2> 
    </div>
    <center>
         <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonBuscar">
    <table style="border:none;" >
        
        <tr >
                <td style="border:none;"><asp:Label ID="Label1" runat="server" Text="Código Producto:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="128px" ID="TextBusqueda" 
                        runat="server" MaxLength="30"></asp:TextBox >
                </td>
        
        </tr>
        <tr>
                <td style="border:none"; colspan="2" align="center"><center>
                <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                    onclick="ButtonBuscar_Click" CausesValidation="False" />
                    &nbsp;</center></td>
        </tr>
    </table>
    <asp:Panel ID="PanelBusqueda" runat="server" ScrollBars="Auto" Width="484px"> 
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px" OnRowCommand="Data_RowCommand" 
            onselectedindexchanged="Data_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Código" HeaderText="Código" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:ButtonField ButtonType="Image" CommandName="Agregar" 
                    ImageUrl="~/design/1.png" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    </asp:Panel>
    
    <asp:Panel ID="PanelIngreso" runat="server" Visible="False" DefaultButton="Button1">
    <br />
        <asp:Label ID="Label" runat="server" Text="Detalle del producto" 
            Font-Size="Small" Font-Bold="True" Font-Underline="True"></asp:Label>
        <table style="border:none;" >
        <tr>
        <td  colspan="4">
                <center>Descripción: <asp:Label ID="LabelDesc" runat="server" Text="Label"></asp:Label></center>                           
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelProveedor" runat="server" Text="Proveedor:"></asp:Label><br /><br />                
            </td>
            <td style="border:none;" colspan="3">
                <asp:DropDownList ID="Proveedor" runat="server" Height="21px" Width="420px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
             <td   style="border:none;" ><asp:Label ID="LabelUbicacion" runat="server" Text="Ubicación:"></asp:Label><br /><br /></td>
           <td style="border:none;" colspan="3"><asp:DropDownList Font-Size="Small" ID="Ubicacion" runat="server" Height="21px" Width="420px"></asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Ubicacion" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
           </td> 
        </tr>
        <tr >
             <td style="border:none;"><asp:Label ID="LabelFactura" runat="server" Text="No. Factura:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextFactura" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextFactura" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>           
            <td style="border:none;"><asp:Label ID="LabelOrden" runat="server" Text="Orden de Compra:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextOrden" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextOrden" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Label2" runat="server" Text="Marca:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextMarca" runat="server" MaxLength="50"></asp:TextBox >
            
            </td>
            <td style="border:none;"><asp:Label ID="LabelUnidades" runat="server" Text="Cantidad:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextUnidades" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="OUnidades" runat="server" ControlToValidate="TextUnidades" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="TextUnidades" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese Numero Entero" ValidationExpression="^[0-9]*(\.[0-9]{0,3})?$"></asp:RegularExpressionValidator>
            </td>
           
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Label3" runat="server" Text="Presentación:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList ID="Presentacion" runat="server" Height="22px" Width="128px"></asp:DropDownList>
      

            </td>
             <td style="border:none;"><asp:Label ID="LabelPrecio" runat="server" 
                     Text="Precio Unitario(Q):"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextPrecio" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextPrecio" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ErrorMessage="Número Incorrecto." ID="ENum" runat="server" ControlToValidate="TextPrecio" ValidationExpression="^[0-9]*(\.[0-9]{0,2})?$"></asp:RegularExpressionValidator>
            </td>
            
            
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelFecha" runat="server" Text="Fecha Vencimiento:"></asp:Label><br /><br />               
            </td>  
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextFecha" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextFecha" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="TextFecha" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
            <asp:CalendarExtender runat="server" TargetControlID="TextFecha" Format="dd/MM/yyyy">
            </asp:CalendarExtender>
            </td>
            <td style="border:none;"><asp:Label ID="LabelCo" runat="server" Text="Fecha de Compra:"></asp:Label><br /><br />               
            </td>  
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextFcompra" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextFcompra" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="TextFcompra" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextFcompra" Format="dd/MM/yyyy">
            </asp:CalendarExtender>
            </td>     
            
        </tr>
         <tr>    
           <td   style="border:none;"><asp:Label ID="Label4" runat="server" Text="Observaciones:"></asp:Label><br /><br /></td>
           <td style="border:none;" colspan="3">
               <asp:TextBox ID="TextOb" runat="server" Height="47px" 
                   MaxLength="150" TextMode="MultiLine" Width="414px"></asp:TextBox>
           </td>
        </tr>
        <tr>
           
            <td style="border:none;" colspan="4">
            <center>
                <asp:Button ID="Button1" runat="server" Text="   Guardar   " 
                    onclick="Button1_Click" />
            </center>    
            </td>
        </tr>       
       </table>
    </asp:Panel>
    
    </asp:Panel>
    </center>
</asp:Content>
