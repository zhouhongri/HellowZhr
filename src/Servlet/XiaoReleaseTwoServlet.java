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

public class XiaoReleaseTwoServlet extends HttpServlet{
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
		String zmenu2 = req.getParameter("zmenu2");
		if(zmenu2!=null){
			zmenu2 = URLDecoder.decode(zmenu2,"utf-8");
		}else{
			zmenu2="none";
		}
		String checkval2 = req.getParameter("checkval2");
		if(checkval2!=null){
			checkval2 = URLDecoder.decode(checkval2,"utf-8");
		}else{
			checkval2="none";
		}
		String input4 = req.getParameter("input4");
		String zcnumval = req.getParameter("zcnumval");
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		String jobname = req.getParameter("jobname");
		if(jobname!=null){
			jobname = URLDecoder.decode(jobname,"utf-8");
			if("全部".equals(jobname)){
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,"助教",yname,"xpzc",userid);
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,"讲师",yname,"xpzc",userid);
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,"副教授",yname,"xpzc",userid);
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,"教授",yname,"xpzc",userid);
			}else{
				if("助教".equals(jobname)){
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"xpzc",userid);
				}else if("讲师".equals(jobname)){
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"xpzc",userid);
				}else if("副教授".equals(jobname)){
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"xpzc",userid);
				}else if("教授".equals(jobname)){
					rs.insertXiaoActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"xpzc",userid);
				}
			}
		}else{
			jobname="none";
		}
		
		
		//System.out.println(check0val);
		//System.out.println(check1val);
		PrintWriter out = resp.getWriter();
		if("全部".equals(jobname)){
			List<Map<String,Object>> list1 = rs.queryXiaoActivityTwo("助教","xpzc",yname);
			List<Map<String,Object>> list2 = rs.queryXiaoActivityTwo("讲师","xpzc",yname);
			List<Map<String,Object>> list3 = rs.queryXiaoActivityTwo("副教授","xpzc",yname);
			List<Map<String,Object>> list4 = rs.queryXiaoActivityTwo("教授","xpzc",yname);
			if((list1.size()+list2.size()+list3.size()+list4.size())==4){
				rs.delxiaoacmessage("xpzc");
				out.write("发布成功！");
			}else{
				out.write("发布失败！");
			}
		}else{
			List<Map<String,Object>> list = rs.queryXiaoActivityTwo(jobname,"xpzc",yname);
			if(list.size()>0){
				rs.delxiaoacmessage("xpzc");
				out.write("发布成功！");
			}else{
				out.write("发布失败！");
			}
		}
		out.flush();
		out.close();
	}
}
