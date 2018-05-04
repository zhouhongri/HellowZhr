package Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Util.BaseDao;

public class FileUDService {
	
	public static void uploadService(String userid, String username,String uploadtime, String filestorename, String filerealname, String filetype,String filesize,String fileuploadpath, String zuopinid, String zuopintype){
		String sql="insert into uploadfilemessage values(uploadfilemessage_seq.nextval,to_date('"+uploadtime+"','YYYY-MM-DD HH24:MI:SS'),'"+userid+"','"+username+"','"+filestorename+"','"+filerealname+"','"+fileuploadpath+"','"+filetype+"','"+filesize+"','"+zuopinid+"','"+zuopintype+"')";
		String[] array = {};
		BaseDao.update(sql, array);
	}
	
	
	public Map<String, Object> queryFile(String id,String type){
		Map<String, Object> map = new HashMap();
		String sql="select * from (select l.*,u.* from "+type+" l left join uploadfilemessage u on l.id=u.zuopinid and u.zuopintype='"+type+"') where id="+id+"";
		String[] array = {};
		map = BaseDao.queryOne(sql, array);
		return map;
	}
	
	public static void deleteFile(String zuopinid){
		String sql = "delete from uploadfilemessage where zuopinid=?";
		String[] array = {zuopinid};
		BaseDao.update(sql, array);
	}
	
	
	public static Map<String, Object> queryUserHeadPortrait(String userid, String zuopintype){
		Map<String, Object> map = new HashMap();
		String sql = "select * from uploadfilemessage where userid =? and zuopintype = ?";
		String[] array = {userid, zuopintype};
		map = BaseDao.queryOne(sql, array);
		return map;
	}
	
	public static void deleteFile2(String fileid){
		String sql = "delete from uploadfilemessage where fileid=?";
		String[] array = {fileid};
		BaseDao.update(sql, array);
	}
}
