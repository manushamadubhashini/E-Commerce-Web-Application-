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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "loginServlet", value = "/login")
public class loginServlet extends HttpServlet {
    @Resource(name= "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email=req.getParameter("email");
        String password=req.getParameter("password");
        try {

            Connection connection=dataSource.getConnection();
            PreparedStatement pstm=connection.prepareStatement("SELECT email, password FROM users WHERE email=?");
            pstm.setString(1,email);
            ResultSet resultSet=pstm.executeQuery();
            String getEmail = "";
            String getPassword ="";
            while (resultSet.next()){
               getEmail=resultSet.getString(1);
               getPassword=resultSet.getString(2);
            }
            if (getEmail.equals(email)){
                if (getPassword.equals(password)){
                    resp.sendRedirect("login.jsp?message=Login Successfull!");
                    resp.sendRedirect("admin-dashboard.jsp?");

                }else{
                    resp.sendRedirect("login.jsp?error=ERROR: The password you entered is incorrect");
                }
            }else{
                resp.sendRedirect("login.jsp?error=ERROR: The email or password you entered is incorrect");
            }

        } catch (SQLException e) {
            resp.sendRedirect("product-save.jsp?error=Database error occurred");
        }
    }
}
