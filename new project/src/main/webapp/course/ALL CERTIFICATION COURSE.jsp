<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Course PDF</title>
</head>
<body>
    <h2>ASHISH COMPUTER INSTITUTE ALL REGISTER COURSE BY GOV.</h2>

    <!-- Display the PDF in the browser -->
    <object data="<%= request.getContextPath() %>/pdf/ashish_computer_course.pdf" type="application/pdf" width="100%" height="800px">
        <p>Your browser does not support PDFs. Please <a href="<%= request.getContextPath() %>/pdf/ashish_computer_course.pdf">download the PDF</a>.</p>
    </object>
   
</body>
</html>
