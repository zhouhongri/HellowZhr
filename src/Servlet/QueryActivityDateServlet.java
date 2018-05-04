package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import Service.ReleaseService;

public class QueryActivityDateServlet extends HttpServlet{
	ReleaseService rs = new ReleaseService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text");
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		String flag = req.getParameter("flag");
		PrintWriter out = resp.getWriter();
		ObjectMapper om = new ObjectMapper();
		List<Map<String,Object>> amlist = new ArrayList<Map<String,Object>>();
		if(flag==null||"".equals(flag)){
			amlist = rs.queryAcMsgId(yname);
		}
		else{
			amlist = rs.queryAcId(yname);
		}
		//System.out.println(amlist);
		om.writeValue(out, amlist);
	}
}
