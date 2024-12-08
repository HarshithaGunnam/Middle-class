<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD - Spring Boot Demo</title>
    <style>
        /* Reset some default styles */
        body, h2, div, a {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Use Flexbox for page layout */
        html, body {
            height: 100%; /* Make sure the body takes full height */
            display: flex;
            flex-direction: column;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
            flex: 1; /* This ensures the body grows to fill the available space */
        }

        /* Page Header (Navbar) */
        nav {
            display: flex;
            justify-content: center;
            background-color: #005f6b;
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        nav a {
            text-decoration: none;
            color: white;
            padding: 10px 20px;
            margin: 0 15px;
            font-size: 1.2em;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #00bcd4;
        }

        /* Page Header (Title) */
        h2 {
            color: #444;
            font-size: 2.5em;
            font-weight: 600;
            margin-top: 50px;
            text-align: center;
            padding-bottom: 20px;
            border-bottom: 2px solid #ccc;
        }

        /* Content Section */
        .content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 30px;
            text-align: center;
        }

        .content p {
            font-size: 1.5em;
            color: #666;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
            }
            
            nav a {
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <nav>
        <a href="customerhome">Home</a>
        <a href="customerprofile">My Profile</a>
        <a href="updateprofile">Update Profile</a>
        <a href="customerlogin">Logout</a>
    </nav>
</body>
</html>
