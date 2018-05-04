package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.MenuSelectionManager;


import Service.MenuService;
import Service.UserService;
import Service.ZhuanYeService;
import Util.UserDao;

public class GetUserServlet extends HttpServlet {
	private String everycount = "10"; // 每一页显示数据条数
	private String currpage; // 当前页
	private String pagecount; // 记总页数
	private int totalcount; // 记表中数据总共条数
	UserService us = new UserService();
	UserDao u = new UserDao();
	/**
	 * Constructor of the object.
	 */
	public GetUserServlet() {
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

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Writer w = response.getWriter();
		HttpSession session = request.getSession();
		currpage = request.getParameter("currpage");
		String school = (String) session.getAttribute("school");
		String userid = (String) request.getSession().getAttribute("userid");
		String idtentity = u.QueryIdentity(userid);
		String college = u.QueryCollege(userid);
		String status = request.getParameter("status");
		String index = request.getParameter("index");
		String year = request.getParameter("year");//这里其实是系别
		
		String inputvalue = request.getParameter("inputvalue");
		if(null!=inputvalue&&!"".equals(inputvalue)){
			System.out.println("sa");
		}
		String rank = request.getParameter("rank");
		String authorseq = request.getParameter("authorseq");
		String flag = request.getParameter("flag");
		
		if(year!=null){
			year = URLDecoder.decode(year,"utf-8");
		}
		if(idtentity.equals("1")){
			List<Map<String, Object>> xilist = MenuService.queryXiByCollege(college,school);
			Map<String, Object> map = xilist.get(0);
			String xnames = (String) map.get("xnames");
			if(xnames!=null){
				String[] xlist = xnames.split(";");
				session.setAttribute("xlist", xlist);//给前台系列表
			}
		}else if(idtentity.equals("2")){
			List<Map<String, Object>> yuanlist = MenuService.queryAll(school);
			List<String> ylist = new ArrayList<String>();
			for(Map<String, Object> map : yuanlist){
				String str = (String) map.get("yname");
				ylist.add(str);
			}
			session.setAttribute("ylist", ylist);
		
		}
		
		if (index != null) {
			if(idtentity.equals("1")){
				request.getRequestDispatcher("newuser.jsp").forward(request, response);
			}
			if(idtentity.equals("2")){
				request.getRequestDispatcher("newuser-xiao.jsp").forward(request, response);
			}

		} else {
			List<Map<String, String>> list2 = null;
			if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = us.totalcount1(college, year, status,flag, inputvalue,school);
			}else if("2".equals(idtentity)){
				list2 = us.totalcount2(userid, year, status,flag, inputvalue,school);
			}
			totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list = null;
			if ("1".equals(idtentity)) {
				list = us.queryByCollege(currpage, everycount, college, year,status, flag, inputvalue,school);
			} else if("2".equals(idtentity)){
				list = us.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,school);
			}
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			session.setAttribute("userList", list);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
			session.setAttribute("status", status);
			session.setAttribute("inputvalue", inputvalue);
			session.setAttribute("year", year);

			// System.out.println(idtentity+" id"+userid);
			if ("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)) {
				w.write("newUsers.jsp," + currpage + "," + pagecount);
			}else if ("2".equals(idtentity)) {
				w.write("newUsers-xiao.jsp," + currpage + "," + pagecount);
			}

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
	
	int getPageCount(String totalcount,String everycount){
		int pc= 0;
		int tc = Integer.parseInt(totalcount);
		int ec = Integer.parseInt(everycount);
		if(tc % ec == 0){
			pc = tc / ec;
		}else{
			pc = (tc / ec)+1;
		}
		return pc;
	}
}
