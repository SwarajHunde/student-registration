<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #eef1f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        width: 450px;
        background: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 4px 20px rgba(0,0,0,0.1);
        text-align: left;
        animation: fadein 0.5s ease;
    }

    @keyframes fadein {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h1 {
        text-align: center;
        color: #2f80ed;
        margin-bottom: 25px;
    }

    .label {
        font-weight: bold;
        color: #333;
        margin-top: 10px;
    }

    .value {
        background: #f7f9fc;
        padding: 10px;
        border-radius: 8px;
        margin-bottom: 12px;
        border: 1px solid #ddd;
    }

    .back-btn {
        display: block;
        width: 100%;
        margin-top: 20px;
        padding: 12px;
        text-align: center;
        background: #007bff;
        color: white;
        border-radius: 8px;
        text-decoration: none;
        font-size: 16px;
        transition: 0.3s;
    }

    .back-btn:hover {
        background: #0056d2;
    }
</style>
</head>

<body>

<div class="card">
    <h1>Registration Successful 🎉</h1>

    <div class="label">Name:</div>
    <div class="value"><%= request.getAttribute("name") %></div>

    <div class="label">Email:</div>
    <div class="value"><%= request.getAttribute("email") %></div>

    <div class="label">Age:</div>
    <div class="value"><%= request.getAttribute("age") %></div>

    <div class="label">Address:</div>
    <div class="value"><%= request.getAttribute("address") %></div>

    <a class="back-btn" href="/springMVC/index.html">Register Another Student</a>
</div>

</body>
</html>
