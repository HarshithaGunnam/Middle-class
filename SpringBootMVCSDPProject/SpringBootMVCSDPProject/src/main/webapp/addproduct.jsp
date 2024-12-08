<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e8f0f2;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        /* Container for Form */
        .form-container {
            background-color: #ffffff;
            width: 100%;
            max-width: 600px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        /* Form Heading */
        h3 {
            text-align: center;
            color: #555;
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

        /* Input field styling */
        input[type="text"], input[type="email"], input[type="date"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
            background-color: #f9f9f9;
        }

        /* Radio Buttons */
        .gender-label {
            font-size: 1rem;
            color: #555;
        }

        .gender-options {
            margin-bottom: 20px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        /* Button Styling */
        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 12px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
        }

        /* Submit button style */
        input[type="submit"] {
            background-color: #005f6b;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #00bcd4;
        }

        /* Reset button style */
        input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #e53935;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                margin: 20px;
            }

            input[type="submit"], input[type="reset"] {
                width: 100%;
                margin-top: 15px;
            }

            .gender-options {
                display: block;
            }
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3>Add Product</h3>
        <form method="post" action="insertproduct" enctype="multipart/form-data">
            <label>Product Name</label>
            <input type="text" name="pname" required />

            <label>Product Cost</label>
            <input type="number" name="pcost" step="0.01" required />
            
            <label>Product Description</label>
            <textarea name="pdescription" required></textarea>
            
            <label>Product Image</label>
            <input type="file" name="pimage" required />

            <input type="submit" value="AddProduct" />
            <input type="reset" value="Clear" />
        </form>
    </div>
    <div>
    <%@ include file="footer.jsp" %>
    </div>
</body>
</html>