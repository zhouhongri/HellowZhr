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

public class DaoChuBaoBiaoScoreServlet extends HttpServlet{
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
		List<Map<String,Object>> listyxname = ms.queryYname(userid);
		String yname = (String) listyxname.get(0).get("college");
		String flag = req.getParameter("flag");
		String xname = req.getParameter("xname");
		List<String> header=new ArrayList<String>();
		header.add("姓名");
		header.add("院系");
		List<String> list = new ArrayList<String>();
		List<String> listyname = new ArrayList<String>();
		int lwscore=0;
		int zlscore=0;
		int xszzscore=0;
		int xkscore=0;
		int kyxmscore=0;
		int kyjlscore=0;
		int zyscore=0;
		int msscore=0;
		int kcjsscore=0;
		int jxyjxmscore=0;
		int sjjyxmscore=0;
		int sysjsscore=0;
		int tdjsscore=0;
		int xkjsscore=0;
		int jczzscore=0;
		int jxdxcgscore=0;
		
		List<String> listkey = new ArrayList<String>();
		List<Map<String,Object>> listcmenu = ms.queryAcCmenu(flag,yname);
		String cmenu = (String) listcmenu.get(0).get("cmenu");
		List<Map<String,Object>> listtemp = new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		if(cmenu.contains("论文管理")){
			map.put("lwscore", lwscore);
			listkey.add("lwscore");
			header.add("论文得分");
		}if(cmenu.contains("专利管理")){
			map.put("zlscore", zlscore);
			listkey.add("zlscore");
			header.add("专利得分");
		}if(cmenu.contains("学术著作管理")){
			map.put("xszzscore", xszzscore);
			listkey.add("xszzscore");
			header.add("学术著作得分");
		}if(cmenu.contains("学科管理")){
			map.put("xkscore", xkscore);
			listkey.add("xkscore");
			header.add("学科得分");
		}if(cmenu.contains("科研项目管理")){
			map.put("kyjlscore", kyjlscore);
			listkey.add("kyjlscore");
			header.add("科研项目得分");
		}if(cmenu.contains("科研奖励管理")){
			map.put("kyxmscore", kyxmscore);
			listkey.add("kyxmscore");
			header.add("科研奖励得分");
		}if(cmenu.contains("专业管理")){
			map.put("zyscore", zyscore);
			listkey.add("zyscore");
			header.add("专业得分");
		}if(cmenu.contains("名师管理")){
			map.put("msscore", msscore);
			listkey.add("msscore");
			header.add("名师得分");
		}if(cmenu.contains("课程建设管理")){
			map.put("kcjsscore", kcjsscore);
			listkey.add("kcjsscore");
			header.add("课程建设得分");
		}if(cmenu.contains("教学研究项目管理")){
			map.put("jxyjxmscore", jxyjxmscore);
			listkey.add("jxyjxmscore");
			header.add("教学研究项目得分");
		}if(cmenu.contains("实践教育项目管理")){
			map.put("jxyjxmscore", jxyjxmscore);
			listkey.add("jxyjxmscore");
			header.add("实践教育项目");
		}if(cmenu.contains("实验室建设管理")){
			map.put("sysjsscore", sysjsscore);
			listkey.add("sysjsscore");
			header.add("实验室建设得分");
		}if(cmenu.contains("团队建设管理")){
			map.put("tdjsscore", tdjsscore);
			listkey.add("tdjsscore");
			header.add("团队建设得分");
		}if(cmenu.contains("学科竞赛管理")){
			map.put("xkjsscore", xkjsscore);
			listkey.add("xkjsscore");
			header.add("学科竞赛得分");
		}if(cmenu.contains("教材著作管理")){
			map.put("jczzscore", jczzscore);
			listkey.add("jczzscore");
			header.add("教材著作得分");
		}if(cmenu.contains("教学单项成果管理")){
			map.put("jxdxcgscore", jxdxcgscore);
			listkey.add("jxdxcgscore");
			header.add("教学单项成果得分");
		}
		int sumscore = lwscore+zlscore+xszzscore+xkscore+kyxmscore
				+kyjlscore+zyscore+msscore+kcjsscore+jxyjxmscore
				+sjjyxmscore+sysjsscore+tdjsscore+xkjsscore+jczzscore
				+jxdxcgscore;
		listkey.add("sumscore");
		header.add("总分");
		map.put("sumscore", sumscore);
		listtemp.add(map);
		
