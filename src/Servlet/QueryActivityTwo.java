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

public class QueryActivityTwo extends HttpServlet{
	ReleaseService rs = new ReleaseService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		PrintWriter out = resp.getWriter();
		String jobname = req.getParameter("jobname");
		if("全部".equals(jobname)){
			List list1 = rs.queryActivityTwo("助教",yname,"ypzc");
			List list2 = rs.queryActivityTwo("讲师",yname,"ypzc");
			List list3 = rs.queryActivityTwo("副教授",yname,"ypzc");
			List list4 = rs.queryActivityTwo("教授",yname,"ypzc");
			if((list1.size()>0)||(list2.size()>0)||(list3.size()>0)||(list4.size()>0)){
				out.write("true");
			}else{
				out.write("false");
			}
		}
		else{
			List<Map<String,Object>> list = rs.queryActivityTwo(jobname,yname,"ypzc");
			if(list.size()>0){
				out.write("true");
			}else{
				out.write("false");
			}
		}
		out.flush();
		out.close();
	}
}
