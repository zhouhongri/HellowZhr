package Servlet;

import java.io.IOException;
import java.io.Writer;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.YGLScoreService;

public class YGLScoreServlet extends HttpServlet{
	private String everycount = "5"; // ÿһҳ��ʾ��������
	private String currpage; // ��ǰҳ
	private String pagecount; // ����ҳ��
	private int totalcount; // �Ǳ��������ܹ�����
	YGLScoreService yglss = new YGLScoreService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Writer w = resp.getWriter();
		HttpSession session = req.getSession();
		String userid = (String)session.getAttribute("userid");
		String currpage = req.getParameter("currpage");
		String zicdvalue = req.getParameter("zicdvalue");
		if(zicdvalue!=null){
			zicdvalue = URLDecoder.decode(zicdvalue,"utf-8");
			}
		zicdvalue =  zicdvalue.replaceAll("\\s", ""); 
		String[] zicd = zicdvalue.split("����");
		List list = yglss.queryScore(userid, zicd[0], currpage, everycount); 
		List<Map<String, String>> list2 = yglss.totalcount(userid, zicd[0]);
		totalcount = Integer.parseInt(list2.get(0).get("a"));
		
		if (totalcount % Integer.parseInt(everycount) == 0) {
			pagecount = (totalcount / Integer.parseInt(everycount)) + "";
		} else {
			pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
		}
		session.setAttribute("currpage", currpage);
		session.setAttribute("totalcount", totalcount);
		session.setAttribute("pagecount", pagecount);
		session.setAttribute("scoreList", list);
		session.setAttribute("zicdvalue", zicdvalue);
		w.write("newygliframescore.jsp" + ","+currpage + "," + pagecount);
		
		
	}

}
