package Service;

import Util.BaseDao;

public class CheckService {

	public static void check(String type, String identity, String result, String id){
		String sql = " update "+type+" set "+identity+" = '"+result+"' where id = '"+id+"'";
		String[] array = {};
		BaseDao.update(sql, array);
	}
	
}
