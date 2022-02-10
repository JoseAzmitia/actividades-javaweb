<%-- 
    Document   : respuesta
    Created on : 27 ene. 2022, 23:29:11
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <p>Hola <%= request.getParameter("nombre") %>, tus comentarios han sido recibidos.</p>
        <p>Nos comunicaremos contigo en breve al correo: <%= request.getParameter("correo") %></p>
    </body>
</html>
