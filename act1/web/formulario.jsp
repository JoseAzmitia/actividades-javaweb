<%-- 
    Document   : formulario
    Created on : 27 ene. 2022, 23:28:02
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <form action="respuesta.jsp" method="post">
            <h2>Datos de Contacto</h2>
                <label>Nombre:</label>
                <input type="text" name="nombre">
                <br/>
                <label>E-mail:</label>
                <input type="email" name="correo">
                <br/>
                <label>Telefono:</label>
                <input type="number" name="telefono">
                <br/>
                <label>Comentario:</label>
                <input type="text" name="comentario">
                <br/>
                <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
