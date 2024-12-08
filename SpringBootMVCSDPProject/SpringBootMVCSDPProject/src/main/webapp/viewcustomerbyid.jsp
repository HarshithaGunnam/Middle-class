<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Customer by ID</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Container Styling */
        .form-container {
            background-color: #ffffff;
            width: 100%;
            max-width: 500px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        /* Heading */
        h3 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
            font-size: 1.8em;
        }

        /* Label Styling */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 1rem;
            color: #555;
        }

        /* Select Dropdown Styling */
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            background-color: #f9f9f9;
        }

        /* Buttons */
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                margin: 20px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="form-container">
        <h3>View Customer By ID</h3>
        <form method="post" action="displaycustomer">
            <label for="customer-id">Select Customer ID</label>
            <select name="id" id="customer-id" required>
                <option value="" disabled selected>--- Select ---</option>
                <c:forEach items="${customerlist}" var="customer">
                    <option value="${customer.id}">${customer.id} - ${customer.name}</option>
                </c:forEach>
            </select>
            <input type="submit" value="View" />
        </form>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
