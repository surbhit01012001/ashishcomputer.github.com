<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, library.Appointment" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Panel - Seat Appointments</title>
</head>
<body>
    <jsp:include page="/nav_admin.jsp" />
    <h1>Seat Appointment Details</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Seat</th>
                <th>Appointment Date</th>
                <th>Start Time</th>
                <th>Last Time</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
                if (appointments != null && !appointments.isEmpty()) {
                    for (Appointment appointment : appointments) {
            %>
            <tr>
                <td><%= appointment.getFullName() %></td>
                <td><%= appointment.getSeat() %></td>
                <td><%= appointment.getAppointmentDate() %></td>
                <td><%= appointment.getStartTime() %></td>
                <td><%= appointment.getLastTime() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No appointments found.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
