package library;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/setAppoint")
public class seatAppoint extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/new_project?useSSL=false&serverTimezone=UTC";
    private static final String user = "root";
    private static final String password = "Surbhit@1";
    
    public seatAppoint() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/library/seatAppoi.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("name");
        String seat = request.getParameter("seat");
        String selectDate = request.getParameter("appointment_date");
        String startTime = request.getParameter("appointment_start_time");
        String lastTime = request.getParameter("appointment_last_time");

        try {
            // Load MySQL driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection connection = DriverManager.getConnection(url, user, password)) {
                String sql = "INSERT INTO seatAppoint (name, seat, appointment_date, appointment_start_time, appointment_last_time) VALUES (?, ?, ?, ?, ?)";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, fullName);
                    statement.setString(2, seat);
                    statement.setString(3, selectDate);
                    statement.setString(4, startTime);
                    statement.setString(5, lastTime);

                    int rowsInserted = statement.executeUpdate();
                    if (rowsInserted > 0) {
                    	response.getWriter().println("SEAT APPOINT (CONTACT IN OFFICE STAFF)"); // Redirect to confirmation page
                    } else {
                        response.getWriter().println("ERROR 404.");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());  
        }
    }
}
