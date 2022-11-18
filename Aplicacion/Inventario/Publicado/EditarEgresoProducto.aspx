<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarEgresoProducto.aspx.cs" Inherits="Inventario.EditarEgresoProducto" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <h2><span>Editor Egreso Producto</span></h2>
    </div>
    
    <center>
    <asp:Panel ID="pnBusqueda" runat="server" Visible="true" DefaultButton="btnBuscar">
        <table style="border:none;">
        <tr>
            <td style="border:none;"><asp:Label ID="lblCodigo" runat="server" Text="Código Producto:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Width="128px" ID="txtCodigo" runat="server" MaxLength="30"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td style="border:none"; colspan="3" align="center">
            <center>
                <asp:Button runat="server" ID="btnBuscar" Text="Buscar" OnClick="btnBuscar_Click" CausesValidation="false" />
            </center>    
            </td>
        </tr>    
        </table>
        <asp:panel id="pnListadoEncontrado" runat="server" ScrollBars="Auto">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="No han encontrado datos."></asp:Label>
            <asp:Label ID="lblIndice" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            <asp:GridView ID="gvDatosEncontrado" runat="server" AutoGenerateColumns="False" 
                BorderWidth="1px" OnRowDataBound="gvDatosEncontrados_RowDataBound" 
                OnRowCommand="gbDatosEncontrados_RowCommand">
            <Columns>
                <asp:BoundField DataField="Id_Salida" HeaderText="ID" />
                <asp:BoundField DataField="Id_Producto" HeaderText="Codigo" />
                <asp:BoundField DataField="Nombre" HeaderText="Producto" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad Egresada" />
                <asp:BoundField DataField="Practica" HeaderText="Practica" />
                <asp:BoundField DataField="Curso" HeaderText="Curso" />
                <asp:BoundField DataField="FechaEgreso" HeaderText="Fecha Egreso" />
                <asp:ButtonField ButtonType="Image" CommandName="Quitar" ImageUrl="~/design/2.png" />
            </Columns>
            </asp:GridView>
        </asp:panel>
        
        <asp:Panel ID="pnEgresoProducto" runat="server" Visible="false" DefaultButton="btnModificar">
        <asp:Label ID="lblErrorCantidad" runat="server" Text="" ForeColor="Red"></asp:Label>
            <asp:DetailsView ID="dvDetalleExistencia" runat="server" Height="40px" Width="300px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="1" GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#336666" Font-Bold="true" ForeColor="White" />
                <EditRowStyle BackColor="#339966" Font-Bold="true" ForeColor="White" />
            </asp:DetailsView>   
        Opción Elegida:<br /><br />
        <asp:RadioButtonList ID="rblOpciones" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>Cantidad</asp:ListItem>
            <asp:ListItem Selected="True">Medida:</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:TextBox Font-Size="Small" Width="128px" ID="txtCantidad" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator01" runat="server" ControlToValidate="txtCantidad" SetFocusOnError="true">*.</asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ErrorMessage="Cantidad Incorrecta" ID="txtErrorCantidad" runat="server" ControlToValidate="txtCantidad" ValidationExpression="^[0-9]*(\.[0-9]{0,3})?$"></asp:RegularExpressionValidator>
        
        <asp:UpdatePanel ID="upEditarEgresosProducto" runat="server">
        <ContentTemplate>
            <table style="border:none;">
                <tr>
                    <td style="border:none;"><asp:Label ID="lblSede" runat="server" Text="Sede:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:DropDownList ID="ddlSede" Font-Size="Small" runat="server" Width="175px" AutoPostBack="true" OnSelectedIndexChanged="ddlSede_SelectIndexChanged">
                        <asp:ListItem>--Seleccionar--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValitador02" ControlToValidate="ddlSede" InitialValue="--Seleccionar--" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td style="border:none;"><asp:Label ID="lblFacultad" runat="server" Text="Facultad:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:DropDownList ID="ddlFacultad" Font-Size="Small" runat="server" Width="175px" AutoPostBack="true" OnSelectedIndexChanged="ddlFacultad_SelectIndexChanged">
                        <asp:ListItem>--Seleccionar--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator03" ControlToValidate="ddlFacultad" InitialValue="--Seleccionar--" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;"><asp:Label ID="lblCarrera" runat="server" Text="Carrera:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:DropDownList ID="ddlCarrera" Font-Size="Small" runat="server" Width="175px" AutoPostBack="true" OnSelectedIndexChanged="ddlCarrera_SelectIndexChanged">
                        <asp:ListItem>--Seleccionar--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator04" ControlToValidate="ddlCarrera" InitialValue="--Seleccionar--" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td style="border:none;"><asp:Label ID="lblCurso" runat="server" Text="Curso:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:DropDownList ID="ddlCurso" Font-Size="Small" runat="server" Width="175px" AutoPostBack="true" OnSelectedIndexChanged="ddlCurso_SelectIndexChanged">
                        <asp:ListItem>--Seleccionar--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator05" ControlToValidate="ddlCurso" InitialValue="--Seleccionar--" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;"><asp:Label ID="lblPractica" runat="server" Text="Practica:"></asp:Label><br /><br /></td>
                    <td style="border:none;" colspan="3"><asp:DropDownList ID="ddlPractica" Font-Size="Small" runat="server" Width="480px" AutoPostBack="true" OnSelectedIndexChanged="ddlPractica_SelectIndexChanged">
                        <asp:ListItem>--Seleccionar--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator06" ControlToValidate="ddlPractica" InitialValue="--Seleccionar--" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;"><asp:Label ID="lblCiclo" runat="server" Text="Ciclo:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:DropDownList ID="ddlCiclo" Font-Size="Small" runat="server" Width="175px" AutoPostBack="true" OnSelectedIndexChanged="ddlCiclo_SelectIndexChanged">
                        <asp:ListItem>--Seleccionar--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator07" ControlToValidate="ddlCiclo" InitialValue="--Seleccionar--" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td style="border:none;"><asp:Label ID="lblAlumnos" runat="server" Text="No. Alumnos:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:TextBox ID="txtAlumnos" Font-Size="Small" runat="server" Width="171px">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator08" runat="server" ControlToValidate="txtAlumnos" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtAlumnos" ID="RegularExpressionValidator02" runat="server" ErrorMessage="Ingrese número entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;"><asp:Label ID="lblFecha" runat="server" Text="Fecha:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:TextBox Font-Size="Small" Width="171px" ID="txtFecha" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator09" ControlToValidate="txtFecha" runat="server" SetFocusOnError="true">*.</asp:RequiredFieldValidator>
                    <asp:CalendarExtender ID="ceCalendario" runat="server" TargetControlID="txtFecha" Format="dd/MM/yyyy"></asp:CalendarExtender>
                    </td>
                    <td style="border:none;"><asp:Label ID="lblCodigoUsuario" runat="server" Text="Código Usuario:"></asp:Label><br /><br /></td>
                    <td style="border:none;"><asp:TextBox ID="txtCodUsuario" Font-Size="Small" runat="server" Width="171px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border:none;"><asp:Label ID="lblObservaciones" runat="server" Text="Observaciones:"></asp:Label><br /><br /></td>
                    <td style="border:none;" colspan="3"><asp:TextBox ID="txtObservaciones" runat="server" Height="47px" MaxLength="150" Width="473px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
            </table>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlSede" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="ddlFacultad" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="ddlCarrera" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="ddlCurso" EventName="SelectedIndexChanged" />
        </Triggers>
        </asp:UpdatePanel>
        <table style="border:none;">
        <tr>
            <td style="border:none;" colspan="3">
            <center>
                <asp:Button ID="btnModificar" runat="server" Text="Modificar Egreso" OnClick="btnModificar_Click" />
            </center>
            </td>
        </tr>
        </table>
        </asp:Panel>
    </asp:Panel>
    </center>
    
</asp:Content>
