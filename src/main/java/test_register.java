

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/test_register")
public class test_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private test_registerDAO test_registerDAO;

    public test_register() {
        super();

        this.test_registerDAO = new test_registerDAO(getConnection());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Not implemented for this example
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String patient = request.getParameter("patient");
        String doctorName = request.getParameter("doctor_name");
        String testType = request.getParameter("test_type");
        String testSampleId = request.getParameter("test_sample_id");

        if (patient != null && doctorName != null && testType != null && testSampleId != null) {
            if (test_registerDAO.addLabTestRegistration(patient, doctorName, testType, testSampleId)) {
                // Registration successful
                response.getWriter().println("Lab test registration successful!");
            } else {
                // Registration failed
                response.getWriter().println("Failed to register lab test!");
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