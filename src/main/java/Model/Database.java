package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    public static String url = "jdbc:mysql://localhost:3306/tcomplex_db";
    public static String username = "root";
    public static String password = "17101997";
    public static String driver = "com.mysql.cj.jdbc.Driver";

    public static Connection connection(){
        Connection conn= null;
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url,username,password);
            return conn;
        }
        catch (
                ClassNotFoundException | SQLException e
        ){
            e.printStackTrace();
            return null;
        }
    };
}
