package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import Service.JXYJXMService;
import Service.JiaoCaiZhuZuoService;
import Service.JiaoXueMingShiService;
import Service.KeChengJianSheService;
import Service.KeYanJLService;
import Service.KeYanXMService;
import Service.LunWenService;
import Service.ShiYanShiJianSheService;
import Service.XueKeJSService;
import Service.XueShuZZService;
import Service.YGLScoreService;
import Service.ZhuanLiService;
import Service.ZhuanYeService;
import Util.JXYJXMDao;
import Util.JiaoCaiZhuZuoDao;
import Util.JiaoXueMingShiDao;
import Util.KeChengJianSheDao;
import Util.KeYanJLDao;
import Util.KeYanXiangMuDao;
import Util.LunWenDao;
import Util.ShiYanShiJianSheDao;
import Util.UserDao;
import Util.XueKeJianSheDao;
import Util.XueShuZZDao;
import Util.ZhuanLiDao;
import Util.ZhuanYeDao;
@Controller
public class Bianji2 {
	LunWenService lws = new LunWenService();
	XueShuZZService xszzs = new XueShuZZService();
	KeYanJLService kyjls = new KeYanJLService();
	ZhuanLiService zls = new ZhuanLiService();
	XueKeJSService xkjss = new XueKeJSService();
	KeYanXMService kyxms = new KeYanXMService();
	ZhuanYeService zys = new ZhuanYeService();
	JiaoXueMingShiService jxmss = new JiaoXueMingShiService();
	KeChengJianSheService kcjss = new KeChengJianSheService();
	JXYJXMService jxyjxms = new JXYJXMService();
	ShiYanShiJianSheService sysjss = new ShiYanShiJianSheService();
	JiaoCaiZhuZuoService jczzs = new JiaoCaiZhuZuoService();
	UserDao u = new UserDao();
	YGLScoreService yglss = new YGLScoreService();
	private String everycount="10";
	private String pagecount; // º«◊‹“≥ ˝
	private int totalcount; 
	
