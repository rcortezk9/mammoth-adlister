/**
 * Created by renecortez on 6/9/17.
 */
public class Config {
    private String url;
    private String username;
    private String password;

    public Config() {
        url = "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC";
        username = "rene";
        password = "rene123";
    }

    public String getUrl() {
        return url;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

}
