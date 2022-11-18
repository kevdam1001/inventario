<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IngresoEquipo.aspx.cs" Inherits="Inventario.IngresoEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="article">
    <h2><span>Ingreso Equipo</span></h2> 
    </div>
    <center>
        <asp:Label ID="mensaje" runat="server" Text=""  ForeColor = "Red"></asp:Label>
        <asp:Panel ID="PanelCampos" runat="server" Visible = "true" DefaultButton="ButtonIngresar">
    <table style="border:none;" >
    
        <tr >
            <td style="border:none;"><asp:Label ID="LabelTipo" runat="server" Text="Tipo:"></asp:Label><br /><br /></td>
            <td style="border:none;">
                <asp:DropDownList Font-Size="Small" ID="Tipo" 
                    runat="server" Width="132px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelCodigo" runat="server" Text="Codigo URL:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextCodigo" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="OCodigo" runat="server" ControlToValidate="TextCodigo" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="LabelSerie" runat="server" Text="No. de Serie:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextSerie" runat="server" MaxLength="50">N/A</asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextSerie" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border:none;"><asp:Label ID="Labelmarca" runat="server" Text="Marca:"></asp:Label><br /><br /></td>
            <td style="border:none;"><asp:TextBox Font-Size="Small" width="128px" 
                    ID="TextMarca" runat="server" MaxLength="50"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextMarca" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>    
           <td   style="border:none;"><asp:Label ID="LabelPass" runat="server" Text="Ubicación:"></asp:Label><br /><br /></td>
           <td style="border:none;"><asp:DropDownList Font-Size="Small" ID="Ubicación" runat="server"></asp:DropDownList>
           </td>
        </tr>
         <tr>    
           <td   style="border:none;"><asp:Label ID="LabelDesc" runat="server" Text="Descripción:"></asp:Label><br /><br /></td>
           <td style="border:none;">
               <asp:TextBox ID="TextDesc" runat="server" Height="47px" 
                   MaxLength="150" TextMode="MultiLine" Width="188px"></asp:TextBox>
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
