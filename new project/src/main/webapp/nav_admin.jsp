<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

</style>
<body>
	<header>
        <h1> ASHISH COMPUTER INSTITUTE ADMIN PANEL</h1>
    </header>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
    <nav>
        <a href="#user-management">User Management</a>
        <a href="#course-management">Course Management</a>
        <a href="#library-management">Library Management</a>
        <a href="#settings">System Settings</a>
        <a href="<%=request.getContextPath()%>/logout">Logout</a>
    </nav>
</body>
</html>