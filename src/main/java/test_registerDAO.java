import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class test_registerDAO {
	private Connection connection;

    public test_registerDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean addLabTestRegistration(String patient, String doctorName, String testType, String testSampleId) {
        String query = "INSERT INTO test_register (patient, doctor_name, test_type, test_sample_id) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, patient);
            preparedStatement.setString(2, doctorName);
            preparedStatement.setString(3, testType);
            preparedStatement.setString(4, testSampleId);
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public test_registerDAO getLabTestRegistrationById(int id) {
        // Implementation required to retrieve lab test registration details by ID
        return null; // Replace this with actual implementation
    }

    // Method to update lab test registration details
    public boolean updatelab_test_registerDAO(int id, String patientName, String doctorName, String testType, String testSampleId) {
        // Implementation required to update lab test registration details
        return false; // Replace this with actual implementation
    }

    // Method to delete lab test registration
    public boolean deletelab_test_registerDAO(int id) {
        // Implementation required to delete lab test registration
        return false; // Replace this with actual implementation
    }
}