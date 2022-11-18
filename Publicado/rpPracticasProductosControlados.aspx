<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="rpPracticasProductosControlados.aspx.cs" Inherits="Inventario.rpPracticasProductosControlados" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Universidad Rafael Landivar</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:DropDownList ID="Ciclo" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="Regresar" runat="server" Text="Ir a página principal" 
            onclick="Regresar_Click" />
        <asp:Button ID="Generar" runat="server" Text="Generar" 
            onclick="Generar_Click"  />
    <br />
    <br />
        <br />
        <CR:CrystalReportViewer ID="vProducto" runat="server" AutoDataBind="true" />
    </center>
    </div>
    </form>
</body>
</html>
