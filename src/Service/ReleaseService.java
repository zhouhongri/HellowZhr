package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class ReleaseService {
	public void insertActivity(String check0val,String check1val,String input1,String input2,String allnum,String input3,String yname,String activityname,String authorid){
		String sql="insert into activity values(activity_seq.nextval,?,?,?,?,?,?,NULL,?,?,?)";
		String[] array={check0val,check1val,input1,input2,allnum,input3,yname,activityname,authorid};
		BaseDao.update(sql, array);
	}
	public void insertActivityTwo(String check0val,String check1val,String allnum,String input4,String job,String yname,String activityname,String authorid){
		String sql="insert into activity values(activity_seq.nextval,?,?,NULL,NULL,?,?,?,?,?,?)";
		String[] array={check0val,check1val,allnum,input4,job,yname,activityname,authorid};
		BaseDao.update(sql, array);
	}
	public void insertXiaoActivity(String check0val,String check1val,String input1,String input2,String allnum,String input3,String yname,String activityname,String authorid){
		String sql="insert into xiaoactivity values(xiaoactivity_seq.nextval,?,?,?,?,?,?,NULL,?,?,?)";
		String[] array={check0val,check1val,input1,input2,allnum,input3,yname,activityname,authorid};
		BaseDao.update(sql, array);
	}
	public void insertXiaoActivityTwo(String check0val,String check1val,String allnum,String input4,String job,String yname,String activityname,String authorid){
		String sql="insert into xiaoactivity values(xiaoactivity_seq.nextval,?,?,NULL,NULL,?,?,?,?,?,?)";
		String[] array={check0val,check1val,allnum,input4,job,yname,activityname,authorid};
		BaseDao.update(sql, array);
	}
	public void delActivity(String yname,String activityname){
		String sql="delete from activity where yname=? and activityname=?";
		String[] array={yname,activityname};
		BaseDao.update(sql, array);
	}
	public void delActivityTwo(String jobname,String yname,String activityname){
		String sql="delete from activity where jobname=? and yname=? and activityname=?";
		String[] array={jobname,yname,activityname};
		BaseDao.update(sql, array);
	}
	public void delXiaoActivity(String yname,String activityname){
		String sql="delete from xiaoactivity where yname=? and activityname=?";
		String[] array={yname,activityname};
		BaseDao.update(sql, array);
	}
	public void delXiaoActivityTwo(String jobname,String yname,String activityname){
		String sql="delete from xiaoactivity where jobname=? and yname=? and activityname=?";
		String[] array={jobname,yname,activityname};
		BaseDao.update(sql, array);
	}
	public List<Map<String,Object>> queryActivity(String yname,String activityname){
		String sql="select * from activity where yname=? and activityname=?";
		String[] array={yname,activityname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryActivityTwo(String jobname,String yname,String activityname){
		String sql="select * from activity where jobname=? and yname=? and activityname=?";
		String[] array={jobname,yname,activityname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryXiaoActivity(String activityname){
		String sql="select * from xiaoactivity where activityname=?";
		String[] array={activityname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryXiaoActivityTwo(String jobname,String activityname,String yname){
		String sql="select * from xiaoactivity where jobname=? and activityname=? and yname=?";
		String[] array={jobname,activityname,yname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryAcMsgId(String yname){
		String sql="select * from acmessage where authorid in(select id from users where college='"+yname+"')";
		String[] array={};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryAcId(String yname){
		String sql="select * from activity where yname=?";
		String[] array={yname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryXiaoAcId(){
		String sql="select * from xiaoactivity";
		String[] array={};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> yuanqueryActivity(String jobname,String yname,String activityname){
		String sql="";
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		if("NULL".equals(jobname)){
			sql="select * from activity where yname=? and activityname=?";
			String[] array={yname,activityname};
			list = BaseDao.query(sql, array);
		}else{
			sql="select * from activity where jobname=? and yname=? and activityname=?";
			String[] array={jobname,yname,activityname};
			list = BaseDao.query(sql, array);
		}
		return list;
	}
	public List<Map<String,Object>> xiaoqueryActivity(String jobname,String activityname){
		String sql="";
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		if("NULL".equals(jobname)){
			sql="select * from xiaoactivity where activityname=?";
			String[] array={activityname};
			list = BaseDao.query(sql, array);
		}else{
			sql="select * from xiaoactivity where jobname=? and activityname=?";
			String[] array={jobname,activityname};
			list = BaseDao.query(sql, array);
		}
		return list;
	}
	public void insertAcMessage(String productionid,String productiontable,String userid,String activityname){
		String sql = "insert into acmessage values(acmessage_seq.nextval,?,?,?,?)";
		String[] array={productionid,productiontable,userid,activityname};
		BaseDao.update(sql, array);
	}
	public void insertXiaoAcMessage(String productionid,String productiontable,String userid,String activityname){
		String sql = "insert into xiaoacmessage values(acmessage_seq.nextval,?,?,?,?)";
		String[] array={productionid,productiontable,userid,activityname};
		BaseDao.update(sql, array);
	}
	public List<Map<String,Object>> queryAcMessage(String authorid,String activityname){
		String sql = "select * from acmessage where authorid=? and activityname=?";
		String[] array={authorid,activityname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryXiaoAcMessage(){
		String sql = "select * from xiaoacmessage";
		String[] array={};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public List<Map<String,Object>> queryXiaoAcMessage(String authorid,String activityname){
		String sql = "select * from xiaoacmessage where authorid=? and activityname=?";
		String[] array={authorid,activityname};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	public void delAcMessage(String userid,String activityname){
		String sql = "delete from acmessage where authorid=? and activityname=?";
		String[] array={userid,activityname};
		BaseDao.update(sql, array);
	}
	public void delXiaoAcMessage(String userid,String activityname){
		String sql = "delete from xiaoacmessage where authorid=? and activityname=?";
		String[] array={userid,activityname};
		BaseDao.update(sql, array);
	}
	
	//查询院系名称
	public List<Map<String,Object>> queryYname(String userid){
		String sql = "select * from users where id=?";
		String[] array={userid};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		return list;
	}
	//删除acmessage,xiaoacmessage信息
		public void delacmessage(String activityname){
			String sql = "delete from acmessage where activityname=?";
			String[] array={activityname};
			BaseDao.update(sql, array);
		}
		public void delxiaoacmessage(String activityname){
			String sql = "delete from xiaoacmessage where activityname=?";
			String[] array={activityname};
			BaseDao.update(sql, array);
		}
}
