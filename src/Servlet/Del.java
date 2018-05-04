package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.KeYanJLService;
import Service.KeYanXMService;
import Service.LunWenService;
import Service.XueKeJSService;
import Service.XueShuZZService;
import Service.ZhuanLiService;
import Util.JXYJXMDao;
import Util.JiaoCaiZhuZuoDao;
import Util.JiaoXueMingShiDao;
import Util.KeChengJianSheDao;
import Util.KeYanJLDao;
import Util.KeYanXiangMuDao;
import Util.LunWenDao;
import Util.ShiYanShiJianSheDao;
import Util.XueKeJianSheDao;
import Util.XueShuZZDao;
import Util.ZhuanLiDao;
import Util.ZhuanYeDao;

public class Del extends HttpServlet {
	LunWenService lws = new LunWenService();
	XueShuZZService xszzs = new XueShuZZService();
	KeYanJLService kyjls = new KeYanJLService();
	ZhuanLiService zls = new ZhuanLiService();
	XueKeJSService xkjs = new XueKeJSService();
	KeYanXMService kyxm = new KeYanXMService();
	private String everycount="10";
	private String pagecount; // ¼Ç×ÜÒ³Êý
	private int totalcount; 

	/**
	 * Constructor of the object.
	 */
	public Del() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		//String currpage = request.getParameter("currpage");
		//String year = request.getParameter("yearvalue");
		//String status = request.getParameter("statusvalue");
		//String inputvalue = request.getParameter("inputvalue");
		HttpSession session = request.getSession();
		//String userid = (String) session.getAttribute("userid");
		String flag = "-1";
		if(type.equals("lunwen")){
			LunWenDao.del(id);
			
//			List<Map<String, String>> list2 = lws.totalcount(userid, year,status,flag,inputvalue);
//			int totalcount = Integer.parseInt(list2.get(0).get("a"));
//			List list1 = lws.queryAll(currpage, everycount, userid, year,status,flag,inputvalue);
//			if (totalcount % Integer.parseInt(everycount) == 0) {
//				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
//			} else {
//				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
//			}
//			
//			session.setAttribute("lwList", list1);
//			session.setAttribute("totalcount", totalcount);
//			session.setAttribute("pagecount", pagecount);
//			session.setAttribute("currpage", currpage);
//			
//			request.getRequestDispatcher("iframelunwen2.jsp").forward(request, response);
			
		}else if(type.equals("zhuanli")){
			ZhuanLiDao.del(id);
//			List<Map<String, String>> list2 = zls.totalcount(userid, year,status,flag,inputvalue);
//			int totalcount = Integer.parseInt(list2.get(0).get("a"));
//			List list1 = zls.queryAll(currpage, everycount, userid, year,status,flag,inputvalue);
//			if (totalcount % Integer.parseInt(everycount) == 0) {
//				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
//			} else {
//				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
//			}
//			
//			session.setAttribute("zlList", list1);
//			session.setAttribute("totalcount", totalcount);
//			session.setAttribute("pagecount", pagecount);
//			session.setAttribute("currpage", currpage);
//			
//			request.getRequestDispatcher("iframezhuanli2.jsp").forward(request, response);
		}else if(type.equals("xszz")){
			
			try {
				XueShuZZDao.del(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			List<Map<String, String>> list2 = xszzs.totalcount(userid, year,status,flag,inputvalue);
//			int totalcount = Integer.parseInt(list2.get(0).get("a"));
//			List list1 = xszzs.queryAll(currpage, everycount, userid, year,status,flag,inputvalue);
//			if (totalcount % Integer.parseInt(everycount) == 0) {
//				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
//			} else {
//				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
//			}
//			
//			session.setAttribute("xszzList", list1);
//			session.setAttribute("totalcount", totalcount);
//			session.setAttribute("pagecount", pagecount);
//			session.setAttribute("currpage", currpage);
//			
//			request.getRequestDispatcher("iframexueshuzhuzuo2.jsp").forward(request, response);
		}else if(type.equals("kyjl")){
			
			KeYanJLDao.del(id);
//			List<Map<String, String>> list2 = kyjls.totalcount(userid, year,status,flag,inputvalue);
//			int totalcount = Integer.parseInt(list2.get(0).get("a"));
//			List list1 = kyjls.queryAll(currpage, everycount, userid, year,status,flag,inputvalue);
//			if (totalcount % Integer.parseInt(everycount) == 0) {
//				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
//			} else {
//				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
//			}
//			
//			session.setAttribute("kyjlList", list1);
//			session.setAttribute("totalcount", totalcount);
//			session.setAttribute("pagecount", pagecount);
//			session.setAttribute("currpage", currpage);
//			
//			request.getRequestDispatcher("iframekeyanjiangli2.jsp").forward(request, response);
		}else if(type.equals("xkjs")){
			System.out.println("xuekejianshe");
			XueKeJianSheDao.del(id);
//			
//			List<Map<String, String>> list2 = xkjs.totalcount(userid, year,status,flag,inputvalue);
//			int totalcount = Integer.parseInt(list2.get(0).get("a"));
//			List list1 = xkjs.queryAll(currpage, everycount, userid, year,status,flag,inputvalue);
//			if (totalcount % Integer.parseInt(everycount) == 0) {
//				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
//			} else {
//				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
//			}
//			
//			session.setAttribute("xkjsList", list1);
//			session.setAttribute("totalcount", totalcount);
//			session.setAttribute("pagecount", pagecount);
//			session.setAttribute("currpage", currpage);
//			
//			request.getRequestDispatcher("iframexuekejianshe2.jsp").forward(request, response);
		}else if(type.equals("keyanxiangmu")){
			System.out.println("keyanxiangmu");
			KeYanXiangMuDao.del(id);
		}else if(type.equals("zhuanye")){
			ZhuanYeDao.del(id);
		}else if(type.equals("jiaoxuemingshi")){
			JiaoXueMingShiDao.del(id);
		}else if(type.equals("kechengjianshe")){
			KeChengJianSheDao.del(id);
		}else if(type.equals("jxyjxm")){
			JXYJXMDao.del(id);
		}else if(type.equals("shiyanshijianshe")){
			ShiYanShiJianSheDao.del(id);
		}else if(type.equals("jiaocaizhuzuo")){
			JiaoCaiZhuZuoDao.del(id);
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
