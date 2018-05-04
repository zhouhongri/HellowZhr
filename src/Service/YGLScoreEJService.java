package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class YGLScoreEJService {
	
	public List<Map<String, String>> queryMainMenu(String userid){
		List list = new ArrayList();
		String sql = "select * from menu where yname=(select college from users where id='"+userid+"')";
		String[] array={};
		list = BaseDao.query(sql, array);
		return list;
	}

}
