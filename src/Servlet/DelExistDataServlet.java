package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.ReleaseService;

public class DelExistDataServlet extends HttpServlet{
	ReleaseService rs = new ReleaseService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text"); 
        resp.setHeader("Cache-Control", "no-cache"); 
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String checkval = req.getParameter("checkval");
        if(checkval!=null){
        	checkval = URLDecoder.decode(checkval,"utf-8");
        }
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        String userid = (String) session.getAttribute("userid");
        String flag = req.getParameter("flag");
        rs.delAcMessage(userid,flag);
        List list1 = rs.queryAcMessage(userid,flag);
        String[] str1 = checkval.split(",");
        for(int i=0;i<str1.length;i++){
        	String[] str2 = str1[i].split(";");
        	String id = str2[0];
        	String table = str2[1];
        	rs.insertAcMessage(id, table, userid,flag);
        }
        List list2 = rs.queryAcMessage(userid,flag);
        if(list1.size()==0&&list2.size()>0){
        	out.write("success");
        }else{
        	out.write("fail");
        }
        out.flush();
        out.close();
	}
}
