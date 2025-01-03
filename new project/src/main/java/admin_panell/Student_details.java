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
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/admin_panel_view")
public class Student_details extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Student_details() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> students = new ArrayList<>();

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_project", "root", "Surbhit@1");
                 Statement stmt = con.createStatement();
                 ResultSet rs = stmt.executeQuery("SELECT * FROM student_reg")) {

                // Populate Student objects
                while (rs.next()) {
                    Student student = new Student();
                    student.setId(rs.getInt("id"));
                    student.setRollNumber(rs.getString("roll_number"));
                    student.setName(rs.getString("name"));
                    student.setGuardianName(rs.getString("guardian_name"));
                    student.setEmail(rs.getString("email"));
                    student.setPhone(rs.getString("phone"));
                    student.setAltPhone(rs.getString("alt_phone"));
                    student.setGender(rs.getString("gender"));
                    student.setDob(rs.getString("dob"));
                    student.setAddress(rs.getString("address"));
                    student.setState(rs.getString("state"));
                    student.setDistrict(rs.getString("district"));
                    student.setPincode(rs.getString("pincode"));
                    student.setLastSchool(rs.getString("last_school"));
                    student.setQualification(rs.getString("qualification"));
                    student.setCourse(rs.getString("course"));

                    students.add(student);
                }

                // Pass the list to JSP
                request.setAttribute("students", students);

            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error fetching student details: " + e.getMessage());
        }

        // Forward to JSP
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/admin_panel/student_details.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Implement POST logic if needed
    }
}
