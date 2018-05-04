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
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'רҵA��', '200', '"+college+"', '200', '150', '90', '80', '0', '���Ҽ��ص�רҵ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ר��A��', '60', '"+college+"', '60', '40', '10', '0', '0', '����ר��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ������A��', '100', '"+college+"', '100', '40', '30', '0', '0', '���Ҽ���Ҫ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ�ƽ���A��', '200', '"+college+"', '200', '120', '100', '0', '0', '�����ص�ѧ��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '������ĿA��', '200', '"+college+"', '200', '100', '80', '60', '0', '���Ҽ�������Ŀ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '����A��', '1000', '"+college+"', '1000', '200', '200', '0', '0', '�١�1000����SCIENCE������NATURE���ڡ�200��SSCI��¼��SCI��¼�������ڢ������ۡ�200�����й�����ѧ�������»���ժ��ת�ء�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '����B��', '100', '"+college+"', '100', '100', '80', '0', '0', '��SCI��¼�������ڢ������ڡ��»���ժ���۵�ժ�࣬���й�����ѧ��ժ��ת�أ����ߵ�ѧУ�Ŀ�ѧ����ժ��ת�ء�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '����D��', '40', '"+college+"', '40', '20', '10', '0', '0', '��SCI��¼�������ڢ������ڡ��»���ժ��ƪĿ���������й�����ѧ��ժ���Ƽ�ƪĿ�۸�ˮƽѧ���������죬��ͬʱ��ѡ������ġ��й���ѧ�������ݿ�����ڿ���CSCD���Ƽ��ࣩ2��ϵͳ��ѧ���ڿ��ܸ�ˮƽѧ���������죬����ѡCSSCI��CASS���������������2��ϵͳ��ѧ���ڿ���ͬʱ��ѡCSSCI��CASS���������3��ϵͳ��ѧ���ڿ����й���������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '����E��', '30', '"+college+"', '30', '20', '10', '0', '0', '��EI��¼���ڿ����ģ���AHCI��¼����ѡCSSCI��ѧ���ڿ���ͬʱ��ѡCSCD���������2��ϵͳ��ѧ���ڿ���ͬʱ��ѡCASS���������2��ϵͳ��ѧ���ڿ����й���ѧ�����й���ѧԺ�����й�����ѧ�����й����Ժ����')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ר��B��', '20', '"+college+"', '20', '0', '0', '0', '0', 'ʵ������ר��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ר��C��', '10', '"+college+"', '10', '0', '0', '0', '0', '������ר��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ������B��', '60', '"+college+"', '60', '24', '0', '0', '0', 'ȫ���ټ�ͼ����浥λ���������ų�������2009��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ������C��', '40', '"+college+"', '40', '16', '0', '0', '0', '��ѧ�Ƶ����뼶�������ʡ���񡢽����������ȳ�����985ԺУ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ������D��', '30', '"+college+"', '30', '12', '0', '0', '0', '������ʽ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ�ƽ���B��', '60', '"+college+"', '60', '0', '0', '0', '0', 'ʡ���ص�ѧ��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ�ƽ���C��', '60', '"+college+"', '60', '0', '0', '0', '0', '�м�ѧ���Ŷ�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ѧ�ƽ���D��', '40', '"+college+"', '40', '0', '0', '0', '0', 'У���ص�ѧ��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '���н���A��', '1000', '"+college+"', '1000', '0', '0', '0', '0', '���Ҽ����н�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '���н���E��', '40', '"+college+"', '40', '0', '0', '0', '0', 'ʡ��У���н���ʡ��������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '���н���B��', '200', '"+college+"', '200', '0', '0', '0', '0', '���������н�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '���н���C��', '100', '"+college+"', '100', '0', '0', '0', '0', 'ʡ�������н�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '���н���D��', '60', '"+college+"', '60', '0', '0', '0', '0', '�������м����н���ʡ�������н���ʡ�������н�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '������ĿB��', '100', '"+college+"', '100', '0', '0', '0', '0', '������������Ŀ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '������ĿC��', '60', '"+college+"', '60', '0', '0', '0', '0', 'ʡ����������Ŀ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '������ĿD��', '40', '"+college+"', '40', '0', '0', '0', '0', '�м�������Ŀ��ʡ�����滮��Ŀ�������滮��Ŀ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'רҵB��', '100', '"+college+"', '100', '80', '0', '0', '0', 'ʡ���ص�רҵ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'רҵC��', '20', '"+college+"', '20', '0', '0', '0', '0', 'У���ص�רҵ')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '��ѧ��ʦA��', '200', '"+college+"', '200', '0', '0', '0', '0', '���Ҽ�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '��ѧ��ʦB��', '100', '"+college+"', '100', '0', '0', '0', '0', 'ʡ��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '��ѧ��ʦC��', '60', '"+college+"', '60', '0', '0', '0', '0', 'У��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�γ̽���A��', '200', '"+college+"', '200', '0', '0', '0', '0', '���Ҽ�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�γ̽���B��', '100', '"+college+"', '100', '0', '0', '0', '0', 'ʡ��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�γ̽���C��', '30', '"+college+"', '30', '0', '0', '0', '0', 'У��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '��ѧ�о���ĿA��', '200', '"+college+"', '200', '80', '60', '0', '0', '���Ҽ�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '��ѧ�о���ĿB��', '60', '"+college+"', '60', '24', '20', '0', '0', 'ʡ��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '��ѧ�о���ĿC��', '20', '"+college+"', '20', '8', '6', '0', '0', 'У��')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ʵ���ҽ���A��', '200', '"+college+"', '200', '80', '60', '0', '0', '���Ҽ�ʵ���ѧʾ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ʵ���ҽ���B��', '60', '"+college+"', '60', '24', '20', '0', '0', 'ʡ��ʵ���ѧʾ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, 'ʵ���ҽ���C��', '20', '"+college+"', '20', '8', '6', '0', '0', 'У��ʵ���ѧʾ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�̲�����A��', '100', '"+college+"', '100', '40', '30', '0', '0', '���Ҽ��滮�̲�')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�̲�����B��', '60', '"+college+"', '60', '24', '18', '0', '0', '���Ҽ�������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�̲�����C��', '40', '"+college+"', '40', '16', '12', '0', '0', '��ʡ���񡢽����������ȳ�����985ԺУ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '�̲�����D��', '30', '"+college+"', '30', '0', '0', '0', '0', '������ʽ������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '������ĿE��', '30', '"+college+"', '30', '0', '0', '0', '0', 'ʡ��У������Ŀ��ʡ��������')");
       	st.addBatch("INSERT INTO SCORE VALUES (SCORE_SEQ.nextval, '����C��', '60', '"+college+"', '60', '40', '20', '0', '0', '��SCI��¼�������ڢ������ڡ��й�����ѧ��ժ���۵�ժҪ�����ߵ�ѧУ�Ŀ�ѧ����ժ��ѧ����Ƭ�ۡ��˴󱨿���ӡ���ϡ�ת�آܸ�ˮƽѧ���������죬��ͬʱ��ѡ�й�����ѧ�����ڿ�(CSSCI�������)���й���������ѧ�����ڿ�(CASS�������)��ȫ�����ĺ����ڿ���������ģ��ۺ��ࣩ3��ϵͳ��ѧ���ڿ��ݹ����ձ��������ձ���')");

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
