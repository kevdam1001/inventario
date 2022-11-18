<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarPw.aspx.cs" Inherits="Inventario.RecuperarPw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta http-equiv="content-language" content="cs" />
    <meta name="robots" content="all,follow" />
    
    <title>Recuperar Contraseña</title>
    
    <link rel="index" href="#" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="css/aural.css" />
</head>
<body>
    
    <form id="form1" runat="server" method="post">
<div id="main" class="box">
<div style =" text-align:right">
 &nbsp;&nbsp;&nbsp;
 </div>             
    <div id="header">
        <h1 id="logo">Inventario</h1>
        <hr class="noscreen" />          
    </div> 
     <div id="tabs" class="noprint">
     <ul id="menu-horizontal">
       
        </ul>
        <hr class="noscreen" />
     </div>    
    <div id="page" class="box">
    <div id="page-in" class="box">
   
       <center>
           <div id="content">
            <div>
                <div>
              
                   <label>Te enviaremos un mensaje de confirmación al e-mail asociado.</label>
                    <br /> 
                    <br />   
                    <label>Debes ingresar tu codigo de usuario:</label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click"/>

                </div>
            </div>
            <hr class="noscreen" />
        </div>
       </center>
        
        
    </div>
    </div> 
    <div id="footer">
    </div> 
</div>

</form>


</body>
</html>
