package dao;
import java.util.*;
import java.sql.*;
import DataBase.MysqlConnection;

public class VideoDao {
	
	List<List<String>> VideoOutterList = new ArrayList<List<String>>();
	
	public List<List<String>>  videoList()
	{
	try
	{
		
	MysqlConnection obj=new MysqlConnection();
	Connection con=obj.getcon();
	String query ="select * from video";
	PreparedStatement ps=con.prepareStatement(query);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{  List<String> list=new ArrayList<String>();
		
		list.add(String.valueOf(rs.getInt(1)));
		list.add(rs.getString(2));
		list.add(rs.getString(3));
		list.add(rs.getString(4));
		list.add(rs.getString(5));
		VideoOutterList.add(list);
	}

	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
	return VideoOutterList;
	}//end of method
	

	
}
