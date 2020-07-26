package dbModify;

import java.io.File;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.PreparedStatement;

import DataBase.MysqlConnection;
import model.Link;
import model.Photo;
import model.Update;
import model.Video;

public class DeleteData {
	MysqlConnection obj=new MysqlConnection();
	Connection con=obj.getcon();
	String query;
	public void setQuery(String Table)
	{
	query="delete from "+Table + " where Id=?";
	}
	public String DeleteUpdate(String id)
	{  try
	{
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,id);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully Deleted!");
			Update updateObj=Update.getUpdateObj();
			updateObj.setUpdateDbOutterList();
		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully Deleted! --- update";
	}
	
	public String Deletelink(String id)
	{  try
	{
		
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,id);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully Deleted!");
			Link linkObj=Link.getLinkObj();
			linkObj.setLinkDbOutterList();

		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully Deleted! --- Link";
	} 
	
	public String DeleteVideo(String id)
	{  try
	{
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,id);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully Deleted!");
			Video videoObj=Video.getVideoObj();
			videoObj.setVideoDbOutterList();
		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully Deleted! --- video";
	}
	
	public String DeletePhoto(String id,String folderPath)
	{  try
	{
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,id);
		int i=ps.executeUpdate();

		if(i>0)
		{
			System.out.println("Data is successfully Deleted!");
			File dir=new File(folderPath);
			
			
			if(dir.isDirectory() == false) {
				System.out.println("Folder / Directory is not present");
				return "Folder / Directory is not present";
			}
			File[] listFiles = dir.listFiles();
			for(File file : listFiles){
				System.out.println("Deleting "+file.getName());
				file.delete();
			}
			//now directory is empty, so we can delete it
			System.out.println("Deleting Directory. Success = "+dir.delete());    
			    

Photo photoObj=Photo.getPhotoObj();
photoObj.setPhotoDbOutterList();
		}

		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
     return "Data is successfully Deleted! --- Photo";
	}



}
