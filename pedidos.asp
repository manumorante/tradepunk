<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<HTML><HEAD><TITLE>TraDe PuNk - Tienda</TITLE>
<style type="text/css">
<!--
table {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9pt;
	color: #FFFFFF;
}
body,td,th {
	color: #000000;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 8pt;
}
body {
	background-color: #FFFFFF;
	background-image: url(logo_mosaico.jpg);
}
.Estilo7 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 10pt;
}
.Estilo8 {
	color: #FFFFFF;
	font-weight: bold;
}
.Estilo10 {color: #FFFFFF}
.campoarea {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 8pt;
}
.Estilo11 {
	font-size: 10pt;
	font-weight: bold;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></HEAD>
<BODY>
<%select case request.QueryString("ac")%>
<%case "gracias"%>
<table width="100%" height="220"  border="0" cellpadding="2" cellspacing="1">
  <tr>
    <td align="center" bgcolor="#FFFFFF"><span class="Estilo11">Pedido enviado</span><br>
<br>

Pronto nos pondremos en contacto contigo.<br>
Gracias!</td>
  </tr>
</table>

<script>
setTimeout('window.close()',2000)
</script>
<%case else%>
<Form method="POST" action="http://cgi.estadologico.com/FormMail.pl">
<input type="hidden" name="recipient" value="info@estadologico.com">
<input name="redirect" type="hidden" id="redirect" value="http://www.estadologico.com/tradepunk/pedidos.asp?ac=gracias">
<input type="hidden" name="subject" value="Formulario de Pedido TradePunk">
<input type="hidden" name="required" value="Nombre,E-mail,Camisetas,">
<table width="100%" height="220" border="0" align="center" cellpadding="0" cellspacing="1">
<tr align="center" valign="top">
  <td colspan="2"><span class="Estilo3 Estilo7">FORMULARIO DE PEDIDOS <br>
    <br>
  </span></td>
  </tr>
<tr>
<td width="197" align="right"><span class="Estilo8">Tu Nombre&nbsp;</span></td>
<td width="583" valign="top"><input name="Nombre" type="text" class="campoarea" style="width:100%"></td></tr>
<tr><td align="right"><span class="Estilo10"><b>E-mail</b>&nbsp;</span></td>
<td valign="top"><input name="E-mail" type="text" class="campoarea" style="width:100%"></td></tr>
<tr>
  <td align="right" valign="top"><span class="Estilo10"><b>Camisetas
      y tallas&nbsp;</b></span></td>
  <td valign="top"><textarea name="Camisetas" cols="" rows="5" wrap="virtual" class="campoarea" style="width:100%"></textarea></td></tr>
<tr align="right" valign="bottom">
  <td colspan="2"><input type="submit" value=" Hacer pedido "></td>
  </tr>
</table>
</form>
<%end select%>
</BODY></HTML>

</BODY>
</HTML>

