package vehicleSpare;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddpromoUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddpromoUpdate() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String pcode = request.getParameter("pcode");
        String promoTitle = request.getParameter("promoTitle");
        String promoDescription = request.getParameter("promoDescription");
        String promoDate = request.getParameter("promoDate");
        String promoend = request.getParameter("promoend");

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");

            
            String query = "UPDATE promo SET promoTitle=?, promoDescription=?, promoDate=?, promoend=? WHERE pcode=?";
            PreparedStatement pst = con.prepareStatement(query);

           
            pst.setString(1, promoTitle);
            pst.setString(2, promoDescription);
            pst.setString(3, promoDate);
            pst.setString(4, promoend);
            pst.setString(5, pcode);

            
            int rowsUpdated = pst.executeUpdate();

         
            if (rowsUpdated > 0) {
            	 response.setContentType("text/html");
                 PrintWriter out = response.getWriter();
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Promo Updated successfully');");
                 out.println("location='Addpromoviews';");
                 out.println("</script>");
            } else {
                
                request.setAttribute("errorMessage", "No promo found with the provided code.");
                request.getRequestDispatcher("Updatepromo.jsp").forward(request, response);
            }

           
            pst.close();
            con.close();

        } catch (SQLException e) {
            e.printStackTrace();
          
            request.setAttribute("errorMessage", "An error occurred while updating the promo.");
            request.getRequestDispatcher("Updatepromo.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            
            request.setAttribute("errorMessage", "Database driver not found.");
            request.getRequestDispatcher("Updatepromo.jsp").forward(request, response);
        }
    }
}
