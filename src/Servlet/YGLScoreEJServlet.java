package Servlet;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.YGLScoreEJService;

public class YGLScoreEJServlet extends HttpServlet {
	YGLScoreEJService yglsejs = new YGLScoreEJService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		String datav = req.getParameter("datav");
		List<Map<String, String>> list = yglsejs.queryMainMenu(userid);
		String zname = list.get(0).get("zname");
		String[] zmenu = zname.split(";");

		String c0name = list.get(0).get("c0names");
		String[] c0names = c0name.split(";");
		List list2 = new ArrayList();
		for (int j = 0; j < c0names.length; j++) {

			Map map = new HashMap();
			if ("00".equals(c0names[j])) {
				map.put("cname", "论文管理");
			}
			if ("01".equals(c0names[j])) {
				map.put("cname", "专利管理");
			}
			if ("02".equals(c0names[j])) {
				map.put("cname", "学术著作管理");
			}
			if ("03".equals(c0names[j])) {
				map.put("cname", "学科建设管理");
			}
			if ("04".equals(c0names[j])) {
				map.put("cname", "科研奖励管理");
			}
			if ("05".equals(c0names[j])) {
				map.put("cname", "科研项目管理");
			}

			list2.add(map);
		}
	
		session.setAttribute("list2", list2);
		session.setAttribute("zmenu", zmenu);
		if(!"1".equals(datav)){
		req.getRequestDispatcher("newyglscore.jsp").forward(req, resp);
		}else if("1".equals(datav)){
			req.getRequestDispatcher("yuan_datav.jsp").forward(req, resp);
		}

	}
}
