package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.ReleaseService;

public class ReleaseServlet extends HttpServlet{
	ReleaseService rs = new ReleaseService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text"); 
        resp.setHeader("Cache-Control", "no-cache"); 
        req.setCharacterEncoding("utf-8"); 
        resp.setCharacterEncoding("utf-8");
		String zmenu = req.getParameter("zmenu");
		if(zmenu!=null){
			zmenu = URLDecoder.decode(zmenu,"utf-8");
		}else{
			zmenu="none";
		}
		String checkval = req.getParameter("checkval");
		if(checkval!=null){
			checkval = URLDecoder.decode(checkval,"utf-8");
		}else{
			checkval="none";
		}
		String input1 = req.getParameter("input1");
		String input2 = req.getParameter("input2");
		String input3 = req.getParameter("input3");
		String jjnumval = req.getParameter("jjnumval");
		//System.out.println(check0val);
		//System.out.println(check1val);
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		rs.insertActivity(zmenu, checkval, input1, input2, jjnumval, input3,yname,"ypjj",userid);
		PrintWriter out = resp.getWriter();
		List list = rs.queryActivity(yname,"ypjj");
		if(list.size()>0){
			rs.delacmessage("ypjj");
			out.write("发布成功！");
			out.flush();
			out.close();
		}else{
			out.write("发布失败！");
			out.flush();
			out.close();
		}
	}
}
