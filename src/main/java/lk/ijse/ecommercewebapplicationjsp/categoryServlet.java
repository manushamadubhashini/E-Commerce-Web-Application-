package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "categoryServlet", value = "/category-list")
public class categoryServlet extends HelloServlet{
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<categoryDTO> categoryDTOList=new ArrayList<>();
        Connection connection= null;
        try {
            connection = dataSource.getConnection();
            ResultSet resultSet=connection.prepareStatement("SELECT * FROM category").executeQuery();
            while (resultSet.next()) {
                System.out.println(resultSet.getString(1));
                System.out.println( resultSet.getString(2));
                System.out.println( resultSet.getString(3));
                categoryDTO categoryDTO = new categoryDTO(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3)
                );
               categoryDTOList.add(categoryDTO);


            }
            request.setAttribute("category", categoryDTOList);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("category-list.jsp");
            requestDispatcher.forward(request,response);
        } catch (SQLException | ServletException ex) {
            response.sendRedirect("category-list.jsp?error=fail to load category");
            ex.printStackTrace();

        }

    }

}
