package lk.ijse.ecommercewebapplicationjsp;

import jakarta.annotation.Resource;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.sql.DataSource;

@WebServlet(name = "registerServlet", value = "/register")
public class RegisterServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    private static final Logger LOGGER = Logger.getLogger(RegisterServlet.class.getName());

    private String generateRandomPassword() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()";
        StringBuilder password = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 12; i++) {
            password.append(characters.charAt(random.nextInt(characters.length())));
        }
        return password.toString();
    }

    private void sendPasswordEmail(String email, String password) throws MessagingException {
        final String username = "madubhashinimanusha@gmail.com"; // Replace with your email
        final String appPassword = "nzoc dgwc vpxq mwbr"; // Replace with app password

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, appPassword);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(username));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
        message.setSubject("Your New Account Password");
        message.setText("Dear User,\n\nYour new account password is: " + password + "\n\nThank you.");

        Transport.send(message);

        LOGGER.info("Password email sent successfully to: " + email);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String generatedPassword = generateRandomPassword();

        try (Connection connection = dataSource.getConnection()) {
            // Hash the password before storing
            String hashedPassword = hashPassword(generatedPassword);

            String sql = "INSERT INTO users (email, password) VALUES (?, ?)";
            try (PreparedStatement pstm = connection.prepareStatement(sql)) {
                pstm.setString(1, email);
                pstm.setString(2, hashedPassword);

                int result = pstm.executeUpdate();

                if (result > 0) {
                    // Send email with password
                    try {
                        sendPasswordEmail(email, generatedPassword);
                        response.sendRedirect("login.jsp?message=Registration Successful");
                    } catch (MessagingException e) {
                        LOGGER.log(Level.SEVERE, "Failed to send email.", e);
                        response.sendRedirect("login.jsp?error=Failed to send email, but account was created.");
                    }
                } else {
                    response.sendRedirect("login.jsp?error=Registration Failed");
                }
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Database error while registering user.", e);
            response.sendRedirect("login.jsp?error=Database Error");
        }
    }

    private String hashPassword(String password) {
        // Replace with actual hashing logic (e.g., BCrypt)
        return password; // Placeholder
    }
}
