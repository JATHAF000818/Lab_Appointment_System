

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test_result")
public class test_result extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private test_resultDAO test_resultDAO;

    public test_result() {
        super();
        this.test_resultDAO = new test_resultDAO(getConnection());
    }

    protected void doPost1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int labRegisterId = Integer.parseInt(request.getParameter("lab_register_id"));
        String patientName = request.getParameter("patient_name");
        String result = request.getParameter("result");

        if (patientName != null && result != null) {
            if (test_resultDAO.addTestResult(labRegisterId, patientName, result)) {
                
                response.getWriter().println("Lab test result added successfully!");
            } else {
                
                response.getWriter().println("Failed to add lab test result!");
            }
        } else {
            
            response.getWriter().println("Missing parameters!");
        }
    }

    private Connection getConnection() {
        // Implement your method to get a database connection
        // Return the Connection object
        return null;
    }
}

/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}

}
