package vehicleSpare;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Order extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Order() {
        super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("GET method is not supported for this operation.");
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    
        String o_id = request.getParameter("o_id");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String o_date = request.getParameter("o_date");
        String o_time = request.getParameter("o_time");

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

    
            String query = "INSERT INTO orders (o_id, name, address, email, phone, o_date, o_time) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, o_id);
            pst.setString(2, name);
            pst.setString(3, address);
            pst.setString(4, email);
            pst.setString(5, phone);
            pst.setString(6, o_date);
            pst.setString(7, o_time);

   
            int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) {
                
                request.getSession().setAttribute("o_id", o_id);
                response.sendRedirect("orderpay.jsp");
            } else {
               
                response.sendRedirect("error.jsp");
            }

        } catch (SQLException e) {
         
        	response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Minimum one order can placed used same email');");
            out.println("location='Order.jsp';"); 
            out.println("</script>");
        }
    }
}
