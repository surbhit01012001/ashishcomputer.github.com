package admin_panell;

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
import java.sql.Statement;

@WebServlet("/reg_admin")
public class student_reg2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/new_project";
    private static final String user = "root";
    private static final String password = "Surbhit@1";

    public student_reg2() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/admin_panel/student_Registration2.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String name = request.getParameter("name");
        String guardianName = request.getParameter("guardian_name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String altPhone = request.getParameter("alt_phone");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        String district = request.getParameter("district");
        String pincode = request.getParameter("pincode");
        String lastSchool = request.getParameter("last_school");
        String qualification = request.getParameter("qualification");
        String course = request.getParameter("course");

        try {
            // Load MySQL driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection using try-with-resources
            try (Connection connection = DriverManager.getConnection(url, user, password)) {
                
                // Step 1: Insert student data using try-with-resources for PreparedStatement
                String sqlInsert = "INSERT INTO student_Reg (name, guardian_name, email, phone, alt_phone, gender, dob, address, state, district, pincode, last_school, qualification, course) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                try (PreparedStatement insertStatement = connection.prepareStatement(sqlInsert, Statement.RETURN_GENERATED_KEYS)) {
                    // Set parameters for the query
                    insertStatement.setString(1, name);
                    insertStatement.setString(2, guardianName);
                    insertStatement.setString(3, email);
                    insertStatement.setString(4, phone);
                    insertStatement.setString(5, altPhone);
                    insertStatement.setString(6, gender);
                    insertStatement.setString(7, dob);
                    insertStatement.setString(8, address);
                    insertStatement.setString(9, state);
                    insertStatement.setString(10, district);
                    insertStatement.setString(11, pincode);
                    insertStatement.setString(12, lastSchool);
                    insertStatement.setString(13, qualification);
                    insertStatement.setString(14, course);

                    // Execute the insert query
                    int rowsInserted = insertStatement.executeUpdate();

                    if (rowsInserted > 0) {
                        // Step 2: Get the generated ID for the inserted record
                        try (ResultSet generatedKeys = insertStatement.getGeneratedKeys()) {
                            if (generatedKeys.next()) {
                                int generatedId = generatedKeys.getInt(1);

                                // Step 3: Update the roll number using try-with-resources
                                String sqlUpdateRollNumber = "UPDATE student_Reg SET roll_number = CONCAT('ACI339514101', LPAD(?, 5, '0')) WHERE id = ?";
                                try (PreparedStatement updateStatement = connection.prepareStatement(sqlUpdateRollNumber)) {
                                    updateStatement.setInt(1, generatedId);  // Padded ID
                                    updateStatement.setInt(2, generatedId);  // Set the roll number for the inserted record
                                    updateStatement.executeUpdate();
                                }

                                // Step 4: Send response to the user
                                request.getRequestDispatcher("/WEB-INF/admin_panel/student_Registration2.jsp").forward(request, response);
                            }
                        }
                    } else {
                        response.getWriter().println("Server error: Unable to insert student data.");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

	public static void main(String[] args) {
		
	}
}
