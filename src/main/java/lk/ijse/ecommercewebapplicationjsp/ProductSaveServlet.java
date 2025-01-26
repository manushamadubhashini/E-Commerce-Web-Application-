package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet(name = "productSaveServlet", value = "/product-save")
@MultipartConfig
public class ProductSaveServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    private static final String UPLOAD_DIR = "uploads";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pid = req.getParameter("product_id");
        String name = req.getParameter("name");
        String desc = req.getParameter("description");
        String price = req.getParameter("price");
        String qty = req.getParameter("qty");
        
        Part filePart = req.getPart("image");
        String fileName = null;
        if (filePart != null && filePart.getSize() > 0) {
            // Generate unique file name
            fileName = UUID.randomUUID() + "_" + filePart.getSubmittedFileName();

            // Define the upload directory
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            // Save file to the upload directory
            filePart.write(uploadPath + File.separator + fileName);
        }

        if (pid == null || pid.trim().isEmpty() ||
                name == null || name.trim().isEmpty() ||
                price == null || price.trim().isEmpty() ||
                qty == null || qty.trim().isEmpty()) {
            resp.sendRedirect("product-save.jsp?error=All fields are required");
            return;
        }

        try {

            double priceValue = Double.parseDouble(price);
            int qtyValue = Integer.parseInt(qty);


            try (Connection connection = dataSource.getConnection()) {
                String sql = "INSERT INTO products(product_id, product_name, description, price, stock_quantity, image) VALUES (?,?,?,?,?,?)";
                PreparedStatement pstm = connection.prepareStatement(sql);
                pstm.setString(1, pid.trim());
                pstm.setString(2, name.trim());
                pstm.setString(3, desc.trim());
                pstm.setDouble(4, priceValue);
                pstm.setInt(5, qtyValue);
                pstm.setString(6, UPLOAD_DIR + "/" + fileName);

                int affectedRows = pstm.executeUpdate();
                if (affectedRows > 0) {
                    resp.sendRedirect("product-save.jsp?message=Product Saved Successfully");
                } else {
                    resp.sendRedirect("product-save.jsp?error=Failed to save product");
                }
            }
        } catch (NumberFormatException e) {
            resp.sendRedirect("product-save.jsp?error=Invalid price or quantity format");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("product-save.jsp?error=Database error occurred");
        }
    }
}