		List<Map<String,Object>> listprdtable = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> listprdtbid = new ArrayList<Map<String,Object>>();
		if(xname!=null){
			xname = URLDecoder.decode(xname,"utf-8");
			if(!"全部".equals(xname)&&!"".equals(xname)){
				listprdtable = ms.querySXPrdTable(yname,flag,xname);
				listprdtbid = ms.querySXAuthors(yname, flag,xname);
			}else{
				listprdtable = ms.queryPrdTable(yname,flag);
				listprdtbid = ms.queryAuthors(yname, flag);
			}
		}else{
			listprdtable = ms.queryPrdTable(yname,flag);
			listprdtbid = ms.queryAuthors(yname, flag);
		}
		if(listprdtbid.size()>0){
		List<Map<String,Object>> listusers = ms.queryUsers(listprdtbid);
		for(int j=0;j<listusers.size();j++){
			list.add((String)listusers.get(j).get("name"));
			listyname.add((String)listusers.get(j).get("college"));
		}
		for(int j=0;j<listusers.size();j++){
			lwscore=0;
			zlscore=0;
			xszzscore=0;
			xkscore=0;
			kyxmscore=0;
			kyjlscore=0;
			
			zyscore=0;
			msscore=0;
			kcjsscore=0;
			jxyjxmscore=0;
			sjjyxmscore=0;
			sysjsscore=0;
			tdjsscore=0;
			xkjsscore=0;
			jczzscore=0;
			jxdxcgscore=0;
			jxdxcgscore=0;
			
			if(j>listtemp.size()-1){
				Map<String,Object> map1 = new HashMap<String,Object>();
				if(cmenu.contains("论文管理")){
					map1.put("lwscore", lwscore);
				}if(cmenu.contains("专利管理")){
					map1.put("zlscore", zlscore);
				}if(cmenu.contains("学术著作管理")){
					map1.put("xszzscore", xszzscore);
				}if(cmenu.contains("学科管理")){
					map1.put("xkscore", xkscore);
				}if(cmenu.contains("科研项目管理")){
					map1.put("kyjlscore", kyjlscore);
				}if(cmenu.contains("科研奖励管理")){
					map1.put("kyxmscore", kyxmscore);
				}if(cmenu.contains("专业管理")){
					map1.put("zyscore", zyscore);
				}if(cmenu.contains("名师管理")){
					map1.put("msscore", msscore);
				}if(cmenu.contains("课程建设管理")){
					map1.put("kcjsscore", kcjsscore);
				}if(cmenu.contains("教学研究项目管理")){
					map1.put("jxyjxmscore", jxyjxmscore);
				}if(cmenu.contains("实践教育项目管理")){
					map1.put("jxyjxmscore", jxyjxmscore);
				}if(cmenu.contains("实验室建设管理")){
					map1.put("sysjsscore", sysjsscore);
				}if(cmenu.contains("团队建设管理")){
					map1.put("tdjsscore", tdjsscore);
				}if(cmenu.contains("学科竞赛管理")){
					map1.put("xkjsscore", xkjsscore);
				}if(cmenu.contains("教材著作管理")){
					map1.put("jczzscore", jczzscore);
				}if(cmenu.contains("教学单项成果管理")){
					map1.put("jxdxcgscore", jxdxcgscore);
				}
				for(int i=0;i<listprdtable.size();i++){
					
					if("论文".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("论文", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
						lwscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("lwscore", lwscore);
					}else if("专利".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("专利", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli",listprdid);
						zlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("zlscore", zlscore);
					}else if("学术著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("学术著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo",listprdid);
						xszzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("xszzscore", xszzscore);				
					}else if("学科".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("学科", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke",listprdid);
						xkscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("xkscore", xkscore);
					}else if("科研奖励".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("科研奖励", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli",listprdid);
						kyjlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("kyjlscore", kyjlscore);
					}else if("科研项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("科研项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu",listprdid);
						kyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("kyxmscore", kyxmscore);
					}else if("专业".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("专业", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye",listprdid);
						zyscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("zyscore", zyscore);
					}else if("名师".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("名师", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi",listprdid);
						msscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("msscore", msscore);
					}else if("课程建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("课程建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
						kcjsscore =Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("kcjsscore", kcjsscore);
					}else if("教学研究项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("教学研究项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm",listprdid);
						jxyjxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("jxyjxmscore", jxyjxmscore);
					}else if("实践教育项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("实践教育项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu",listprdid);
						sjjyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("sjjyxmscore", sjjyxmscore);
					}else if("实验室建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("实验室建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
						sysjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("sysjsscore", sysjsscore);
					}else if("团队建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("团队建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuanduijianshe",listprdid);
						tdjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("tdjsscore", tdjsscore);
					}else if("学科竞赛".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("学科竞赛", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
						xkjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("xkjsscore", xkjsscore);
					}else if("教材著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("教材著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo",listprdid);
						jczzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("jczzscore", jczzscore);
					}else if("教学单项成果".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("教学单项成果", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg",listprdid);
						jxdxcgscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						map1.put("jxdxcgscore", jxdxcgscore);
					}
				}
				int sumscore1 = lwscore+zlscore+xszzscore+xkscore+kyxmscore
						+kyjlscore+zyscore+msscore+kcjsscore+jxyjxmscore
						+sjjyxmscore+sysjsscore+tdjsscore+xkjsscore+jczzscore
						+jxdxcgscore;
				map1.put("sumscore", sumscore1);
				listtemp.add(map1);
			}else{
				for(int i=0;i<listprdtable.size();i++){
					if("论文".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("论文", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
						lwscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("lwscore", lwscore);
					}else if("专利".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("专利", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli",listprdid);
						zlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("zlscore", zlscore);
					}else if("学术著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("学术著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo",listprdid);
						xszzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("xszzscore", xszzscore);				
					}else if("学科".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("学科", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke",listprdid);
						xkscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("xkscore", xkscore);
					}else if("科研奖励".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("科研奖励", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli",listprdid);
						kyjlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("kyjlscore", kyjlscore);
					}else if("科研项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("科研项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu",listprdid);
						kyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("kyxmscore", kyxmscore);
					}else if("专业".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("专业", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye",listprdid);
						zyscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("zyscore", zyscore);
					}else if("名师".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("名师", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi",listprdid);
						msscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("msscore", msscore);
					}else if("课程建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("课程建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
						kcjsscore =Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("kcjsscore", kcjsscore);
					}else if("教学研究项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("教学研究项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm",listprdid);
						jxyjxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("jxyjxmscore", jxyjxmscore);
					}else if("实践教育项目".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("实践教育项目", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu",listprdid);
						sjjyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("sjjyxmscore", sjjyxmscore);
					}else if("实验室建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("实验室建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
						sysjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("sysjsscore", sysjsscore);
					}else if("团队建设".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("团队建设", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuanduijianshe",listprdid);
						tdjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("tdjsscore", tdjsscore);
					}else if("学科竞赛".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("学科竞赛", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
						xkjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("xkjsscore", xkjsscore);
					}else if("教材著作".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("教材著作", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo",listprdid);
						jczzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("jczzscore", jczzscore);
					}else if("教学单项成果".equals(listprdtable.get(i).get("productiontable"))){
						List<Map<String,Object>> listprdid = ms.queryPrdId("教学单项成果", (String)listusers.get(j).get("id"), flag);
						List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg",listprdid);
						jxdxcgscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
						listtemp.get(j).put("jxdxcgscore", jxdxcgscore);
					}
				}
				
				sumscore = lwscore+zlscore+xszzscore+xkscore+kyxmscore
						+kyjlscore+zyscore+msscore+kcjsscore+jxyjxmscore
						+sjjyxmscore+sysjsscore+tdjsscore+xkjsscore+jczzscore
						+jxdxcgscore;
				listtemp.get(j).put("sumscore", sumscore);
			}
			
			
		}
		}
		if("ypjj".equals(flag)){
			flag = "院评奖金";
			if(xname!=null&&!"全部".equals(xname)&&!"".equals(xname)){
				exportExcel(header,list,listyname,listtemp,listkey,"exportAllOrder",resp,xname+"评奖金");
			}
			
			exportExcel(header,list,listyname,listtemp,listkey,"exportAllOrder",resp,flag);
		}
	}
	public  final static void exportExcel(List<String> header,List<String> list,List<String> listyname,List<Map<String,Object>> listtemp,List<String> listkey,String type,HttpServletResponse response,String flag) {
        // 以下开始输出到EXCEL
        try {   
         response.setHeader("Content-disposition", "attachment; filename="+ new String((flag+"各项总分.xls").getBytes("GB2312"),"ISO8859-1"));
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
            	 sheets[j].mergeCells(0, 0, listkey.size()+1, 0);
                 sheets[j].addCell(new Label(0, 0, flag+"人员作品的各项分数", wcf_center));
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
         if(list.size()>0){
        	 if(type.equals("exportAllOrder")){
           	  
                     WritableSheet sheet = sheets[0];
                   	 for(int i=0;i < listtemp.size();i++){
                   		sheet.setColumnView(0, 25);
                        sheet.setColumnView(1, 25);
               		  sheet.addCell(new Label(0, i+2,list.get(i)==null?"":list.get(i).toString(),wcf_left)); 
               		 sheet.addCell(new Label(1, i+2,listyname.get(i)==null?"":listyname.get(i).toString(),wcf_left));
                   		 for(int j=0;j<listkey.size();j++){
                   			sheet.setColumnView(j+2, 25);
	            			sheet.addCell(new Label(j+2, i+2,listtemp.get(i).get(listkey.get(j))==null?"":listtemp.get(i).get(listkey.get(j)).toString(),wcf_left)); 
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
