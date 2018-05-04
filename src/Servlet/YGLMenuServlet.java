package Servlet;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.YGLMenuService;

public class YGLMenuServlet extends HttpServlet{
	private String everycount = "10"; // 每一页显示数据条数
	private String currpage; // 当前页
	private String pagecount; // 记总页数
	private int totalcount; // 记表中数据总共条数
	YGLMenuService yglms = new YGLMenuService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			Writer write = resp.getWriter();
			currpage = req.getParameter("currpage");
			String userid = req.getParameter("userid");
			List list = yglms.queryMenu(currpage, everycount, userid);
			HttpSession session = req.getSession();
			session.setAttribute("menuList", list);
			write.write("ygliframemenu.jsp;"+currpage+";"+pagecount);
		
		
		
	}
	
}
