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

import Service.MenuService;

public class GerenxxServlet extends HttpServlet{
	MenuService ms = new MenuService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			HttpSession session = req.getSession();
			//resp.setContentType("text/xml"); 
	        //resp.setHeader("Cache-Control", "no-cache"); 
	        req.setCharacterEncoding("UTF-8"); 
	        resp.setCharacterEncoding("UTF-8");
	        PrintWriter out =  resp.getWriter();
	        
			
		    String province =req.getParameter("province");
		    String yname = req.getParameter("yname");
		    if(yname!=null){
		    	yname = URLDecoder.decode(yname,"utf-8");
		    }
		    String userid = (String) session.getAttribute("userid");
		    List<Map<String,Object>> list = ms.querymenu(userid);
		    if("学校".equals(list.get(0).get("yname"))){
		    	list = ms.queryynamelist(yname);
		    }
		    

			 String last_cxml = queryxyx(province, list);
	         out.write(last_cxml); 
	         out.flush();
	         out.close();
	}
	public String queryxyx(String province,List<Map<String,Object>> list){
		String cxml_start = "<selects>"; 
	    String cxml_end = "</selects>"; 
	    String cxml = "<select><value>"+"全部"+"</value><text>"+"全部"+"</text></select>";
		if("0".equals(province)){
			 String cname = (String)list.get(0).get("c0names");
       	 String[] str = cname.split(";");
       	 for(int j=0;j<str.length;j++){
       		 if("00".equals(str[j])){
       			 cxml += "<select><value>"+"论文管理"+"</value><text>"+"论文管理"+"</text></select>"; 
       		 }
       		 else if("01".equals(str[j])){
       			 cxml += "<select><value>"+"专利管理"+"</value><text>"+"专利管理"+"</text></select>"; 
       		 }
       		 else if("02".equals(str[j])){
       			 cxml += "<select><value>"+"学术著作管理"+"</value><text>"+"学术著作管理"+"</text></select>"; 
       		 }
       		 else if("03".equals(str[j])){
       			 cxml += "<select><value>"+"学科建设管理"+"</value><text>"+"学科建设管理"+"</text></select>"; 
       		 }
       		 else if("04".equals(str[j])){
       			 cxml += "<select><value>"+"科研奖励管理"+"</value><text>"+"科研奖励管理"+"</text></select>"; 
       		 }
       		 else{
       			 cxml += "<select><value>"+"科研项目管理"+"</value><text>"+"科研项目管理"+"</text></select>"; 
       		 }
       	 }
		}
		if("1".equals(province)){
		 String cname = (String)list.get(0).get("c1names");
       	 String[] str = cname.split(";");
       	 for(int j=0;j<str.length;j++){
       		 if("10".equals(str[j])){
       			 cxml += "<select><value>"+"专业管理"+"</value><text>"+"专业管理"+"</text></select>"; 
       		 }
       		 if("11".equals(str[j])){
       			 cxml += "<select><value>"+"教学名师管理"+"</value><text>"+"教学名师管理"+"</text></select>"; 
       		 }
       		 if("12".equals(str[j])){
       			 cxml += "<select><value>"+"课程建设管理"+"</value><text>"+"课程建设管理"+"</text></select>"; 
       		 }
       		 if("13".equals(str[j])){
       			 cxml += "<select><value>"+"教学研究项目管理"+"</value><text>"+"教学研究项目管理"+"</text></select>"; 
       		 }
       		 if("14".equals(str[j])){
       			 cxml += "<select><value>"+"实践教育项目管理"+"</value><text>"+"实践教育管理"+"</text></select>"; 
       		 }
       		 if("15".equals(str[j])){
       			 cxml += "<select><value>"+"实验室管理"+"</value><text>"+"实验室管理"+"</text></select>"; 
       		 }
       		 if("16".equals(str[j])){
       			 cxml += "<select><value>"+"团队管理"+"</value><text>"+"团队管理"+"</text></select>"; 
       		 }
       		 if("17".equals(str[j])){
       			 cxml += "<select><value>"+"学科竞赛管理"+"</value><text>"+"学科竞赛管理"+"</text></select>"; 
       		 }
       		 if("18".equals(str[j])){
       			 cxml += "<select><value>"+"教材著作管理"+"</value><text>"+"教材著作管理"+"</text></select>"; 
       		 }
       		 if("19".equals(str[j])){
       			 cxml += "<select><value>"+"教学单项成果管理"+"</value><text>"+"教学单项成果管理"+"</text></select>"; 
       		 }
       	 }
		}
		String last_cxml = cxml_start + cxml + cxml_end;
		return last_cxml;
	}
}
