<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="library.Appointment" %>
<%@page import="java.util.List"%>
<html>
<head>
    <title>Admin Panel - Seat Appointments</title>
</head>
<body>
    <h1>Seat Appointments Details</h1>

    <% 
        // Retrieve the appointments list from the request
        List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");

        // Check if appointments are available
        if (appointments != null && !appointments.isEmpty()) {
    %>
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
                    // Loop through each appointment and display it in the table
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
                %>
            </tbody>
        </table>
    <% 
        } else {
    %>
        <p>No appointments available.</p>
    <% 
        }

        // Check for an error message
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
        <p style="color:red;"><%= errorMessage %></p>
    <% 
        }
    %>
</body>
</html>
