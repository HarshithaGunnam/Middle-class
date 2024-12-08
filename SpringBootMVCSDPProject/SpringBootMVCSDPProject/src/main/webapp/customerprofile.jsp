<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Profile</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Profile Container */
        .profile-container {
            background-color: #ffffff;
            max-width: 600px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        h3 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .profile-item {
            font-size: 1.2rem;
            margin-bottom: 15px;
        }

        .profile-item span {
            font-weight: bold;
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
    <div class="profile-container">
        <h3>My Profile</h3>
        <p class="profile-item"><span>ID:</span> <%= c.getId() %></p>
        <p class="profile-item"><span>Name:</span> <%= c.getName() %></p>
        <p class="profile-item"><span>Gender:</span> <%= c.getGender() %></p>
        <p class="profile-item"><span>Date of Birth:</span> <%= c.getDateofbirth() %></p>
        <p class="profile-item"><span>Email:</span> <%= c.getEmail() %></p>
        <p class="profile-item"><span>Location:</span> <%= c.getLocation() %></p>
        <p class="profile-item"><span>Contact:</span> <%= c.getContact() %></p>
    </div>
    <div class="footer">
        <p>&copy; 2024 Customer Management System. All Rights Reserved.</p>
    </div>
</body>
</html>
