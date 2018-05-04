package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class YGLScoreService {

	public List<Map<String, String>> queryScore(String userid, String zicd, String currpage, String everycount){
		
		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
		List list = new ArrayList();
		String sql="select * from (select rownum as num,s.* from score s where college=(select college from users where id='"+userid+"') and rank like '"+zicd+"%' and rownum<="+end+") where num>="+begin+"";
		String[] array={};
		list = BaseDao.query(sql, array);
		return list;
	}
	
	public void updateScore(String rank, String score, String college, String author1, String author2, String author3, String author4, String author5,String rankdesc, String id){
		String[] array={rank,score,college,author1,author2,author3,author4,author5,rankdesc,id};
		String sql="update score set rank=?,score=?,college=?,author1=?,author2=?,author3=?,author4=?,author5=?,rankdesc=? where id=?";
		BaseDao.update(sql, array);
	}
	
	
	public List<Map<String, String>> totalcount(String userid, String zicd) {

		String[] array = {};
		String sql = null;
		sql = "select count(*) a from score where college=(select college from users where id='"+userid+"') and rank like '"+zicd+"%'";

	
		List list = BaseDao.query(sql, array);
		return list;
	}
	
}
