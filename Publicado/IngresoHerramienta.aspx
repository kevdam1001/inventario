<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IngresoHerramienta.aspx.cs" Inherits="Inventario.IngresoHerramienta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Ingreso Herramienta</span></h2> 
    </div>
    <center>
        <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonIngresar">
    <table style="border:none;" >        
        <tr>    
           <td   style="border:none;"><asp:Label ID="LabelDesc" runat="server" Text="Descripción:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox ID="TextDesc" runat="server" Height="47px" 
                   MaxLength="150" TextMode="MultiLine" Width="188px"></asp:TextBox>
           </td>
        </tr>
         <tr>
            <td   style="border:none;"><asp:Label ID="LabelPass" runat="server" Text="Ubicación:"></asp:Label><br /><br /></td>
           <td style="border:none;"><asp:DropDownList Font-Size="Small" ID="Ubicación" runat="server"></asp:DropDownList>
           </td>    
           
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Labelcantidad" runat="server" Text="Cantidad:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextCantidad" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextCantidad" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelMarca" runat="server" Text="Marca:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextMarca" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextMarca" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border:none;" colspan="2">
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
