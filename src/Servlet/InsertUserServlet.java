package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.UserService;

public class InsertUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public InsertUserServlet() {
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
		HttpSession session = request.getSession();
		String userid = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String sex = request.getParameter("sex");
		String identity = request.getParameter("identity");
		String xname = request.getParameter("xname");
		String job = request.getParameter("job");
		String jobtime = request.getParameter("jobtime");
		String college = request.getParameter("college");
		String yname = request.getParameter("yname");
		if(college.equals("ѧУ")){
			college = yname;
		}
		if(xname.equals("-1")){
			xname="";
		}
		String[] array = {userid,pwd,name,tel,sex,identity,xname,job,jobtime,college};
		String search = "";
		for(String s : array){
			System.out.println("s:"+s);
			search += s;
		}
		UserService.insertUser(userid, pwd, name, tel, sex, "", college, identity, "0", "0", job, jobtime, "", xname, search);
		request.getRequestDispatcher("GetUserServlet?currpage=1&userid="+session.getAttribute("userid")+"&index=1").forward(request, response);
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
