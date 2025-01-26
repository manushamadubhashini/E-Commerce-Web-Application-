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

@WebServlet(name = "categoryDeleteServlet",value = "/category-delete")
public class categoryDeleteServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category_id=req.getParameter("category_id");
        try {
            Connection connection=dataSource.getConnection();
            PreparedStatement pstm=connection.prepareStatement("DELETE FROM category WHERE category_id = ?");
            pstm.setString(1,category_id);

            int affectedRows = pstm.executeUpdate();
            if (affectedRows > 0) {
                resp.sendRedirect("category-list.jsp?message=Category Deleted Successfully");
            } else {
                resp.sendRedirect("category-list.jsp?error=Failed to Delete category");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("category-list.jsp?error=Database error occurred");
        }

    }

}
