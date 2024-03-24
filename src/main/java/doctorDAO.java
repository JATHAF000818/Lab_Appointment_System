import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class doctorDAO {
    private Connection connection;

    public doctorDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean addDoctor(String doctorName, String specialty, String contactNumber, String email) {
        String query = "INSERT INTO doctor_information (doctor_name, specialty, contact_number, email) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, doctorName);
            preparedStatement.setString(2, specialty);
            preparedStatement.setString(3, contactNumber);
            preparedStatement.setString(4, email);
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
