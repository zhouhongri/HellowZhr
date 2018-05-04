package Servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.MsgService;

public class QueryXiaoAuthorsZcServlet extends HttpServlet{
	private String everycount = "10"; // 每一页显示数据条数
	private String currpage; // 当前页
	private String pagecount; // 记总页数
	private int totalcount; // 记表中数据总共条数
	MsgService ms = new MsgService();
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
		String flag = "xpzc";
		String jobname = req.getParameter("jobname");
		String currpage = req.getParameter("currpage");
		String college = req.getParameter("college");
		boolean pass = true;
		
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
		List<Map<String,Object>> listprdtable = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> listprdtbid = new ArrayList<Map<String,Object>>();
		if(college!=null&&!"".equals(college)){
			college = URLDecoder.decode(college,"utf-8");
			if(!"全部".equals(college)){
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
		List<Map<String,Object>> listcmenu = ms.queryXiaoAcCmenu(flag);
		String cmenu = (String) listcmenu.get(0).get("cmenu");
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> listtemp = new ArrayList<Map<String,Object>>();
		Map<String,Object> map = new HashMap<String,Object>();
		if(cmenu.contains("论文管理")){
			map.put("lwscore", lwscore);
		}if(cmenu.contains("专利管理")){
			map.put("zlscore", zlscore);
		}if(cmenu.contains("学术著作管理")){
			map.put("xszzscore", xszzscore);
		}if(cmenu.contains("学科管理")){
			map.put("xkscore", xkscore);
		}if(cmenu.contains("科研项目管理")){
			map.put("kyxmscore", kyxmscore);
		}if(cmenu.contains("科研奖励管理")){
			map.put("kyjlscore", kyjlscore);
		}if(cmenu.contains("专业管理")){
			map.put("zyscore", zyscore);
		}if(cmenu.contains("名师管理")){
			map.put("msscore", msscore);
		}if(cmenu.contains("课程建设管理")){
			map.put("kcjsscore", kcjsscore);
		}if(cmenu.contains("教学研究项目管理")){
			map.put("jxyjxmscore", jxyjxmscore);
		}if(cmenu.contains("实践教育项目管理")){
			map.put("jxyjxmscore", jxyjxmscore);
		}if(cmenu.contains("实验室建设管理")){
			map.put("sysjsscore", sysjsscore);
		}if(cmenu.contains("团队建设管理")){
			map.put("tdjsscore", tdjsscore);
		}if(cmenu.contains("学科竞赛管理")){
			map.put("xkjsscore", xkjsscore);
		}if(cmenu.contains("教材著作管理")){
			map.put("jczzscore", jczzscore);
		}if(cmenu.contains("教学单项成果管理")){
			map.put("jxdxcgscore", jxdxcgscore);
		}
		int sumscore = lwscore+zlscore+xszzscore+xkscore+kyxmscore
				+kyjlscore+zyscore+msscore+kcjsscore+jxyjxmscore
				+sjjyxmscore+sysjsscore+tdjsscore+xkjsscore+jczzscore
				+jxdxcgscore;
		map.put("sumscore", sumscore);
		map.put("authorname", "null");
		map.put("id", "null");
		list.add(map);
		
		if(listprdtbid.size()>0){
			List<Map<String,Object>> listuserstemp = ms.queryUsers(listprdtbid);
			List<Map<String,Object>> listusers = new ArrayList<Map<String,Object>>(); 
			for(int i=0;i<listuserstemp.size();i++){
				if(listuserstemp.get(i).get("job")==null&&"zj".equals(jobname)){
					listusers.add(listuserstemp.get(i));
				}
				else if("助教".equals(listuserstemp.get(i).get("job"))&&"js".equals(jobname)){
					listusers.add(listuserstemp.get(i));
				}
				else if("讲师".equals(listuserstemp.get(i).get("job"))&&"fjs".equals(jobname)){
					listusers.add(listuserstemp.get(i));
				}
				else if("副教授".equals(listuserstemp.get(i).get("job"))&&"zjs".equals(jobname)){
					listusers.add(listuserstemp.get(i));
				}
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
				if(j>list.size()-1){
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
					map1.put("authorname", listusers.get(j).get("name"));
					map1.put("id", listusers.get(j).get("id"));
					for(int i=0;i<listprdtable.size();i++){
						if("论文".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("论文", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
							lwscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("lwscore", lwscore);
						}else if("专利".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专利", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli",listprdid);
							zlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("zlscore", zlscore);
						}else if("学术著作".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学术著作", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo",listprdid);
							xszzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("xszzscore", xszzscore);				
						}else if("学科".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke",listprdid);
							xkscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("xkscore", xkscore);
						}else if("科研奖励".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研奖励", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli",listprdid);
							kyjlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("kyjlscore", kyjlscore);
						}else if("科研项目".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研项目", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu",listprdid);
							kyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("kyxmscore", kyxmscore);
						}else if("专业".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专业", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye",listprdid);
							zyscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("zyscore", zyscore);
						}else if("名师".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("名师", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi",listprdid);
							msscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("msscore", msscore);
						}else if("课程建设".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("课程建设", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
							kcjsscore =Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("kcjsscore", kcjsscore);
						}else if("教学研究项目".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学研究项目", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm",listprdid);
							jxyjxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("jxyjxmscore", jxyjxmscore);
						}else if("实践教育项目".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实践教育项目", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu",listprdid);
							sjjyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("sjjyxmscore", sjjyxmscore);
						}else if("实验室建设".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实验室建设", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
							sysjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("sysjsscore", sysjsscore);
						}else if("团队建设".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("团队建设", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuanduijianshe",listprdid);
							tdjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("tdjsscore", tdjsscore);
						}else if("学科竞赛".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科竞赛", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
							xkjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("xkjsscore", xkjsscore);
						}else if("教材著作".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教材著作", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo",listprdid);
							jczzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("jczzscore", jczzscore);
						}else if("教学单项成果".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学单项成果", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg",listprdid);
							jxdxcgscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("jxdxcgscore", jxdxcgscore);
						}else{
							pass=false;
						}
					}
					
