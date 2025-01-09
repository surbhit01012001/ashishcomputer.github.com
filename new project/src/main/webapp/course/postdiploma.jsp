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
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
    }

    .course-container {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 20px;
      padding: 20px;
    }

    .course-card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      width: 300px;
      padding: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .course-header {
      font-size: 24px;
      font-weight: bold;
      color: white;
      background-color: #2c3e50;
      padding: 10px;
      border-radius: 5px;
      margin-bottom: 10px;
    }

    .course-card h2 {
      font-size: 18px;
      color: #e74c3c;
    }

    .course-card p {
      font-size: 14px;
      color: #333;
    }

    .course-card ul {
      list-style: none;
      padding: 0;
      margin: 10px 0;
    }

    .course-card ul li {
      text-align: left;
      color: #555;
      margin: 5px 0;
    }

    button {
      background-color: #2c3e50;
      color: white;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 14px;
    }

    button:hover {
      background-color: #e74c3c;
    }
	
	
    footer {
        text-align: center;
        margin-top: 30px;
        padding: 10px;
        background-color: #004080;
        color: white;
    }
	
	</style>
<body>
	
	<jsp:include page="/navfile.jsp" />
 <h2> POST DIPLOMA COURSE</h2>
	
<!-- Example of additional sections for these links -->
	<div class="course-container">
		    <div class="course-card">
		      <div class="course-header">PGDCA</div>
		      <h2> Post Diploma in Computer Application</h2>
		      <p><strong>Duration:</strong> 12 months</p>
		      <ul>
		        <li>MS-OFFICE 2019</li>
		        <li>DTP</li>
		        <li>INTERNET</li>
		        <LI>MANY TOPIC THIS CHAPATER</LI>
		      </ul>
		      <button>Read more</button>
    </div>
    </div>
     <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
</body>
</html>