package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;
import Util.MenuDao;

public class MenuService {
	public List querymenu(String userid){
		String sql = "select * from menu where yname=(select college from users where id='"+userid+"')";
		String array[] = {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List querybaobiaomenu(){
		String sql = "select * from menu where yname='信息工程学院' order by id";
		String array[] = {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List queryynamelist(String yname){
		String sql = "select * from menu where yname=?";
		String array[] = {yname};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querylw(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from lunwen l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, Object>> queryqblw(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryaclw(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid=? and status='1'";
		String array[] = {authorid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryzl(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from zhuanli l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbzl(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryaczl(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid=? and status='1'";
		String array[] = {authorid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryxk(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from xueke l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbxk(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacxk(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid=? and status='1'";
		String array[] = {authorid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querykyxm(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from keyanxiangmu l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbkyxm(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryackyxm(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid=? and status='1'";
		String array[] = {authorid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryxszz(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from xueshuzhuzuo l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbxszz(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacxszz(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid=? and status='1'";
		String array[] = {authorid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querykyjl(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from keyanjiangli l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	//个人
		public List<Map<String, Object>> querylwjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from lunwen l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryzljs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from zhuanli l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryxkjsjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from xueke l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querykyjljs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from keyanjiangli l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querykyxmjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from keyanxiangmu l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryxszzjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from xueshuzhuzuo l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryzyjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from zhuanye l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querymsjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from mingshi l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querykcjsjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from kechengjianshe l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryjxyjxmjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from jxyjxm l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querysjjyxmjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from shijianjiaoyuxiangmu l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querysysjsjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from shiyanshijianshe l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> querytdjsjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from tuanduijianshe l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryxkjsjsjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from xuekejingsai l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryjczzjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from jiaocaizhuzuo l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryjxdxcgjs(String currpage, String everycount,String input1,String input2,String authorid) {
			int a = Integer.parseInt(currpage);
			int b = Integer.parseInt(everycount);
			int end = a * b;
			int begin = end - Integer.parseInt(everycount) + 1;
			List list = new ArrayList();
			String sql = "select  * from (select rownum as num,l.* from jxdxcg l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = { end + "", begin + "" };
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryqblwjs(String input1,String input2,String authorid) {
			List list = new ArrayList();
			String sql = "select  * from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = {};
			list = BaseDao.query(sql, array);
			return list;
		}
	public List<Map<String, Object>> queryqbzljs(String input1,String input2,String authorid) {
			List list = new ArrayList();
			String sql = "select  * from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
			String array[] = {};
			list = BaseDao.query(sql, array);
			return list;
		}
		public List<Map<String, Object>> queryqbxkjsjs(String input1,String input2,String authorid) {
			List list = new ArrayList();
			String sql = "select  * from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
			String array[] = {};
			list = BaseDao.query(sql, array);
			return list;
		}
	public List<Map<String, Object>> queryqbkyxmjs(String input1,String input2,String authorid) {
			List list = new ArrayList();
			String sql = "select  * from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
			String array[] = {};
			list = BaseDao.query(sql, array);
			return list;
		}
	public List<Map<String, Object>> queryqbxszzjs(String input1,String input2,String authorid) {
			List list = new ArrayList();
			String sql = "select  * from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
			String array[] = {};
			list = BaseDao.query(sql, array);
			return list;
		}
	public List<Map<String, Object>> queryqbkyjljs(String input1,String input2,String authorid) {
			List list = new ArrayList();
			String sql = "select  * from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
			String array[] = {};
			list = BaseDao.query(sql, array);
			return list;
		}
	public List<Map<String, Object>> queryqbzyjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbmsjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbkcjsjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbjxyjxmjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbsjjyxmjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from SHIJIANJIAOYUXIANGMU where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbsysjsjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from SHIYANSHIJIANSHE where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbtdjsjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from TUANDUIJIANSHE where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbjczzjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from JIAOCAIZHUZUO where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbjxdxcgjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from JXDXCG where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbxkjsjsjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from XUEKEJINGSAI where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
		
	//教学
	public List<Map<String, Object>> queryzy(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from zhuanye l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryms(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from mingshi l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querykcjs(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from kechengjianshe l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryjxyjxm(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from jxyjxm l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querysjjyxm(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from shijianjiaoyuxiangmu l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querysysjs(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from shiyanshijianshe l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querytdjs(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from tuanduijianshe l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryxkjs(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from xuekejingsai l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryjczz(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from jiaocaizhuzuo l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryjxdxcg(String currpage, String everycount,String input1,String input2,String yname) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from jxdxcg l where rownum<=?) where num>=? and time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, Object>> queryqbkyjl(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	
	public List<Map<String, Object>> queryackyjl(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select  * from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid=? and status='1'";
		String array[] = {authorid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querylwqb(String currpage, String everycount) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from lunwen l where rownum<=?) where num>=?";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryzlqb(String currpage, String everycount) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from zhuanli l where rownum<=?) where num>=?";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryxkqb(String currpage, String everycount) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from xueke l where rownum<=?) where num>=?";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querykyxmqb(String currpage, String everycount) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from keyanxiangmu l where rownum<=?) where num>=?";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querykyxszz(String currpage, String everycount) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from xueshuzhuzuo l where rownum<=?) where num>=?";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> querykykyjl(String currpage, String everycount) {
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql = "select  * from (select rownum as num,l.* from keyanjiangli l where rownum<=?) where num>=?";
		String array[] = { end + "", begin + "" };
		list = BaseDao.query(sql, array);
		return list;
	}
	public List totallw(String input1,String input2,String yname){
		String sql = "select count(*) a from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalzl(String input1,String input2,String yname){
		String sql = "select count(*) a from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxk(String input1,String input2,String yname){
		String sql = "select count(*) a from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkyxm(String input1,String input2,String yname){
		String sql = "select count(*) a from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxszz(String input1,String input2,String yname){
		String sql = "select count(*) a from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkyjl(String input1,String input2,String yname){
		String sql = "select count(*) a from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	//个人
	public List totallwjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalzljs(String input1,String input2,String authorid){
		String sql = "select count(*) a from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxkjsjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkyxmjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxszzjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkyjljs(String input1,String input2,String authorid){
		String sql = "select count(*) a from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalzyjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalmsjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkcjsjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljxyjxmjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalsjjyxmjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalsysjsjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaltdjsjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from tuiduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxkjsjsjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljczzjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljxdxcgjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	//教学
	public List totalzy(String input1,String input2,String yname){
		String sql = "select count(*) a from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalms(String input1,String input2,String yname){
		String sql = "select count(*) a from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkcjs(String input1,String input2,String yname){
		String sql = "select count(*) a from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljxyjxm(String input1,String input2,String yname){
		String sql = "select count(*) a from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalsjjyxm(String input1,String input2,String yname){
		String sql = "select count(*) a from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalsysjs(String input1,String input2,String yname){
		String sql = "select count(*) a from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaltdjs(String input1,String input2,String yname){
		String sql = "select count(*) a from tuiduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxkjs(String input1,String input2,String yname){
		String sql = "select count(*) a from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljczz(String input1,String input2,String yname){
		String sql = "select count(*) a from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljxdxcg(String input1,String input2,String yname){
		String sql = "select count(*) a from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	
	public List totallwqb(){
		String sql = "select count(*) a from lunwen";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalzlqb(){
		String sql = "select count(*) a from zhuanli";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalxkqb(){
		String sql = "select count(*) a from xueke";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkyxmqb(){
		String sql = "select count(*) a from keyanxiangmu";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkyxszz(){
		String sql = "select count(*) a from xueshuzhuzuo";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totalkykyjl(){
		String sql = "select count(*) a from keyanjiangli";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public static String[] QueryMenuZnameList(String college,String school){
		MenuDao m = new MenuDao();
		String list = m.QueryZname(college,school);
		String[] ZnameList = m.getList(list);
		return ZnameList;
	}
	
	public static String[] QueryMenuC0nameList(String college,String school){
		MenuDao m = new MenuDao();
		String list = m.QueryC0names(college,school);
		String[] C0namesList = m.getList(list);
		return C0namesList;
	}
	
	public static String[] QueryMenuC1nameList(String college,String school){
		MenuDao m = new MenuDao();
		String list = m.QueryC1names(college,school);
		String[] C0namesList = m.getList(list);
		return C0namesList;
	}
	
	public static void addMenu0(String menuSeq,String college,String school){
		MenuDao m = new MenuDao();
		boolean ZNameFlag = false;
		//遍历主菜单列表，判断是否有“0”，如果有则直接添加，如果无，则修改主菜单后添加
		String[] Zname = MenuService.QueryMenuZnameList(college,school);
		for(String s : Zname){
			 if("0".equals(s)){
				 ZNameFlag = true;
				 break;
			 }
		}
		//判断主列表标志位
		if(ZNameFlag){
			String C0names = "";
			C0names = m.QueryC0names(college,school);
			if(null==C0names){
				C0names="";
			}
			C0names = C0names+menuSeq+";";
			//System.out.println(C0names);
			m.updateC0names(m.sortMenu(C0names), college,school);
		}else{
			//添加修改主列表
			String newZname = m.QueryZname(college,school);
			newZname = newZname+"0;";
			m.updateZname(m.sortMenu(newZname), college,school);
			//添加修改C0列表
			String C0names = m.QueryC0names(college,school);
			if(null==C0names){
				C0names="";
			}
			C0names = C0names+menuSeq+";";
			m.updateC0names(m.sortMenu(C0names), college,school);
		}
	}
	
	public static void delMenu0(String menuSeq,String college,String school){
		MenuDao m = new MenuDao();
		String[] C0names = MenuService.QueryMenuC0nameList(college,school);
		String c0names = "";
		//遍历全部子列表0，如果相同则跳过，新形成一个String c0names
		for(String c0 : C0names){
			if(c0.equals(menuSeq)){
				
			}else{
				c0names = c0names+c0+";";
			}
		}
		m.updateC0names(c0names, college,school);
		
		if(C0names.length<=1){
			String[] Zname = MenuService.QueryMenuZnameList(college,school);
			String znames = "";
			for(String z : Zname){
				if("0".equals(z)){
					
				}else{
					znames = znames+z+";";
				}
			}
			m.updateZname(znames, college,school);
		}
	}
	public List<Map<String, Object>> queryqb(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select name,authorseq,score,time from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";		
						
						
		sql+="Union All	select name,authorseq,score,time from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	//个人
	public List<Map<String, Object>> queryqbjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select name,authorseq,score,time from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";		
						
						
		sql+="Union All	select name,authorseq,score,time from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryjxqbjs(String input1,String input2,String authorid) {
		List list = new ArrayList();
		String sql = "select name,authorseq,score,time from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select authorseq,score,time from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";		
		
		sql+="Union All select name,authorseq,score,time from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All	select name,authorseq,score,time from tuanduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"'";
		String array[]= {};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	//教学
	public List<Map<String, Object>> queryjxqb(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select name,authorseq,score,time from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select authorseq,score,time from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";		
		
		sql+="Union All select name,authorseq,score,time from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All	select name,authorseq,score,time from tuanduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[]= {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List totalqb(String input1,String input2,String yname){
		String sql = "select count(*) a from( select name,authorseq,score,time from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+=" Union All select name,authorseq,score,time from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";		
						
						
		sql+=" Union All	select name,authorseq,score,time from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+=" Union All			select name,authorseq,score,time from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+=" Union All			select name,authorseq,score,time from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+=" Union All			select name,authorseq,score,time from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"'))";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	//个人
	public List totalqbjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from( select name,authorseq,score,time from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
		sql+=" Union All select name,authorseq,score,time from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";		
						
						
		sql+=" Union All	select name,authorseq,score,time from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All			select name,authorseq,score,time from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All			select name,authorseq,score,time from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All			select name,authorseq,score,time from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List totaljxqbjs(String input1,String input2,String authorid){
		String sql = "select count(*) a from( select name,authorseq,score,time from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+=" Union All select authorseq,score,time from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";		
		
		sql+=" Union All select name,authorseq,score,time from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
		sql+=" Union All select name,authorseq,score,time from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
		sql+=" Union All select name,authorseq,score,time from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
		sql+=" Union All select name,authorseq,score,time from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All	select name,authorseq,score,time from tuanduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All			select name,authorseq,score,time from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All			select name,authorseq,score,time from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"' ";
						
		sql+=" Union All			select name,authorseq,score,time from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	//教学
	public List totaljxqb(String input1,String input2,String yname){
		String sql = "select count(*) a from( select name,authorseq,score,time from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select authorseq,score,time from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";		
		
		sql+="Union All select name,authorseq,score,time from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All	select name,authorseq,score,time from tuanduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"'))";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List scoreqb(String input1,String input2,String yname){
		String sql = "select sum(score) score from(select name,authorseq,score,time from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";		
						
						
		sql+="Union All	select name,authorseq,score,time from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"'))";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	//个人
	public List scoreqbjs(String input1,String input2,String authorid){
		String sql = "select sum(score) score from(select name,authorseq,score,time from lunwen where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from zhuanli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";		
						
						
		sql+="Union All	select name,authorseq,score,time from xueke where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from xueshuzhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from keyanjiangli where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from keyanxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	public List scorejxqbjs(String input1,String input2,String authorid){
		String sql = "select sum(score) score from( select name,authorseq,score,time from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select authorseq,score,time from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";		
		
		sql+="Union All select name,authorseq,score,time from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
		sql+="Union All select name,authorseq,score,time from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All	select name,authorseq,score,time from tuanduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid='"+authorid+"'";
						
		sql+="Union All			select name,authorseq,score,time from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid='"+authorid+"')";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	//教学
	public List scorejxqb(String input1,String input2,String yname){
		String sql = "select sum(score) score from( select name,authorseq,score,time from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select authorseq,score,time from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";		
		
		sql+="Union All select name,authorseq,score,time from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from shijianjiaoyuxiangmu where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
		sql+="Union All select name,authorseq,score,time from shiyanshijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All	select name,authorseq,score,time from tuanduijianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from xuekejingsai where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from jiaocaizhuzuo where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid in (select id from users where college='"+yname+"')";
						
		sql+="Union All			select name,authorseq,score,time from jxdxcg where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"'))";
		String array[]= {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public static void insertMenu(String Zname,String c0names,String yname,String c1names,String xnames){
		String sql="insert into menu values(menu_seq.NextVal,?,?,?,?,?)";
		String array[] = {Zname,c0names,yname,c1names,xnames};
		BaseDao.update(sql, array);
	}

	//教学
	public List<Map<String, Object>> queryqbzy(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbms(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbkcjs(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')  and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbjxyjxm(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbsjjyxm(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from SHIJIANJIAOYUXIANGMU where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbsysjs(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from SHIYANSHIJIANSHE where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbtdjs(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from TUANDUIJIANSHE where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbjczz(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from JIAOCAIZHUZUO where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbjxdxcg(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from JXDXCG where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryqbxkjs(String input1,String input2,String yname) {
		List list = new ArrayList();
		String sql = "select  * from XUEKEJINGSAI where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd')   and authorid in (select id from users where college='"+yname+"')";
		String array[] = {};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public List<Map<String, Object>> queryaczy(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from zhuanye where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacms(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from mingshi where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryackcjs(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from kechengjianshe where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacjxyjxm(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from jxyjxm where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacsjjyxm(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from SHIJIANJIAOYUXIANGMU where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacsysjs(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from SHIYANSHIJIANSHE where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryactdjs(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from TUANDUIJIANSHE where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacjczz(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from JIAOCAIZHUZUO where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacjxdxcg(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from JXDXCG where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String, Object>> queryacxkjs(String input1,String input2,String userid) {
		List list = new ArrayList();
		String sql = "select  * from XUEKEJINGSAI where time between to_date('"+input1+"','yyyy-mm-dd') and to_date('"+input2+"','yyyy-mm-dd') and authorid=? and status='1'";
		String array[] = {userid};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	
	//查询系
	public List queryyname(){
		String sql = "select * from menu order by id";
		String array[] = {};
		List list = BaseDao.query(sql, array);
		return list;
	}
	//查询yname
	public List<Map<String,Object>> queryYname(String userid){
		String sql = "select * from users where id=?";
		String[] array={userid};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	
	public static void addMenu1(String menuSeq,String college,String school){
		MenuDao m = new MenuDao();
		boolean ZNameFlag = false;
		//遍历主菜单列表，判断是否有“0”，如果有则直接添加，如果无，则修改主菜单后添加
		String[] Zname = MenuService.QueryMenuZnameList(college,school);
		for(String s : Zname){
			 if("1".equals(s)){
				 ZNameFlag = true;
				 break;
			 }
		}
		//判断主列表标志位
		if(ZNameFlag){
			String C1names = "";
			C1names = m.QueryC1names(college,school);
			if(null==C1names){
				C1names="";
			}
			C1names = C1names+menuSeq+";";
			//System.out.println(C0names);
			m.updateC1names(m.sortMenu(C1names), college,school);
		}else{
			//添加修改主列表
			String newZname = m.QueryZname(college,school);
			newZname = newZname+"1;";
			m.updateZname(m.sortMenu(newZname), college,school);
			//添加修改C1列表
			String C1names = m.QueryC1names(college,school);
			if(null==C1names){
				C1names="";
			}
			C1names = C1names+menuSeq+";";
			m.updateC1names(m.sortMenu(C1names), college,school);
		}
	}
	
	public static void delMenu1(String menuSeq,String college,String school){
		MenuDao m = new MenuDao();
		String[] C1names = MenuService.QueryMenuC1nameList(college,school);
		String c1names = "";
		//遍历全部子列表1，如果相同则跳过，新形成一个String c1names
		for(String c1 : C1names){
			if(c1.equals(menuSeq)){
				
			}else{
				c1names = c1names+c1+";";
			}
		}
		m.updateC1names(c1names, college,school);
		
		if(C1names.length<=1){
			String[] Zname = MenuService.QueryMenuZnameList(college,school);
			String znames = "";
			for(String z : Zname){
				if("1".equals(z)){
					
				}else{
					znames = znames+z+";";
				}
			}
			m.updateZname(znames, college,school);
		}
	}
	
	public static List<Map<String, Object>> queryXiByCollege(String college,String school){
		String sql = "select xnames from menu where yname = ? and school = ?";
		String array[] = {college,school};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	
	public static List<Map<String, Object>> queryAll(String school){
		String sql = "select * from menu where school = ?";
		String array[] = {school};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	
	public static void updateYname(String yuan,String oldyuan,String school){
		String sql = "update menu set yname = ? where yname = ? and school = ?";
		String array[] = {yuan,oldyuan,school};
		BaseDao.update(sql, array);
		sql="update users set college = ? where college = ? and school = ?";
		BaseDao.update(sql, array);
		sql="update activity set yname = ? where yname = ?";//TODO school
		BaseDao.update(sql, array);
	}
	
	public static void updateXname(String yuan,String xname,String oldxname,String school){
		String sql = "update users set xname = ? where xname = ? and college = ? and school = ?";
		String array[] = {xname,oldxname,yuan,school};
		BaseDao.update(sql, array);
		
		List<Map<String, Object>> list = queryXiByCollege(yuan,school);
		String xs = (String) list.get(0).get("xnames");
		String[] xnames = xs.split(";");
		String xlist= "";
		boolean flag = false;
		for(String str : xnames){
			if(str.equals(oldxname)){
				flag = true;
				xlist = xlist +xname+";";
			}else{
				xlist = xlist+str+";";
			}
		}
		if(!flag){
			xlist = xlist+xname+";";
		}
		sql = "update menu set xnames = ? where yname = ? and school = ?";
		String array2[] ={xlist,yuan,school};
		BaseDao.update(sql, array2);
	}
	
	public static void deleteXi(String yuan,String xname,String school){
		List<Map<String, Object>> list = queryXiByCollege(yuan,school);
		String xs = (String) list.get(0).get("xnames");
		String[] xnames = xs.split(";");
		String xlist= "";
		for(String str : xnames){
			if(str.equals(xname)){
				

			
			}else{
				xlist = xlist+str+";";
			}
		}
		String sql = "update menu set xnames = ? where yname = ? and school = ?";
		String array2[] ={xlist,yuan,school};
		BaseDao.update(sql, array2);
	}
	
	//查询users表
		public List<Map<String, Object>> queryusers(String userid){
			String sql = "select * from users where id=?";
			String array[] = {userid};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
	
}
