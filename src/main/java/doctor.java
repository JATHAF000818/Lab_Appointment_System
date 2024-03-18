import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/doctor")
public class doctor extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Define your database URL, username, and password
    private static final String DB_URL = "jdbc:mysql://localhost:3306/lab";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    private doctorDAO doctorDAO;

    public doctor() {
        super();
        // Create a connection and initialize doctorDAO
        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            doctorDAO = new doctorDAO(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String doctorName = request.getParameter("doctor_name");
        String specialty = request.getParameter("specialty");
        String contactNumber = request.getParameter("contact_number");
        String email = request.getParameter("email");

        if (doctorName != null && specialty != null && contactNumber != null && email != null) {
            boolean added = doctorDAO.addDoctor(doctorName, specialty, contactNumber, email);
            if (added) {
                response.getWriter().write("Doctor added successfully!");
            } else {
                response.getWriter().write("Failed to add doctor.");
            }
        } else {
            response.getWriter().write("Please provide all required information.");
        }
    }

    // Close resources in destroy method if needed
   
}
