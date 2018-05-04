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
			jobname="校奖金";
		}
		String flag = req.getParameter("flag");
		String college = req.getParameter("college");
		List<String> header=new ArrayList<String>();
		header.add("姓名");
		header.add("院系");
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
		if(cmenu.contains("论文管理")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("科研分数");
			}
			kyn++;
		}if(cmenu.contains("专利管理")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("科研分数");
			}
			kyn++;
		}if(cmenu.contains("学术著作管理")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("科研分数");
			}
			kyn++;
		}if(cmenu.contains("学科管理")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("科研分数");
			}
			kyn++;
		}if(cmenu.contains("科研项目管理")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("科研分数");
			}
			kyn++;
		}if(cmenu.contains("科研奖励管理")){
			map.put("keyanscore", keyanscore);
			if(kyn==0){
				header.add("科研分数");
			}
		}if(cmenu.contains("专业管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("名师管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("课程建设管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("教学研究项目管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("实践教育项目管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("实验室建设管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("团队建设管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("学科竞赛管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("教材著作管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
			jxn++;
		}if(cmenu.contains("教学单项成果管理")){
			map.put("jiaoxuescore", jiaoxuescore);
			if(jxn==0){
				header.add("教学分数");
			}
		}
		header.add("总分");
		sum=jiaoxuescore+keyanscore;
		map.put("sum", sum);
		listtemp.add(map);
		
		List<Map<String,Object>> listprdtable = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> listprdtbid = new ArrayList<Map<String,Object>>();
		if(college!=null){
			college = URLDecoder.decode(college,"utf-8");
			if(!"全部".equals(college)&&!"".equals(college)){
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
			if("校奖金".equals(jobname)){
				listusers = ms.queryUsers(listprdtbid);
			}else{
				for(int i=0;i<listuserstemp.size();i++){
					if(listuserstemp.get(i).get("job")==null&&"助教".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
					else if("助教".equals(listuserstemp.get(i).get("job"))&&"讲师".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
					else if("讲师".equals(listuserstemp.get(i).get("job"))&&"副教授".equals(jobname)){
						listusers.add(listuserstemp.get(i));
					}
					else if("副教授".equals(listuserstemp.get(i).get("job"))&&"教授".equals(jobname)){
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
				if(cmenu.contains("论文管理")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("专利管理")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("学术著作管理")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("学科管理")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("科研项目管理")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("科研奖励管理")){
					map1.put("keyanscore", keyanscore);
				}if(cmenu.contains("专业管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("名师管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("课程建设管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("教学研究项目管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("实践教育项目管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("实验室建设管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("团队建设管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("学科竞赛管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("教材著作管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}if(cmenu.contains("教学单项成果管理")){
					map1.put("jiaoxuescore", jiaoxuescore);
				}
				sum=jiaoxuescore+keyanscore;
				map1.put("sum", sum);
				for(int i=0;i<listprdtable.size();i++){
					if("论文".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("论文", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("专利".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专利", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("学术著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学术著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));				
					}else if("学科".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));			
					}else if("科研奖励".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研奖励", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("科研项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("专业".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专业", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("名师".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("名师", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("课程建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("课程建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("教学研究项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学研究项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("实践教育项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实践教育项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("实验室建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实验室建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("团队建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("团队建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuiduijianshe", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("学科竞赛".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科竞赛", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("教材著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教材著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("教学单项成果".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学单项成果", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}
				}
				sum=keyanscore+jiaoxuescore;
				for(int y=0;y<header.size();y++){
					if("科研分数".equals(header.get(y))){
						map1.put("keyanscore", keyanscore);
					}else if("教学分数".equals(header.get(y))){
						map1.put("jiaoxuescore", jiaoxuescore);
					}
				}
				
				
				map1.put("sum", sum);
				listtemp.add(map1);
			}else{
				for(int i=0;i<listprdtable.size();i++){
					if("论文".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("论文", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("专利".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专利", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("学术著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学术著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));				
					}else if("学科".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));			
					}else if("科研奖励".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研奖励", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("科研项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu", listprdid);
						keyanscore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("专业".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专业", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("名师".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("名师", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("课程建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("课程建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("教学研究项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学研究项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("实践教育项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实践教育项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("实验室建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实验室建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("团队建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("团队建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuiduijianshe", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("学科竞赛".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科竞赛", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("教材著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教材著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}else if("教学单项成果".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学单项成果", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg", listprdid);
						jiaoxuescore+=Integer.parseInt((String)listprdscore.get(0).get("score"));
					}
				}
				sum=keyanscore+jiaoxuescore;
				for(int y=0;y<header.size();y++){
					if("科研分数".equals(header.get(y))){
						listtemp.get(j).put("keyanscore", keyanscore);
					}else if("教学分数".equals(header.get(y))){
						listtemp.get(j).put("jiaoxuescore", jiaoxuescore);
					}
				}
				
				
				listtemp.get(j).put("sum", sum);
			}
			
		}
		
		
		}
		if(college!=null&&!"全部".equals(college)&&!"".equals(college)){
			exportExcel(header,list,listyname,listtemp,"exportAllOrder",resp,college+jobname);
		}
		exportExcel(header,list,listyname,listtemp,"exportAllOrder",resp,jobname);
		
		
	}
	public  final static void exportExcel(List<String> header,List<String> list,List<String> listyname,List<Map<String,Object>> listtemp,String type,HttpServletResponse response,String jobname) {
        // 以下开始输出到EXCEL
        try {   
         response.setHeader("Content-disposition", "attachment; filename="+ new String((jobname+"评审人员的总分.xls").getBytes("GB2312"),"ISO8859-1"));
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
                 sheets[j].addCell(new Label(0, 0, "评"+jobname+"人员作品的总分数", wcf_center));
                 for(int i=0;i<header.size();i++){
                      sheets[j].addCell(new Label(i, 1,header.get(i),wcf_center));
                  }
             }
         }else{
             sheets = new WritableSheet[header.size()];
             WritableSheet sheet = workbook.createSheet("Sheet"+1, 0);
             //设置纵横打印（默认为纵打）
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
