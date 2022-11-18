<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inventario.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="cs" />
    <meta name="robots" content="all,follow" />
  
    <title>Universidad Rafael Landivar</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="#" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="css/aural.css" />
</head>
<body>

    <form id="form" runat="server" defaultbutton="ButtonAceptar">

<div id="main" class="box">

    <div id="header">

        <h1 id="logo">Inventario</h1>
        <hr class="noscreen" />         

    </div> 

     <div id="tabs" class="noprint">
           
     </div>  

    <div id="page" class="box">
    <div id="page-in" class="box">
        <br /><br /><br /><br /><br /><br /><br />
    <center>
        
    <asp:Label ID="LabelError" runat="server" Text="Label" Visible="false"></asp:Label>
    <table style="border:none;">
        <tr>
            <td style="border:none;"><asp:Label  ID="LabelUsuario" runat="server" Text="Usuario:"></asp:Label></td>
            <td style="border:none;"><asp:TextBox Width="128px" ID="TextUsuario" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Ousuario" runat="server" ControlToValidate="TextUsuario" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
            </td>
        </tr> 
        <tr>       
           <td style="border:none;"><asp:Label ID="LabelPass" runat="server" Text="Contraseña:"></asp:Label></td>
           <td style="border:none;"><asp:TextBox Width="128px" ID="TextPass" runat="server" TextMode="Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="Opass" runat="server" ControlToValidate="TextPass" SetFocusOnError="True">*.</asp:RequiredFieldValidator>
           </td>
        </tr>
    </table>
    <asp:Button ID="ButtonAceptar" runat="server" Text="Ingresar"  
            onclick="ButtonAceptar_Click" />
    </center>
    <br /><br /><br /><br /><br /><br /><br />
    </div> 
    </div> 
    <div id="footer">
       
    </div>
</div> 
    </form>
</body>
</html>
