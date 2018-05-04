package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import Service.FileUDService;
import Service.MenuService;
import Service.UserService;
import Util.UserDao;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
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
		ObjectMapper om  = new ObjectMapper();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String school = request.getParameter("school");
		
		//System.out.println(id+" "+pwd);
		UserDao u = new UserDao();
		UserService us = new UserService();
		String flag = u.QueryIdPwd(username, pwd,school);
		//System.out.println(flag);
		if(flag.equals("true")){
			HttpSession session = request.getSession();
			String id = us.QueryId(username, pwd, school);
			session.setAttribute("userid", id);//传递用户id
			session.setAttribute("school", school);//school
			
			// 查询头像
			Map<String, Object> headMap = FileUDService.queryUserHeadPortrait(id,"UserHeadPortrait");
			
			List<Map<String,Object>> list = u.QueryJobJobtimeLasttime(id);
			String job = (String) list.get(0).get("job");
			String jobtime = (String) list.get(0).get("jobtime");
			String lasttime = (String) list.get(0).get("lasttime");
			session.setAttribute("job",job);
			session.setAttribute("jobtime",jobtime);
			session.setAttribute("lasttime",lasttime);
			if (headMap != null) {
				session.setAttribute("userheadportrait", headMap.get("savepath")
						+ "");
			}else{
				session.setAttribute("userheadportrait", "images/defaultuser.jpg");
			}
			String thistime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			u.updateLasttime(thistime, id);
			
			//传递menu串
			//1.1主菜单串
			String college = u.QueryCollege(id);
			String[] ZnameList = MenuService.QueryMenuZnameList(college,school);
			session.setAttribute("ZnameList", ZnameList);
			for (String string : ZnameList) {
				if("0".equals(string)){
					//1.2科研菜单串
					String[] C0names = MenuService.QueryMenuC0nameList(college,school);
					session.setAttribute("C0names", C0names);
					
				}
				if("1".equals(string)){
					//1.3教学菜单串
					String[] C1names = MenuService.QueryMenuC1nameList(college,school);
					session.setAttribute("C1names", C1names);
				}
			}
			
			
			
			
			//传递身份
			String name = u.QueryName(id);
			String identity = u.QueryIdentity(id);
			session.setAttribute("identity", identity);
			session.setAttribute("name", name);
			out.write(identity);
		}
		
//		if(flag.equals("true")){
//			request.getSession().setAttribute("userid", id);
//			request.getRequestDispatcher("index.jsp").forward(request, response);
//		}
		
		
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
