

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/test_booking")
public class test_booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private test_bookingDAO test_bookingDAO;

    public test_booking() {
        super();

        this.test_bookingDAO = new test_bookingDAO(getConnection());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Testtype = request.getParameter("test_type");
        String doctorName = request.getParameter("doctor_name");
        String datetime = request.getParameter("datetime");

        if (Testtype != null && doctorName != null && datetime != null) {
            if (test_bookingDAO.bookLab(Testtype, doctorName, datetime)) {
                // Booking successful
                response.getWriter().println("Lab booking successful!");
            } else {
                // Booking failed
                response.getWriter().println("Failed to book lab!");
            }
        } else {
            // Parameters missing
            response.getWriter().println("Missing parameters!");
        }
    }

    // Method to get database connection (you need to implement this)
    private Connection getConnection() {
        // Implement your method to get a database connection
        // Return the Connection object
        return null;
    }
}