package Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class BaseService {

	public List<Map<String, Object>> queryAll(String table,
			 String currpage, String everycount,String sousuoinput,String year) {
		String sql = null;

		int a = Integer.parseInt(currpage);
		int b = Integer.parseInt(everycount);
		int end = a * b;
		int begin = end - Integer.parseInt(everycount) + 1;
				
		//��ʼƴ��sql���
				sql = "select * from (select rownum as num,T.* from " + table
				+ " T where ";
		
				//�����ݲ�Ϊ�գ���sql���ƴ�����a
				if(!year.equals("-1")){
					sql=sql+" time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd') and";
				}
				//���ؼ���������Ϊ�գ���sql���ƴ����������
				if(sousuoinput!=null){
					sql=sql+" search like '%"+sousuoinput+"%' and";
				}
				sql=sql+" rownum<=" + end +" and status=1) where num>=" +begin;
				
				
		String[] array = {};
		List list = BaseDao.query(sql, array);
		return list;
	}

	public List<Map<String, String>> totalcount(String table, String sousuoinput, String year) {
		String sql = null;
		String[] array = {};
			sql = "select count(*) a from " + table + " where status=1";
			if(sousuoinput !=null){
				sql=sql+" and search like '%"+sousuoinput+"%' ";
			}
			if(!year.equals("-1")){
			
				sql = sql+" and time between to_date('"+year+"-1-1','yyyy-mm-dd') and to_date('"+year+"-12-31','yyyy-mm-dd')";
			}
			

		List list = BaseDao.query(sql, array);
		return list;
	}
	
	public Map<String, Object> queryZuoPinID(String userid, String zuopinname, String zuopinkind){
		Map map = new HashMap();
		String sql = "";
		if("mingshi".equals(zuopinkind)){
			sql = "select id from "+zuopinkind+" where authorid = '"+userid+"' and rank = '"+zuopinname+"'";
		} else {
		    sql = "select id from "+zuopinkind+" where authorid = '"+userid+"' and name = '"+zuopinname+"'";
		}
		String[] array = {};
		map = BaseDao.queryOne(sql, array);
		return map;
	}
}
