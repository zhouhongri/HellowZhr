package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.MenuService;

public class ActrlsServlet extends HttpServlet{
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
		String userid = (String)session.getAttribute("userid");
		List<Map<String,Object>> list = ms.querymenu(userid);
		//System.out.println(list);
		String zname = (String)list.get(0).get("zname");
		List list1 = new ArrayList();
		List list2 = new ArrayList();
		String[] str1 = zname.split(";");
		
		for(int i=0;i<str1.length;i++){
			//System.out.println("12");
			if(str1[i].equals("0")){
				String cname = (String)list.get(0).get("c0names");
		   	 	String[] str = cname.split(";");
		   	 	for(int j=0;j<str.length;j++){
		   	 		
		   	 		Map map = new HashMap();
		   	 		map.put("id", j+1);
		   	 	if(str[j].equals("00")){
		   	 	map.put("cname", "���Ĺ���");
		   	 	}
		   	 	else if(str[j].equals("01")){
			   	 	map.put("cname", "ר������");
			   	 }
		   	 	else if(str[j].equals("02")){
			   	 	map.put("cname", "ѧ����������");
			   	 }
		   	 	else if(str[j].equals("03")){
		   	 		map.put("cname", "ѧ�ƹ���");
		   	 	}
		   	 	else if(str[j].equals("04")){
		   	 		map.put("cname", "���н�������");
		   	 	}
		   	 	else if(str[j].equals("05")){
		   	 		map.put("cname", "������Ŀ����");
		   	 	}else{
		   	 	}
		   	 		list1.add(map);
		   	 	}
			}
			
			if(str1[i].equals("1")){
				String cname = (String)list.get(0).get("c1names");
		   	 	String[] str = cname.split(";");
		   	 	for(int j=0;j<str.length;j++){
		   	 		
		   	 		Map map = new HashMap();
		   	 		map.put("id", j+1);
		   	 	if(str[j].equals("10")){
		   	 	map.put("cname", "רҵ����");
		   	 	}
		   	 	else if(str[j].equals("11")){
			   	 	map.put("cname", "��ʦ����");
			   	 }
		   	 	else if(str[j].equals("12")){
			   	 	map.put("cname", "�γ̽������");
			   	 }
		   	 	else if(str[j].equals("13")){
		   	 		map.put("cname", "��ѧ�о���Ŀ����");
		   	 	}
		   	 	else if(str[j].equals("14")){
		   	 		map.put("cname", "ʵ��������Ŀ����");
		   	 	}
		   	 	else if(str[j].equals("15")){
			   	 	map.put("cname", "ʵ���ҽ������");
			   	 }
		   	 	else if(str[j].equals("16")){
			   	 	map.put("cname", "�Ŷӽ������");
			   	 }
		   	 	else if(str[j].equals("17")){
		   	 		map.put("cname", "ѧ�ƾ�������");
		   	 	}
		   	 	else if(str[j].equals("18")){
		   	 		map.put("cname", "�̲���������");
		   	 	}
		   	 	else if(str[j].equals("19")){
		   	 		map.put("cname", "��ѧ����ɹ�����");
		   	 	}else{
		   	 		
		   	 	}
		   	 		list2.add(map);
		   	 	}
			}
		}
		session.setAttribute("zmenus", str1);
   	 	req.setAttribute("c0menulist", list1);
   	 	req.setAttribute("c1menulist", list2);
   	 	req.getRequestDispatcher("newactiverelease.jsp").forward(req, resp);
	}
}
