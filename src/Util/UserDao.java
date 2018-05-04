package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class UserDao {
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs = null;
	static DBConnectionManage dbcm = new DBConnectionManage();
	
	public String QueryIdPwd(String username ,String pwd,String school){
		String password = "";
		String flag = "fasle";
		con = dbcm.getConnection();
		String sql="select pwd from users where username=? and school=?";
		//System.out.println(id+pwd);
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, school);
			rs = pstmt.executeQuery();
			while(rs.next()){
				password = rs.getString("pwd");
			}
			if(pwd.equals(password)){
				flag = "true";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return flag;
		
	}
	
	public String QueryIdPwd(String id ,String pwd){
		String password = "";
		String flag = "fasle";
		con = dbcm.getConnection();
		String sql="select pwd from users where id=? ";
		//System.out.println(id+pwd);
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				password = rs.getString("pwd");
			}
			if(pwd.equals(password)){
				flag = "true";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return flag;
		
	}
	
	public String addUser(String id,String pwd){
		String flag = "true";
		con = dbcm.getConnection();
		String sql = "insert into users(id,pwd) values(?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return null;
	}
	
	public String QueryName(String id){
		String name = null;
		con = dbcm.getConnection();
		String sql = "select name from users where id=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				name = rs.getString("name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return name;
		
	}
	
	public String QueryIdentity(String id){
		String identity = null;
		con = dbcm.getConnection();
		String sql = "select identity from users where id=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				identity = rs.getString("identity");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return identity;
		
	}
	
	public String QueryCollege(String id){
		String college = null;
		con = dbcm.getConnection();
		String sql = "select college from users where id=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				college = rs.getString("college");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return college;
	}
	
	public String QueryId(String college){
		String id = null;
		con = dbcm.getConnection();
		String sql = "select wm_concat(id) id from users  where college = ? group by college ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, college);
			rs = pstmt.executeQuery();
			while(rs.next()){
				id = rs.getString("id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return id;
	}
	public String QueryJXCount(String sql2){
		String count = null;
		con = dbcm.getConnection();
		String sql = sql2;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				count = rs.getString("count(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return count;
	}
	
	public String QueryJXScore(String sql2){
		String count = null;
		con = dbcm.getConnection();
		String sql = sql2;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				count = rs.getString("score");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return count;
	}
	
	//查询职称
		public List<Map<String,Object>> QueryJobJobtimeLasttime(String id){
			String sql = "select job,to_char(jobtime,'yyyy-mm-dd') jobtime,to_char(lasttime,'yyyy-mm-dd') lasttime from users where id=?";
			String[] array={id};
			List list = BaseDao.query(sql, array);
			return list;
		}
		//更新lasttime
		public void updateLasttime(String thistime,String id){
			String sql = "update users set lasttime=to_date(?,'yyyy-mm-dd') where id=?";
			String[] array={thistime,id};
			BaseDao.update(sql, array);
		}
}