					int sumscore1 = lwscore+zlscore+xszzscore+xkscore+kyxmscore
							+kyjlscore+zyscore+msscore+kcjsscore+jxyjxmscore
							+sjjyxmscore+sysjsscore+tdjsscore+xkjsscore+jczzscore
							+jxdxcgscore;
					map1.put("sumscore", sumscore1);
					list.add(map1);
				}else{
					list.get(j).put("authorname", listusers.get(j).get("name"));
					list.get(j).put("id", listusers.get(j).get("id"));
					for(int i=0;i<listprdtable.size();i++){
						if("论文".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("论文", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
							lwscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("lwscore", lwscore);
						}else if("专利".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专利", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli",listprdid);
							zlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("zlscore", zlscore);
						}else if("学术著作".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学术著作", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo",listprdid);
							xszzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("xszzscore", xszzscore);				
						}else if("学科".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke",listprdid);
							xkscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("xkscore", xkscore);
						}else if("科研奖励".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研奖励", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli",listprdid);
							kyjlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("kyjlscore", kyjlscore);
						}else if("科研项目".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("科研项目", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu",listprdid);
							kyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("kyxmscore", kyxmscore);
						}else if("专业".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("专业", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye",listprdid);
							zyscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("zyscore", zyscore);
						}else if("名师".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("名师", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi",listprdid);
							msscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("msscore", msscore);
						}else if("课程建设".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("课程建设", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
							kcjsscore =Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("kcjsscore", kcjsscore);
						}else if("教学研究项目".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学研究项目", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm",listprdid);
							jxyjxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("jxyjxmscore", jxyjxmscore);
						}else if("实践教育项目".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实践教育项目", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu",listprdid);
							sjjyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("sjjyxmscore", sjjyxmscore);
						}else if("实验室建设".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("实验室建设", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
							sysjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("sysjsscore", sysjsscore);
						}else if("团队建设".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("团队建设", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuanduijianshe",listprdid);
							tdjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("tdjsscore", tdjsscore);
						}else if("学科竞赛".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("学科竞赛", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
							xkjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("xkjsscore", xkjsscore);
						}else if("教材著作".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教材著作", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo",listprdid);
							jczzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("jczzscore", jczzscore);
						}else if("教学单项成果".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("教学单项成果", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxdxcg",listprdid);
							jxdxcgscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("jxdxcgscore", jxdxcgscore);
						}else{
							pass=false;
						}
					}
					
					sumscore = lwscore+zlscore+xszzscore+xkscore+kyxmscore
							+kyjlscore+zyscore+msscore+kcjsscore+jxyjxmscore
							+sjjyxmscore+sysjsscore+tdjsscore+xkjsscore+jczzscore
							+jxdxcgscore;
					list.get(j).put("sumscore", sumscore);
				}
				
			}
			if(listusers.size()<=0){
				pass=false;
			}
			if(pass){
				totalcount = list.size();
				if (totalcount % Integer.parseInt(everycount) == 0) {
					pagecount = (totalcount / Integer.parseInt(everycount)) + "";
				} else {
					pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
				}
				int a = Integer.parseInt(currpage);
				int b = Integer.parseInt(everycount);
				int end = a * b;
				int begin = end - Integer.parseInt(everycount)+1;
				if(end>totalcount){
					end = totalcount;
				}
				for(int i=begin;i<=end;i++){
					Map<String, Object> maptemp = list.get(i-1);
					listtemp.add(maptemp);
				}
				
				
				req.setAttribute("totalcount", totalcount);
				req.setAttribute("pagecount", pagecount);
				req.setAttribute("currpage", currpage);
			}
			
		}
		
		//System.out.println(list);
		List<Map<String,Object>> listcollege = ms.queryCollege();
		req.setAttribute("listcollege", listcollege);
		req.setAttribute("college", college);
		req.setAttribute("cmenu", cmenu);
		req.setAttribute("listprd",listtemp);
		if("zj".equals(jobname)){
			req.getRequestDispatcher("xiaorecevieacproductionzj.jsp").forward(req, resp);
		}
		else if("js".equals(jobname)){
			req.getRequestDispatcher("xiaorecevieacproductionjs.jsp").forward(req, resp);
		}
		else if("fjs".equals(jobname)){
			req.getRequestDispatcher("xiaorecevieacproductionfjs.jsp").forward(req, resp);
		}
		else if("zjs".equals(jobname)){
			req.getRequestDispatcher("xiaorecevieacproductionzjs.jsp").forward(req, resp);
		}
	}	
}
