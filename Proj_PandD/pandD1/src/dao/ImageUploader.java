package dao;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DataBase.MysqlConnection;
import model.Photo;


@MultipartConfig(maxFileSize=16177215)
public class ImageUploader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageUploader() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		MysqlConnection mysqlOBj=new MysqlConnection();
		Connection con=mysqlOBj.getcon();
		String save_dir=request.getParameter("folderName");
		String insertQuery="insert into photo(Id,photo_heading,image,description,folder_name,date) values(?,?,?,?,?,?)";
		String alterQuery="select Id from photo where folder_name='"+save_dir+"'";
		System.out.println(alterQuery);
		int ID=0;
		int insertValue=0;
		String selectQuery="select Id from photo order by Id DESC";
		
		
		int flag=0;
		String SavePath=getServletContext().getRealPath("/")+"assets\\img\\PhotoBlog"+File.separator+save_dir;
		System.out.println(SavePath);
		File file=new File(SavePath);
		
		if(!file.exists())
		{
			file.mkdir();
		
		try {
		PreparedStatement ps=con.prepareStatement(selectQuery);
		ResultSet rs=ps.executeQuery();
		if(rs.next()== false)
		{ 
			ID+=1;
			System.out.println(ID);
			
		}//if
		else
		{
			ID=rs.getInt(1);
			ID+=1;
			System.out.println(ID);
		}
		
		}//try
		catch(Exception e)
		{

			System.out.print(e);
			e.printStackTrace();
		}
		
		}//file exists
		else
		{
			try {
				PreparedStatement ps=con.prepareStatement(alterQuery);
				ResultSet rs=ps.executeQuery();
				if(rs.next()== false)
				{ 
					ID+=1;
					System.out.println(ID);
					
				}//if
				else
				{
					ID=rs.getInt(1);
					
					System.out.println(ID);
				}
				
				}//try
				catch(Exception e)
				{

					System.out.print(e);
					e.printStackTrace();
				}
		}//else
		
		String filename="";
		List<Part> fileParts=request.getParts().stream().filter(part->"file".equals(part.getName())).collect(Collectors.toList());
		for(Part filePart : fileParts)
		{
		filename=Paths.get(filePart.getSubmittedFileName()).getFileName().toString();	
		
		filePart.write(SavePath+File.separator+filename);
		flag = 1;
		
	}
		
		for(Part filePart : fileParts)
		{
		filename=Paths.get(filePart.getSubmittedFileName()).getFileName().toString();	
		System.out.println("assets\\img\\PhotoBlog"+File.separator+save_dir+File.separator+filename);
		try {
		PreparedStatement ps1=con.prepareStatement(insertQuery);
		ps1.setInt(1, ID);
		ps1.setString(2, request.getParameter("PhotoHeading"));
		ps1.setString(3,"assets\\img\\PhotoBlog"+File.separator+save_dir+File.separator+filename);
		ps1.setString(4, request.getParameter("Description"));
		ps1.setString(5, request.getParameter("folderName"));
		ps1.setString(6, request.getParameter("PhotoDate"));
		insertValue=ps1.executeUpdate();
		
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		e.printStackTrace();	
		}
		
		}
		
		flag+=insertValue;
		System.out.println("flag-->"+flag);
		
		if(flag==2)
		{

Photo photoObj=Photo.getPhotoObj();
photoObj.setPhotoDbOutterList();
			out.println("<script type='text/javascript'>");
		out.println("alert('Data is uploaded Successfully');");				
		out.println("window.location='upload.html';");
				out.println("</script>");
			
			
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Please upload correct data');");				
					out.println("window.location='upload.html';");
							out.println("</script>");

		}
		
	
	}

}
