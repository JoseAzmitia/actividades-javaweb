<%-- 
    Document   : result
    Created on : 31 ene. 2022, 21:22:28
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Beer Recommendations JSP</h1>
        <p>
        <%
        List styles = (List)request.getAttribute("styles");
        Iterator it = styles.iterator();
        while(it.hasNext()){
        out.println("<br>try: " + it.next());
        }
        %>
    </body>
</html>
