<%-- 
    Document   : segundo
    Created on : 8 mar. 2022, 13:58:49
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
        <h1>Hello World!</h1>
        <% 
               int fact = 1;
               for(int i = 1; i <= 5; i++){
                    fact *= i;
               }
               out.println("El factorial de 5 es " + fact);
        %>
    </body>
</html>
