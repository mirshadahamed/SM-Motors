package vehicleSpare;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Contactusupdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Contactusupdate() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

            String query = "UPDATE contactus SET name=?, subject=?, phone=?, message=? WHERE email=?";
            PreparedStatement pst = con.prepareStatement(query);

           
            pst.setString(1, name);
            pst.setString(2, subject);
            pst.setString(3, phone);
            pst.setString(4, message);
            pst.setString(5, email);

          
            int rowsUpdated = pst.executeUpdate();

            if (rowsUpdated > 0) {
              
                response.sendRedirect("Feedbackpage");
            } else {
               
                response.getWriter().write("Error: Update task failed.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("SQL Error: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().write("Error: Database driver not found.");
        }
    }
}
