<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EgresoProducto.aspx.cs" Inherits="Inventario.EgresoProducto" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="Server" />
    <h2><span>Egreso Producto</span></h2> 
    </div>
    
    <center>
    <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonBuscar">
    <table style="border:none;" >
        
        <tr >
                <td style="border:none;"><asp:Label ID="Label1" runat="server" Text="Código Producto:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="128px" ID="TextBusqueda" 
                        runat="server" MaxLength="30"></asp:TextBox >
                </td>
                <td style="border:none;"><center><asp:DropDownList Font-Size="Small" ID="Ubicación" runat="server"></asp:DropDownList></center></td>
        
        </tr>
        <tr>
                <td style="border:none"; colspan="3" align="center"><center>
                <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                    onclick="ButtonBuscar_Click" CausesValidation="False" />
             </center></td>
        </tr>
    </table>
    <asp:Panel ID="PanelBusqueda" runat="server" ScrollBars="Auto" > 
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False" Text="No se han encontrado datos."></asp:Label><asp:Label ID="LabelEntrada" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False" 
            BorderWidth="1px" onrowdatabound="Data_RowDataBound" 
            onrowcommand="Data_RowCommand" >
    
        <Columns>
            <asp:BoundField DataField="Entrada" HeaderText="No." >
            </asp:BoundField>
            <asp:BoundField DataField="Producto" HeaderText="Producto" >
            </asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Presentación" HeaderText="Presentación"/>
            <asp:BoundField DataField="FechaVencimiento" HeaderText="Vence en"/>
            <asp:BoundField DataField="Existencia" HeaderText="Existencia"/>
            <asp:ButtonField ButtonType="Image" CommandName="Quitar" 
                ImageUrl="~/design/2.png" />
        </Columns>
    
    </asp:GridView>
    </asp:Panel>
    
    <asp:Panel ID="PanelEgreso" runat="server" Visible="False" DefaultButton="ButtonGuardar">
    <asp:Label ID="ErrorCant" runat="server" Text="" ForeColor="Red"></asp:Label>
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
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <table style="border:none;" >  
        <tr >
            <td style="border:none;"><asp:Label ID="LabelSede" runat="server" Text="Sede:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:DropDownList Font-Size="Small" 
                    ID="Sede" runat="server" Width="175px" AutoPostBack="True" 
                    onselectedindexchanged="Sede_SelectedIndexChanged"><asp:ListItem>-- Seleccione --</asp:ListItem></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Sede" InitialValue="-- Seleccione --" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="border:none;"><asp:Label ID="LabelFacultad" runat="server" Text="Facultad:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:DropDownList Font-Size="Small" ID="Facultad" 
                    runat="server" Width="175px" AutoPostBack="True" 
                    onselectedindexchanged="Facultad_SelectedIndexChanged"><asp:ListItem>-- Seleccione --</asp:ListItem></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Facultad" InitialValue="-- Seleccione --" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    
            </td>
        </tr>
        <tr>
          
           
            
            <td style="border:none;"><asp:Label ID="LabelCarrera" runat="server" Text="Carrera:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList Font-Size="Small" 
                    ID="Carrera" runat="server" Width="175px" 
                    onselectedindexchanged="Carrera_SelectedIndexChanged" AutoPostBack="True"><asp:ListItem>-- Seleccione --</asp:ListItem></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="Carrera" InitialValue="-- Seleccione --" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            <td style="border:none;"><asp:Label ID="LabelCurso" runat="server" Text="Curso:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                
                <asp:DropDownList Font-Size="Small" 
                    ID="Curso" runat="server" Width="175px" AutoPostBack="True" 
                    onselectedindexchanged="Curso_SelectedIndexChanged"><asp:ListItem>-- Seleccione --</asp:ListItem></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="Curso" InitialValue="-- Seleccione --" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    
            </td>
            </td> 
            
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelPractica" runat="server" Text="Práctica:"></asp:Label><br /><br /></td>
            <td style="border:none;" colspan="3">
                <asp:DropDownList Font-Size="Small" 
                    ID="Practica" runat="server" Width="480px"><asp:ListItem>-- Seleccione --</asp:ListItem></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="Practica" InitialValue="-- Seleccione --" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td> 
        </tr>
        <tr>
             <td style="border:none;"><asp:Label ID="LabelCiclo" runat="server" Text="Ciclo:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:DropDownList Font-Size="Small" 
                    ID="Ciclo" runat="server" Width="175px"><asp:ListItem>-- Seleccione --</asp:ListItem></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="Ciclo" InitialValue="-- Seleccione --" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td> 
            
            <td style="border:none;"><asp:Label ID="LabelAl" runat="server" Text="No. Alumnos:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="171px" ID="TextAl" 
                    runat="server"></asp:TextBox ><asp:RequiredFieldValidator ID="Required" runat="server" ControlToValidate="TextAl" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ControlToValidate="TextAl" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese Numero Entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                    
            </td>
            
            
           
        </tr>
        
        <tr>
            <td style="border:none;"><asp:Label ID="LabelFe" runat="server" Text="Fecha:"></asp:Label><br /><br />               
            </td>  
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="171px" ID="TextFecha" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextFecha" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="TextFecha" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextFecha" Format="dd/MM/yyyy">
            </asp:CalendarExtender>
            </td>  
            <td style="border:none;"><asp:Label ID="LabelCod" runat="server" Text="Código Usuario:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="171px" ID="TextUsuario" 
                    runat="server"></asp:TextBox >
            </td>
        </tr>
        <tr>    
           <td   style="border:none;"><asp:Label ID="LabelOb" runat="server" Text="Observaciones:"></asp:Label><br /><br /></td>
           <td style="border:none;" colspan="3">
               <asp:TextBox ID="TextOb" runat="server" Height="47px" 
                   MaxLength="150" TextMode="MultiLine" Width="473px"></asp:TextBox>
           </td>
        </tr>
           
        </table>
        </ContentTemplate>
        <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Sede" EventName="SelectedIndexChanged" />
                 <asp:AsyncPostBackTrigger ControlID="Facultad" EventName="SelectedIndexChanged" />
                 <asp:AsyncPostBackTrigger ControlID="Curso" EventName="SelectedIndexChanged" />
                 <asp:AsyncPostBackTrigger ControlID="Carrera" EventName="SelectedIndexChanged" />
                 </Triggers>
        </asp:UpdatePanel>
        <table style="border:none;" >  
        <tr>
           
            <td style="border:none;" colspan="4">
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
