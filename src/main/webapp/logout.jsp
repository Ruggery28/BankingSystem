<%-- 
    Document   : logout
    Created on : 31 Jul 2025, 21:38:14
    Author     : Ruggery
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            // Invalidate the current session
            if (session != null) {
                session.invalidate();
            }

            // Redirect to login page
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
