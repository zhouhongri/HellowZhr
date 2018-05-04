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
import Service.BaseService;

public class GeRenKeYanServlet extends HttpServlet {
	private String everycount = "10"; // 每一页显示数据条数
	private String currpage; // 当前页
	private String pagecount; // 记总页数
	private int totalcount; // 记表中数据总共条数
	BaseService bs = new BaseService();

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
		String sousuoinput = req.getParameter("inputvalue");
		if(sousuoinput!=null){
		sousuoinput = URLDecoder.decode(sousuoinput,"utf-8");
		}
		//String userid = req.getParameter("userid");
		String table = req.getParameter("table");
		
		String year = req.getParameter("year");
		currpage = req.getParameter("currpage");
		if(sousuoinput!=null){
			System.out.println(sousuoinput);
		}
		
		List list = bs.queryAll(table, currpage, everycount, sousuoinput, year);

		List<Map<String, String>> listtotal = bs.totalcount(table,sousuoinput, year);
		totalcount = Integer.parseInt(listtotal.get(0).get("a"));
		if (totalcount % Integer.parseInt(everycount) == 0) {
			pagecount = (totalcount / Integer.parseInt(everycount)) + "";
		} else {
			pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
		}
		HttpSession session = req.getSession();
		//session.setAttribute("userid", userid);
		//session.setAttribute("status", status);
		session.setAttribute("grList", list);
		session.setAttribute("totalcount", totalcount);
		session.setAttribute("pagecount", pagecount);
		session.setAttribute("currpage", currpage);
		session.setAttribute("year", year);
		w.write("iframe" + table + ".jsp," + currpage + "," + pagecount);

	}
}
