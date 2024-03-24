import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class test_resultDAO {
	private Connection connection;

    public test_resultDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean addTestResult(int testRegisterId, String patientName, String result) {
        String query = "INSERT INTO test_result (test_register_id, patient_name, result) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, testRegisterId);
            preparedStatement.setString(2, patientName);
            preparedStatement.setString(3, result);
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