	public void bianji(HttpServletRequest request,HttpServletResponse response, String type,String userid,String Identity) throws ServletException, IOException, SQLException{
		HttpSession session = request.getSession();
		String school = (String) session.getAttribute("school");
		String id = request.getParameter("id");
		String currpage = request.getParameter("currpage");			
		String year = request.getParameter("year");
		String flag = request.getParameter("flag");
		String status = request.getParameter("status");
		String idtentity = u.QueryIdentity(userid);			
		String college = u.QueryCollege(userid);
		String inputvalue = request.getParameter("inputvalue");
		String yrank = request.getParameter("yrank");
		String time = request.getParameter("time");
		if("lunwen".equals(type)){
			String name = request.getParameter("name");
			String kanwu = request.getParameter("kanwu");
			String eicode = request.getParameter("eicode");
			String scicode = request.getParameter("scicode");
			String istpcode = request.getParameter("istpcode");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + kanwu + eicode + scicode + istpcode + author + authorseq
					+ url + score + rank + time + score2 + "Œ¥…Û∫À";
			String[] list = {name,kanwu,eicode,scicode,istpcode,author,authorseq,url,score,rank,score2,searchsouce};
			
			LunWenDao.update(id, list,idtentity,time);
			
			List list1=null;
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = lws.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = lws.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = lws.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			//zhuyi @@@@!!!!
			if("0".equals(idtentity)){
				list1 = lws.queryAll(currpage, everycount, userid, year, status,flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list1 = lws.queryByCollege(currpage, everycount, college, year, status, flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list1 = lws.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			session.setAttribute("lwList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
	
		}else if("zhuanli".equals(type)){
			String name = request.getParameter("name");
			String zlnumber = request.getParameter("kanwu");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + zlnumber + author + authorseq + url + score + rank
					+ time + score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,zlnumber,author,authorseq,url,score, score2,searchsouce};
			
			ZhuanLiDao.update(id, list, idtentity,time);
			
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = zls.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = zls.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = zls.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = zls.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = zls.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list1 = zls.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("zlList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		}else if("lwscore".equals(type)){
			String rank = request.getParameter("rank");
			String score = request.getParameter("score");
			 college = request.getParameter("college");
			String author1 = request.getParameter("author1");
			String author2 = request.getParameter("author2");
			String author3 = request.getParameter("author3");
			String author4 = request.getParameter("author4");
			String author5 = request.getParameter("author5");
			String rankdesc = request.getParameter("rankdesc");
			yglss.updateScore(rank,score,college,author1,author2,author3,author4,author5,rankdesc,id);
			String zicd = "¬€Œƒ";
			String[] rankArray = rank.split(rank.substring(rank.length()-2, rank.length()));
			List list = yglss.queryScore(userid,rankArray[0],"1","10");
			session.setAttribute("scoreList", list);
		}else if("xueshuzhuzuo".equals(type)){
			String name = request.getParameter("name");
			String kanwu = request.getParameter("kanwu");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + kanwu + year + author + authorseq
					 + url + score + rank + score2 + "Œ¥…Û∫À";
			String[] list = {name,kanwu,author,authorseq,url,score,rank,score2,searchsouce};
			XueShuZZDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = xszzs.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = xszzs.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = xszzs.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if("0".equals(idtentity)){
				list1 = xszzs.queryAll(currpage, everycount, userid, year, status,flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list1 = xszzs.queryByCollege(currpage, everycount, college, year, status, flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list1 = xszzs.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			session.setAttribute("xszzList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		}else if("keyanjiangli".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + time + author + authorseq  + url
					+ score + rank + score2 + "Œ¥…Û∫À";
			String[] list = {name,author,authorseq,url,score,rank, score2,searchsouce};
			KeYanJLDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = kyjls.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = kyjls.totalcount1(college, year, status,flag, inputvalue,yrank);
			}else if("2".equals(idtentity)){
				list2 = kyjls.totalcount2(userid, year, status,flag, inputvalue,yrank);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if("0".equals(idtentity)){
				list1 = kyjls.queryAll(currpage, everycount, userid, year, status,flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list1 = kyjls.queryByCollege(currpage, everycount, college, year, status, flag, inputvalue,yrank);
			}else if("2".equals(idtentity)){
				list1 = kyjls.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			session.setAttribute("kyjlList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		}else if("xueke".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,author,authorseq,url,score,score2,searchsouce};
			XueKeJianSheDao.update(id, list,idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = xkjss.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = xkjss.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = xkjss.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = xkjss.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = xkjss.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = xkjss.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("xkjsList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		}else if("keyanxiangmu".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,author,authorseq,url,score,score2,searchsouce};
			KeYanXiangMuDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = kyxms.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = kyxms.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = kyxms.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = kyxms.queryAll(currpage, everycount, userid, year, status,
						flag,inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = kyxms.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = kyxms.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("kyxmList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		}
		else if("zhuanye".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,author,authorseq,url,score,rank,score2,searchsouce};
			ZhuanYeDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = zys.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = zys.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = zys.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = zys.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = zys.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = zys.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("zyList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		} else if("jiaoxuemingshi".equals(type)){
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = author + authorseq + url + score + rank + time + score2
					+ "Œ¥…Û∫À";
			String[] list = {rank,author,authorseq,url,score,score2,searchsouce};
			JiaoXueMingShiDao.update(id, list,idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = jxmss.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = jxmss.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = jxmss.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = jxmss.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = jxmss.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = jxmss.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("jxmsList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		} else if("kechengjianshe".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,author,authorseq,url,score,score2,searchsouce};
			KeChengJianSheDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = kcjss.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = kcjss.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = kcjss.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = kcjss.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = kcjss.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = kcjss.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("kcjsList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		} else if("jxyjxm".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,author,authorseq,url,score,score2,searchsouce};
			JXYJXMDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = jxyjxms.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = jxyjxms.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = jxyjxms.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = jxyjxms.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = jxyjxms.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = jxyjxms.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("jxyjxmList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		} else if("shiyanshijianshe".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name + author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,author,authorseq,url,score,score2,searchsouce};
			ShiYanShiJianSheDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = sysjss.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = sysjss.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = sysjss.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = sysjss.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = sysjss.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = sysjss.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("sysjsList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		} else if("jiaocaizhuzuo".equals(type)){
			String name = request.getParameter("name");
			String author = request.getParameter("author");
			String chubanshe = request.getParameter("chubanshe");
			String authorseq = request.getParameter("authorseq");
			String url = request.getParameter("url");
			String score = request.getParameter("score");
			String score2 = request.getParameter("score2");
			String rank = request.getParameter("rank");
			String searchsouce = name +chubanshe+ author + authorseq + url + score + rank + time
					+ score2 + "Œ¥…Û∫À";
			String[] list = {name,rank,author,authorseq,url,score,score2, chubanshe,searchsouce};
			JiaoCaiZhuZuoDao.update(id, list, idtentity,time);
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = jczzs.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = jczzs.totalcount1(college, year, status,flag, inputvalue,yrank,school);
			}else if("2".equals(idtentity)){
				list2 = jczzs.totalcount2(userid, year, status,flag, inputvalue,yrank,school);
			}
			int totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list1 = null;
			if ("0".equals(idtentity)) {
				list1 = jczzs.queryAll(currpage, everycount, userid, year, status,
						flag, inputvalue);
			} else if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				list1 = jczzs.queryByCollege(currpage, everycount, college, year,
						status, flag, inputvalue,yrank,school);
			} else if("2".equals(idtentity)){
				list1 = jczzs.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("jczzList", list1);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
		}
	}
}
