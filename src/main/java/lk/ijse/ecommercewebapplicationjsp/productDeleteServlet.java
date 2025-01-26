package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "productDeleteServlet",value = "/product-delete")
public class productDeleteServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product_id=req.getParameter("product_id");
        try {
            Connection connection=dataSource.getConnection();
            PreparedStatement pstm=connection.prepareStatement("DELETE FROM products WHERE  product_id = ?");
            pstm.setString(1,product_id);

            int affectedRows = pstm.executeUpdate();
            if (affectedRows > 0) {
                resp.sendRedirect("product-list.jsp?message=Product Deleted Successfully");
            } else {
                resp.sendRedirect("product-list.jsp?error=Failed to Delete product");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("product-list.jsp?error=Database error occurred");
        }

    }
}

