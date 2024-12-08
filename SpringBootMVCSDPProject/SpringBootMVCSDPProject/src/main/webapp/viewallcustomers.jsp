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
            background-color: #f9f9f9;
            color: #333;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 1rem;
        }
        main {
            margin: 2rem auto;
            padding: 2rem;
            max-width: 1200px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #4CAF50;
            text-align: center;
            margin-bottom: 1rem;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        table th {
            background-color: #4CAF50;
            color: white;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #f1f1f1;
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
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <header>
        <h1>Customer Management</h1>
    </header>
    <main>
        <div>
            <h2>Total Customers: <span style="color: #4CAF50;"><c:out value="${count}" /></span></h2>
        </div>
        <h3>View All Customers</h3>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>Email</th>
                    <th>Location</th>
                    <th>Contact No</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${customerlist}" var="customer">
                    <tr>
                        <td><c:out value="${customer.id}" /></td>
                        <td><c:out value="${customer.name}" /></td>
                        <td><c:out value="${customer.gender}" /></td>
                        <td><c:out value="${customer.dateofbirth}" /></td>
                        <td><c:out value="${customer.email}" /></td>
                        <td><c:out value="${customer.location}" /></td>
                        <td><c:out value="${customer.contact}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
    <%@include file="footer.jsp" %>
</body>
</html>
