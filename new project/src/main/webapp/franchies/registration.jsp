<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>student details</title>
</head>
<body>
    <h1>Student Registration Details</h1>

    <c:if test="${not empty errorMessage}">
        <p style="color:red;">${errorMessage}</p>
    </c:if>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
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
                <th>Roll Number</th>
                <th>delete</th>
                <th>update</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.guardianName}</td>
                    <td>${student.email}</td>
                    <td>${student.phone}</td>
                    <td>${student.altPhone}</td>
                    <td>${student.gender}</td>
                    <td>${student.dob}</td>
                    <td>${student.address}</td>
                    <td>${student.state}</td>
                    <td>${student.district}</td>
                    <td>${student.pincode}</td>
                    <td>${student.lastSchool}</td>
                    <td>${student.qualification}</td>
                    <td>${student.course}</td>
                    <td>${student.delete}</td>
                     <td>${student.update}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
