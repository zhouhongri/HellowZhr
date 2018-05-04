package Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class MsgService {
	public static String queryAuthorId(String z_id,String type){
		String sql="select AuthorId from "+type+" where id = "+z_id;
		String[] array = {};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		String authorid = (String) list.get(0).get("authorid");
		return authorid;
	}
	
	public static String queryZPName(String z_id,String type){
		String sql="select name from "+type+" where id = "+z_id;
		String[] array = {};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		String name = (String) list.get(0).get("name");
		return name;
	}
	
	public static void insert(String fromid,String toid,String msg,String time,String status,String z_id){
		String sql = "insert into message values(msg_seq.nextval,?,?,?,to_date('"+time+"','yyyy-mm-dd'),?,?)";
		String array[] = {fromid,toid,msg,status,z_id};
		BaseDao.update(sql, array);
	}
	
	public static String queryNum(String userid){
		String sql="select count(*) from message where toid = '"+userid+"' and status=0";
		String[] array = {};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		String count = (String) list.get(0).get("count(*)");
		return count;
	}
	
	public static List<Map<String , Object>> queryMsg(String userid){
		String sql = "select * from message where toid = '"+userid+"' and status='0'";
		String[] array = {};
		List<Map<String, Object>> list = BaseDao.query(sql, array);
		
		return list;
	}
	
	public static void readMsg(String id){
		String sql = "UPDATE message SET status = 1  WHERE id = '"+id+"'";
		String[] array = {};
		BaseDao.update(sql, array);
	}
	
	//查询院系名称
		public List<Map<String,Object>> queryYname(String userid){
			String sql = "select * from users where id=?";
			String[] array={userid};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
	
		public  List<Map<String , Object>> queryAuthors(String yname,String acticityname){
			String sql = "select distinct authorid from acmessage  where activityname=? and authorid in (select id from users where college='"+yname+"')";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryXiaoAuthors(String acticityname){
			String sql = "select distinct authorid from xiaoacmessage  where activityname=?";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryPrdTable(String yname,String acticityname){
			String sql = "select distinct productiontable from acmessage  where activityname=? and authorid in (select id from users where college='"+yname+"')";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryXiaoPrdTable(String acticityname){
			String sql = "select distinct productiontable from xiaoacmessage  where activityname=?";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryUsers(List<Map<String,Object>> listid){
			String sql = "select * from users  where id='"+listid.get(0).get("authorid")+"'";
			for(int i=1;i<listid.size();i++){
				sql+="or id='"+listid.get(i).get("authorid")+"'";
			}
			String[] array = {};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			
			return list;
		}
		public  List<Map<String , Object>> queryYuanAcMsg(String activityname,String usersid){
			String sql = "select * from acmessage where activityname=? and authorid=?";
			String[] array = {activityname,usersid};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			
			return list;
		}
		public  List<Map<String , Object>> queryYuanAcPrdId(String activityname,String prdtable){
			String sql = "select * from acmessage where activityname=? and productiontable=?";
			String[] array = {activityname,prdtable};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			
			return list;
		}
		
		public  List<Map<String , Object>> queryXiaoAcPrdId(String activityname,String prdtable){
			String sql = "select * from xiaoacmessage where activityname=? and productiontable=?";
			String[] array = {activityname,prdtable};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			
			return list;
		}
		
		
		
		public  List<Map<String , Object>> queryAcPrd(String flag,List<Map<String,Object>> listprdtb){
			String sqltemp=" select name,authorid,authorseq,score,rank,time from ";
			String sql="";
			String conn = " Union All select name,authorid,authorseq,score,rank,time from ";
			int n=0;
			for(int i=0;i<listprdtb.size();i++){
				String prdtb = (String) listprdtb.get(i).get("productiontable");
				if("论文".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					sql+=sqltemp+" lunwen where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("专利".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" zhuanli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" zhuanli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("学术著作".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" xueshuzhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" xueshuzhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("学科".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" xueke where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" xueke where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("科研奖励".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" keyanjiangli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" keyanjiangli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("科研项目".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" keyanxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" keyanxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("专业".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" zhuanye where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" zhuanye where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("名师".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" mingshi where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" mingshi where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("课程建设".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" kechengjianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" kechengjianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("教学研究项目".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" jxyjxm where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" jxyjxm where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("实践教育项目".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" shijianjiaoyuxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" shijianjiaoyuxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("实验室建设".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" shiyanshijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" shiyanshijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("团队建设".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" tuanduijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" tuanduijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("学科竞赛".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" xuekejingsai where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" xuekejingsai where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("教材著作".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" jiaocaizhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" jiaocaizhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("教学单项成果".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryYuanAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" jxdxcg where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" jxdxcg where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}
			}
			String[] array = {};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryXiaoAcPrd(String flag,List<Map<String,Object>> listprdtb){
			String sqltemp=" select name,authorid,authorseq,score,rank,time from ";
			String sql="";
			String conn = " Union All select name,authorid,authorseq,score,rank,time from ";
			int n=0;
			for(int i=0;i<listprdtb.size();i++){
				String prdtb = (String) listprdtb.get(i).get("productiontable");
				if("论文".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					sql+=sqltemp+" lunwen where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("专利".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" zhuanli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" zhuanli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("学术著作".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" xueshuzhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" xueshuzhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("学科".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" xueke where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" xueke where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("科研奖励".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" keyanjiangli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" keyanjiangli where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("科研项目".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" keyanxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" keyanxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("专业".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" zhuanye where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" zhuanye where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("名师".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" mingshi where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" mingshi where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("课程建设".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" kechengjianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" kechengjianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("教学研究项目".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" jxyjxm where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" jxyjxm where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("实践教育项目".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" shijianjiaoyuxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" shijianjiaoyuxiangmu where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("实验室建设".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" shiyanshijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" shiyanshijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("团队建设".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" tuanduijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" tuanduijianshe where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("学科竞赛".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" xuekejingsai where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" xuekejingsai where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("教材著作".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" jiaocaizhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" jiaocaizhuzuo where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}else if("教学单项成果".equals(prdtb)){
					List<Map<String,Object>> listprdtbid = queryXiaoAcPrdId(flag, prdtb);
					if(n>0){
						sql+=conn+" jxdxcg where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}else{
						sql+=sqltemp+" jxdxcg where id='"+listprdtbid.get(0).get("productionid")+"'" ;
					}
					for(int j=1;j<listprdtbid.size();j++){
						sql+=" or id='"+listprdtbid.get(j).get("productionid")+"'" ;
					}
					n++;
				}
			}
			String[] array = {};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryUserId(String name){
			String sql = "select * from users where name=?";
			String[] array = {name};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			
			return list;
		}
		
		public  List<Map<String , Object>> queryUserIdScore(String productiontb ,List<Map<String,Object>> listprdid){
			String sql = "select sum(t.score) score from "+productiontb+" t,users u where u.id=t.authorid and (t.id='"+listprdid.get(0).get("productionid")+"' ";
			for(int i=1;i<listprdid.size();i++){
				sql+=" or t.id='"+listprdid.get(i).get("productionid")+"'";
			}
			sql+=")";
			String[] array = {};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public List<Map<String,Object>> queryPrdId(String prdtable,String authorid,String activityname){
			String sql="select * from acmessage where productiontable=? and authorid=? and activityname=?";
			String[] array = {prdtable,authorid,activityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public List<Map<String,Object>> queryXiaoPrdId(String prdtable,String authorid,String activityname){
			String sql="select * from xiaoacmessage where productiontable=? and authorid=? and activityname=?";
			String[] array = {prdtable,authorid,activityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryXiaoAcJob(String acticityname){
			String sql = "select distinct jobname from xiaoactivity  where activityname=?";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryAcCmenu(String acticityname,String yname){
			String sql = "select * from activity  where activityname=? and yname=?";
			String[] array = {acticityname,yname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		
		public  List<Map<String , Object>> queryXiaoAcCmenu(String acticityname){
			String sql = "select * from xiaoactivity  where activityname=?";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		public  List<Map<String , Object>> queryCollege(){
			String sql = "select rownum,college from(select distinct college from users where college<>'学校')";
			String[] array = {};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		//查系
		public  List<Map<String , Object>> queryXname(String yname){
			String sql = "select rownum,xname from(select distinct xname from users where xname<>'学校' and college='"+yname+"')";
			String[] array = {};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		//筛选院
		public  List<Map<String , Object>> querySXXiaoPrdTable(String yname,String acticityname){
			String sql = "select distinct productiontable from xiaoacmessage  where activityname=? and authorid in (select id from users where college='"+yname+"')";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		public  List<Map<String , Object>> querySXXiaoAuthors(String yname,String acticityname){
			String sql = "select distinct authorid from xiaoacmessage  where activityname=? and authorid in (select id from users where college='"+yname+"')";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		//筛选系
		public  List<Map<String , Object>> querySXAuthors(String yname,String acticityname,String xname){
			String sql = "select distinct authorid from acmessage  where activityname=? and authorid in (select id from users where college='"+yname+"' and xname='"+xname+"')";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
		public  List<Map<String , Object>> querySXPrdTable(String yname,String acticityname,String xname){
			String sql = "select distinct productiontable from acmessage  where activityname=? and authorid in (select id from users where college='"+yname+"' and xname='"+xname+"')";
			String[] array = {acticityname};
			List<Map<String, Object>> list = BaseDao.query(sql, array);
			return list;
		}
}