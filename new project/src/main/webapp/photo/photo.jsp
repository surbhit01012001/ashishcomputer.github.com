<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

/* Gallery styling */
.gallery img {
    width: 200px;
    height: 300px;
    margin: 10px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.gallery img:hover {
    transform: scale(1.05);
    transition: transform 0.3s;
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

    <section id="gallery">
        <h2>Gallery</h2>
        <div class="gallery">
			<img src="<%= request.getContextPath() %>/image/banner 1.1.jpg" style="width: 400px; height: 300px;" alt="banner 1.1">
			<img src="<%= request.getContextPath() %>/image/banner 1.2.jpg" style="width: 200px; height: 300px;" alt="banner 1.2">
			<img src="<%= request.getContextPath() %>/image/banner 1.jpg" style="width: 200px; height: 300px;" alt="banner 1">
			<img src="<%= request.getContextPath() %>/image/banner 2.jpg" style="width: 200px; height: 300px;" alt="banner 2">
            <img src="<%= request.getContextPath() %>/image/banner 3.jpg" style="width: 200px; height: 300px;" alt="banner 3">
	        <img src="<%= request.getContextPath() %>/image/banner 4.jpg" style="width: 200px; height: 300px;" alt="banner 4">
	        <img src="<%= request.getContextPath() %>/image/banner 5.jpg" style="width: 200px; height: 300px;" alt="banner 5">
	        <img src="<%= request.getContextPath() %>/image/demo admit.jpg" style="width: 200px; height: 300px;" alt="demo admit">
	        <img src="<%= request.getContextPath() %>/image/demo marksheet.jpg" style="width: 200px; height: 300px;" alt="demo marksheet">
	        <img src="<%= request.getContextPath() %>/image/class room 1.jpg" style="width: 600px; height: 300px;" alt="class room 1">
	        <img src="<%= request.getContextPath() %>/image/class room 2.jpg" style="width: 600px; height: 300px;" alt="class room 2">
	         
        </div>
	</section>
	
	<footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
</body>
</html>