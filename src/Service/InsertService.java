package Service;

import Util.BaseDao;

public class InsertService {
	public void insertlw(String lwbt,String kwmc,String stime,String ec,String sc,String ic,String zzmz,String zzgh,String ztslt,String dj,String df,String url,String shzt,String searchsouce, String status2, String score2){
		String sql = "insert into LUNWEN values(lunwen_seq.nextval,'"+lwbt+"','"+kwmc+"',to_date('"+stime+"','yyyy-mm-dd'),'"+ec+"','"+sc+"','"+ic+"','"+zzmz+"','"+zzgh+"','"+ztslt+"','"+dj+"','"+df+"','"+url+"','"+shzt+"','"+searchsouce+"','"+status2+"','"+score2+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	
	public void insertXSZZ(String name,String chubanshe,String year,String author,String authorseq,String authorid,String url,String score,String rank,String status, String searchsouce, String status2, String score2){
		String sql = "insert into xueshuzhuzuo values(xueshuzhuzuo_seq.nextval,'"+name+"','"+rank+"',to_date('"+year+"','yyyy-mm-dd'),'"+author+"','"+authorid+"','"+authorseq+"','"+score+"','"+status+"','"+chubanshe+"','"+url+"','"+searchsouce+"','"+score2+"','"+status2+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertKYJL(String name,String year,String author,String authorseq,String authorid,String url,String score,String rank,String status, String searchsouce,String status2, String score2){
		String sql = "insert into keyanjiangli values(keyanjiangli_seq.nextval,'"+name+"','"+rank+"',to_date('"+year+"','yyyy-mm-dd'),'"+author+"','"+authorid+"','"+authorseq+"','"+score+"','"+status+"','"+url+"','"+searchsouce+"','"+score2+"','"+status2+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertzl(String zlmz,String zlh,String stime,String zzmz,String zzgh,String ztslt,String dj,String df,String url,String shzt,String searchsouce, String status2, String df2){
		String sql = "insert into zhuanli values(zhuanli_seq.nextval,'"+zlmz+"','"+dj+"',to_date('"+stime+"','yyyy-mm-dd'),'"+zzgh+"','"+zzmz+"','"+ztslt+"','"+shzt+"','"+zlh+"','"+df+"',null,'"+url+"','"+searchsouce+"','"+df2+"','"+status2+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertxkjs(String lwbt,String stime,String zzmz,String zzgh,String ztslt,String dj,String df,String url,String shzt,String searchsouce,String status2, String score2){
		String sql = "insert into xueke values(xueke_seq.nextval,'"+lwbt+"','"+dj+"','"+zzgh+"','"+zzmz+"','"+ztslt+"',to_date('"+stime+"','yyyy-mm-dd'),'"+df+"','"+url+"','"+shzt+"','"+searchsouce+"','"+score2+"','"+status2+"')";
		String array[] = {};
		BaseDao.update(sql, array);
		
	}
	public void insertkyxm(String xmmz,String stime,String zzmz,String zzgh,String ztslt,String dj,String df,String url,String shzt,String searchsouce,String status2, String score2){
		String sql = "insert into keyanxiangmu values(xueke_seq.nextval,'"+xmmz+"','"+dj+"',null,'"+zzgh+"','"+zzmz+"','"+ztslt+"','"+df+"',to_date('"+stime+"','yyyy-mm-dd'),'"+shzt+"','"+url+"','"+searchsouce+"','"+score2+"','"+status2+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertzy(String zyname,String rank,String zzgh,String zzmz,String authorseq,String year, String df,String
			status,String searchsouce,String  df2, String status2,String url){
		String sql = "insert into zhuanye values(zhuanye_seq.nextval,'"+zyname+"','"+rank+"','"+zzgh+"','"+zzmz+"','"+authorseq+"',to_date('"+year+"','yyyy-mm-dd'),'"+df+"','"+status+"','"+searchsouce+"','"+df2+"','"+status2+"','"+url+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertms(String rank,String zzgh,String zzmz,String df,String status,String year,String searchsouce,String df2,
			String status2,String authorseq,String url){
		String sql = "insert into mingshi values(MINGSHI_SEQ.nextval,'"+rank+"','"+zzgh+"','"+zzmz+"','"+df+"','"+status+"',to_date('"+year+"','yyyy-mm-dd'),'"+searchsouce+"','"+df2+"','"+status2+"','"+authorseq+"','"+url+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertkcjs(String zyname,String rank,String zzgh,String zzmz,String authorseq,String year, String df,String
			status,String searchsouce,String  df2, String status2,String url){
		String sql = "insert into kechengjianshe values(kechengjianshe_seq.nextval,'"+zyname+"','"+rank+"','"+zzgh+"','"+zzmz+"','"+authorseq+"',to_date('"+year+"','yyyy-mm-dd'),'"+df+"','"+status+"','"+searchsouce+"','"+df2+"','"+status2+"','"+url+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertjxyjxm(String zyname,String rank,String zzgh,String zzmz,String authorseq,String year, String df,String
			status,String searchsouce,String  df2, String status2,String url){
		String sql = "insert into jxyjxm values(jxyjxm_seq.nextval,'"+rank+"','"+zzgh+"','"+zzmz+"','"+authorseq+"','"+df+"','"+status+"',to_date('"+year+"','yyyy-mm-dd'),'"+zyname+"','"+searchsouce+"','"+df2+"','"+status2+"','"+url+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertsysjs(String zyname,String rank,String zzgh,String zzmz,String authorseq,String year, String df,String
			status,String searchsouce,String  df2, String status2,String url){
		String sql = "insert into shiyanshijianshe values(shiyanshijianshe_seq.nextval,'"+rank+"','"+zzgh+"','"+zzmz+"','"+authorseq+"','"+df+"','"+status+"',to_date('"+year+"','yyyy-mm-dd'),'"+zyname+"','"+searchsouce+"','"+df2+"','"+status2+"','"+url+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
	public void insertjczz(String name,String chubanshe, String rank,String zzgh,String zzmz,String authorseq,String year, String df,String
			status,String searchsouce,String  df2, String status2,String url){
		String sql = "insert into jiaocaizhuzuo values(jiaocaizhuzuo_seq.nextval,'"+name+"','"+rank+"','"+zzgh+"','"+zzmz+"','"+authorseq+"',to_date('"+year+"','yyyy-mm-dd'),'"+df+"','"+status+"','"+searchsouce+"','"+df2+"','"+status2+"','"+url+"','"+chubanshe+"')";
		String array[] = {};
		BaseDao.update(sql, array);
	}
}
