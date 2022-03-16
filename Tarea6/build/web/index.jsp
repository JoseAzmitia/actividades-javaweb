<%-- 
    Document   : index.jsp
    Created on : 15 mar. 2022, 19:37:29
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarea 6</title>
    </head>
    <body>
        <c:set var="lista" value="(ID, NOMBRE, ROL)(10, José Carlos , Administrador)(11, Salvador, Programador)(12, Adriana, Gerente)" />
        <table border="1">
            <c:forTokens items="${lista}" delims="()" var="x" varStatus="status">
                <c:choose>
                    <c:when test="${status.first}">
                        <tr>
                            <c:forEach var="cabecera" items="${x}">
                                <th><c:out value="${cabecera}"/></th>
                            </c:forEach>
                        </tr>
                     </c:when>
                     <c:otherwise>
                            <tr>
                                <c:forTokens var="data" items="${x}" delims=",">
                                    <td><c:out value="${data}"/></td>  
                                </c:forTokens>
                            </tr>
                     </c:otherwise>
                </c:choose>
            </c:forTokens>
        </table>
   </body>
</html>
