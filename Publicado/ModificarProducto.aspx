<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModificarProducto.aspx.cs" Inherits="Inventario.ModificarProducto" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
        <asp:ToolkitScriptManager runat="Server" />
          <h2><span> Modificar Producto </span></h2>
     </div>
     <center> 
    <asp:Panel ID ="pnCamposBusqueda" runat="server" Height="91px">
        <table style="border:none;">
        <tr>
            <td style="border:none;">
                <asp:Label ID="Label1" runat="server" Text="Codigo Producto:"></asp:Label>
            </td>
            <td style="border:none;">
                <asp:TextBox ID="txtCodProducto" runat="server" MaxLength="30" Width="128px"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <td colspan="2" style="border:none;">
                    <center>
                    <asp:Button ID="btnBuscarP" runat="server" CausesValidation="false" OnClick="btnBuscarP_Click" Text="Buscar" />
                    </center>
                    </td>
            </tr>
        </table>
     </asp:Panel>
     <asp:Panel ID="pnDatos" runat="server" Height="727px">
         <br />
         <asp:Label ID="lblMensaje" runat="server" Text="Label" Visible="False" 
             ForeColor="Red"></asp:Label>
         <br />
         <asp:GridView ID="grDatosEncontrados" runat ="server"
             AutoGenerateColumns="False" OnRowCommand="rowCommandDatos">
             <Columns>
                 <asp:BoundField HeaderText="Código" DataField="Código" />
                 <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                 <asp:ButtonField HeaderText="Escojer" ButtonType="Image" CommandName="Agregar" 
                     ImageUrl="~/design/1.png" />
                    
             </Columns>
         </asp:GridView>
     <div runat="server" id="divModificar" visible="true">
         <asp:Panel ID="pnModificarProducto" runat="server" 
             DefaultButton="bntActualizar" Height="298px" Visible="true">
             <br />
            <asp:Label ID="lblEncabezado2" runat="server" Font-Names="Lucida Sans Unicode" 
                 Font-Size="Larger" Text="Detalles del Producto"></asp:Label>
             <br />
             <table style="border:none;" >
        <tr>
        <td  colspan="4">
                <center>Descripción: <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label></center>                           
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="lblNombre" runat="server" Text="Nombre: "></asp:Label><br /><br />                
            </td>
            <td style="border:none;" colspan="3">
                
                <asp:TextBox ID="txtNombreProducto" runat="server" Height="22px" Width="437px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtNombreProducto" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
             <td   style="border:none;" ><asp:Label ID="lblFamilia" runat="server" Text="Familia:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:DropDownList ID="ddlFamilia" runat="server" Height="22px" Width="128px">
               </asp:DropDownList>
           </td> 
             <td style="border:none;">
                 Clasificación:</td>
             <td style="border:none;">
                 <asp:DropDownList ID="ddlClasificacion" runat="server" Height="22px" 
                     Width="128px">
                 </asp:DropDownList>
             </td>
        </tr>
        <tr >
             <td style="border:none;">Controlado:<br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlControlado" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
            </td>           
            <td style="border:none;">Explosivo:<br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlExplosivo" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border:none;">Comburente:<br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlComburente" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
            
            </td>
            <td style="border:none;">Inflamable:<br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlinflamable" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
                <br />
            </td>
           
        </tr>
        <tr>
            <td style="border:none;">Irritante:</td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlIrritante" runat="server" Height="22px" Width="128px"></asp:DropDownList>
      

            </td>
             <td style="border:none;">Nocivo:<br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlNocivo" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
                <br />
            </td>
            
            
        </tr>
        <tr>
            <td style="border:none;">Toxicidad:<br /><br />               
            </td>  
            <td style="border:none;">
                <asp:DropDownList ID="ddlToxicidad" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
                <br />
            </td>
            <td style="border:none;">Corrosivo:<br /><br />               
            </td>  
            <td style="border:none;">
                <asp:DropDownList ID="ddlCorrosivo" runat="server" Height="22px" Width="128px">
                </asp:DropDownList>
                <br />
            </td>     
            
        </tr>
         <tr>    
           <td   style="border:none;">Peligroso para<br />
               el Ambiente:<br /></td>
           <td style="border:none;">
               <asp:DropDownList ID="ddlPeligrosoA" runat="server" Height="22px" Width="128px">
               </asp:DropDownList>
           </td>
             <td style="border:none;">
                 CAS:</td>
             <td style="border:none;">
                 <asp:TextBox ID="txtCAS" runat="server"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                     ControlToValidate="TxtCAS" ErrorMessage="Formato CAS ####-##-##" 
                     ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
             </td>
        </tr>
        <tr>
           
            <td style="border:none;" colspan="4">
            <center>
            </center>    
            </td>
        </tr>       
       </table>
             <asp:Button ID="bntActualizar" runat="server" onclick="bntActualizar_Click" 
                 Text="Actualizar" />
             <br />
         </asp:Panel>
     </div>
     </asp:Panel>
        
      </center>
</asp:Content>
        
        