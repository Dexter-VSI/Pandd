package model;

import java.util.List;

import dao.VideoDao;

public class Video {

private static Video obj=null;
VideoDao videoDaoObj=new VideoDao();	
private List<List<String>> VideoDbOutterList= null;
 
private Video()
{
	}

public static Video getVideoObj()
{
if(obj==null)
{
obj=new Video();
System.out.println(obj);
return obj;
}
else
{
	
return obj;

}
}


public List<List<String>> getVideoDbOutterList() {
	System.out.println("VideoDbOutterList===="+VideoDbOutterList);
	return VideoDbOutterList;
}

public  void setVideoDbOutterList() {
	if(VideoDbOutterList!=null)
	{
		VideoDbOutterList.clear();
	}
	VideoDbOutterList=videoDaoObj.videoList();
	
	System.out.println("set===="+VideoDbOutterList);
}

}

