package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.ReleaseService;

public class ReleaseTwoServlet extends HttpServlet{
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
			if("ȫ��".equals(jobname)){
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,"����",yname,"ypzc",userid);
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,"��ʦ",yname,"ypzc",userid);
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,"������",yname,"ypzc",userid);
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,"����",yname,"ypzc",userid);
			}else{
				if("����".equals(jobname)){
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"ypzc",userid);
				}else if("��ʦ".equals(jobname)){
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"ypzc",userid);
				}else if("������".equals(jobname)){
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"ypzc",userid);
				}else if("����".equals(jobname)){
					rs.insertActivityTwo(zmenu2, checkval2, zcnumval, input4,jobname,yname,"ypzc",userid);
				}
			}
		}else{
			jobname="none";
		}
		
		
		//System.out.println(check0val);
		//System.out.println(check1val);
		PrintWriter out = resp.getWriter();
		if("ȫ��".equals(jobname)){
			List<Map<String,Object>> list1 = rs.queryActivityTwo("����",yname,"ypzc");
			List<Map<String,Object>> list2 = rs.queryActivityTwo("��ʦ",yname,"ypzc");
			List<Map<String,Object>> list3 = rs.queryActivityTwo("������",yname,"ypzc");
			List<Map<String,Object>> list4 = rs.queryActivityTwo("����",yname,"ypzc");
			if((list1.size()+list2.size()+list3.size()+list4.size())==4){
				rs.delacmessage("ypzc");
				out.write("�����ɹ���");
			}else{
				out.write("����ʧ�ܣ�");
			}
		}else{
			List<Map<String,Object>> list = rs.queryActivityTwo(jobname,yname,"ypzc");
			if(list.size()>0){
				rs.delacmessage("ypzc");
				out.write("�����ɹ���");
			}else{
				out.write("����ʧ�ܣ�");
			}
		}
		out.flush();
		out.close();
	}
}
