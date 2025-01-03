<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify Student Roll Number</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        margin-top: 50px;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }
    label {
        font-size: 16px;
    }
    input[type="text"] {
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 100%;
    }
    button {
        padding: 10px;
        font-size: 14px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #45a049;
    }
    .result {
        margin-top: 20px;
        padding: 15px;
        background-color: #f8f8f8;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .result p {
        margin: 0;
        font-size: 16px;
    }
    .error {
        color: red;
        font-weight: bold;
    }
    
</style>
</head>
<body>
	 <jsp:include page="/navfile.jsp" />
<div class="container">
    <h1>Verify Student </h1>
    <form action="verify" method="get">
        <input type="hidden" name="action" value="verify">
        <label for="roll_number">Enter Roll Number:</label>
        <input type="text" name="roll_number" placeholder="ENTER YOUR ROLL NUMBER" required>
        <button type="submit">Verify</button>
    </form>

    <% 
        // Fetch the verification result from request attributes
        String result = (String) request.getAttribute("verificationResult");
        if (result != null) {
    %>
        <div class="result">
            <p><%= result %></p>
        </div>
    <% 
        } else {
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
    %>
        <div class="result">
            <p class="error"><%= errorMessage %></p>
        </div>
    <% 
            }
        }
    %>
</div>

</body>
</html>
