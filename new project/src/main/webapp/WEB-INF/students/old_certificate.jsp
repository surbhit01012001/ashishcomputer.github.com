<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

 <style>
           body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }


        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 350px;
        }

        h1 {
            color: #333333;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #555555;
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 14px;
            margin-bottom: 20px;
        }

        input[type="text"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #0056b3;
        }
         footer {
            text-align: center;
            margin-top: auto;
            padding: 15px;
            background-color: #004080;
            color: white;
            width: 100%;
        }
    </style>

<body>
 <jsp:include page="/navfile.jsp" />
   <h1>OLD CERTIFICATE VERIFICATION  </h1>
  <div class="container">
  
    <form action="old_certi"  method="post">
        <input type="hidden" name="action" value="verify">
        <label for="roll_number">Enter Roll Number:</label>
        <input type="text" name="roll_number" placeholder="ENTER YOUR CERTIFICATE NUMBER" required>
        <button type="submit">Verify</button>
    </form>
    </div>
     <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
</body>
</html>