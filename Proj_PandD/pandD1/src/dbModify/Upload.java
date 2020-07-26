package dbModify;
import java.sql.*;
import DataBase.MysqlConnection;
import model.*;
import dao.*;
public class Upload {
	MysqlConnection obj=new MysqlConnection();
	Connection con=obj.getcon();
	
	public String update(String updateheading,String url)
	{  try
	{
		String query="insert into up(up_heading,up_url)values(?,?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,updateheading);
		ps.setString(2,url);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully inserted!");
			Update updateObj=Update.getUpdateObj();
			updateObj.setUpdateDbOutterList();

		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully inserted! --- update";
	}
	
	public String link(String linkheading,String url)
	{  try
	{
		String query="insert into link(link_heading,link_url)values(?,?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,linkheading);
		ps.setString(2,url);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully inserted!");
			Link linkObj=Link.getLinkObj();
			linkObj.setLinkDbOutterList();

		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully inserted! --- Link";
	} 
	
	public String video(String VideoHeading,String url,String Description,String Date)
	{  try
	{
		String query="insert into video(video_heading,video_embed_link,video_description,date)values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,VideoHeading);
		ps.setString(2,url);
		ps.setString(3,Description);
		ps.setString(4,Date);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully inserted!");
			Video videoObj=Video.getVideoObj();
			videoObj.setVideoDbOutterList();

		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully inserted! --- video";
	}
	
}
	
	
	
