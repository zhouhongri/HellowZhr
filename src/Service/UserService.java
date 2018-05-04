package Service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class UserService {
	
	public static List<Map<String, Object>> queryAll(String id) {
		List list = new ArrayList();
		String sql = "select  * from users where id = ?";
		String array[] = { id };
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public static Map<String, Object> queryOne(String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		String sql = "select  * from users where id = ?";
		String array[] = { id };
		map = BaseDao.queryOne(sql, array);
		return map;
	}
	
	public static void insertUser(String id,String pwd,String name,String tel,String sex,String age,String college,String identity,String keyan,String jiaoxue,String job,String jobtime,String lasttime,String xname,String search){
		//String sql = "insert into users values('"+id+"','"+pwd+"','"+name+"','"+tel+"','"+sex+"','"+age+"','"+college+"','"+identity+"','"+keyan+"','"+jiaoxue+"')";
		String sql = "insert into users values(?,?,?,?,?,?,?,?,?,?,?,to_date(?,'yyyy-mm-dd'),to_date(?,'yyyy-mm-dd'),?,?,?,?)";
		String array[] = {id,pwd,name,tel,sex,age,college,identity,keyan,jiaoxue,job,jobtime,lasttime,xname,"14031306","1001",search};
		BaseDao.update(sql, array);
	}
	
	public static void changPwd(String id ,String pwd){
		String sql = "update users set pwd = ? where id = ?";
		String array[] ={pwd,id};
		BaseDao.update(sql, array);
	}
	
	public static List<Map<String , Object>> getUserByCollege(String college,String currpage,String everycount,String school){
		int cp = Integer.parseInt(currpage);
		int ec = Integer.parseInt(everycount);
		int begin = (cp-1)*ec+1;
		int end = ec*cp;
		String sql = "SELECT * FROM (select b.*,ROWNUM rn from (select a.* from users a where college = '"+college+"' and school = '"+school+"'  order by id) b) WHERE rn BETWEEN "+begin+" AND "+end;
		String[] array = {};
		List<Map<String , Object>> list = BaseDao.query(sql, array);
		return list;
	}
	
	public static String getTotalcount(String college,String school){
		String sql = "select count(*) a from users where college = ? and school = ?";
		String array[] = {college,school};
		List<Map<String, Object>> list= BaseDao.query(sql, array);
		String count = (String)list.get(0).get("a");
		return count;
	}
	
	public static void delUser(String id){
		String sql = "delete from users where id = ?";
		String array[] = {id};
		BaseDao.update(sql, array);
	}
	
	public static void update(String id,String pwd,String name,String tel,String sex,String job,String jobtime,String identity,String xname){
		String sql="UPDATE users SET pwd = ?, name = ?,tel = ?,sex = ?,identity = ?, job =? , jobtime = to_date(?,'yyyy-mm-dd'),xname = ? WHERE id = ?";
		String array[] = {pwd,name,tel,sex,identity,job,jobtime,xname,id};
		BaseDao.update(sql, array);
		
	}
	public static void update(String id,String pwd,String name,String tel,String sex,String job,String jobtime,String identity,String xname,String college){
		
		String sql="UPDATE users SET pwd = ?, name = ?,tel = ?,sex = ?,identity = ?, job =? , jobtime = to_date(?,'yyyy-mm-dd'),";
		if(!xname.equals("-1")){
			sql = sql+"xname = '"+xname+"',";
		}
		sql = sql+"college = ? WHERE id = ?";
		String array[] = {pwd,name,tel,sex,identity,job,jobtime,college,id};
		BaseDao.update(sql, array);
		
	}
	
	public List<Map<String, String>> totalcount1(String college, String year, String status, String flag, String inputvalue,String school) {

		String[] array = {};
		String sql = null;
		sql = "select count(*) a from users where id in (select id from users where college = '"+college+"' and school = '"+school+"')";
		if(flag==null){
			flag="";
		}
		if(!"-1".equals(year)&&!"pass".equals(flag)){
			sql = sql+"and xname = '"+year+"'";
		}
//		if(!status.equals("-1")&&!"pass".equals(flag)){
//			sql=sql+" and status="+status;
//		}
		if(inputvalue!=null&&!"pass".equals(flag)&&!inputvalue.equals("")){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, String>> totalcount2(String college, String year, String status, String flag, String inputvalue,String school) {

		String[] array = {};
		String sql = null;
		sql = "select count(*) a from users where school= '"+school+"' ";
		if(flag==null){
			flag="";
		}
		if(!"-1".equals(year)&&!"pass".equals(flag)){
			sql = sql+"and college = '"+year+"'";
		}
//		if(!status.equals("-1")&&!"pass".equals(flag)){
//			sql=sql+" and status="+status;
//		}
		if(inputvalue!=null&&!"pass".equals(flag)&&!inputvalue.equals("")){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, Object>> queryByCollege(String currpage, String everycount,String college, String year, String status,String flag, String inputvalue,String school) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql=null;
		//开始拼接sql语句
		sql = "select * from(select u.*,rownum as num from users u where college = '"+college+"' and school = '"+school+"'";
	
		//如果年份不为空，则sql语句拼接年份a
		if(!"-1".equals(year)&&!"pass".equals(flag)&&year!=null){
			sql=sql+"and xname = '"+year+"'";
		}
//		if(!status.equals("-1")&&!"pass".equals(flag)){
//			sql=sql+" and status="+status;
//		}
		if(inputvalue!=null&&!"pass".equals(flag)&&!inputvalue.equals("")){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		
		sql=sql+" and rownum<=" + end +") where num>=" +begin;
		
		
		String array[] = { };
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, Object>> queryAllColloge(String currpage, String everycount, String year, String status,String flag, String inputvalue,String school) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql=null;
		//开始拼接sql语句
		sql = "select * from(select u.*,rownum as num from users u where school = '"+school+"'" ;
	
		if(!year.equals("-1")&&!"pass".equals(flag)){
			sql=sql+"and college = '"+year+"'";
		}
		if(inputvalue!=null&&!"pass".equals(flag)&&!inputvalue.equals("")){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		sql=sql+" and rownum<=" + end +") where num>=" +begin;
		
		
		String array[] = { };
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public String QueryId(String username ,String pwd,String school){
		String id="";
		String array[] = {username,pwd,school };
		String sql = "select id from users where username=? and pwd=? and school=?";
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		id = (String) list.get(0).get("id");
		return id;
		
	}
	
	public String querySchool(String userid){
		String array[] = {userid};
		String sql = "select school from users where id=?";
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		String school = (String) list.get(0).get("school");
		return school;
	}
}
