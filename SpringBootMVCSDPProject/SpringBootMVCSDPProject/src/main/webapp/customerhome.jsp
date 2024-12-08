<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Welcome Section Styling */
        .welcome-container {
            text-align: center;
            padding: 50px;
            margin-top: 30px;
            background-color: #ffffff;
            max-width: 600px;
            margin: 30px auto;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .welcome-container h1 {
            font-size: 2em;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .welcome-container p {
            font-size: 1.2em;
            color: #555;
        }

        /* Navbar Include Styling */
        nav {
            margin-bottom: 30px;
        }

        /* Footer Section */
        .footer {
            text-align: center;
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <%@include file="customernavbar.jsp" %>
    <div class="welcome-container">
        <h1>Welcome, <%= c.getName() %>!</h1>
        <p>We are glad to have you on board. Explore your dashboard and manage your account with ease.</p>
    </div>
</body>
</html>
