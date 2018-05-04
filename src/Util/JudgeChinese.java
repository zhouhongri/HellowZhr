package Util;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class JudgeChinese {
	public boolean vd(String str){
		  
	    char[] chars=str.toCharArray(); 
	    boolean isGB2312=false; 
	    for(int i=0;i<chars.length;i++){
	                byte[] bytes=(""+chars[i]).getBytes(); 
	                if(bytes.length==2){ 
	                            int[] ints=new int[2]; 
	                            ints[0]=bytes[0]& 0xff; 
	                            ints[1]=bytes[1]& 0xff; 
	                           
	  if(ints[0]>=0x81 && ints[0]<=0xFE &&  
	ints[1]>=0x40 && ints[1]<=0xFE){ 
	                                        isGB2312=true; 
	                                        break; 
	                            } 
	                } 
	    } 
	    return isGB2312; 
	}
	
	public String querySchoolById(HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("userid");
		String sql = "select * from users where id=?";
	    String[] array={id};
	    List<Map<String,Object>> list = BaseDao.query(sql, array);
	    String school = (String) list.get(0).get("school");
	    return school;
	}
}
