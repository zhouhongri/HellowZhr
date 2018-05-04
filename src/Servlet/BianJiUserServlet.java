package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.UserService;

public class BianJiUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public BianJiUserServlet() {
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
		PrintWriter out = response.getWriter();
		
		//接收数据
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd").trim();
		String name = request.getParameter("name").trim();
		String tel = request.getParameter("tel").trim();
		String sex = request.getParameter("sex").trim();
		String identity = request.getParameter("identity").trim();
		String job = request.getParameter("job").trim();
		String jobtime = request.getParameter("jobtime").trim();
		String xname = request.getParameter("xname").trim();
		String yname = request.getParameter("yname");
		String type = request.getParameter("type");
		//转换identity
		if("院管理员".equals(identity)){
			identity = "1";
		}else if("校管理员".equals(identity)){
			identity = "2";
		}else if("教师".equals(identity)){
			identity = "0";
		}else if("科研秘书".equals(identity)){
			identity = "-0";
		}else if("教学秘书".equals(identity)){
			identity = "-1";
		}
		if(type.equals("yuan")){
			UserService.update(userid, pwd, name, tel, sex, job, jobtime, identity, xname);
		}
		if(type.equals("xiao")){
			UserService.update(userid, pwd, name, tel, sex, job, jobtime, identity, xname, yname);
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
