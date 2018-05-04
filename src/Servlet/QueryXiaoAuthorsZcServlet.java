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
	private String everycount = "10"; // ÿһҳ��ʾ��������
	private String currpage; // ��ǰҳ
	private String pagecount; // ����ҳ��
	private int totalcount; // �Ǳ��������ܹ�����
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
			if(!"ȫ��".equals(college)){
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
		if(cmenu.contains("���Ĺ���")){
			map.put("lwscore", lwscore);
		}if(cmenu.contains("ר������")){
			map.put("zlscore", zlscore);
		}if(cmenu.contains("ѧ����������")){
			map.put("xszzscore", xszzscore);
		}if(cmenu.contains("ѧ�ƹ���")){
			map.put("xkscore", xkscore);
		}if(cmenu.contains("������Ŀ����")){
			map.put("kyxmscore", kyxmscore);
		}if(cmenu.contains("���н�������")){
			map.put("kyjlscore", kyjlscore);
		}if(cmenu.contains("רҵ����")){
			map.put("zyscore", zyscore);
		}if(cmenu.contains("��ʦ����")){
			map.put("msscore", msscore);
		}if(cmenu.contains("�γ̽������")){
			map.put("kcjsscore", kcjsscore);
		}if(cmenu.contains("��ѧ�о���Ŀ����")){
			map.put("jxyjxmscore", jxyjxmscore);
		}if(cmenu.contains("ʵ��������Ŀ����")){
			map.put("jxyjxmscore", jxyjxmscore);
		}if(cmenu.contains("ʵ���ҽ������")){
			map.put("sysjsscore", sysjsscore);
		}if(cmenu.contains("�Ŷӽ������")){
			map.put("tdjsscore", tdjsscore);
		}if(cmenu.contains("ѧ�ƾ�������")){
			map.put("xkjsscore", xkjsscore);
		}if(cmenu.contains("�̲���������")){
			map.put("jczzscore", jczzscore);
		}if(cmenu.contains("��ѧ����ɹ�����")){
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
				else if("����".equals(listuserstemp.get(i).get("job"))&&"js".equals(jobname)){
					listusers.add(listuserstemp.get(i));
				}
				else if("��ʦ".equals(listuserstemp.get(i).get("job"))&&"fjs".equals(jobname)){
					listusers.add(listuserstemp.get(i));
				}
				else if("������".equals(listuserstemp.get(i).get("job"))&&"zjs".equals(jobname)){
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
					if(cmenu.contains("���Ĺ���")){
						map1.put("lwscore", lwscore);
					}if(cmenu.contains("ר������")){
						map1.put("zlscore", zlscore);
					}if(cmenu.contains("ѧ����������")){
						map1.put("xszzscore", xszzscore);
					}if(cmenu.contains("ѧ�ƹ���")){
						map1.put("xkscore", xkscore);
					}if(cmenu.contains("������Ŀ����")){
						map1.put("kyjlscore", kyjlscore);
					}if(cmenu.contains("���н�������")){
						map1.put("kyxmscore", kyxmscore);
					}if(cmenu.contains("רҵ����")){
						map1.put("zyscore", zyscore);
					}if(cmenu.contains("��ʦ����")){
						map1.put("msscore", msscore);
					}if(cmenu.contains("�γ̽������")){
						map1.put("kcjsscore", kcjsscore);
					}if(cmenu.contains("��ѧ�о���Ŀ����")){
						map1.put("jxyjxmscore", jxyjxmscore);
					}if(cmenu.contains("ʵ��������Ŀ����")){
						map1.put("jxyjxmscore", jxyjxmscore);
					}if(cmenu.contains("ʵ���ҽ������")){
						map1.put("sysjsscore", sysjsscore);
					}if(cmenu.contains("�Ŷӽ������")){
						map1.put("tdjsscore", tdjsscore);
					}if(cmenu.contains("ѧ�ƾ�������")){
						map1.put("xkjsscore", xkjsscore);
					}if(cmenu.contains("�̲���������")){
						map1.put("jczzscore", jczzscore);
					}if(cmenu.contains("��ѧ����ɹ�����")){
						map1.put("jxdxcgscore", jxdxcgscore);
					}
					map1.put("authorname", listusers.get(j).get("name"));
					map1.put("id", listusers.get(j).get("id"));
					for(int i=0;i<listprdtable.size();i++){
						if("����".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("����", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
							lwscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("lwscore", lwscore);
						}else if("ר��".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ר��", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli",listprdid);
							zlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("zlscore", zlscore);
						}else if("ѧ������".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ������", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo",listprdid);
							xszzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("xszzscore", xszzscore);				
						}else if("ѧ��".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ��", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke",listprdid);
							xkscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("xkscore", xkscore);
						}else if("���н���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("���н���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli",listprdid);
							kyjlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("kyjlscore", kyjlscore);
						}else if("������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("������Ŀ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu",listprdid);
							kyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("kyxmscore", kyxmscore);
						}else if("רҵ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("רҵ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye",listprdid);
							zyscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("zyscore", zyscore);
						}else if("��ʦ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ʦ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi",listprdid);
							msscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("msscore", msscore);
						}else if("�γ̽���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�γ̽���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
							kcjsscore =Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("kcjsscore", kcjsscore);
						}else if("��ѧ�о���Ŀ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ�о���Ŀ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm",listprdid);
							jxyjxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("jxyjxmscore", jxyjxmscore);
						}else if("ʵ��������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ��������Ŀ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu",listprdid);
							sjjyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("sjjyxmscore", sjjyxmscore);
						}else if("ʵ���ҽ���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ���ҽ���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
							sysjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("sysjsscore", sysjsscore);
						}else if("�Ŷӽ���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�Ŷӽ���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuanduijianshe",listprdid);
							tdjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("tdjsscore", tdjsscore);
						}else if("ѧ�ƾ���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ�ƾ���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
							xkjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("xkjsscore", xkjsscore);
						}else if("�̲�����".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�̲�����", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo",listprdid);
							jczzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							map1.put("jczzscore", jczzscore);
						}else if("��ѧ����ɹ�".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ����ɹ�", (String)listusers.get(j).get("id"), flag);
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
						if("����".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("����", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("lunwen",listprdid);
							lwscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("lwscore", lwscore);
						}else if("ר��".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ר��", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanli",listprdid);
							zlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("zlscore", zlscore);
						}else if("ѧ������".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ������", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueshuzhuzuo",listprdid);
							xszzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("xszzscore", xszzscore);				
						}else if("ѧ��".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ��", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xueke",listprdid);
							xkscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("xkscore", xkscore);
						}else if("���н���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("���н���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanjiangli",listprdid);
							kyjlscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("kyjlscore", kyjlscore);
						}else if("������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("������Ŀ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("keyanxiangmu",listprdid);
							kyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("kyxmscore", kyxmscore);
						}else if("רҵ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("רҵ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("zhuanye",listprdid);
							zyscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("zyscore", zyscore);
						}else if("��ʦ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ʦ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("mingshi",listprdid);
							msscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("msscore", msscore);
						}else if("�γ̽���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�γ̽���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("kechengjianshe",listprdid);
							kcjsscore =Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("kcjsscore", kcjsscore);
						}else if("��ѧ�о���Ŀ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ�о���Ŀ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jxyjxm",listprdid);
							jxyjxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("jxyjxmscore", jxyjxmscore);
						}else if("ʵ��������Ŀ".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ��������Ŀ", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shijianjiaoyuxiangmu",listprdid);
							sjjyxmscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("sjjyxmscore", sjjyxmscore);
						}else if("ʵ���ҽ���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ʵ���ҽ���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("shiyanshijianshe",listprdid);
							sysjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("sysjsscore", sysjsscore);
						}else if("�Ŷӽ���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�Ŷӽ���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("tuanduijianshe",listprdid);
							tdjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("tdjsscore", tdjsscore);
						}else if("ѧ�ƾ���".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("ѧ�ƾ���", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("xuekejingsai",listprdid);
							xkjsscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("xkjsscore", xkjsscore);
						}else if("�̲�����".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("�̲�����", (String)listusers.get(j).get("id"), flag);
							List<Map<String,Object>> listprdscore = ms.queryUserIdScore("jiaocaizhuzuo",listprdid);
							jczzscore = Integer.parseInt((String)listprdscore.get(0).get("score"));
							list.get(j).put("jczzscore", jczzscore);
						}else if("��ѧ����ɹ�".equals(listprdtable.get(i).get("productiontable"))){
							List<Map<String,Object>> listprdid = ms.queryXiaoPrdId("��ѧ����ɹ�", (String)listusers.get(j).get("id"), flag);
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
