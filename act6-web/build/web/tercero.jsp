<%-- 
    Document   : tercero
    Created on : 8 mar. 2022, 16:34:12
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
        <h1>Cálculo del factorial</h1>
        <form action="tercero.jsp" method="get">
            <label>Número</label>
            <input type="number" name="fact" required>
            <input type="submit" value="Calcular">
        </form>
        <br>
        <% 
            HttpSession mySession = request.getSession();
            int cont = 0;
            if(request.getParameter("fact") != null){
            int n = Integer.parseInt(request.getParameter("fact"));
            int fact = 1;
               for(int i = 1; i <= n; i++){
                    fact *= i;
               }
               out.println("El factorial de " + n + " es "  + fact);
               out.println("<br>");
            if(mySession.getAttribute("contador") != null) {
                cont = (int) mySession.getAttribute("contador");
                cont++;
                mySession.setAttribute("contador", cont);
                out.println("Ejecuciones de la aplicación en esta sesión: " + cont);
            }else{
                cont++;
                mySession.setAttribute("contador", cont);
                out.println("Ejecuciones de la aplicación en esta sesión: " + cont);
            } 
            }  
        %>
    </body>
</html>
