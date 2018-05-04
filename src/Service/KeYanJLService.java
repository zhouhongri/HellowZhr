package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class KeYanJLService {

	public List<Map<String, Object>> queryAll(String currpage, String everycount,String userid, String year, String status, String flag, String inputvalue) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql=null;
		//开始拼接sql语句
		sql = "select * from (select rownum as num,l.* from keyanjiangli l where authorid=" + userid;
	
		//如果年份不为空，则sql语句拼接年份a
		if(!year.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
		}
		if(!status.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and (status="+status+" or status2="+status+")";
		}
		if(inputvalue!=null&&!"pass".equals(flag)){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		sql=sql+" and rownum<=" + end +") where num>=" +begin;
		
		
		String array[] = { };
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, Object>> queryByCollege(String currpage, String everycount,String college, String year, String status,String flag, String inputvalue, String yrank) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql=null;
		//开始拼接sql语句
		sql = "select * from (select rownum as num,l.*,u.* from keyanjiangli l left join uploadfilemessage u on l.id=u.zuopinid where u.zuopintype='keyanjiangli' and authorid in (select id from users where college = '"+college+"')" ;
	
		//如果年份不为空，则sql语句拼接年份a
		if(!year.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
		}
		if(!status.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and status="+status;
		}
		if(!"-1".equals(yrank)&&!"pass".equals(flag)){
			sql=sql+" and rank='"+yrank+"'";
		}
		if(inputvalue!=null&&!"pass".equals(flag)){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		sql=sql+" and rownum<=" + end +") where num>=" +begin;
		
		
		String array[] = { };
		list = BaseDao.query(sql, array);
		return list;
	}

	public List<Map<String, String>> totalcount(String userid, String year, String status, String flag, String inputvalue) {

		String[] array = {};
		String sql = null;
		sql = "select count(*) a from keyanjiangli where authorid="+ userid;

		if(!year.equals("-1")&&!"pass".equals(flag)){
			sql = sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
		}
		if(!status.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and status="+status;
		}
		if(inputvalue!=null&&!"pass".equals(flag)){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, String>> queryRank(String userid, String zicd){
		List list = new ArrayList();
		String sql = "select rank,rankdesc  from score where college=(select college from users where id='"+userid+"') and rank like '"+zicd+"%'";
		String[] array ={};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, String>> queryScore(String rank, String authorseq, String userid){
		List list = new ArrayList();
		String sql= "select s.author"+authorseq+" yuan,c.author"+authorseq+" xiao from score s,score c where s.rank=c.rank and s.college=(select college from users where id='"+userid+"') and c.college='学校' and s.rank='"+rank+"'";
		String[] array={};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, String>> totalcount1(String college, String year, String status, String flag, String inputvalue, String yrank) {

		String[] array = {};
		String sql = null;
		sql = "select count(*) a from keyanjiangli where authorid in (select id from users where college = '"+college+"')";
		if(flag==null){
			flag="";
		}
		if(!year.equals("-1")&&!"pass".equals(flag)){
			sql = sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
		}
		if(!status.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and status="+status;
		}
		if(!"-1".equals(yrank)&&!"pass".equals(flag)){
			sql=sql+" and rank='"+yrank+"'";
		}
		if(inputvalue!=null&&!"pass".equals(flag)){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, String>> totalcount2(String college, String year, String status, String flag, String inputvalue, String yrank) {

		String[] array = {};
		String sql = null;
		sql = "select count(*) a from keyanjiangli where 1 = 1";
		if(flag==null){
			flag="";
		}
		if(!year.equals("-1")&&!"pass".equals(flag)){
			sql = sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
		}
		if(!status.equals("-1")&&!"pass".equals(flag)){
			sql=sql+" and status2="+status;
		}
		if(!"-1".equals(yrank)&&!"pass".equals(flag)){
			sql=sql+" and rank='"+yrank+"'";
		}
		if(inputvalue!=null&&!"pass".equals(flag)){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		List list = BaseDao.query(sql, array);
		return list;
	}

	public List<Map<String, Object>> queryAllColloge(String currpage, String everycount, String year, String status,String flag, String inputvalue, String yrank) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql=null;
		//开始拼接sql语句
		sql = "select * from (select rownum as num,l.*,u.* from keyanjiangli l left join uploadfilemessage u on l.id=u.zuopinid where u.zuopintype='keyanjiangli' and authorid in (select id from users where college = college)" ;
	
		//如果年份不为空，则sql语句拼接年份a
		if(!year.equals("-1")&&!flag.equals("pass")){
			sql=sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
		}
		if(!status.equals("-1")&&!flag.equals("pass")){
			sql=sql+" and status2="+status;
		}
		if(!"-1".equals(yrank)&&!"pass".equals(flag)){
			sql=sql+" and rank='"+yrank+"'";
		}
		if(inputvalue!=null&&!"pass".equals(flag)){
			sql=sql+" and search like '%"+inputvalue+"%'";
		}
		sql=sql+" and rownum<=" + end +") where num>=" +begin;
		
		
		String array[] = { };
		list = BaseDao.query(sql, array);
		return list;
	}
}
