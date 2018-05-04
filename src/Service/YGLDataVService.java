package Service;

import Util.UserDao;

public class YGLDataVService {
	
	UserDao ud = new UserDao();
	public int[] count(String year, String jixiao, String id) {
		int[] array = new int[12];
		
		for(int i = 1; i<=12; i++){
			int j = 30;
			if(i==2){
				j=28;
			}if(i%2==1){
				j=31;
			}if(i==8||i>8){
				if(i%2==1){
					j=30;
				}else{
					j=31;
				}
			}
		String sql = "select count(*) from " + jixiao + " where authorid = '" + id + "' "+ 
				  "and time between to_date('" + year+ "-"+i+"-1','yyyy-mm-dd') " +
				  "and to_date('" + year+ "-"+i+"-"+j+"','yyyy-mm-dd') and status = 1";
		array[i-1] = Integer.parseInt(ud.QueryJXCount(sql));
		}
		
		return array;
	}
	
	public String[] score(String year, String jixiao, String id) {
		String[] array = new String[12];
		
		for(int i = 1; i<=12; i++){
			int j = 30;
			if(i==2){
				j=28;
			}if(i%2==1){
				j=31;
			}if(i==8||i>8){
				if(i%2==1){
					j=30;
				}else{
					j=31;
				}
			}
		String sql = "select wm_concat(score) score from " + jixiao + " where authorid = '" + id + "' "+ 
				  "and time between to_date('" + year+ "-"+i+"-1','yyyy-mm-dd') " +
				  "and to_date('" + year+ "-"+i+"-"+j+"','yyyy-mm-dd') and status = 1";
		array[i-1] = ud.QueryJXScore(sql);
		}
		
		return array;
	}
	
}
