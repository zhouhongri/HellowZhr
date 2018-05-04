package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class XueShuZZDao {
	static DBConnectionManage dbcm = new DBConnectionManage();
	  public static void update(String id,String[] list, String idtentity, String time) throws SQLException{
		//Connection con=DBConnection.getconnection();
		  Connection con = dbcm.getConnection();
		  PreparedStatement ps=null;
		  String sql="UPDATE xueshuzhuzuo SET name = ?,chubanshe=?,author=?,authorseq=?,url=?,score=?,rank=?,score2=?,search=?,time=to_date('"+time+"','yyyy-mm-dd')";
		  if("0".equals(idtentity)||"1".equals(idtentity)){
			  sql+=",status=0";
		  }
		  if("0".equals(idtentity)||"2".equals(idtentity)){
			  sql+=",status2=0";
		  }
		  sql+=" WHERE id=?";
		  try {
			ps = con.prepareStatement(sql);
			for(int i=0;i<list.length;i++){
				ps.setString(i+1, list[i]);
				if(i==list.length-1){
					ps.setString(i+2, id);
				}
			}
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			con.close();
			ps.close();
			
		}
	  }

	  public static void del(String id) throws SQLException{
		//Connection con=DBConnection.getconnection();
		  Connection con = dbcm.getConnection();
		  PreparedStatement ps=null;
		  String sql = "DELETE FROM xueshuzhuzuo WHERE id = ?";
		  try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			con.close();
			ps.close();
		}
	  }
	  
	  public static void pass(String id) throws SQLException{
		//Connection con=DBConnection.getconnection();
		  Connection con = dbcm.getConnection();
		  PreparedStatement ps=null;
		  String sql = "UPDATE xueshuzhuzuo SET status = 1 WHERE id = ?";
		  try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			con.close();
			ps.close();
		}
	  }
	  
	  public static void pass2(String id){
		//Connection con=DBConnection.getconnection();
		  Connection con = dbcm.getConnection();
		  PreparedStatement ps=null;
		  String sql = "UPDATE xueshuzhuzuo SET status2 = 1 WHERE id = ?";
		  try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	  }
	  
	  public static void nopass(String id){
		//Connection con=DBConnection.getconnection();
		  Connection con = dbcm.getConnection();
		  PreparedStatement ps=null;
		  String sql = "UPDATE xueshuzhuzuo SET status = 2 WHERE id = ?";
		  try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	  }
	  
	  public static void nopass2(String id){
		//Connection con=DBConnection.getconnection();
		  Connection con = dbcm.getConnection();
		  PreparedStatement ps=null;
		  String sql = "UPDATE xueshuzhuzuo SET status2 = 2 WHERE id = ?";
		  try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	  }
	
}
