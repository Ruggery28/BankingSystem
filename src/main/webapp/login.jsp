<%-- 
    Document   : login
    Created on : 13 Jul 2025, 11:53:10
    Author     : Ruggery
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h2>User Login</h2>
        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Username" required><br><br>
            <input type="password" name="password" placeholder="Password" required><br><br>
            <button type="submit">Login</button>
        </form>

        <% String error = (String) request.getAttribute("error");
            if (error != null) {%>
        <p style="color:red"><%= error%></p>
        <% }%>

        <p>Don't have an account? <a href="register.jsp">Register here</a></p>
    </body>
</html>
