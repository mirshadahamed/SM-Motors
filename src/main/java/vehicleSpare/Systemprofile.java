package vehicleSpare;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Systemprofile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Systemprofile() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // Forwarding to doPost for handling
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail_id = request.getParameter("mail_id");
        String pasdword = request.getParameter("pasdword");

        System.out.println("Received mail: " + mail_id);  // Keep for debugging, but consider removing in production

        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

            String query = "SELECT * FROM systemusers WHERE mail_id = ? AND pasdword = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, mail_id);
            pst.setString(2, pasdword);

            rs = pst.executeQuery();

            if (rs.next()) {
                // Valid credentials
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", rs.getString("name_a"));
                session.setAttribute("mail_id", rs.getString("mail_id"));
                session.setAttribute("mobile", rs.getString("mobile"));

                System.out.println("Login successful, user details stored in session.");
               
            } 
           if (mail_id.equals("admin@gmail.com") && pasdword.equals("admin")) {
                
                System.out.println("Manager login detected.");
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            } 
            if (mail_id.equals("manager@gmail.com") && pasdword.equals("manager")) {
               
                System.out.println("Manager login detected.");
                request.getRequestDispatcher("manager.jsp").forward(request, response);
                
            } 
            if (mail_id.equals("review@gmail.com") && pasdword.equals("123456")) {
                
                System.out.println("Manager login detected.");
                request.getRequestDispatcher("feedbackmanager.jsp").forward(request, response);
                
            } 
            else {
               
                System.out.println("Invalid credentials for email: " + mail_id);
                response.sendRedirect("error.jsp?error=invalid_credentials");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
