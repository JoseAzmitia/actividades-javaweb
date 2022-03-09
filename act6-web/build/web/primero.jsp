<%-- 
    Document   : primero
    Created on : 8 mar. 2022, 13:47:31
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String st = "mayus"; %>
        <h1>Ejemplos de expresiones</h1>
        <%= LocalDateTime.now() %>
        <br>
        <%= st.toUpperCase() %>
        <br>
        <%= 10+5 %>
        <br>
        <%= (int) (Math.random() * (10 - 1)) + 1 %>
    </body>
</html>
