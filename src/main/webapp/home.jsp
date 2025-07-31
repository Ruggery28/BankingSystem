<%-- 
    Document   : home
    Created on : 13 Jul 2025, 12:38:12
    Author     : Ruggery
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page session="true" %>
<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h2>Welcome, <%= user.getUsername() %>!</h2>
        <a href="logout.jsp">Logout</a>
    </body>
</html>
