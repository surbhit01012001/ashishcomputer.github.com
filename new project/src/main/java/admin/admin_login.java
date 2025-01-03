package admin;


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


@WebServlet("/admin_lo")
public class admin_login extends HttpServlet {
    private static final long serialVersionUID = 1L;
  
    public admin_login() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to login page
        request.getRequestDispatcher("/login/admin_login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
    	String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_project", "root", "Surbhit@1");

            // PreparedStatement for secure query
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM admin WHERE email = ? AND password = ?");
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
            	 response.sendRedirect("admin_profile/admin.jsp");
            } else {
            	response.getWriter().println("Invalid phone number or date of birth. Please try again.");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
