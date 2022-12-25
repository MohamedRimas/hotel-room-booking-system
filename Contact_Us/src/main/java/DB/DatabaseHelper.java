package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.ContactModel;


public class DatabaseHelper {
	Connection con;
	String Usertype;
	public DatabaseHelper(Connection con)
	{
		this.con=con;
	}
	
    //for Send Contact Information 
    public  boolean contactus(ContactModel contact)
   	{
   		boolean st=false;
   		try {
   		 Connection con=DB.getConnection();
   		 String sql="INSERT INTO `contact`( `name`, `email`, `tp`, `msg`) VALUES('"+contact.getName()+"','"+contact.getEmail()+"',"+contact.getTp()+",'"+contact.getMsg()+"')";
 		 PreparedStatement pst=con.prepareStatement(sql);
 	     pst.executeUpdate();
   	        
   	         
   		}
   		catch(Exception ex)
   		{
   			 ex.printStackTrace();
   		}
   		return st;
   	}
    
 

}
