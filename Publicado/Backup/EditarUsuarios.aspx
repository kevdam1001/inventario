<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarUsuarios.aspx.cs" Inherits="Inventario.EditarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="article">
    <h2><span>Editar Datos del Usuario</span></h2> 
    </div>
    <center>
    <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonContinuar">
    <table style="border:none;" >
         <tr>
            <td style="border:none;"><asp:Label ID="LabelUsuario" runat="server" Text="Usuario:"></asp:Label><br /><br /><br /></td>
            <td style="border:none;"><asp:TextBox width="128px" Font-Size="Small" 
                    ID="TextUsuario" runat="server" Enabled="False"></asp:TextBox >
            <asp:RequiredFieldValidator ID="oUsuario" runat="server" ControlToValidate="TextUsuario" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
      
            <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextNombre" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ErrorMessage="a" ID="Onombre" runat="server" ControlToValidate="TextNombre" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr> 
        <tr>
            <td style="border:none;"><asp:Label ID="LabelApellido" runat="server" Text="Apellido:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextApellido" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Oapellido" runat="server" ControlToValidate="TextApellido" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
              
           <td style="border:none;"><asp:Label ID="LabelCorreo" runat="server" Text="Correo:"></asp:Label>
               </td>
           <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextCorreo" runat="server"></asp:TextBox >
           <asp:RequiredFieldValidator ID="Ocorreo" runat="server" ControlToValidate="TextCorreo" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
           <asp:RegularExpressionValidator ID="ERmail" runat="server" ControlToValidate="TextCorreo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Correo Inválido</asp:RegularExpressionValidator>
           </td>
        </tr>
         <tr>       
           <td style="border:none;"><asp:Label ID="LabelRol" runat="server" Text="Rol:"></asp:Label><br /></td>
           <td style="border:none;"><asp:DropDownList Font-Size="Small" ID="ListRol" runat="server"></asp:DropDownList></td>
        
            <td style="border:none;"><asp:Label ID="LabelActivo" runat="server" Text="Activo:"></asp:Label></td>
            <td style="border:none;"><asp:CheckBox ID="CheckBoxActivo" runat="server" /></td>
        </tr>
        <tr>
        <td style="border:none"; colspan="4" align="center"><center>
           <asp:Label ID="LabelUbica" runat="server" Text="Selecciones las ubicaciones:"></asp:Label>
            <br /><br />
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="255" Height="80" HorizontalAlign="Left">     
             <asp:CheckBoxList ID="Ubicaciones" runat="server" RepeatLayout="Flow"  >
                 </asp:CheckBoxList>
            </asp:Panel>           
            </center>
           </td>
        </tr>
        <tr>
            <td style="border:none"; colspan="4"><br /><center>
                <asp:Button ID="ButtonContinuar" runat="server" Text="Continuar" 
                    onclick="ButtonContinuar_Click"/></center>
            </td>
        </tr>   
       </table>
     </asp:Panel>
     </center>
</asp:Content>
