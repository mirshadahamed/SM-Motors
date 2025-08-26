package vehicleSpare;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Addpromoview extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Addpromoview() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Ads> promos = new ArrayList<>();

        try {
            try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			}
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
                 PreparedStatement pst = con.prepareStatement("SELECT * FROM promo");
                 ResultSet rs = pst.executeQuery()) {

                while (rs.next()) {
                    String pcode = rs.getString("pcode");
                    String promoTitle = rs.getString("promoTitle");
                    String promoDescription = rs.getString("promoDescription");
                    String promoDate = rs.getString("promoDate");
                    String promoend = rs.getString("promoend");

                    Ads pro= new Ads(pcode, promoTitle, promoDescription, promoDate,promoend);
                    promos.add(pro);
                }

                System.out.println("Number of promos retrieved: " + promos.size());
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error occurred.");
            return; 
        } 

        request.setAttribute("promosList", promos);
       
        request.getRequestDispatcher("addviewUser.jsp").forward(request, response); 
        request.getRequestDispatcher("AddpromoAdminview.jsp").forward(request, response); 
       
       
    }
}
