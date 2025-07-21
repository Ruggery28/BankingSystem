<%-- 
    Document   : register
    Created on : 13 Jul 2025, 11:53:00
    Author     : Ruggery
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
    </head>
    <body>
        <h2>User Registration</h2>
        <form action="RegisterServlet" method="post">
            Username: <input type="text" name="username" required><br><br>
            Password: <input type="password" name="password" required><br><br>
            <input type="submit" value="Register">
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </body>
</html>
