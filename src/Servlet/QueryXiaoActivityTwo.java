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

public class QueryXiaoActivityTwo extends HttpServlet{
	ReleaseService rs = new ReleaseService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		String yname = req.getParameter("yname");
		if(yname==null||yname==""){
			String userid = (String) session.getAttribute("userid");
			List<Map<String,Object>> listyname =  rs.queryYname(userid);
			yname = (String) listyname.get(0).get("college");
		}
		String jobname = req.getParameter("jobname");
		if("全部".equals(jobname)){
			List list1 = rs.queryXiaoActivityTwo("助教","xpzc",yname);
			List list2 = rs.queryXiaoActivityTwo("讲师","xpzc",yname);
			List list3 = rs.queryXiaoActivityTwo("副教授","xpzc",yname);
			List list4 = rs.queryXiaoActivityTwo("教授","xpzc",yname);
			if((list1.size()>0)||(list2.size()>0)||(list3.size()>0)||(list4.size()>0)){
				out.write("true");
			}else{
				out.write("false");
			}
		}
		else{
			List<Map<String,Object>> list = rs.queryXiaoActivityTwo(jobname,"xpzc",yname);
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