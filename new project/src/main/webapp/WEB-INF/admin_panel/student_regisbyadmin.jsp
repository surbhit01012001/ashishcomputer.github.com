<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="admin_panell.Student" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 60%;
            border-collapse: collapse;
            margin: 0 auto;
        }

        th, td {
            padding: 1px;
            text-align: center;
            border: 0.5px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f2f2f2;
        }

        tr:hover td {
            background-color: #ddd;
        }

        a {
            text-decoration: none;
            padding: 2px 5px;
            background-color: #ff4d4d;
            color: white;
            border-radius: 2px;
            margin-right: 2px;
        }

        a:hover {
            background-color: #cc0000;
        }

        .actions {
            display: flex;
            justify-content: space-around;
        }

        .no-data {
            text-align: center;
            font-style: italic;
            color: #777;
            padding: 20px;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .form-container button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <jsp:include page="/nav_admin.jsp" />
    <h1>Update Student Details</h1>

    <%
        String rollNumber = request.getParameter("roll_number");
        List<Student> students = (List<Student>) request.getAttribute("students");
        Student student = null;

        // If student exists, get the first student (it should only be one)
        if (students != null && !students.isEmpty()) {
            student = students.get(0);
        }
    %>

    <%
        if (student != null) {
    %>

    <form action="update" method="POST" class="form-container">
        <input type="hidden" name="roll_number" value="<%= student.getRollNumber() %>" />

        <label for="name">Name:</label>
        <input type="text" name="name" value="<%= student.getName() %>" required />

        <label for="guardian_name">Guardian Name:</label>
        <input type="text" name="guardian_name" value="<%= student.getGuardianName() %>" required />

        <label for="email">Email:</label>
        <input type="email" name="email" value="<%= student.getEmail() %>" required />

        <label for="phone">Phone:</label>
        <input type="text" name="phone" value="<%= student.getPhone() %>" required />

        <label for="alt_phone">Alternate Phone:</label>
        <input type="text" name="alt_phone" value="<%= student.getAltPhone() %>" />

        <label for="gender">Gender:</label>
        <input type="text" name="gender" value="<%= student.getGender() %>" required />

        <label for="dob">DOB:</label>
        <input type="date" name="dob" value="<%= student.getDob() %>" required />

        <label for="address">Address:</label>
        <input type="text" name="address" value="<%= student.getAddress() %>" required />

        <label for="state">State:</label>
        <input type="text" name="state" value="<%= student.getState() %>" required />

        <label for="district">District:</label>
        <input type="text" name="district" value="<%= student.getDistrict() %>" required />

        <label for="pincode">Pincode:</label>
        <input type="text" name="pincode" value="<%= student.getPincode() %>" required />

        <label for="last_school">Last School:</label>
        <input type="text" name="last_school" value="<%= student.getLastSchool() %>" required />

        <label for="qualification">Qualification:</label>
        <input type="text" name="qualification" value="<%= student.getQualification() %>" required />

        <label for="course">Course:</label>
        <input type="text" name="course" value="<%= student.getCourse() %>" required />

        <button type="submit">Update Student</button>
    </form>

    <%
        } else {
    %>
        <p>No student found with the provided roll number.</p>
    <%
        }
    %>
</body>
</html>
