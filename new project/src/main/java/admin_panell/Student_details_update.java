package admin_panell;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/update")
public class Student_details_update extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Student_details_update() {
        super();
    }

    // Fetch student details when GET request is made (for rendering update form)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rollNumber = request.getParameter("roll_number");

        if (rollNumber != null && !rollNumber.isEmpty()) {
            List<Student> students = new ArrayList<>();
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_project", "root", "Surbhit@1")) {
                    // Fetch student details from the database using roll_number
                    String selectQuery = "SELECT * FROM student_reg WHERE roll_number = ?";
                    try (PreparedStatement stmt = con.prepareStatement(selectQuery)) {
                        stmt.setString(1, rollNumber);
                        ResultSet rs = stmt.executeQuery();

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
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Error fetching student details: " + e.getMessage());
            }

            // Set the list of students in the request attribute for use in JSP
            request.setAttribute("students", students);
        }

        // Forward request to JSP to show the student details
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/admin_panel/student_regisbyadmin.jsp");
        rd.forward(request, response);
    }

    // Update student details when form is submitted via POST request
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rollNumber = request.getParameter("roll_number");
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
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_project", "root", "Surbhit@1")) {
                // Update student details in the database
                String updateQuery = "UPDATE student_reg SET name = ?, guardian_name = ?, email = ?, phone = ?, alt_phone = ?, " +
                        "gender = ?, dob = ?, address = ?, state = ?, district = ?, pincode = ?, last_school = ?, " +
                        "qualification = ?, course = ? WHERE roll_number = ?";
                try (PreparedStatement stmt = con.prepareStatement(updateQuery)) {
                    stmt.setString(1, name);
                    stmt.setString(2, guardianName);
                    stmt.setString(3, email);
                    stmt.setString(4, phone);
                    stmt.setString(5, altPhone);
                    stmt.setString(6, gender);
                    stmt.setString(7, dob);
                    stmt.setString(8, address);
                    stmt.setString(9, state);
                    stmt.setString(10, district);
                    stmt.setString(11, pincode);
                    stmt.setString(12, lastSchool);
                    stmt.setString(13, qualification);
                    stmt.setString(14, course);
                    stmt.setString(15, rollNumber);

                    int rowsUpdated = stmt.executeUpdate();
                    if (rowsUpdated > 0) {
                        request.setAttribute("successMessage", "Student details updated successfully!");
                    } else {
                        request.setAttribute("errorMessage", "No student found with roll number: " + rollNumber);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error updating student details: " + e.getMessage());
        }

        // Forward request to JSP to show the updated student details
        doGet(request, response);
    }
}
