package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import lombok.SneakyThrows;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet(name = "productUpdateServlet", value = "/product-update")
@MultipartConfig
public class productUpdateServlet extends HelloServlet {

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
                resp.sendRedirect("product-update.jsp?error=All fields are required");
                return;
            }

            try {

                double priceValue = Double.parseDouble(price);
                int qtyValue = Integer.parseInt(qty);


                try (Connection connection = dataSource.getConnection()) {
                    String sql = "UPDATE products SET  product_name = ?, description = ?, price = ?, stock_quantity = ?, image = ? WHERE product_id =?";
                    PreparedStatement pstm = connection.prepareStatement(sql);
                    pstm.setString(1, name.trim());
                    pstm.setString(2, desc.trim());
                    pstm.setDouble(3, priceValue);
                    pstm.setInt(4, qtyValue);
                    pstm.setString(5, UPLOAD_DIR + "/" + fileName);
                    pstm.setString(6, pid.trim());

                    int affectedRows = pstm.executeUpdate();
                    if (affectedRows > 0) {
                        resp.sendRedirect("product-update.jsp?message=Product Updated Successfully");
                    } else {
                        resp.sendRedirect("product-update.jsp?error=Failed to Updated product");
                    }
                }
            } catch (NumberFormatException e) {
                resp.sendRedirect("product-update.jsp?error=Invalid price or quantity format");
            } catch (SQLException e) {
                e.printStackTrace();
                resp.sendRedirect("product-update.jsp?error=Database error occurred");
            }
    }

    @SneakyThrows
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String productId = request.getParameter("product_id");
        if (productId != null && !productId.trim().isEmpty()) {
            try {
                productDTO product = getProductById(productId);
                if (product != null) {
                    request.setAttribute("product", product);
                } else {
                    request.setAttribute("error", "Product not found.");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("error", "Database error occurred.");
            }
        }
        request.getRequestDispatcher("product-update.jsp").forward(request, response);
    }

    private productDTO getProductById(String productId) throws SQLException {
        try (Connection connection = dataSource.getConnection()) {
            String sql = "SELECT * FROM products WHERE product_id = ?";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, productId);

            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                productDTO product = new productDTO();
                product.setProductId(rs.getString("product_id"));
                product.setProductName(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setQty(rs.getInt("stock_quantity"));
                product.setImages(rs.getString("image"));
                return product;
            }
        }
        return null;
    }


}

