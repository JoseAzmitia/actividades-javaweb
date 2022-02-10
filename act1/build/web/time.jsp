<%-- 
    Document   : time
    Created on : 26 ene. 2022, 20:48:49
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 >La fecha actual es  <%= new java.util.Date()%></h1>
        <br>
        <br>
        <form action="Serv1" method="get">
            <label>Color de fuente: </label>
            <select name="fuente">
                <option value="blue">Blue</option>
                <option value="white">Blanco</option>
            </select>
            <br>
            <label>Color de fondo: </label>
            <select name="fondo">
                <option value="red">Rojo</option>
                <option value="green">Verde</option>
            </select>
            <br>
            <br>
            <input type="submit" value="Cambiar" />
        </form>
    </body>
</html>
