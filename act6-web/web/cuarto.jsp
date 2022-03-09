<%-- 
    Document   : cuarto
    Created on : 8 mar. 2022, 18:32:09
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
        <h1>Ejemplo de scriplet</h1>
        <%!     
            int factorial(int n) {
            int fact = 1;
               for(int i = 1; i <= n; i++){
                    fact *= i;
               }
            return fact;
            }
        %>
        <p>El factorial de 7 es <%= factorial(7) %></p>
    </body>
</html>
