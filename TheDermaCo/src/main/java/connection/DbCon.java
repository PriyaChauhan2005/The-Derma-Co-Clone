package connection;

import java.sql.*;

public class DbCon {
	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost/dermaco?useSSL=false&allowPublicKeyRetrieval=true","root","");
            System.out.print("connected");
        }
        return connection;
    }
}