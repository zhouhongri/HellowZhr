package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.ReleaseService;

public class XiaoCancelServlet extends HttpServlet{
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
        String acflag = req.getParameter("acflag");
        HttpSession session = req.getSession();
        String userid = (String) session.getAttribute("userid");
        List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
        if("del".equals(acflag)){
        	rs.delXiaoActivity(yname,"xpjj");
        }
        PrintWriter out = resp.getWriter();
        List list = rs.queryXiaoActivity("xpjj");
        if(list.size()==0){
        	out.write("取消成功！");
        	out.flush();
        	out.close();
        }else{
        	out.write("取消失败！");
        	out.flush();
        	out.close();
        }
	}
}
