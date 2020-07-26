package dao;
import java.util.*;
import java.sql.*;
import DataBase.MysqlConnection;

public class UpdateDao {
	List<List<String>> UpdateOutterList = new ArrayList<List<String>>();
	public List<List<String>>  updateList()
	{
	try
	{
		
	MysqlConnection obj=new MysqlConnection();
	Connection con=obj.getcon();
	String query ="select * from up";
	PreparedStatement ps=con.prepareStatement(query);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{  List<String> list=new ArrayList<String>();
		
		list.add(String.valueOf(rs.getInt(1)));
		list.add(rs.getString(2));
		list.add(rs.getString(3));
		UpdateOutterList.add(list);
	}

	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
	return UpdateOutterList;
	}//end of method
	

	

}
