package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

public class MenuDao {
	static DBConnectionManage dbcm = new DBConnectionManage();
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs = null;
	
	public String QueryZname(String college,String school){
		String Zname = null;
		//Connection con=DBConnection.getconnection();
		   con = dbcm.getConnection();
		String sql = "select Zname from menu where yname=?and school=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, college);
			pstmt.setString(2, school);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Zname = rs.getString("Zname");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return Zname;
		
	}
	public String QueryC0names(String college,String school){
		String c0names = null;
		 con = dbcm.getConnection();
		String sql = "select c0names from menu where yname=? and school=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, college);
			pstmt.setString(2, school);
			rs = pstmt.executeQuery();
			while(rs.next()){
				c0names = rs.getString("c0names");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return c0names;
		
	}
	
	public String QueryC1names(String college,String school){
		String c1names = null;
		 con = dbcm.getConnection();
		String sql = "select c1names from menu where yname=? and school=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, college);
			pstmt.setString(2, school);
			rs = pstmt.executeQuery();
			while(rs.next()){
				c1names = rs.getString("c1names");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return c1names;
		
	}
	public String[] getList(String list0){
		String[] list = list0.split(";");
		return list;
	}
	
	public void updateC0names(String C0names , String college,String school){
		 con = dbcm.getConnection();
		String sql = "UPDATE menu SET c0names = ? WHERE yname = ? and school=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, C0names);
			pstmt.setString(2, college);
			pstmt.setString(3, school);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	public void updateZname(String Zname,String college,String school){
		 con = dbcm.getConnection();
		String sql = "UPDATE menu SET zname = ? WHERE yname = ? and school=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Zname);
			pstmt.setString(2, college);
			pstmt.setString(3, school);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	public String sortMenu(String list){
		String[] listdot = list.split(";");
		Arrays.sort(listdot);
		String newlist = "";
		for(String s : listdot){
			System.out.print(s+" ");
			newlist = newlist + s+";";
		}
		return newlist;
	}
	
	public void updateC1names(String C1names , String college,String school){
		 con = dbcm.getConnection();
		String sql = "UPDATE menu SET c1names = ? WHERE yname = ? and school=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, C1names);
			pstmt.setString(2, college);
			pstmt.setString(3, school);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
}
