package DB;

import java.sql.Connection;
import java.sql.DriverManager;


public class DB {
	 Connection con;
	 public static Connection getConnection() throws Exception{
	        
	        Class.forName("com.mysql.jdbc.Driver"); 
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/pan-oting" , "root" , ""); //database connection , username and password
	        return con;
	        
	        
	    }
	 
	
}
