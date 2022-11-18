<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuscarRoles.aspx.cs" Inherits="Inventario.BuscarRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Editar Roles</span></h2> 
   </div>
   <center>
   <asp:Panel ID="PanelBusqueda" runat="server" DefaultButton="ButtonIngresar">      
       <table style="border:none;">
        <tr>
           <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Seleccione el rol que desea editar:"></asp:Label></td>
           <td style="border:none;"><asp:DropDownList ID="ListRoles" runat="server"></asp:DropDownList></td>
        </tr> 
       </table>   
       <asp:Button ID="ButtonIngresar" runat="server" Text="Continuar" 
           onclick="ButtonIngresar_Click"/>
   </asp:Panel>
   </center>    
   <asp:Panel ID = "PanelResultado" runat= "server" Visible ="false" DefaultButton="ButtonGuardar">
   <br /> <br />
       <center>
        <asp:Label ID="LabelRol" runat="server" Text="Label"></asp:Label>
       </center>
   <center>
       <asp:GridView ID="Data" runat="server" AutoGenerateColumns="False">
           <Columns>
               <asp:BoundField DataField="Nombre" HeaderText="Tipos de Operaciones" />
               <asp:TemplateField HeaderText="¿Puede Acceder?">
                   <ItemTemplate>
                   <center>
                       <asp:CheckBox ID="Permiso" runat="server" Enabled="true" />
                   </center>
                   </ItemTemplate>
                   <ControlStyle Width="60px" />
               </asp:TemplateField>
           </Columns>
       </asp:GridView>
   </center>
      <center>
       <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" Width="78px" 
           onclick="ButtonGuardar_Click" />
      </center>
   </asp:Panel>
   
</asp:Content>
