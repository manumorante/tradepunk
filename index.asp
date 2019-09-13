<html>
<head>
<title>TraDe PuNk</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META name="title" content="TraDe PuNk - Web oficial. Música punk.">
<META name="description" content="Granada es Punk.">
<META name="keywords" content="punk, punk punk, granada punk, granada, punkarra, tradepunk">
<script>
function ventana(theURL,winName,ancho,alto,barras) { 
	var winl = (screen.width - ancho) / 2;
	var wint = (screen.height - alto) / 2;
	var paramet='top='+wint+',left='+winl+',width='+ancho+',height='+alto+',scrollbars='+barras+'';
	var splashWin=window.open(theURL,winName,paramet);
    splashWin.focus();
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
function ventanaDescarga() {
  window.open("mp3.html","DescargaMP3","width=550, height=550,scrollbars=0");
}
function pedidos() {
  window.open("pedidos.asp","Pedidos","width=320, height=250");
}
function contacto() {
//  window.open("contacto.asp","FormularioDeContacto","width=550, height=650");
}
function tamano(ancho,alto) {
	window.resizeTo(ancho,alto)
}
function foto(foto){
	try{
		pag=window.open("","pag","width=550, height=550");
	//	pag.close()
		a = "<html><head><title>Trade Punk - Fotos</title><body bgcolor=#000000 leftmargin=0 topmargin=0>"
		a = a + "<scr"+"ipt language='JavaScript' src='js.js'></scr"+"ipt>"
		a = a + "</head>"
		a = a + "<img src="+ foto +" onLoad=tamano(this.width,this.height)>"
		a = a + "</body></html>"
	
		pag.document.write(a);
		}catch(unerror){
			//
		}
}
</script>

<style type="text/css">
<!--
body {
	background-color: #660000;
}
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>
<body leftmargin="0" topmargin="0"><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0','width','100%','height','100%','src','index?<%Randomize : Response.Write int(rnd * 4)%>','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','bgcolor','#660000','movie','index?<%Randomize : Response.Write int(rnd * 4)%>' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="100%" height="100%">
  <param name="movie" value="index.swf?<%Randomize : Response.Write int(rnd * 4)%>">
  <param name="quality" value="high"><param name="BGCOLOR" value="#660000">
  <embed src="index.swf?<%Randomize : Response.Write int(rnd * 4)%>" width="100%" height="100%" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" bgcolor="#660000"></embed>
</object></noscript>
<script>
	function verConciertos(){
		ventana("novedades.asp","NovedadesTradePunk",500,350,1)
	}

	function verFotos(){
		ventana("fotos.asp","FotosTradePunk",700,550,1)
	}
	
//	verConciertos()
	
	//ventana("especialFisfitsTradePunk.asp","MisfitsTraDePuNk",719,496,0)

</script>

</body>
</html>
