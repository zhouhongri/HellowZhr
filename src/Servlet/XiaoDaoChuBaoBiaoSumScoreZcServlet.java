package Servlet;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import jxl.CellView;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.VerticalAlignment;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import Service.LunWenService;
import Service.MsgService;
import Util.ExcelDao;

public class XiaoDaoChuBaoBiaoSumScoreZcServlet extends HttpServlet{
	MsgService ms = new MsgService();
	ExcelDao ed = new ExcelDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		String jobname = req.getParameter("jobname");
		if(jobname!=null){
			jobname = URLDecoder.decode(jobname,"utf-8");
		}else{
			jobname="У����";
		}
		String flag = req.getParameter("flag");
		String college = req.getParameter("college");
		List<String> header=new ArrayList<String>();
		header.add("����");
		header.add("Ժϵ");
		List<String> list = new ArrayList<String>();
		List<String> listyname = new ArrayList<String>();
		List<Map<String,Object>> listcmenu = ms.queryXiaoAcCmenu(flag);
		String cmenu = (String) listcmenu.get(0).get("cmenu");
		List<Map<String,Object>> listtemp = new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		int keyanscore=0;
		int jiaoxuescore=0;
		int sum=0;
		int kyn=0;
		int jxn=0;
		if(cmenu.contains("���Ĺ���")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("���з���");
			}
			kyn++;
		}if(cmenu.contains("ר������")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("���з���");
			}
			kyn++;
		}if(cmenu.contains("ѧ����������")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("���з���");
			}
			kyn++;
		}if(cmenu.contains("ѧ�ƹ���")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("���з���");
			}
			kyn++;
		}if(cmenu.contains("������Ŀ����")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("���з���");
			}
			kyn++;
		}if(cmenu.contains("���н�������")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("���з���");
			}
		}if(cmenu.contains("רҵ����")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("��ʦ����")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("�γ̽������")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("��ѧ�о���Ŀ����")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("ʵ��������Ŀ����")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("ʵ���ҽ������")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("�Ŷӽ������")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("ѧ�ƾ�������")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("�̲���������")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
			jxn++;
		}if(cmenu.contains("��ѧ����ɹ�����")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("��ѧ����");
			}
		}
		header.add("�ܷ�");
		sum=jiaoxuescore+keyanscore;
		map.put("sum", sum);
		listtemp.add(map);
		
		List<Map<String,Object>> listprdtable = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> listprdtbid = new ArrayList<Map<String,Object>>();
		if(college!=null){
			college = URLDecoder.decode(college,"utf-8");
			if(!"ȫ��".equals(college)&&!"".equals(college)){
				listprdtable = ms.querySXXiaoPrdTable(college,flag);
				listprdtbid = ms.querySXXiaoAuthors(college,flag);
			}else{
				listprdtable = ms.queryXiaoPrdTable(flag);
				listprdtbid = ms.queryXiaoAuthors(flag);
			}
		}else{
			listprdtable = ms.queryXiaoPrdTable(flag);
			listprdtbid = ms.queryXiaoAuthors(flag);
		}
		if(listprdtbid.size()>0){
			List<Map<String,Object>> listuserstemp = ms.queryUsers(listprdtbid);
			List<Map<String,Object>> listusers = new ArrayList<Map<String,Object>>();
			if("У����".equals(jobname)){
				listusers = ms.queryUsers(listprdtbid);
			}else{
				for(int i=0;i<listuserstemp.size();i++){
					if(listuserstemp.get(i).get("job")==null&&"����".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
					else if("����".equals(listuserstemp.get(i).get("job"))&&"��ʦ".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
					else if("��ʦ".equals(listuserstemp.get(i).get("job"))&&"������".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
					else if("������".equals(listuserstemp.get(i).get("job"))&&"����".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
				}
			}
			
		for(int j=0;j<listusers.size();j++){
			list.add((String)listusers.get(j).get("name"));
			listyname.add((String)listusers.get(j).get("college"));
		}
		for(int j=0;j<listusers.size();j++){
			keyanscore=0;
			jiaoxuescore=0;
			sum=0;
			if(j>listtemp.size()-1){
				Map<String,Object> map1 = new HashMap<String,Object>();
				if(cmenu.contains("���Ĺ���")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("ר������")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("ѧ����������")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("ѧ�ƹ���")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("������Ŀ����")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("���н�������")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("רҵ����")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("��ʦ����")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("�γ̽������")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("��ѧ�о���Ŀ����")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("ʵ��������Ŀ����")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("ʵ���ҽ������")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("�Ŷӽ������")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("ѧ�ƾ�������")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("�̲���������")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("��ѧ����ɹ�����")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}
				sum=jiaoxuescore+keyanscore;
				map1.put("sum", sum);
				for(int i=0;i<listprdtable.size();i++){
					if("����".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("����", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ר��".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ר��", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ѧ������".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ������", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));				
					}else if("ѧ��".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ��", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));			
					}else if("���н���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("���н���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("������Ŀ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("רҵ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("רҵ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("��ʦ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ʦ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("�γ̽���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�γ̽���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("��ѧ�о���Ŀ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ�о���Ŀ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ʵ��������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ��������Ŀ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ʵ���ҽ���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ���ҽ���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("�Ŷӽ���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�Ŷӽ���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuiduijianshe", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ѧ�ƾ���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ�ƾ���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("�̲�����".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�̲�����", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("��ѧ����ɹ�".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ����ɹ�", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}
				}
				sum=keyanscore+jiaoxuescore;
				for(int y=0;y<header.size();y++){
					if("���з���".equals(header.get(y))){
						map1.put("keyanscore", keyanscore);
					}else if("��ѧ����".equals(header.get(y))){
						map1.put("jiaoxuescore", jiaoxuescore);
					}
				}
				
				
				map1.put("sum", sum);
				listtemp.add(map1);
			}else{
				for(int i=0;i<listprdtable.size();i++){
					if("����".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("����", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ר��".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ר��", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ѧ������".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ������", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));				
					}else if("ѧ��".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ��", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));			
					}else if("���н���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("���н���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("������Ŀ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("רҵ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("רҵ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("��ʦ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ʦ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("�γ̽���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�γ̽���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("��ѧ�о���Ŀ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ�о���Ŀ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ʵ��������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ��������Ŀ", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ʵ���ҽ���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ���ҽ���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("�Ŷӽ���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�Ŷӽ���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuiduijianshe", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("ѧ�ƾ���".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ�ƾ���", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("�̲�����".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�̲�����", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("��ѧ����ɹ�".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ����ɹ�", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}
				}
				sum=keyanscore+jiaoxuescore;
				for(int y=0;y<header.size();y++){
					if("���з���".equals(header.get(y))){
						listtemp.get(j).put("keyanscore", keyanscore);
					}else if("��ѧ����".equals(header.get(y))){
						listtemp.get(j).put("jiaoxuescore", jiaoxuescore);
					}
				}
				
				
				listtemp.get(j).put("sum", sum);
			}
			
		}
		
		
		}
		if(college!=null&&!"ȫ��".equals(college)&&!"".equals(college)){
			exportExcel(header,list,listyname,listtemp,"exportAllOrder",resp,college+jobname);
		}
		exportExcel(header,list,listyname,listtemp,"exportAllOrder",resp,jobname);
		
		
	}
	public  final static void exportExcel(List<String> header,List<String> list,List<String> listyname,List<Map<String,Object>> listtemp,String type,HttpServletResponse response,String jobname) {
        // ���¿�ʼ�����EXCEL
        try {   
         response.setHeader("Content-disposition", "attachment; filename="+ new String((jobname+"������Ա���ܷ�.xls").getBytes("GB2312"),"ISO8859-1"));
         response.setContentType("application/vnd.ms-excel"); 
         OutputStream os = response.getOutputStream();       
         WritableWorkbook workbook = Workbook.createWorkbook(os);
         WritableFont NormalFont = new WritableFont(WritableFont.ARIAL, 10);
         WritableFont BoldFont = new WritableFont(WritableFont.ARIAL, 10,WritableFont.BOLD);
         WritableCellFormat wcf_center = new WritableCellFormat(BoldFont);
         wcf_center.setBorder(Border.ALL, BorderLineStyle.THIN); 
         wcf_center.setVerticalAlignment(VerticalAlignment.CENTRE); 
         wcf_center.setAlignment(Alignment.CENTRE); 
         wcf_center.setWrap(false); 
         WritableCellFormat wcf_left = new WritableCellFormat(NormalFont);
         wcf_left.setBorder(Border.NONE, BorderLineStyle.THIN); 
         wcf_left.setVerticalAlignment(VerticalAlignment.CENTRE); 
         wcf_left.setAlignment(Alignment.LEFT); 
         wcf_left.setWrap(false); 
         WritableSheet [] sheets =  null;
         CellView cellView = new CellView();  
         cellView.setAutosize(true);
         if(listtemp!=null&&listtemp.size()>0){
             int scount = listtemp.size()/65535 + ((listtemp.size()%65535)>0?1:0);
             sheets = new WritableSheet[scount];
             for(int i=0;i<scount;i++){
                 WritableSheet sheet = workbook.createSheet("Sheet"+i+1, i);
                 jxl.SheetSettings sheetset = sheet.getSettings();
                 sheetset.setProtected(false);
                 sheets[i]=sheet;
             }   
             for(int j=0;j<scount;j++){
            	 int size=2;
            	 if(listtemp.get(0).get("keyanscore")==null||
            			 listtemp.get(0).get("jiaoxuescore")==null){
            		 size=1;
            	 }
            	 sheets[j].mergeCells(0, 0, size+2, 0);
                 sheets[j].addCell(new Label(0, 0, "��"+jobname+"��Ա��Ʒ���ܷ���", wcf_center));
                 for(int i=0;i<header.size();i++){
                      sheets[j].addCell(new Label(i, 1,header.get(i),wcf_center));
                  }
             }
         }else{
             sheets = new WritableSheet[header.size()];
             WritableSheet sheet = workbook.createSheet("Sheet"+1, 0);
             //�����ݺ��ӡ��Ĭ��Ϊ�ݴ�
             jxl.SheetSettings sheetset = sheet.getSettings();
             sheetset.setProtected(false);
             sheets[0]=sheet;
             for(int i=0;i<header.size();i++){
                  sheets[0].addCell(new Label(i, 0,header.get(i),wcf_center));
              }
         }
         if(list!=null&&list.size()>0){
        	 if(type.equals("exportAllOrder")){
        	 int max=2;
        	 String key="";
        	 if(list.size()>0){
        		 if(listtemp.get(0).get("keyanscore")==null){
            		 max=1;
            		 key="jiaoxuescore";
            	 }else if(listtemp.get(0).get("jiaoxuescore")==null){
            		 max=1;
            		 key="keyanscore";
            	 } 
            	 
        	 }
        	  
              for (int i = 1; i <= list.size(); i++)
              {
                  WritableSheet sheet = sheets[0];
                  sheet.setColumnView(0, 25);
                  sheet.setColumnView(1, 25);
          		  sheet.addCell(new Label(0, i+1,list.get(i-1)==null?"":list.get(i-1).toString(),wcf_left)); 
          		  sheet.addCell(new Label(1, i+1,listyname.get(i-1)==null?"":listyname.get(i-1).toString(),wcf_left)); 
          		  		if(max==1){
                			 sheet.setColumnView(2, 25);
                			 sheet.setColumnView(3, 25);
                			 sheet.addCell(new Label(2, i+1,listtemp.get(i-1).get(key)==null?"":listtemp.get(i-1).get(key).toString(),wcf_left)); 
                			 sheet.addCell(new Label(3, i+1,listtemp.get(i-1).get("sum")==null?"":listtemp.get(i-1).get("sum").toString(),wcf_left)); 
          		  		}else{
                			 sheet.setColumnView(2, 25);
                			 sheet.setColumnView(3, 25);
                			 sheet.setColumnView(4, 25);
                			 sheet.addCell(new Label(2, i+1,listtemp.get(i-1).get("keyanscore")==null?"":listtemp.get(i-1).get("keyanscore").toString(),wcf_left)); 
                			 sheet.addCell(new Label(3, i+1,listtemp.get(i-1).get("jiaoxuescore")==null?"":listtemp.get(i-1).get("jiaoxuescore").toString(),wcf_left)); 
                			 sheet.addCell(new Label(4, i+1,listtemp.get(i-1).get("sum")==null?"":listtemp.get(i-1).get("sum").toString(),wcf_left)); 
                		 }
                  }
              }
          }
         workbook.write();
         workbook.close();  
        } catch (Exception e) {
           // System.out.println(result);
            e.printStackTrace();
        }finally{
            if(listtemp!=null)listtemp.clear();
            if(list!=null)list.clear();
            if(listyname!=null)listyname.clear();
        }
       }
}
