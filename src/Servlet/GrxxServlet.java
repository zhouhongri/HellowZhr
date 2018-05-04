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

import Service.FileUDService;
import Service.MenuService;
import Service.MsgService;
import Service.ReleaseService;

public class GrxxServlet extends HttpServlet {
	private String everycount = "10"; // ÿһҳ��ʾ��������
	private String currpage = "1"; // ��ǰҳ
	private String pagecount; // ����ҳ��
	private int totalcount; // �Ǳ��������ܹ�����
	MenuService ms = new MenuService();
	ReleaseService rs = new ReleaseService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/xml"); 
        resp.setHeader("Cache-Control", "no-cache"); 
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();

		String flag = req.getParameter("flag");
		String userid = (String) session.getAttribute("userid");

		// ��ѯͷ��
		Map<String, Object> headMap = FileUDService.queryUserHeadPortrait(
				userid, "UserHeadPortrait");

		// ������ݣ�ÿ���˵���������
		session.setAttribute("lwlist", "");
		List<Map<String, Object>> list = ms.querymenu(userid);
		// System.out.println(list);
		String zname = (String) list.get(0).get("zname");
		List list1 = new ArrayList();
		Map map1 = new HashMap();
		map1.put("cname", "ȫ��");
		list1.add(map1);
		String[] str1 = zname.split(";");

		for (int i = 0; i < str1.length; i++) {
			if (str1[i].equals("0")) {
				String cname = (String) list.get(0).get("c0names");
				String[] str = cname.split(";");
				for (int j = 0; j < str.length; j++) {

					Map map = new HashMap();
					if (str[j].equals("00")) {
						map.put("cname", "���Ĺ���");
					} else if (str[j].equals("01")) {
						map.put("cname", "ר������");
					} else if (str[j].equals("02")) {
						map.put("cname", "ѧ����������");
					} else if (str[j].equals("03")) {
						map.put("cname", "ѧ�ƽ������");
					} else if (str[j].equals("04")) {
						map.put("cname", "���н�������");
					} else {
						map.put("cname", "������Ŀ����");
					}
					list1.add(map);
				}
			}

		}
		// if(!flag.equals("success")){
		// List<Map<String, String>> list2 = ms.totallwqb();
		// totalcount = Integer.parseInt(list2.get(0).get("a"));
		// if (totalcount % Integer.parseInt(everycount) == 0) {
		// pagecount = (totalcount / Integer.parseInt(everycount)) + "";
		// } else {
		// pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
		// }
		// List list3 = ms.querylwqb(currpage,everycount);
		// session.setAttribute("lwlist", list3);
		// session.setAttribute("totalcount", totalcount);
		// session.setAttribute("pagecount", pagecount);
		// session.setAttribute("currpage", currpage);
		//
		//
		// }
		// �й���Ϣ
		String count = MsgService.queryNum(userid);
		// System.out.println("count+"+count);
		session.setAttribute("count", count);
		List<Map<String, Object>> msgList = MsgService.queryMsg(userid);
		session.setAttribute("msgList", msgList);
		if (headMap != null) {
			session.setAttribute("userheadportrait", headMap.get("savepath")
					+ "");
		}
		session.setAttribute("zmenus", str1);
		session.setAttribute("cmenulist", list1);
		List<Map<String,Object>> listusers = ms.queryusers(userid);
		String sex = (String) listusers.get(0).get("sex");
		if(sex==null||"".equals(sex)){
			sex="��";
		}
		String age = (String) listusers.get(0).get("age");
		if(age==null||"".equals(age)){
			age="��";
		}
		String job = (String) listusers.get(0).get("job");
		if(job==null||"".equals(job)){
			job="��";
		}
		String xname = (String) listusers.get(0).get("xname");
		if(xname==null||"".equals(xname)){
			xname="��";
		}
		session.setAttribute("sex", sex);
		session.setAttribute("age", age);
		session.setAttribute("job", job);
		session.setAttribute("xname", xname);
		if("grjs".equals(flag)){
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}else if("ygly".equals(flag)){
			req.getRequestDispatcher("gerenxinxi.jsp").forward(req, resp);
		}
		
	}
}
