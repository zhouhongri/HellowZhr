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

public class XiaoCancelTwoServlet extends HttpServlet{
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
        	List<Map<String,Object>> list1 = rs.queryXiaoActivityTwo("助教","xpzc",yname);
			List<Map<String,Object>> list2 = rs.queryXiaoActivityTwo("讲师","xpzc",yname);
			List<Map<String,Object>> list3 = rs.queryXiaoActivityTwo("副教授","xpzc",yname);
			List<Map<String,Object>> list4 = rs.queryXiaoActivityTwo("教授","xpzc",yname);
			if(list1.size()>0){
				rs.delXiaoActivityTwo("助教",yname,"xpzc");
			}
			if(list2.size()>0){
				rs.delXiaoActivityTwo("讲师",yname,"xpzc");
			}
			if(list3.size()>0){
				rs.delXiaoActivityTwo("副教授",yname,"xpzc");
			}
			if(list4.size()>0){
				rs.delXiaoActivityTwo("教授",yname,"xpzc");
			}
			list1 = rs.queryXiaoActivityTwo("助教","xpzc",yname);
			list2 = rs.queryXiaoActivityTwo("讲师","xpzc",yname);
			list3 = rs.queryXiaoActivityTwo("副教授","xpzc",yname);
			list4 = rs.queryXiaoActivityTwo("教授","xpzc",yname);
			if((list1.size()==0)&&(list2.size()==0)&&(list3.size()==0)&&(list4.size()==0)){
				out.write("取消成功！");
			}
			else{
            	out.write("取消失败！");
            }
        }else{
        	List<Map<String,Object>> list = rs.queryXiaoActivityTwo(jobname,"xpzc",yname);
        	if(list.size()>0){
        		rs.delXiaoActivityTwo(jobname,yname,"xpzc");
                list = rs.queryXiaoActivityTwo(jobname,"xpzc",yname);
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
