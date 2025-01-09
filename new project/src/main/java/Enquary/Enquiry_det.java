package Enquary;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/enquary")
public class Enquiry_det extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/new_project";
    private static final String user = "root";
    private static final String password = "Surbhit@1";

    public Enquiry_det() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirecting to home.jsp for the GET request
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set response content type to HTML
        response.setContentType("text/html");

        // Get the form parameters from the HTTP request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        // Basic validation (ensure no field is null or empty)
        if (name == null || email == null || phone == null || message == null ||
            name.isEmpty() || email.isEmpty() || phone.isEmpty() || message.isEmpty()) {
            request.setAttribute("resultMessage", "All fields are required. .");
            request.getRequestDispatcher("home.jsp").forward(request, response);
            return;
        }

        try {
            // Load MySQL driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing database connection
            try (Connection connection = DriverManager.getConnection(url, user, password)) {
                String sql = "INSERT INTO enquiry (name, email, phone, message) VALUES (?, ?, ?, ?)";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    // Setting the values for the prepared statement
                    statement.setString(1, name);
                    statement.setString(2, email);
                    statement.setString(3, phone);
                    statement.setString(4, message);

                    // Executing the update query
                    int rowsInserted = statement.executeUpdate();
                    if (rowsInserted > 0) {
                        // Success message
                        request.setAttribute("resultMessage", "Thank you .");
                    } else {
                        // Failure message
                        request.setAttribute("resultMessage", " try again later.");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception for debugging
            request.setAttribute("resultMessage", " Please try again later.");
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Log the exception for debugging
            
        } finally {
            // Forwarding to home.jsp with the result message
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
    }
}
