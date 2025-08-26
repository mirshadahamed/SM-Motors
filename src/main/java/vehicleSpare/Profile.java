package vehicleSpare;

import java.io.IOException;
import java.io.PrintWriter;
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


public class Profile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Profile() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); 
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail = request.getParameter("mail");
        String password = request.getParameter("password");

        System.out.println("Received mail: " + mail);
        System.out.println("Received password: " + password);

        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

            String query = "SELECT * FROM users WHERE mail = ? AND password = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, mail);
            pst.setString(2, password);

            rs = pst.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", rs.getString("uname"));
                session.setAttribute("mail", rs.getString("mail"));
                session.setAttribute("num", rs.getString("num"));

                System.out.println("Login successful, user details stored in session.");
                request.getRequestDispatcher("Home2.jsp").forward(request, response);
            } else {
                System.out.println("Invalid credentials for email: " + mail);
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid email or password. Please try again.');");
                out.println("location='log.jsp';"); 
                out.println("</script>");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Invalid email or password. Please try again.');");
            out.println("location='log.jsp';");
            out.println("</script>");
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
