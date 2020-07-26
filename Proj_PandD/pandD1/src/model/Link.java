package model;
import dao.LinkDao;

import java.util.List;

public class Link {

private static Link obj=null;
LinkDao linkDaoObj=new LinkDao();	
private List<List<String>> LinkDbOutterList= null;
 
private Link()
{
	}

public static Link getLinkObj()
{
if(obj==null)
{
obj=new Link();
System.out.println(obj);
return obj;
}
else
{
	
return obj;

}
}


public List<List<String>> getLinkDbOutterList() {
	System.out.println("LinkDbOutterList===="+LinkDbOutterList);
	return LinkDbOutterList;
}

public  void setLinkDbOutterList() {
	if(LinkDbOutterList!=null)
	{
		LinkDbOutterList.clear();
	}
	LinkDbOutterList=linkDaoObj.linkList();
	
	System.out.println("set===="+LinkDbOutterList);
}

}
