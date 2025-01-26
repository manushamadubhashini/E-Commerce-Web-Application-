package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@WebServlet(name = "productServlet", value = "/product-list")
public class productServlet extends HttpServlet {
//    @Resource(name = "java:comp/env/jdbc/pool")
//    private DataSource dataSource;
String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    String DB_USER = "root";
    String DB_PASSWORD = "ijse123";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<productDTO> productDTOList=new ArrayList<>();
        try {

//            Connection connection=dataSource.getConnection();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    DB_URL,
                    DB_USER,
                    DB_PASSWORD
            );
            if (connection == null) {
                System.err.println("Connection is null");
            }
            ResultSet resultSet=connection.prepareStatement("SELECT * FROM products").executeQuery();
            while (resultSet.next()) {
                System.out.println(resultSet.getString(1));
                System.out.println( resultSet.getString(2));
                System.out.println( resultSet.getString(3));
                System.out.println(resultSet.getDouble(4));
                System.out.println(resultSet.getInt(5));
                productDTO productDTO = new productDTO(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6)
                );
                productDTOList.add(productDTO);


            }
            req.setAttribute("product", productDTOList);
            RequestDispatcher requestDispatcher=req.getRequestDispatcher("product-list.jsp");
            requestDispatcher.forward(req,resp);

        } catch (SQLException | ClassNotFoundException e) {
            resp.sendRedirect("product-list.jsp?error=fail to load product");
            throw new RuntimeException(e);
        }
        System.out.println(productDTOList.size());
    }
}
