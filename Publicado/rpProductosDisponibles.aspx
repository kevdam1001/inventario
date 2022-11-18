<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="rpProductosDisponibles.aspx.cs" Inherits="Inventario.rpProductosDisponibles" %>

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
        
        <asp:Button ID="Regresar" runat="server" Text="Ir a página principal" 
            onclick="Regresar_Click" />
    <br />
    <br />
        <CR:CrystalReportViewer ID="vProducto" runat="server" AutoDataBind="true" />
        <br />
    </center>
    </div>
    </form>
</body>
</html>
