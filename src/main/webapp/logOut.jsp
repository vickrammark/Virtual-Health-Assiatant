<%-- 
    Document   : logOut
    Created on : Aug 8, 2020, 1:18:40 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("message","");
            session.invalidate();
            response.sendRedirect("Login.jsp");
        %>
    </body>
</html>
