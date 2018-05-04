package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BaseDao {
	static DBConnectionManage dbcm = new DBConnectionManage();
	
	public  static List<Map<String,Object>> query(String sql,String array[]){
    	Map<String,Object> map=null;
    	List<Map<String,Object>> list=new ArrayList();
    	//DBConnection db = new DBConnection();
    	//Connection conn=db.getconnection();
    	
    	Connection conn = dbcm.getConnection();
    	PreparedStatement ps=null;
    	ResultSet rs=null;
    	ResultSetMetaData rsmd=null;   	
    	try {
    		ps = conn.prepareStatement(sql);
    		for(int i=0;i<array.length;i++){
        		 ps.setString(i+1, array[i]);
        	 }
			rs = ps.executeQuery();
    		rsmd=rs.getMetaData();
    		int count=rsmd.getColumnCount();
			
			while (rs.next()) {
				map=new HashMap<String, Object>();
				
				for(int i=1;i<=count;i++){
					
					String colName=rsmd.getColumnLabel(i).toLowerCase();
					String value=rs.getString(colName);
					map.put(colName, value);
				}
				list.add(map);		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}   	
    	finally{
			//System.out.println("finally");
			try {
				if(rs!=null){
					//System.out.println("rs");
				rs.close();
				}
				if(ps!=null){
					//System.out.println("ps");
					ps.close();
				}
				if(conn!=null){
					//System.out.println("conn");
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
		}
	}
    	return list;
    }
	
	
	public  static Map<String,Object> queryOne(String sql,String array[]){
    	Map<String,Object> map=null;
    	//DBConnection db = new DBConnection();
    	//Connection conn=db.getconnection();
    	
    	Connection conn = dbcm.getConnection();
    	PreparedStatement ps=null;
    	ResultSet rs=null;
    	ResultSetMetaData rsmd=null; 
    	try {
    		ps = conn.prepareStatement(sql);
    		for(int i=0;i<array.length;i++){
        		 ps.setString(i+1, array[i]);
        		 
        	 }
			rs = ps.executeQuery();
    		rsmd=rs.getMetaData();
    		int count=rsmd.getColumnCount();
			
			while (rs.next()) {
				map = new HashMap();
				
				for(int i=1;i<=count;i++){
					
					String colName=rsmd.getColumnLabel(i).toLowerCase();
					String value=rs.getString(colName);
					map.put(colName, value);
				}
						
			}
		} catch (Exception e) {
			e.printStackTrace();
		}   finally{
			
				try {
					if(rs!=null){
					rs.close();
					}
					if(ps!=null){
						ps.close();
					}
					if(conn!=null){
						conn.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				
			}
		}
    	return map;
    }
	
    public   static void  update(String sql,String array[]){
    	//DBConnection db = new DBConnection();
    	//Connection conn=db.getconnection();
    	
    	Connection conn = dbcm.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
       
        try {
       	 ps=conn.prepareStatement(sql);
       	 for(int i=0;i<array.length;i++){
       		 ps.setString(i+1, array[i]);
       	 }
       	 
       	 ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			
			try {
				if(rs!=null){
				rs.close();
				}
				if(ps!=null){
					ps.close();
				}
				if(conn!=null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
		}
	}
   	 
    }
	
    public  static Map<String,Object> queryZiDuanName(String sql){
    	Map<String,Object> map = null;
    	//DBConnection db = new DBConnection();
    	//Connection conn=db.getconnection();
    	
    	Connection conn = dbcm.getConnection();
    	PreparedStatement ps=null;
    	ResultSet rs=null;
    	ResultSetMetaData rsmd=null; 
    	try {
    		ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
    		rsmd=rs.getMetaData();
    		int count=rsmd.getColumnCount();
    		map = new HashMap();
			for(int i=1;i<=count;i++){
				
				String colName=rsmd.getColumnLabel(i).toLowerCase();
				map.put(colName, colName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}   finally{
			
				try {
					if(rs!=null){
					rs.close();
					}
					if(ps!=null){
						ps.close();
					}
					if(conn!=null){
						conn.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				
			}
		}
    	return map;
    }
    
    
    
	
    public   static void  addscore(String college){
    	//DBConnection db = new DBConnection();
    	//Connection conn=db.getconnection();
    	
    	Connection conn = dbcm.getConnection();
    	Statement st=null;
        ResultSet rs=null;
       try {
		conn.setAutoCommit(false);
	} catch (SQLException e2) {
		// TODO Auto-generated catch block
		e2.printStackTrace();
	}
        try {
       	 st=conn.createStatement();
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '专业A级', '200', '"+college+"', '200', '150', '90', '80', '0', '国家级重点专业')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '专利A级', '60', '"+college+"', '60', '40', '10', '0', '0', '发明专利')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学术著作A级', '100', '"+college+"', '100', '40', '30', '0', '0', '国家级重要出版社')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学科建设A级', '200', '"+college+"', '200', '120', '100', '0', '0', '国家重点学科')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研项目A级', '200', '"+college+"', '200', '100', '80', '60', '0', '国家级科研项目')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '论文A级', '1000', '"+college+"', '1000', '200', '200', '0', '0', '①【1000】《SCIENCE》、《NATURE》②【200】SSCI收录，SCI收录（发表于Ⅰ区）③【200】《中国社会科学》，《新华文摘》转载。')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '论文B级', '100', '"+college+"', '100', '100', '80', '0', '0', '①SCI收录（发表于Ⅱ区）②《新华文摘》论点摘编，《中国社会科学文摘》转载，《高等学校文科学术文摘》转载。')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '论文D级', '40', '"+college+"', '40', '20', '10', '0', '0', '①SCI收录（发表于Ⅳ区）②《新华文摘》篇目辑览，《中国社会科学文摘》推荐篇目③高水平学术机构主办，且同时入选北大核心、中国科学引文数据库核心期刊（CSCD，科技类）2个系统的学术期刊④高水平学术机构主办，且入选CSSCI、CASS、北大核心中任意2个系统的学术期刊⑤同时入选CSSCI、CASS、北大核心3个系统的学术期刊⑥中国教育报。')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '论文E级', '30', '"+college+"', '30', '20', '10', '0', '0', '①EI收录（期刊论文）、AHCI收录②入选CSSCI的学术期刊③同时入选CSCD、北大核心2个系统的学术期刊④同时入选CASS、北大核心2个系统的学术期刊⑤中国科学报（中国科学院）、中国社会科学报（中国社科院）。')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '专利B级', '20', '"+college+"', '20', '0', '0', '0', '0', '实用新型专利')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '专利C级', '10', '"+college+"', '10', '0', '0', '0', '0', '外观设计专利')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学术著作B级', '60', '"+college+"', '60', '24', '0', '0', '0', '全国百佳图书出版单位（国家新闻出版总署，2009）')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学术著作C级', '40', '"+college+"', '40', '16', '0', '0', '0', '各学科的中央级出版社各省人民、教育、美术等出版社985院校出版社')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学术著作D级', '30', '"+college+"', '30', '12', '0', '0', '0', '其他正式出版社')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学科建设B级', '60', '"+college+"', '60', '0', '0', '0', '0', '省级重点学科')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学科建设C级', '60', '"+college+"', '60', '0', '0', '0', '0', '市级学科团队')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '学科建设D级', '40', '"+college+"', '40', '0', '0', '0', '0', '校级重点学科')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研奖励A级', '1000', '"+college+"', '1000', '0', '0', '0', '0', '国家级科研奖')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研奖励E级', '40', '"+college+"', '40', '0', '0', '0', '0', '省高校科研奖（省教育厅）')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研奖励B级', '200', '"+college+"', '200', '0', '0', '0', '0', '教育部科研奖')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研奖励C级', '100', '"+college+"', '100', '0', '0', '0', '0', '省部级科研奖')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研奖励D级', '60', '"+college+"', '60', '0', '0', '0', '0', '哈尔滨市级科研奖、省教育科研奖、省艺术科研奖')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研项目B级', '100', '"+college+"', '100', '0', '0', '0', '0', '教育部科研项目')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研项目C级', '60', '"+college+"', '60', '0', '0', '0', '0', '省部级科研项目')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研项目D级', '40', '"+college+"', '40', '0', '0', '0', '0', '市级科研项目、省教育规划项目、艺术规划项目')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '专业B级', '100', '"+college+"', '100', '80', '0', '0', '0', '省级重点专业')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '专业C级', '20', '"+college+"', '20', '0', '0', '0', '0', '校级重点专业')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教学名师A级', '200', '"+college+"', '200', '0', '0', '0', '0', '国家级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教学名师B级', '100', '"+college+"', '100', '0', '0', '0', '0', '省级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教学名师C级', '60', '"+college+"', '60', '0', '0', '0', '0', '校级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '课程建设A级', '200', '"+college+"', '200', '0', '0', '0', '0', '国家级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '课程建设B级', '100', '"+college+"', '100', '0', '0', '0', '0', '省级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '课程建设C级', '30', '"+college+"', '30', '0', '0', '0', '0', '校级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教学研究项目A级', '200', '"+college+"', '200', '80', '60', '0', '0', '国家级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教学研究项目B级', '60', '"+college+"', '60', '24', '20', '0', '0', '省级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教学研究项目C级', '20', '"+college+"', '20', '8', '6', '0', '0', '校级')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '实验室建设A级', '200', '"+college+"', '200', '80', '60', '0', '0', '国家级实验教学示范中心')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '实验室建设B级', '60', '"+college+"', '60', '24', '20', '0', '0', '省级实验教学示范中心')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '实验室建设C级', '20', '"+college+"', '20', '8', '6', '0', '0', '校级实验教学示范中心')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教材著作A类', '100', '"+college+"', '100', '40', '30', '0', '0', '国家级规划教材')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教材著作B类', '60', '"+college+"', '60', '24', '18', '0', '0', '国家级出版社')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教材著作C类', '40', '"+college+"', '40', '16', '12', '0', '0', '各省人民、教育、美术等出版社985院校出版社')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '教材著作D类', '30', '"+college+"', '30', '0', '0', '0', '0', '其他正式出版社')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '科研项目E级', '30', '"+college+"', '30', '0', '0', '0', '0', '省高校科研项目（省教育厅）')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '论文C级', '60', '"+college+"', '60', '40', '20', '0', '0', '①SCI收录（发表于Ⅲ区）②《中国社会科学文摘》论点摘要，《高等学校文科学术文摘》学术卡片③《人大报刊复印资料》转载④高水平学术机构主办，且同时入选中国社会科学核心期刊(CSSCI，社科类)、中国人文社会科学核心期刊(CASS，社科类)、全国中文核心期刊（北大核心，综合类）3个系统的学术期刊⑤光明日报、人民日报。')");

       	st.executeBatch();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally{
			
			try {
				if(st!=null){
					st.close();
				}
				if(conn!=null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
		}
	}
   	 
    }
}
