import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by renecortez on 6/9/17.
 */

public class MySQLAdsDao implements Ads {

    @Override
    public List<Ad> all() throws SQLException {

        Config config = new Config();

        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
        );

        //insert(connection);

        String query = "SELECT * FROM ads";

        System.out.println("Selecting everything from the ads table");

        Statement stmt = connection.createStatement();

        ResultSet rs = stmt.executeQuery(query);

        List<Ad> ads = new ArrayList<>();

        while (rs.next()) {

            long user_id = rs.getLong("user_id");

            String title = rs.getString("title");

            String description = rs.getString("description");

            Ad a = new Ad(user_id, title, description);

            ads.add(a);

            System.out.println(a.getTitle());

        }

        return null;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }

        public static void insert(Connection connection, HttpServletRequest request)throws SQLException{

            Statement statement = connection.createStatement();

            String user_id = request.getParameter("user_id");

            String title = request.getParameter("title");

            String description = request.getParameter("description");

            String query = "INSERT INTO ads(user_id, title, description) VALUES";

            query += "(" + user_id + ", " + title + ", " + description + ")";

            statement.execute(query);

        }

}
