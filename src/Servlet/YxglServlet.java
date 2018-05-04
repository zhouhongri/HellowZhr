package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.MenuService;
import Service.UserService;
import Util.BaseDao;

public class YxglServlet extends HttpServlet {
	MenuService ms = new MenuService();
	
	/**
	 * Constructor of the object.
	 */
	public YxglServlet() {
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

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String school = (String) request.getSession().getAttribute("school");
		String type = request.getParameter("type");
		if("checkYuan".equals(type)){
			boolean flag = true;
			String yuan  = request.getParameter("yuan");
			List<Map<String, Object>> ylist = ms.queryAll(school);
			for(Map<String, Object> map : ylist){
				String yname = (String) map.get("yname");
				if(yname.equals(yuan)){
					flag = false;
					break;
				}
			}
			if(flag){
				out.write("DonthaveIt");	
			}else{
				out.write("haveIt");
			}
		}else{
			String yuan  = request.getParameter("yuan");
			BaseDao.addscore(yuan);
			String adminusername = request.getParameter("adminusername");
			String adminpassword = request.getParameter("adminpassword");
			String x1 = request.getParameter("x1");
			if(x1==null){
				x1="";
			}else{
				x1=x1+";";
			}
			String x2 = request.getParameter("x2");
			if(x2==null){
				x2="";
			}else{
				x2=x2+";";
			}
			String x3 = request.getParameter("x3");
			if(x3==null){
				x3="";
			}else{
				x3=x3+";";
			}
			String x4 = request.getParameter("x4");
			if(x4==null){
				x4="";
			}else{
				x4=x4+";";
			}
			String x5 = request.getParameter("x5");
			if(x5==null){
				x5="";
			}else{
				x5=x5+";";
			}
			String xnames = x1+x2+x3+x4+x5;
			//System.out.println(yuan+"||"+adminpassword+"||"+adminusername);
			
			UserService.insertUser(adminusername, adminpassword, yuan+"π‹¿Ì‘±", "", "", "", yuan, "1", "0", "0","","","","","");
			MenuService.insertMenu("0;", "00;", yuan, "", xnames);
		}
		
		out.flush();
		out.close();
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
