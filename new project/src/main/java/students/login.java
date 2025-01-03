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


@WebServlet("/logi")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;
  
    public login() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to login page
        request.getRequestDispatcher("/WEB-INF/students/student_login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
    	String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_project", "root", "Surbhit@1");

            // PreparedStatement for secure query
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM student_reg WHERE phone = ? AND dob = ?");
            pstmt.setString(1, phone);
            pstmt.setString(2, dob);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
            	 response.getWriter().println("Welcome");
            } else {
            	response.getWriter().println("Invalid phone number or date of birth. Please try again.");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
