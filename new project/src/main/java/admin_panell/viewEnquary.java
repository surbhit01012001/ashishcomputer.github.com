package admin_panell;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Enquary.Enquiry;

// Servlet to handle requests for viewing enquiries
@WebServlet("/viewEnquiries")
public class viewEnquary extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String URL = "jdbc:mysql://localhost:3306/new_project";
    private static final String USER = "root";
    private static final String PASSWORD = "Surbhit@1";

    public viewEnquary() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Enquiry> enquiries = new ArrayList<>();

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement statement = connection.prepareStatement("SELECT * FROM enquiry");
                 ResultSet resultSet = statement.executeQuery()) {

                // Map result set to a list of Enquiry objects
                while (resultSet.next()) {
                    Enquiry enquiry = new Enquiry();
                    enquiry.setId(resultSet.getInt("id"));
                    enquiry.setName(resultSet.getString("name"));
                    enquiry.setEmail(resultSet.getString("email"));
                    enquiry.setPhone(resultSet.getString("phone"));
                    enquiry.setMessage(resultSet.getString("message"));
                    enquiry.setSubmissionDate(resultSet.getTimestamp("submission_date"));
                    enquiries.add(enquiry);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error fetching enquiries: " + e.getMessage());
        }

        // Set the enquiries list as a request attribute
        request.setAttribute("enquiries", enquiries);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin_panel/viewEnquar.jsp");
        dispatcher.forward(request, response);
    }
}
