<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs" Inherits="Inventario.NuevoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Nuevo Producto</span></h2> 
    </div>
    <center>
    <asp:Label ID="LError" runat="server" Text=""  ForeColor = "Red"></asp:Label>
        <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonIngresar">
    <table style="border:none;" >
        <tr>
            
            <td style="border:none;"><asp:Label ID="LabelDescripcion" runat="server" Text="Nombre:"></asp:Label><br /><br /></td>
            <td style="border:none;" colspan="3"><asp:TextBox Font-Size="Small" width="384px"  
                    ID="TextDescripcion" runat="server" MaxLength="150"></asp:TextBox >
            <asp:RequiredFieldValidator ID="Onombre" runat="server" ControlToValidate="TextDescripcion" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr >           
           <td style="border:none;"><asp:Label ID="Label1" runat="server" Text="Código:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextCodigo" runat="server" MaxLength="30"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextCodigo" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
           
            <td style="border:none;"><asp:Label ID="Label2" runat="server" Text="Familia:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Familia" runat="server" Width="128"></asp:DropDownList>
            </td> 
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Label3" runat="server" Text="Clasificación:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Clasificacion" runat="server" Width="128">
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td style="border:none;"><asp:Label ID="Label13" runat="server" Text="Controlado:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Controlado" runat="server" Width="128">
            <asp:ListItem>NO</asp:ListItem>
            <asp:ListItem>SI</asp:ListItem>
            </asp:DropDownList>
            </td>
             
        </tr>
         <tr>
            <td style="border:none;"><asp:Label ID="Label5" runat="server" Text="Explosivo:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Explosivo" runat="server" Width="128"></asp:DropDownList>
            </td>
            <td style="border:none;"><asp:Label ID="Label6" runat="server" Text="Comburente:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Comburente" runat="server" Width="128"></asp:DropDownList>
            </td>  
        </tr>
         <tr>
            <td style="border:none;"><asp:Label ID="Label7" runat="server" Text="Inflamable:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Inflamable" runat="server" Width="128"></asp:DropDownList>
            </td>
            <td style="border:none;"><asp:Label ID="Label8" runat="server" Text="Irritante:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Irritante" runat="server" Width="128"></asp:DropDownList>
            </td>  
        </tr>
         <tr>
            <td style="border:none;"><asp:Label ID="Label9" runat="server" Text="Nocivo:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Nocivo" runat="server" Width="128"></asp:DropDownList>
            </td>
            <td style="border:none;"><asp:Label ID="Label10" runat="server" Text="Toxicidad:"></asp:Label><br /><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Toxicidad" runat="server" Width="128"></asp:DropDownList>
            </td>  
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Label4" runat="server" Text="Corrosivo:"></asp:Label></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Corrosivo" runat="server" Width="128"></asp:DropDownList>
            </td> 
            <td style="border:none;"><asp:Label ID="Label11" runat="server" Text="Peligroso para"></asp:Label><br /><asp:Label ID="Label12" runat="server" Text="el ambiente:"></asp:Label><br /></td>
            <td style="border:none;">
            <asp:DropDownList Font-Size="Small" ID="Peligroso" runat="server" Width="128"></asp:DropDownList>
            </td> 
        </tr>
        
        <tr>
            <td style="border:none;">
                CAS:</td>
            <td style="border:none;">
                <asp:TextBox ID="TextCAS" runat="server" Font-Size="Small" MaxLength="30" 
                    width="128px"></asp:TextBox>
            </td>
            <td style="border:none;">
                &nbsp;</td>
            <td style="border:none;">
                &nbsp;</td>
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
