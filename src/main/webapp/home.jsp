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
    // Get the user object from the session
    User user = (User) session.getAttribute("user");

    // If no user is logged in, redirect back to login page
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/home.css">
        <title>Home Page</title>
    </head>
    <body>
        <!-- Top bar -->
        <div class="top-bar">
            <div class="balance">
                YOUR BALANCE: <span></span>
                <div class='accountNumber'>
                    ACCOUNT NUMBER: 
                </div>
            </div>

            <div class="logo">
                <h1>LOGO</h1>
            </div>
            <div class="welcome">
                WELCOME, <%= user.getUsername()%>  | <a href="logout.jsp">LOG OUT</a>
            </div>
        </div>

        <!-- Action buttons -->
        <div class="actions">
            <button onclick="location.href = 'DepositServlet'">DEPOSIT</button>
            <button onclick="location.href = 'WithdrawServlet'">WITHDRAW</button>
            <button onclick="location.href = 'TransferServlet'">TRANSFER</button>
            <button onclick="location.href = 'ExtraServlet'">EXTRA</button>
        </div>

        <!-- Delete Account -->
        <div class="delete-account">
            <form action="DeleteAccountServlet" method="post">
                <button type="submit" class="delete-btn">DELETE ACCOUNT</button>
            </form>
        </div>

    </body>
</html>
