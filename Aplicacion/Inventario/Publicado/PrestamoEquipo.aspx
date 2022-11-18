<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PrestamoEquipo.aspx.cs" Inherits="Inventario.PrestamoEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Prestamo Equipo</span></h2>
        </div>
    <center>
    <asp:Panel ID="Busqueda" runat="server" DefaultButton="ButtonBuscar">
        <table style="border:none;" >
            <tr >
                <td style="border:none;"><asp:Label ID="LabelBusuqeda" runat="server" Text="Codigo URL:"></asp:Label></td>
                <td style="border:none;"><asp:TextBox width="114px" ID="TextBusqueda" 
                        runat="server"></asp:TextBox >
                
                </td>
                <td style="border:none;"><asp:Label ID="LabelT" runat="server" Text="Tipo:"></asp:Label></td>
                <td style="border:none;"><asp:DropDownList ID="Tipo" runat="server" Height="22px" Width="128px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="border:none;"><asp:Label ID="LabelBu" runat="server" Text="Ubicación:"></asp:Label></td>
                <td style="border:none;" colspan="3">
                    <asp:DropDownList ID="Ubicacion" runat="server" 
                        Height="22px" Width="295px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
             <td style="border:none"; colspan="4" align="center"><center>
                    <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" 
                        onclick="ButtonBuscar_Click" Width="82px" CausesValidation="False"/>
                 </center></td>
            </tr>  
        </table>
        <asp:Panel ID="PanelBusqueda" runat="server" ScrollBars="Auto" Width="600px">
        <asp:Label ID="LError" runat="server" ForeColor="Red" Visible="False" Text="No se han encontrado datos."></asp:Label> 
        <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False" 
                onrowcommand="Data_RowCommand">
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="No. de Serie" HeaderText="No. Serie" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:ButtonField ButtonType="Image" CommandName="Quitar" 
                ImageUrl="~/design/2.png" />
            </Columns>
        </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="PanelCampos" runat="server" ScrollBars="Auto" visible = "false" DefaultButton="ButtonIngresar">
        
        <table style="border:none;" >
            <tr>
            <td style="border:none;" colspan = "4">
            <center>
        <asp:DetailsView ID="Detalle" runat="server" Height="40px" Width="300px" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="1" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333"/>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        </center>
        </td>
        </tr>
             <tr >
             <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextNombre" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextNombre" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>           
            <td style="border:none;"><asp:Label ID="LabelOrden" runat="server" Text="No Carnet:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextCarnet" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextCarnet" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <%--<tr>
            <td style="border:none;"><asp:Label ID="Label2" runat="server" Text="Fecha Prestamo:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextFecha1" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFecha1" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
            <td style="border:none;"><asp:Label ID="Label1" runat="server" Text="Fecha Devolución:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextFecha2" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextFecha2" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
           
        </tr>--%>
         <tr>    
           <td   style="border:none;"><asp:Label ID="Label4" runat="server" Text="Observaciones:"></asp:Label><br /><br /></td>
           <td style="border:none;" colspan="3">
               <asp:TextBox ID="TextOb" runat="server" Height="47px" 
                   MaxLength="150" TextMode="MultiLine" Width="353px"></asp:TextBox>
           </td>
        </tr>
        <tr>
            <td style="border:none;" colspan="4">
            <center>
                <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " 
                    onclick="ButtonIngresar_Click" />
            </center>    
            </td>
        </tr>
        </table>
        </asp:Panel>
    </asp:Panel>
    </center>
</asp:Content>
