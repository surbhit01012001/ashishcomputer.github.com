<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<STYLE>
	
/* Navigation styling */
nav {
    display: flex;
    justify-content: center;
    background-color: rgb(255, 0, 0); /* Same color as header */
    padding:5px;
    position: relative; /* पोज़िशन सेट करें */
    z-index: 10; /* नेविगेशन बार को बैनर के ऊपर लाने के लिए */
}

nav a {
    color: white; /* All nav links will be white */
    text-decoration: none;
    padding: 10px 15px;
    margin: 0 5px;
    transition: background-color 0.3s;
}

nav a:hover {
    background-color: #666; /* Hover color */
}


		
/* Dropdown Menu (optional) */
.dropdown-content a {
    color: white; /* Text color to white */
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    background-color: #444; /* Set dropdown background color to match the nav bar */
}

.dropdown-content a:hover {
    background-color: #666; /* Change background color when hovering over items */
}

/* Dropdown Content */
.dropdown-content {
    display: none;
    opacity: 0;
    position: absolute;
    background-color: #444; /* Set dropdown background color to match the nav bar */
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
    padding: 10px;
    transition: opacity 0.3s ease-in-out;
}

/* Show dropdown content when hovering */
.dropdown:hover .dropdown-content {
    display: block;
    opacity: 1;
}

/* Dropdown Button */
.dropbtn {
    background-color:rgb(255, 0, 0); /* Set dropdown button background to match nav color */
    color: white; /* Text color remains white for contrast */
    padding: 12px 16px;
    font-size: 1.1rem;
    border: none;
    cursor: pointer;
    width: 100%;
    text-align: left;
    display: block;
}

/* Dropdown Button hover effect */
.dropbtn:hover {
    background-color: #666; /* Change background color on hover */
}
</STYLE>
<body>
	<header style="display: flex; align-items: LEFT; justify-content: LEFT;">
        <!-- Logo -->
        <img src="<%=request.getContextPath()%>/image/institute_logo.jpg" alt="Institute Logo" style="height: 80px; margin-right: 15px;">
        <!-- Institute Name -->
        <h1 style="color: white; margin: 0;">ASHISH COMPUTER INSTITUTE & LIBRARY</h1>
    </header>
	 <!-- navbar.jsp -->
<nav>
    <a href="<%=request.getContextPath()%>/home.jsp">Home</a>
    <div class="dropdown">
        <button class="dropbtn">About Us</button>
        <div class="dropdown-content">
            <a href="<%=request.getContextPath()%>/about/organization.jsp">ORGANIZATION PROFILE</a>
            <a href="<%=request.getContextPath()%>/about/mission.jsp">OUR MISSION</a>
            <a href="<%=request.getContextPath()%>/about/director.jsp">DIRECTOR MESSAGE</a>
            <a href="<%=request.getContextPath()%>/about/team.jsp">TEAM</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Franchiees</button>
        <div class="dropdown-content">
		 <a href="<%=request.getContextPath()%>/reg_1">CENTER REGISTRATION</a>


            <a href="#center_process">CENTER PROCESS</a>
        </div>
    </div>
    
    <div class="dropdown">
        <button class="dropbtn">Library</button>
        <div class="dropdown-content">
        <a href="<%=request.getContextPath()%>/setAppoint">SEAT ALLOTMENT</a>
            <a href="#center_process">LIBRARY IMAGE</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Courses</button>
        <div class="dropdown-content">
            <a href="<%=request.getContextPath()%>/course/diploma.jsp">DIPLOMA COURSE</a>
             <a href="<%=request.getContextPath()%>/course/postdiploma.jsp"> POST DIPLOMA COURSE</a>
            <a href="<%=request.getContextPath()%>/course/shortcourse.jsp"> SHORT TERM COURSE</a>
            <a href="<%=request.getContextPath()%>/course/tally.jsp"> TALLY</a>
            <a href="<%=request.getContextPath()%>/course/programming.jsp"> PROGRAMMING</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Student</button>
        <div class="dropdown-content">
           <a href="<%=request.getContextPath()%>/student"> STUDENT REGISTRATION</a>
           <a href="<%=request.getContextPath()%>/verify"> STUDENT VERIFICATION</a>
            <a href="<%=request.getContextPath()%>/logi"> STUDENT LOGIN</a>
            <a href="<%=request.getContextPath()%>/marksheet_ver"> MARKSHEET VERIFICATION</a>
            <a href="<%=request.getContextPath()%>/certificate_ver">CERTIFICATE VERIFICATION</a>
            <a href="<%=request.getContextPath()%>/old_certi"> OLD CERTIFICATE VERIFICATION</a>
            <a href="<%=request.getContextPath()%>/admit_car">ADMIT CARD</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Login</button>
        <div class="dropdown-content">
            <a href="<%=request.getContextPath()%>/admin_lo">ADMIN LOGIN</a>
            <a href="#center_login">CENTER LOGIN</a>
            <a href="#employee">EMPLOYEE LOGIN</a>
        </div>
    </div>
    <div class="dropdown">
        <button class="dropbtn">Gallery</button>
        <div class="dropdown-content">
          <a href="<%=request.getContextPath()%>/photo/photo.jsp"> OUR PHOTO</a>
             <a href="<%=request.getContextPath()%>/video/video.jsp"> OUR VIDEOS</a>
        </div>
    </div>
    <a href="#listfranchie">List of Franchies</a>
   <a href="<%=request.getContextPath()%>/contact/contact.jsp"> CONTACTS</a>
</nav>


</body>
</html>