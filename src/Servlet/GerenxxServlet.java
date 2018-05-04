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
		    if("ѧУ".equals(list.get(0).get("yname"))){
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
	    String cxml = "<select><value>"+"ȫ��"+"</value><text>"+"ȫ��"+"</text></select>";
		if("0".equals(province)){
			 String cname = (String)list.get(0).get("c0names");
       	 String[] str = cname.split(";");
       	 for(int j=0;j<str.length;j++){
       		 if("00".equals(str[j])){
       			 cxml += "<select><value>"+"���Ĺ���"+"</value><text>"+"���Ĺ���"+"</text></select>"; 
       		 }
       		 else if("01".equals(str[j])){
       			 cxml += "<select><value>"+"ר������"+"</value><text>"+"ר������"+"</text></select>"; 
       		 }
       		 else if("02".equals(str[j])){
       			 cxml += "<select><value>"+"ѧ����������"+"</value><text>"+"ѧ����������"+"</text></select>"; 
       		 }
       		 else if("03".equals(str[j])){
       			 cxml += "<select><value>"+"ѧ�ƽ������"+"</value><text>"+"ѧ�ƽ������"+"</text></select>"; 
       		 }
       		 else if("04".equals(str[j])){
       			 cxml += "<select><value>"+"���н�������"+"</value><text>"+"���н�������"+"</text></select>"; 
       		 }
       		 else{
       			 cxml += "<select><value>"+"������Ŀ����"+"</value><text>"+"������Ŀ����"+"</text></select>"; 
       		 }
       	 }
		}
		if("1".equals(province)){
		 String cname = (String)list.get(0).get("c1names");
       	 String[] str = cname.split(";");
       	 for(int j=0;j<str.length;j++){
       		 if("10".equals(str[j])){
       			 cxml += "<select><value>"+"רҵ����"+"</value><text>"+"רҵ����"+"</text></select>"; 
       		 }
       		 if("11".equals(str[j])){
       			 cxml += "<select><value>"+"��ѧ��ʦ����"+"</value><text>"+"��ѧ��ʦ����"+"</text></select>"; 
       		 }
       		 if("12".equals(str[j])){
       			 cxml += "<select><value>"+"�γ̽������"+"</value><text>"+"�γ̽������"+"</text></select>"; 
       		 }
       		 if("13".equals(str[j])){
       			 cxml += "<select><value>"+"��ѧ�о���Ŀ����"+"</value><text>"+"��ѧ�о���Ŀ����"+"</text></select>"; 
       		 }
       		 if("14".equals(str[j])){
       			 cxml += "<select><value>"+"ʵ��������Ŀ����"+"</value><text>"+"ʵ����������"+"</text></select>"; 
       		 }
       		 if("15".equals(str[j])){
       			 cxml += "<select><value>"+"ʵ���ҹ���"+"</value><text>"+"ʵ���ҹ���"+"</text></select>"; 
       		 }
       		 if("16".equals(str[j])){
       			 cxml += "<select><value>"+"�Ŷӹ���"+"</value><text>"+"�Ŷӹ���"+"</text></select>"; 
       		 }
       		 if("17".equals(str[j])){
       			 cxml += "<select><value>"+"ѧ�ƾ�������"+"</value><text>"+"ѧ�ƾ�������"+"</text></select>"; 
       		 }
       		 if("18".equals(str[j])){
       			 cxml += "<select><value>"+"�̲���������"+"</value><text>"+"�̲���������"+"</text></select>"; 
       		 }
       		 if("19".equals(str[j])){
       			 cxml += "<select><value>"+"��ѧ����ɹ�����"+"</value><text>"+"��ѧ����ɹ�����"+"</text></select>"; 
       		 }
       	 }
		}
		String last_cxml = cxml_start + cxml + cxml_end;
		return last_cxml;
	}
}
