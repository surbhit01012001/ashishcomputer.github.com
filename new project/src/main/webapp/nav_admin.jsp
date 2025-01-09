<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	
</style>
<body>
	 <h1> ASHISH COMPUTER INSTITUTE ADMIN PANEL</h1>
    
    <nav>
    <a href="<%=request.getContextPath()%>/admin_profile/admin.jsp">Home</a>
        <div class="dropdown">
            <button class="dropbtn">User Management</button>
            <div class="dropdown-content">
                <a href="<%=request.getContextPath()%>/admin_panel_view">View Users</a>
                <a href="<%=request.getContextPath()%>/reg_admin">Add New User</a>
                 <a href="#settings">Manage Roles</a>
            </div>
        </div>
         <div class="dropdown">
            <button class="dropbtn">Course Management</button>
            <div class="dropdown-content">
                 <a href="#settigs">View Course</a>
                 <a href="#settngs">Add Course</a>
                 <a href="#setting">Manage Roles</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Library Management</button>
            <div class="dropdown-content">
                <a href="<%=request.getContextPath()%>/viewseat">View Seat</a>
                <a href="<%=request.getContextPath()%>/student">Add New Seat</a>
                
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Enquiry Details</button>
            <div class="dropdown-content">
                <a href="<%=request.getContextPath()%>/viewEnquiries">Enquiry details</a>
                
            </div>
        </div>
       	 <a href="#settings">System Settings</a>
        <a href="<%=request.getContextPath()%>/admin.LogOut">Logout</a>
    </nav>
</body>
</html>