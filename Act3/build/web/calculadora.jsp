<%-- 
    Document   : calculadora
    Created on : 5 feb. 2022, 19:26:15
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="w-25 m-auto" align="center">
            <h1>Calculadora</h1>
            <form action="calcular" method="post">
                <div class="form-group mb-3">
                    <label>Número 1</label>
                    <input type="text" class="form-control" name="num1">
                </div>
                <div class="form-group mb-3">
                    <label>Número 2</label>
                    <input type="text" class="form-control" name="num2">
                </div>
                <div class="form-group mb-3">
                    <label>Resultado</label>

                    <p class="form-control">
                    <%  
                        if (request.getAttribute("resultado") != null){
                            out.println(request.getAttribute("resultado"));
                        }else{
                            out.println(" ");
                        }
                    %>
                    </p>
                </div>
                
                <input type="submit" name="opc" value="sumar" class="btn btn-primary btn-block"/>
                <input type="submit" name="opc" value="restar" class="btn btn-primary btn-block"/>
                <input type="submit" name="opc" value="multiplicar" class="btn btn-primary btn-block"/>
                <input type="submit" name="opc" value="dividir" class="btn btn-primary btn-block"/>
                <input type="submit" name="opc" value="borrar" class="btn btn-primary btn-block"/>
            </form>
        </div>
    </body>
</html>
