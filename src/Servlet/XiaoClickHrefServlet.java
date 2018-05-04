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

import org.codehaus.jackson.map.ObjectMapper;

import Service.MenuService;
import Service.ReleaseService;

public class XiaoClickHrefServlet extends HttpServlet{
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
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        String userid = (String)session.getAttribute("userid");
        String checkval = req.getParameter("checkval");
        if(checkval!=null){
        	checkval = URLDecoder.decode(checkval,"utf-8");
        }
        String flag = req.getParameter("flag");
        //System.out.println(checkval);
        List<Map<String,Object>> list = rs.queryXiaoAcMessage(userid,flag);
        if(list.size()>0){
        	for(int i=0;i<list.size();i++){
        		if(flag.equals((String)list.get(i).get("activityname"))){
            		out.write("exist");
            		break;
            	}
        	}
        }else{
        		String[] str1 = checkval.split(",");
                for(int i=0;i<str1.length;i++){
                	String[] str2 = str1[i].split(";");
                	String id = str2[0];
                	String table = str2[1];
                	rs.insertXiaoAcMessage(id, table, userid,flag);
        	}
                list = rs.queryXiaoAcMessage(userid,flag);
                if(list.size()>0){
                	out.write("success");
                }else{
                	out.write("fail");
                }
        }
        out.flush();
        out.close();
	}
}
