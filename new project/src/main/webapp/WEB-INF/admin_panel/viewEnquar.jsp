<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, Enquary.Enquiry" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Enquiries</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
 <jsp:include page="/nav_admin.jsp" />
    <h1>Enquiries</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Message</th>
                <th>Submission Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Enquiry> enquiries = (List<Enquiry>) request.getAttribute("enquiries");
                if (enquiries != null && !enquiries.isEmpty()) {
                    for (Enquiry enquiry : enquiries) {
            %>
            <tr>
                <td><%= enquiry.getId() %></td>
                <td><%= enquiry.getName() %></td>
                <td><%= enquiry.getEmail() %></td>
                <td><%= enquiry.getPhone() %></td>
                <td><%= enquiry.getMessage() %></td>
                <td><%= enquiry.getSubmissionDate() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6">No enquiries found.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
