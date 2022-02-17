<%-- 
    Document   : stats
    Created on : 14 feb. 2022, 18:14:13
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body class="m-0 vh-100 row justify-content-center align-items-center">
        <div class="w-25 col-auto">
            <h1 align="center" class="mb-4">Estadísticas</h1>
            <table class="table table-hover table-bordered table-light border-dark">
            <thead>
                <tr>
                    <th scope="col"> </th>
                    <th scope="col">Cliente</th>
                    <th scope="col">Servidor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Juega</td>
                    <td>Prueba</td>
                    <td>Prueba</td>
                </tr>
                <tr>
                    <td>Ganador jugada</td>
                    <td colspan="2"><%= getServletContext().getAttribute("resultadoActual") %></td>
                </tr>
                <tr>
                    <td>Jugadas ganadas</td>
                    <td>
                        <%  
                        if (getServletContext().getAttribute("victoriasCliente") != null){
                            out.println(getServletContext().getAttribute("victoriasCliente"));
                        }else{
                            out.println("0");
                        }
                        %>
                    </td>
                    <td>
                        <%  
                        if (getServletContext().getAttribute("victoriasServidor") != null){
                            out.println(getServletContext().getAttribute("victoriasServidor"));
                        }else{
                            out.println("0");
                        }
                        %>
                    </td>
                </tr>
                <tr>
                    <td>Jugadas empatadas</td>
                    <td colspan="2">
                        <%  
                        if (getServletContext().getAttribute("empates") != null){
                            out.println(getServletContext().getAttribute("empates"));
                        }else{
                            out.println("0");
                        }
                        %>
                    </td>
                </tr>
            </tbody>
        </table>
            <div align="center">
            <h1 align="center" class="mb-4">Elige una opción</h1>
            <form method="get" action="jugar">
            <input type="radio" name="radio" value="1">Piedra<br>
            <input type="radio" name="radio" value="2">Papel<br>
            <input type="radio" name="radio" value="2">Tijera<br>
            <input type="submit" value="Jugar!" class="btn btn-primary mt-2 mb-4">
            </form>
            </div>
            <form method="post" action="jugar">
            <input type="submit" value="Volver a empezar" class="btn btn-danger mt-2 mb-4">
            </form>
        </div>
    </body>
</html>
