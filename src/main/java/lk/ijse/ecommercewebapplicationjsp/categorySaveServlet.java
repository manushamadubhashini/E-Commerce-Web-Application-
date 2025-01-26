package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet(name = "categorySaveServlet", value = "/category-save")
public class categorySaveServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category_id = req.getParameter("category_id");
        String name = req.getParameter("name");
        String desc = req.getParameter("description");


        if (category_id == null || category_id.trim().isEmpty() ||
                name == null || name.trim().isEmpty() ||
                desc == null || desc.trim().isEmpty()) {
            resp.sendRedirect("category-save.jsp?error=All fields are required");
            return;
        }


            try (Connection connection = dataSource.getConnection()) {
                String sql = "INSERT INTO category(category_id,category_name, description) VALUES (?,?,?)";
                PreparedStatement pstm = connection.prepareStatement(sql);
                pstm.setString(1, category_id.trim());
                pstm.setString(2, name.trim());
                pstm.setString(3, desc.trim());

                int affectedRows = pstm.executeUpdate();
                if (affectedRows > 0) {
                    resp.sendRedirect("category-save.jsp?message=Category Saved Successfully");
                } else {
                    resp.sendRedirect("category-save.jsp?error=Failed to save category");
                }
            } catch (SQLException ex) {
                resp.sendRedirect("category-save.jsp?error=Database error occurred");
            }
    }
}
