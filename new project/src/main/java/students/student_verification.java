package students;

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

@WebServlet("/verify")
public class student_verification extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/new_project";
    private static final String user = "root";
    private static final String password = "Surbhit@1";

    public student_verification() {
        super();
    }

    // Handle GET requests
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if we are verifying by roll number
        String action = request.getParameter("action");
        
        if ("verify".equals(action)) {
            // Verify student details by roll number
            verifyStudentByRollNumber(request, response);
        } else {
            // Handle other actions or display the registration form
            request.getRequestDispatcher("/WEB-INF/students/student_Verification.jsp").forward(request, response);
        }
    }

    // Method to verify student details by roll number
    private void verifyStudentByRollNumber(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String rollNumber = request.getParameter("roll_number");

        try {
            // Load MySQL driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            try (Connection connection = DriverManager.getConnection(url, user, password)) {

                // Step 1: Fetch student data based on roll number
                String sqlSelect = "SELECT * FROM student_Reg WHERE roll_number = ?";
                
                try (PreparedStatement selectStatement = connection.prepareStatement(sqlSelect)) {
                    // Set parameter for roll number
                    selectStatement.setString(1, rollNumber);

                    try (ResultSet resultSet = selectStatement.executeQuery()) {
                        if (resultSet.next()) {
                            // If student is found, display details
                            String name = resultSet.getString("name");
                            String guardianName = resultSet.getString("guardian_name");
                            String gender = resultSet.getString("gender");
                            String dob = resultSet.getString("dob");
                            String address = resultSet.getString("address");

                            response.getWriter().println("Student Details: ");
                            response.getWriter().println("Name: " + name);
                            response.getWriter().println("Guardian Name: " + guardianName);
                            response.getWriter().println("Gender: " + gender);
                            response.getWriter().println("Date of Birth: " + dob);
                            response.getWriter().println("Address: " + address);
                        } else {
                            response.getWriter().println("not student register.");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

}
