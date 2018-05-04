package Util;

import java.util.List;
import java.util.Map;

public class ExcelDao {
	public List<Map<String,Object>> queryidcollege(String type,String input1,String input2){
		String sql = "select u.college typecollege from "+type+" t,users u where t.authorid=u.id and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')";
		String[] array = {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> querycollege(String userid){
		String sql = "select u.college userscollege from users u where u.id=?";
		String[] array = {userid};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryall(String type,String input1,String input2){
		String sql = "select * from "+type+" where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')";
		String[] array = {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public Map<String,Object> queryzdname(String type){
		String sql = "select * from "+type;
		Map<String,Object> map = BaseDao.queryZiDuanName(sql);
		return map;
	}
}
