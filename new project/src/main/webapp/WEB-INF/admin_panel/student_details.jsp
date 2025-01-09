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
    </style>
</head>
<body>
    <jsp:include page="/nav_admin.jsp" />
    <h1>Student Registration Details</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Roll Number</th>
                <th>Name</th>
                <th>Guardian Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Alternate Phone</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Address</th>
                <th>State</th>
                <th>District</th>
                <th>Pincode</th>
                <th>Last School</th>
                <th>Qualification</th>
                <th>Course</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");
            if (students != null && !students.isEmpty()) {
                for (Student student : students) {
        %>
            <tr>
                <td><%= student.getId() %></td>
                <td><%= student.getRollNumber() %></td>
                <td><%= student.getName() %></td>
                <td><%= student.getGuardianName() %></td>
                <td><%= student.getEmail() %></td>
                <td><%= student.getPhone() %></td>
                <td><%= student.getAltPhone() %></td>
                <td><%= student.getGender() %></td>
                <td><%= student.getDob() %></td>
                <td><%= student.getAddress() %></td>
                <td><%= student.getState() %></td>
                <td><%= student.getDistrict() %></td>
                <td><%= student.getPincode() %></td>
                <td><%= student.getLastSchool() %></td>
                <td><%= student.getQualification() %></td>
                <td><%= student.getCourse() %></td>
                <td class="actions">
                    <a href="delete?roll_number=<%= student.getRollNumber() %>">DELETE</a>
                    <a href="update?roll_number=<%= student.getRollNumber() %>">UPDATE</a>
                </td>
            </tr>
        <%
                }
                
            } else {
        %>
            <tr>
                <td colspan="17" class="no-data">No student data available.</td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</body>
</html>
