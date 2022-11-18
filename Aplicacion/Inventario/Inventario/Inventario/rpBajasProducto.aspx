<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpBajasProducto.aspx.cs" Inherits="Inventario.rpBajasProducto" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">


    <title>Universidad Rafael Landivar</title>
</head>
<body>
    <form id="form1" runat="server">

<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="Server" />
    <div>
    <center>
        <br/>    
        <asp:Button ID="Regresar" runat="server" Text="Ir a página principal" 
            onclick="Regresar_Click" CausesValidation="False" />
          
  
        <br/>  
        <br/>    
        
        <table style="border:none;" >
        <tr>
        <td style="border:none;" valign="top"><asp:Label ID="FechIn" runat="server" 
                Text="Fecha Inicial:" Font-Bold="True" Font-Italic="False" Font-Size="Small"></asp:Label></td>
        <td style="border:none;"><asp:TextBox Font-Size="Small" width="171px" 
                ID="FechaInicial" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FechaInicial" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="FechaInicial" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                TargetControlID="FechaInicial" Format="dd/MM/yyyy">
            </asp:CalendarExtender></td>
        <td></td>
        <td style="border:none;" valign="top"><asp:Label ID="FechaFi" runat="server" Text="Fecha Final:" 
                Font-Bold="True" Font-Size="Small"></asp:Label></td>
        <td style="border:none;"><asp:TextBox Font-Size="Small" width="171px" 
                ID="FechaFinal" runat="server"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FechaFinal" SetFocusOnError="True">*.</asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ControlToValidate="FechaFinal" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Formato Fecha dd/mm/aaaa" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
            <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
                TargetControlID="FechaFinal" Format="dd/MM/yyyy">
            </asp:CalendarExtender></td>
        </tr>    
       </table>
        <br/>    
        
      <asp:Button ID="Generar" runat="server" Text="Generar" 
       onclick="Generar_Click" style="height: 26px"  />
       
    <br />
    <br />
        <CR:CrystalReportViewer ID="vProducto" runat="server" 
            AutoDataBind="true" DisplayGroupTree="False" HasCrystalLogo="False" 
            HasDrillUpButton="False" HasPrintButton="true" 
            HasToggleGroupTreeButton="False" 
            HasViewList="False" />
    </center>
    </div>
    </form>
</body>
</html>
