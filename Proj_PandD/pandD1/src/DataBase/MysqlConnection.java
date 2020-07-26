
package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement; 
public class MysqlConnection {
	
	private  Connection con = null; 
/*	
	
	public Connection getConnection()
	{ 
		if(con==null)
		{
			try
			{ 
		
		Class.forName("com.mysql.jdbc.Driver"); 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pandd","root","Admin");
		System.out.println("connected");
		return con;
			} 
	catch (ClassNotFoundException e) { 
		System.out.println("not connected");
		e.printStackTrace();
		
	} 
	catch (SQLException e) { 
		System.out.println("not connected");
		e.printStackTrace(); 
	}
		
	}
		return con;
	}*/
	
	public Connection getcon()
	{
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/pandd","root","admin");  
			}catch(Exception e){ System.out.println(e);}  
	return con;		
	}

}