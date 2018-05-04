package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class YGLMenuService {

	public List<Map<String, String>> queryMenu(String currpage, String everycount, String userid){
		
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql="select * from menu where yname=(select college from users where id="+userid+")";
		String[] array={};
		list = BaseDao.query(sql, array);
		return list;
	}
	
}
