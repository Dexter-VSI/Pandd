package model;
import dao.PhotoDao;
import java.util.List;
public class Photo {

	private static Photo obj=null;
	PhotoDao photoDaoObj=new PhotoDao();	
	private List<List<String>> PhotoDbOutterList= null;
	 
	private Photo()
	{
		}

	public static Photo getPhotoObj()
	{
	if(obj==null)
	{
	obj=new Photo();

	return obj;
	}
	else
	{
		
	return obj;

	}
	}


	public List<List<String>> getPhotoDbOutterList() {
		System.out.println("PhotoDbOutterList===="+PhotoDbOutterList);
		return PhotoDbOutterList;
	}

	public  void setPhotoDbOutterList() {
		if(PhotoDbOutterList!=null)
		{
			PhotoDbOutterList.clear();
		}
		PhotoDbOutterList=photoDaoObj.photoList();
		
		System.out.println("set===="+PhotoDbOutterList);
	}

	}


