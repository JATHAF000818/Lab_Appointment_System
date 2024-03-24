import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class test_bookingDAO {
    private Connection connection;

    public test_bookingDAO(Connection connection) {
        this.connection = connection;
    }

   
    public boolean bookLab(String Testtype, String doctorName, String datetime) {
        String query = "INSERT INTO booking (test_type, doctor_name, datetime) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, Testtype);
            preparedStatement.setString(2, doctorName);
            preparedStatement.setString(3, datetime);
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
