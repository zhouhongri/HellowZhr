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

public class XHuoQuZACMenuServlet extends HttpServlet{
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
		List<Map<String,Object>> list = ms.querybaobiaomenu();
		List<Map<String,Object>> listyname = ms.queryyname();
		for(int i=0;i<listyname.size();i++){
			if("学校".equals(listyname.get(i).get("yname"))){
				listyname.remove(i);
			}
		}
		//System.out.println(list);
		String zname = (String)list.get(0).get("zname");
		List list1 = new ArrayList();
		String[] str1 = zname.split(";");
		
		for(int i=0;i<str1.length;i++){
			if(str1[i].equals("0")){
				String cname = (String)list.get(0).get("c0names");
		   	 	String[] str = cname.split(";");
		   	 	for(int j=0;j<str.length;j++){
		   	 		
		   	 		Map map = new HashMap();
		   	 	if(str[j].equals("00")){
		   	 	map.put("cname", "论文管理");
		   	 	}
		   	 	else if(str[j].equals("01")){
			   	 	map.put("cname", "专利管理");
			   	 }
		   	 	else if(str[j].equals("02")){
			   	 	map.put("cname", "学术著作管理");
			   	 }
		   	 	else if(str[j].equals("03")){
		   	 		map.put("cname", "学科建设管理");
		   	 	}
		   	 	else if(str[j].equals("04")){
		   	 		map.put("cname", "科研奖励管理");
		   	 	}
		   	 	else{
		   	 		map.put("cname", "科研项目管理");
		   	 	}
		   	 		list1.add(map);
		   	 	}
			}
			
		}
		
		session.setAttribute("zmenus", str1);
   	 	req.setAttribute("cmenulist", list1);
   	 	req.setAttribute("listyname", listyname);
   	 	req.getRequestDispatcher("xiaobaobiao.jsp").forward(req, resp);
	}
}
