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

public class CancelTwoServlet extends HttpServlet{
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
        HttpSession session = req.getSession();
        String userid = (String) session.getAttribute("userid");
        List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
        PrintWriter out = resp.getWriter();
        String jobname = req.getParameter("jobname");
        if(jobname!=null){
        	jobname = URLDecoder.decode(jobname,"utf-8");
        }
        if("全部".equals(jobname)){
        	List<Map<String,Object>> list1 = rs.queryActivityTwo("助教",yname,"ypzc");
			List<Map<String,Object>> list2 = rs.queryActivityTwo("讲师",yname,"ypzc");
			List<Map<String,Object>> list3 = rs.queryActivityTwo("副教授",yname,"ypzc");
			List<Map<String,Object>> list4 = rs.queryActivityTwo("教授",yname,"ypzc");
			if(list1.size()>0){
				rs.delActivityTwo("助教",yname,"ypzc");
			}
			if(list2.size()>0){
				rs.delActivityTwo("讲师",yname,"ypzc");
			}
			if(list3.size()>0){
				rs.delActivityTwo("副教授",yname,"ypzc");
			}
			if(list4.size()>0){
				rs.delActivityTwo("教授",yname,"ypzc");
			}
			list1 = rs.queryActivityTwo("助教",yname,"ypzc");
			list2 = rs.queryActivityTwo("讲师",yname,"ypzc");
			list3 = rs.queryActivityTwo("副教授",yname,"ypzc");
			list4 = rs.queryActivityTwo("教授",yname,"ypzc");
			if((list1.size()==0)&&(list2.size()==0)&&(list3.size()==0)&&(list4.size()==0)){
				out.write("取消成功！");
			}
			else{
            	out.write("取消失败！");
            }
        }else{
        	List<Map<String,Object>> list = rs.queryActivityTwo(jobname,yname,"ypzc");
            if(list.size()>0){
            	rs.delActivityTwo(jobname,yname,"ypzc");
                list = rs.queryActivityTwo(jobname,yname,"ypzc");
            }
            if(list.size()==0){
            	out.write("取消成功！");
            }else{
            	out.write("取消失败！");
            }
        }
        out.flush();
    	out.close();
	}
}
