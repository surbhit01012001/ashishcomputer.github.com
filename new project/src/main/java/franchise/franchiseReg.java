package franchise;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/reg_1")
public class franchiseReg extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/new_project";
    private static final String user = "root";
    private static final String password = "Surbhit@1";

    public franchiseReg() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/franchise/registration.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String instituteName = request.getParameter("institute_name");
        String ownerName = request.getParameter("owner_name");
        String gender = request.getParameter("gender");
        String phoneNumber = request.getParameter("phone_number");
        String emailId = request.getParameter("email_id");
        String address = request.getParameter("address");
        String pinCode = request.getParameter("pin_code");
        String state = request.getParameter("state");
        String district = request.getParameter("district");

        String resultMessage = "";
        

        try {
            // Load MySQL driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver");

        // Database insertion logic
        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            String sql = "INSERT INTO reg_1 (institute_name, owner_name, gender, phone_number, email_id, address, pin_code, state, district) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, instituteName);
                statement.setString(2, ownerName);
                statement.setString(3, gender);
                statement.setString(4, phoneNumber);
                statement.setString(5, emailId);
                statement.setString(6, address);
                statement.setString(7, pinCode);
                statement.setString(8, state);
                statement.setString(9, district);

                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    resultMessage = "Registration successful!";
                } else {
                    resultMessage = "Server error: Unable to register.";
                }
            }
        }
        } catch (Exception e) {
            e.printStackTrace();
            resultMessage = "Error: " + e.getMessage();
        }

        // Set the result message in the request scope
        request.setAttribute("resultMessage", resultMessage);

        // Forward back to the registration page
        request.getRequestDispatcher("/WEB-INF/franchise/registration.jsp").forward(request, response);
        }
}

