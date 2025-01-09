package admin_panell;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import library.Appointment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/viewseat")
public class viewSeatappoint extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection details
    private static final String URL = "jdbc:mysql://localhost:3306/new_project?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "Surbhit@1";

    public viewSeatappoint() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Appointment> appointments = new ArrayList<>();

        // Query to retrieve appointments from the database
        String sql = "SELECT name, seat, appointment_date, appointment_start_time, appointment_last_time FROM seatAppoint";

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            // Process the result set and add appointments to the list
            while (resultSet.next()) {
                Appointment appointment = new Appointment();
                appointment.setFullName(resultSet.getString("name"));
                appointment.setSeat(resultSet.getString("seat"));
                appointment.setAppointmentDate(resultSet.getString("appointment_date"));
                appointment.setStartTime(resultSet.getString("appointment_start_time"));
                appointment.setLastTime(resultSet.getString("appointment_last_time"));

                appointments.add(appointment);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error fetching appointments: " + e.getMessage());
        }

        // Set the appointments list as a request attribute to be accessed in the JSP
        request.setAttribute("appointments", appointments);

        // Forward the request to the JSP for rendering
        request.getRequestDispatcher("/WEB-INF/admin_panel/viewSeatappint.jsp").forward(request, response);
    }
}
