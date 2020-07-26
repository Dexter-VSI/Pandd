package dao;
import java.util.*;

import java.sql.*;
import DataBase.MysqlConnection;
public class LinkDao {
	List<List<String>> LinkOutterList = new ArrayList<List<String>>();
	public List<List<String>>  linkList()
	{
	try
	{
		
	MysqlConnection obj=new MysqlConnection();
	Connection con=obj.getcon();
	String query ="select * from link";
	PreparedStatement ps=con.prepareStatement(query);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{  List<String> list=new ArrayList<String>();
		
		list.add(String.valueOf(rs.getInt(1)));
		list.add(rs.getString(2));
		list.add(rs.getString(3));
		LinkOutterList.add(list);
	}

	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
	return LinkOutterList;
	}//end of method
	

}
