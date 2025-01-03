<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    
</head>
<body>
     <jsp:include page="/nav_admin.jsp" />


    <div class="container">
        <!-- User Management Section -->
        <div class="section" id="user-management">
            <h2>User Management</h2>
            <p>Manage students, instructors, and admin users.</p>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin_panel_view'">View Users</button>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/student'">Add New User</button>
        </div>

        <!-- Course Management Section -->
        <div class="section" id="course-management">
            <h2>Course Management</h2>
            <p>Manage course offerings, schedules, and enrollment.</p>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin/courses'">View Courses</button>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin/add_course'">Add New Course</button>
        </div>

        <!-- Library Management Section -->
        <div class="section" id="library-management">
            <h2>Library Management</h2>
            <p>Oversee seat allotment and resources.</p>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin/library'">Manage Library</button>
        </div>

        <!-- System Settings Section -->
        <div class="section" id="settings">
            <h2>System Settings</h2>
            <p>Configure system preferences and settings.</p>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin/settings'">Edit Settings</button>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Ashish Computer Institute & Library. All rights reserved.</p>
    </footer>
</body>
</html>
