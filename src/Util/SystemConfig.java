package Util;

import java.util.ResourceBundle;

public class SystemConfig {

	  static String configFile = "SystemConfigResources"; 
	    public static String getConfigInfomation(String itemIndex) { 
	        try { 
	            ResourceBundle resource = ResourceBundle.getBundle(configFile); 
	            return resource.getString(itemIndex); 
	        } catch (Exception e) { 
	            return ""; 
	        } 
	    } 
	
}
