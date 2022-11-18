<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearUsuarios.aspx.cs" Inherits="Inventario.CrearUsuarios" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Creación de Usuarios</span></h2> 
    </div>
    <center>
        <asp:Label ID="Usr" runat="server" Text=""  ForeColor = "Red"></asp:Label>
    <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonIngresar">
    <table style="border:none;" >
        <tr >
            <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label><br /><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextNombre" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Onombre" runat="server" ControlToValidate="TextNombre" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        
            <td style="border:none;"><asp:Label ID="LabelApellido" runat="server" Text="Apellido:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextApellido" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Oapellido" runat="server" ControlToValidate="TextApellido" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
         
        <tr>
            <td style="border:none;"><asp:Label ID="LabelUsuario" runat="server" Text="Usuario:"></asp:Label><br /><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextUsuario" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="oUsuario" runat="server" ControlToValidate="TextUsuario" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td> 
               
           <td   style="border:none;"><asp:Label ID="LabelPass" runat="server" Text="Contraseña:"></asp:Label></td>
           <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" ID="TextPass" 
                   runat="server" TextMode="Password" MaxLength="50"></asp:TextBox >
           <asp:RequiredFieldValidator ID="Opass" runat="server" ControlToValidate="TextPass" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
           </td>
        </tr>
        <tr>       
           <td style="border:none;"><asp:Label ID="LabelConfirmar" runat="server" Text="Confirmar"></asp:Label><br /><asp:Label ID="Label1" runat="server" Text="Contraseña:"></asp:Label><br /><br /></td>
           <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                   ID="TextConfirmar" runat="server" TextMode="Password" MaxLength="50"></asp:TextBox >
           <asp:RequiredFieldValidator ID="Oconfirmar" runat="server" ControlToValidate="TextConfirmar" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
           <br /><asp:CompareValidator id="CompareValidator1" 
             runat="server" ErrorMessage="Las Contraseñas no coinciden." 
             ControlToValidate="TextConfirmar" 
             ControlToCompare="TextPass"></asp:CompareValidator>
           </td>
               
           <td style="border:none;"><asp:Label ID="LabelCorreo" runat="server" Text="Correo:"></asp:Label></td>
           <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                   ID="TextCorreo" runat="server" MaxLength="50"></asp:TextBox >
           <asp:RequiredFieldValidator ID="Ocorreo" runat="server" ControlToValidate="TextCorreo" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
           <asp:RegularExpressionValidator ErrorMessage="Correo Inválido" ID="ERmail" runat="server" ControlToValidate="TextCorreo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </td>
        </tr>
        <tr>  
           <td style="border:none"; colspan="2" align="center"><center>
           <asp:Label ID="LabelUbica" runat="server" Text="Selecciones las ubicaciones:"></asp:Label>
           </center>
           <br />
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="255" Height="80">     
             <asp:CheckBoxList ID="Ubicaciones" runat="server" RepeatLayout="Flow" >
                 </asp:CheckBoxList>
            </asp:Panel>
            
           </td>     
           <td style="border:none;"><asp:Label ID="LabelRol" runat="server" Text="Rol:"></asp:Label></td>
           <td style="border:none;"><asp:DropDownList Font-Size="Small" ID="ListRol" 
                   runat="server" Width="128px"></asp:DropDownList>
           <br />
           <br />
           <br />
           <asp:Button ID="ButtonIngresar" runat="server" Text="   Guardar   " onclick="ButtonIngresar_Click" />
           </td>
        </tr>    
    </table> 
     </asp:Panel>
    </center>
</asp:Content>

