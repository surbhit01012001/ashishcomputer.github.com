<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Team</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        line-height: 1.8;
        background-color: #f4f4f9;
        color: #333;
    }

    .container {
        width: 80%;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #004080;
        font-size: 2.5em;
        margin-bottom: 20px;
    }

    .team-container {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 30px;
        margin-top: 30px;
    }

    .team-member {
        width: 30%;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        background-color: #ffffff;
    }

    .team-member img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 15px;
    }

    .team-member h3 {
        color: #0066cc;
        font-size: 1.5em;
        margin: 10px 0;
    }

    .team-member p {
        font-size: 1.1em;
        color: #555;
    }

    footer {
        text-align: center;
        margin-top: 30px;
        padding: 10px;
        background-color: #004080;
        color: white;
    }

</style>
</head>
<body>
 <jsp:include page="/navfile.jsp" />
 <h1>Meet Our Team</h1>
<div class="container">
   
    
    <div class="team-container">
        <!-- Team Member 1 -->
        <div class="team-member">
            <img src="<%= request.getContextPath() %>/image/SURBHIT IMG.png" alt="Surbhit Image">
            <h3>SURBHIT KUMAR</h3>
            <p>Founder & Teacher</p>
            <p>Surbhit Kumar is the visionary behind Ashish Computer Institute and leads the organization towards a successful future in IT education.</p>
        </div>

        <!-- Team Member 2 -->
        <div class="team-member">
           <img src="<%= request.getContextPath() %>/image/aman_img.jpg" alt="Surbhit Image">
            <h3>AMAN KUMAR</h3>
            <p>Manager</p>
            <p>Aman Kumar oversees the development of cutting-edge technologies to enhance the educational experience at Ashish Computer Institute.</p>
        </div>

        <!-- Team Member 3 -->
        <div class="team-member">
            <img src="<%= request.getContextPath() %>/image/chandan_img.jpg" alt="CHANDAN IMAGE">
            <h3>CHANDAN KUMAR</h3>
            <p>Teacher</p>
            <p>Chandan Kumar ensures the quality of education and training programs provided by Ashish Computer Institute to all students.</p>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2024 Ashish Computer Institute | All rights reserved</p>
</footer>

</body>
</html>
