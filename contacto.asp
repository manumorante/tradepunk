<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%><%
Function enviarEmail(minombre,miemail,destino,asunto,cuerpo)

	Set Mail = Server.CreateObject("Persits.MailSender")
	' enter valid SMTP host
	Mail.Host = "smtp.estadologico.com"
	Mail.From = miemail ' Dirección del que envia
	Mail.FromName = minombre ' Nombre del que envia
	
	' Destino (to)
	Mail.AddAddress destino
	Mail.IsHTML = True
	
	' Asunto (subject)
	Mail.Subject = asunto

	' Cuerpo (body)
	Mail.Body = cuerpo
	
	bSuccess = False
	On Error Resume Next
		Mail.Send
		If Err <> 0 Then
			enviarEmail = false
		else
			enviarEmail = true
	  End If
	 on error goto 0

end function



	dim nombre, telefono, email, comentarios, cuerpo
	if request.Form("nombre")		<> "" then nombre 		= request.Form("nombre")      else nombre      = "" end if
	if request.Form("telefono")		<> "" then telefono 	= request.Form("telefono")    else telefono    = "" end if
	if request.Form("email")		<> "" then email 		= request.Form("email")       else email       = "" end if
	if request.Form("comentarios")	<> "" then comentarios 	= request.Form("comentarios") else comentarios = "" end if
	
	cuerpo=""
	cuerpo = cuerpo & "<b>Nombre:</b> <br>"      & nombre      & VbCrLf & "<br><br>"
	cuerpo = cuerpo & "<b>Telefono:</b> <br>"    & telefono    & VbCrLf & "<br><br>"
	cuerpo = cuerpo & "<b>Email:</b> <br>"       & email       & VbCrLf & "<br><br>"
	cuerpo = cuerpo & "<b>Comentarios:</b> <br>" & comentarios & VbCrLf & "<br><br>"

	dim minombre, miemail, destino, asunto
	minombre = "tradepunk.com"
	miemail = "tradepunk@estadologico.com"
'	destino = "estadologico@hotmail.com"
	destino = "info@tradepunk.com"
	asunto = "'"& nombre &"' desde el contacto en tradepunk.com"

	envio = enviarEmail(minombre,miemail,destino,asunto,cuerpo)
	if envio then
		Response.Write "&inf_envio=si&"
	else
		Response.Write "&inf_envio=no&"
	end if%>