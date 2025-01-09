<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <style>
        /* Basic styles for the navigation bar */
        nav {
            background-color: #333;
            overflow: hidden;
        }
        nav a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover, .dropdown:hover .dropbtn {
            background-color: #555;
        }
        /* Dropdown container */
        .dropdown {
            float: left;
            overflow: hidden;
        }
        /* Dropdown button */
        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }
        /* Dropdown content */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content a:hover {
            background-color: #ddd;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    
    

    <div class="container">
        <!-- Content Sections -->
        <div class="section" id="course-management">
            <h2>Course Management</h2>
            <p>Manage course offerings, schedules, and enrollment.</p>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin/courses'">View Courses</button>
            <button class="button" onclick="window.location.href='<%=request.getContextPath()%>/admin/add_course'">Add New Course</button>
        </div>
        <!-- Additional Sections as needed -->
    </div>

    <footer>
        <p>&copy; 2025 Ashish Computer Institute & Library. All rights reserved.</p>
    </footer>
</body>
</html>
