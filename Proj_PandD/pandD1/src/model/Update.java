package model;

import java.util.List;

import dao.UpdateDao;

public class Update {

private static Update obj=null;
UpdateDao updateDaoObj=new UpdateDao();	
private List<List<String>> UpdateDbOutterList= null;
 
private Update()
{
	}

public static Update getUpdateObj()
{
if(obj==null)
{
obj=new Update();
System.out.println(obj);
return obj;
}
else
{
	
return obj;

}
}


public List<List<String>> getUpdateDbOutterList() {
	System.out.println("UpdateDbOutterList===="+UpdateDbOutterList);
	return UpdateDbOutterList;
}

public  void setUpdateDbOutterList() {
	if(UpdateDbOutterList!=null)
	{
		UpdateDbOutterList.clear();
	}
	UpdateDbOutterList=updateDaoObj.updateList();
	
	System.out.println("set===="+UpdateDbOutterList);
}

}
