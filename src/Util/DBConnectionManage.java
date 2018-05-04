package Util;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBConnectionManage {
	 private static ComboPooledDataSource cpds = null; 
	    public static void init()  { 
	       // �������ݿ����ӳ� 
	        String DRIVER_NAME = SystemConfig.getConfigInfomation("DRIVER_NAME"); // ������ 
	        String DATABASE_URL = SystemConfig.getConfigInfomation("DATABASE_URL"); // ���ݿ�����url 
	        String DATABASE_USER = SystemConfig.getConfigInfomation("DATABASE_USER"); // ���ݿ��û��� 
	        String DATABASE_PASSWORD = SystemConfig.getConfigInfomation("DATABASE_PASSWORD"); // ���ݿ����� 
	       int Min_PoolSize = 5; 
	       int Max_PoolSize = 20; 
	       int Acquire_Increment = 5; 
	       int Initial_PoolSize = 10; 
	       // ÿ��3000s���������Ƿ��������ʹ�� 
	       int Idle_Test_Period = 3000; 
	       // ÿ��������֤�����Ƿ���� 
	        String Validate = SystemConfig.getConfigInfomation("Validate"); 
	   if (Validate.equals(""))  { 
	           Validate = "false"; 
	       } 
	       // ��С������ 
	        try  { 
	            Min_PoolSize = Integer.parseInt(SystemConfig.getConfigInfomation("Min_PoolSize")); 
	       } catch (Exception ex)  { 
	           ex.printStackTrace(); 
	       } 
	       // �������� 
	        try  { 
	            Acquire_Increment = Integer.parseInt(SystemConfig.getConfigInfomation("Acquire_Increment")); 
	        } catch (Exception ex)  { 
	            ex.printStackTrace(); 
	        } 
	        // ��������� 
	        try  { 
	            Max_PoolSize = Integer.parseInt(SystemConfig.getConfigInfomation("Max_PoolSize")); 
	        } catch (Exception ex)  { 
	            ex.printStackTrace(); 
	        } 
	        // ��ʼ�������� 
	        try  { 
	            Initial_PoolSize = Integer.parseInt(SystemConfig.getConfigInfomation("Initital_PoolSize")); 
	        } catch (Exception ex)  { 
	            ex.printStackTrace(); 
	        } 
	        // ÿ��3000s���������Ƿ��������ʹ�� 
	        try  { 
	            Idle_Test_Period = Integer.parseInt(SystemConfig.getConfigInfomation("Idle_Test_Period")); 
	        } catch (Exception ex)  { 
	            ex.printStackTrace(); 
	        } 

	        try  { 
	              cpds = new ComboPooledDataSource(); 
	              cpds.setDriverClass(DRIVER_NAME); // ������ 
	              cpds.setJdbcUrl(DATABASE_URL); // ���ݿ�url 
	              cpds.setUser(DATABASE_USER); // �û��� 
	              cpds.setPassword(DATABASE_PASSWORD); // ���� 
	              cpds.setInitialPoolSize(Initial_PoolSize); // ��ʼ�����ӳش�С 
	              cpds.setMinPoolSize(Min_PoolSize); // ���������� 
	              cpds.setMaxPoolSize(Max_PoolSize); // ��������� 
	              cpds.setAcquireIncrement(Acquire_Increment); // ������������ 
	              cpds.setIdleConnectionTestPeriod(Idle_Test_Period); // ��������Ч��ʱ���� 
	              cpds.setTestConnectionOnCheckout(Boolean.getBoolean(Validate)); // ÿ��������֤�����Ƿ���� 
	        } catch (Exception ex)  { 
	            ex.printStackTrace(); 
	       } 
	    } 

	    public static Connection getConnection()  { 
	            Connection connection = null; 
	        try  { 
	            if (cpds == null)  { 
	                init(); 
	            } 
	            // getconnection 
	            connection = cpds.getConnection(); 
	        } catch (SQLException ex)  { 
	            ex.printStackTrace(); 
	        } 
	        return connection; 
	    } 

	    public static void release()  { 
	        try  { 
	            if (cpds != null)  { 
	                cpds.close(); 
	            } 
	        } catch (Exception ex)  { 
	            ex.printStackTrace(); 
	        } 
	    } 
}
