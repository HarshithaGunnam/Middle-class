<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #0000FF;
            color: #333;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 1rem;
            text-align: center;
        }
        main {
            max-width: 800px;
            margin: 2rem auto;
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #4CAF50;
            text-align: center;
        }
        .footer {
            text-align: center;
            background-color: #4CAF50;
            color: white;
            padding: 1rem;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .count {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <header>
        <h1>Welcome Admin</h1>
    </header>
    <main>
        <h2>Project Overview</h2>
        <div class="count">
            Total Customers: <c:out value="${count}" />
        </div>
    </main>
    <%@include file="footer.jsp" %>
</body>
</html>
