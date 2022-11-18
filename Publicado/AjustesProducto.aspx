<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AjustesProducto.aspx.cs" Inherits="Inventario.AjustesProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Ajustes Producto</span></h2> 
    </div>
    <center>
    <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonBuscar">
    <table style="border:none;" >
        
        <tr >
                <td style="border:none;"><asp:Label ID="Label1" runat="server" Text="Código Producto:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="128px" ID="TextBusqueda" 
                        runat="server" MaxLength="30"></asp:TextBox >
                </td>
                <td style="border:none;"><center><asp:DropDownList Font-Size="Small" Height="22px" 
                        Width="128px" ID="Tipo" runat="server"><asp:ListItem>Dar de Baja</asp:ListItem><asp:ListItem>Modificar Práctica</asp:ListItem></asp:DropDownList></center></td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Label2" runat="server" Text="Ubicación:"></asp:Label></td>
            <td style="border:none;" colspan="2">
                <asp:DropDownList Font-Size="Small" ID="Ubicación" 
                        runat="server" Height="22px" Width="267px"></asp:DropDownList></td>
        </tr>
        <tr>
                <td style="border:none"; colspan="3" align="center"><center>
                <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                    onclick="ButtonBuscar_Click" CausesValidation="False" />
             </center></td>
        </tr>
    </table>
    <asp:Panel ID="PanelBusqueda" runat="server" ScrollBars="Auto"> 
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False"></asp:Label><asp:Label ID="LabelEntrada" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    <asp:GridView ID="DataBaja" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px" 
            onrowcommand="Data_RowCommand" >
    
        <Columns>
            <asp:BoundField DataField="Entrada" HeaderText="No.">
            </asp:BoundField>
            <asp:BoundField DataField="Producto" HeaderText="Producto" >
            </asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="FechaVencimiento" HeaderText="Vence en" />
            <asp:BoundField DataField="Presentación" HeaderText="Presentación"/>
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad"/>
            <asp:ButtonField ButtonType="Image" CommandName="Quitar" 
                ImageUrl="~/design/2.png" />
        </Columns>
    
    </asp:GridView>
    <asp:GridView ID="DataDevolucion" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px" onrowcommand="DataDevolucion_RowCommand">
    
        <Columns>
            <asp:BoundField DataField="Id_salida" HeaderText="No." />
            <asp:BoundField DataField="Id_Producto" HeaderText="Producto" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Practica" HeaderText="Práctica" />
            <asp:BoundField DataField="FechaEgreso" HeaderText="Fecha Egreso" />
            <asp:BoundField DataField="Cantidad" HeaderText="Utilizado" />
            <asp:BoundField DataField="Disponible" HeaderText="Disponible" />
            <asp:ButtonField ButtonType="Image" CommandName="Agregar" 
                ImageUrl="~/design/1.png" HeaderText="Sumar Producto a práctica" />
            <asp:ButtonField ButtonType="Image" CommandName="Quitar" 
                ImageUrl="~/design/2.png" HeaderText="Devolver producto de práctica" />
        </Columns>
    
    </asp:GridView> 
    </asp:Panel>
    <asp:Panel ID="PanelDatos" runat="server" ScrollBars="Auto" Visible="false" DefaultButton="ButtonGuardar">
    <asp:Label ID="ErrorCant" runat="server" Text="" ForeColor="Red"></asp:Label>
    <br />
    <h2><span><asp:Label ID="Opcion" runat="server" Font-Bold="True" 
            Font-Underline="True"></asp:Label></span></h2> 
    <asp:DetailsView ID="Detalle" runat="server" Height="40px" Width="300px" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="1" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333"/>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        
        Elija la opción e ingrese la cantidad:<br /> <br />
        <asp:RadioButtonList ID="Opciones" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow" >
            <asp:ListItem>Cantidad </asp:ListItem>
            <asp:ListItem Selected = "True">Medida</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:TextBox Font-Size="Small" width="128px" ID="TextUnidades" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextUnidades" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ErrorMessage="Número Incorrecto." ID="ENum" runat="server" ControlToValidate="TextUnidades" ValidationExpression="^[0-9]*(\.[0-9]{0,2})?$"></asp:RegularExpressionValidator>
        
         <table style="border:none;" >
         <tr>    
           <td   style="border:none;"><asp:Label ID="LabelOb" runat="server" Text="Observaciones:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox ID="TextOb" runat="server" Height="47px" 
                   MaxLength="150" TextMode="MultiLine" Width="350px"></asp:TextBox>
           </td>
        </tr>
        <tr>
           
            <td style="border:none;" colspan="2">
            <center>
                <asp:Button ID="ButtonGuardar" runat="server" Text="   Guardar   " 
                    onclick="ButtonGuardar_Click" />
            </center>    
            </td>
        </tr> 
         </table>
    </asp:Panel>
    </asp:Panel>
    </center>

</asp:Content>