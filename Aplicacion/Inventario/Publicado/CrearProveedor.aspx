<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearProveedor.aspx.cs" Inherits="Inventario.CrearProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Ingreso Proveedor</span></h2> 
    </div>
    <center>
        <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonIngresar">
    <table style="border:none;" >
    
        <tr >
            <td style="border:none;"><asp:Label ID="LabelNit" runat="server" Text="Nit:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextNit" runat="server" MaxLength="15"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextNit" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
             <td style="border:none;"><asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextNombre" runat="server" MaxLength="150"></asp:TextBox >
            <asp:RequiredFieldValidator ID="ONombre" runat="server" ControlToValidate="TextNombre" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelDireccion" runat="server" Text="Dirección:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextDireccion" runat="server" MaxLength="110"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextDireccion" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
            <td style="border:none;"><asp:Label ID="LabelRegimen" runat="server" Text="Régimen:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextRegimen" runat="server" MaxLength="75"></asp:TextBox >
            
            </td>
        </tr>
        <tr>
            <td   style="border:none;"><asp:Label ID="LabelContacto" runat="server" Text="Contacto:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextContacto" runat="server" MaxLength="60"></asp:TextBox >
            </td>
            <td   style="border:none;"><asp:Label ID="LabelTel1" runat="server" Text="Teléfono 1:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextTel1" runat="server" MaxLength="8"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextTel1" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="TextTel1" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese Numero Entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
            
            </td>
        </tr>
        <tr>
             <td   style="border:none;"><asp:Label ID="LabelTel2" runat="server" Text="Teléfono 2:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextTel2" runat="server" MaxLength="8"></asp:TextBox ><br />
                    <asp:RegularExpressionValidator ControlToValidate="TextTel2" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Ingrese Numero Entero" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
            </td>
            <td   style="border:none;"><asp:Label ID="LabelCorreo" runat="server" Text="Correo:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextCorreo" runat="server" MaxLength="80"></asp:TextBox >
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
    </center>
</asp:Content>
