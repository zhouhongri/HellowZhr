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

import Service.KeYanJLService;
import Util.UserDao;

public class KeYanJLServlet extends HttpServlet {
	private String everycount = "10"; // 每一页显示数据条数
	private String currpage; // 当前页
	private String pagecount; // 记总页数
	private int totalcount; // 记表中数据总共条数
	KeYanJLService kyjls = new KeYanJLService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		Writer w = resp.getWriter();
		currpage = req.getParameter("currpage");
		String userid = (String) req.getSession().getAttribute("userid");
		UserDao u = new UserDao();
		String idtentity = u.QueryIdentity(userid);
		String college = u.QueryCollege(userid);
		String status = req.getParameter("status");
		String index = req.getParameter("index");
		String year = req.getParameter("year");
		String rank = req.getParameter("rank");
		String yrank = req.getParameter("yrank");
		String inputvalue = req.getParameter("inputvalue");
		String authorseq = req.getParameter("authorseq");
		String flag = req.getParameter("flag");
		HttpSession session = req.getSession();
		
		if (index != null) {
			if(flag==null){
				if(rank!=null){
					rank = URLDecoder.decode(rank,"utf-8");
					List<Map<String, String>> list = kyjls.queryScore(rank, authorseq, userid);
					w.write(list.get(0).get("yuan")+","+list.get(0).get("xiao"));
				}else{
					String zicd="科研奖励";
					List rankList = kyjls.queryRank(userid, zicd);
					session.setAttribute("rankList", rankList);
				req.getRequestDispatcher("keyanjianglitest.jsp").forward(req, resp);
				
				}
			}
			else{
				req.getRequestDispatcher("keyanjianglitest.jsp").forward(req, resp);
			}
		} else {
			List<Map<String, String>> list2 = null;
			if("0".equals(idtentity)){
				list2 = kyjls.totalcount(userid, year, status, flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list2 = kyjls.totalcount1(college, year, status,flag, inputvalue,yrank);
			}else if("2".equals(idtentity)){
				list2 = kyjls.totalcount2(userid, year, status,flag, inputvalue,yrank);
			}
			
			totalcount = Integer.parseInt(list2.get(0).get("a"));
			List list = null;
			if("0".equals(idtentity)){
				list = kyjls.queryAll(currpage, everycount, userid, year, status,flag, inputvalue);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				list = kyjls.queryByCollege(currpage, everycount, college, year, status, flag, inputvalue,yrank);
			}else if("2".equals(idtentity)){
				list = kyjls.queryAllColloge(currpage, everycount, year, status, flag, inputvalue,yrank);
			}
			
			if (totalcount % Integer.parseInt(everycount) == 0) {
				pagecount = (totalcount / Integer.parseInt(everycount)) + "";
			} else {
				pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
			}
			
			session.setAttribute("kyjlList", list);
			session.setAttribute("totalcount", totalcount);
			session.setAttribute("pagecount", pagecount);
			session.setAttribute("currpage", currpage);
			session.setAttribute("inputvalue", inputvalue);
			session.setAttribute("status", status);
			session.setAttribute("year", year);
			session.setAttribute("yrank",yrank);
			
			//System.out.println(idtentity+" id"+userid);
			if("0".equals(idtentity)){
				w.write("newiframekeyanjiangli2.jsp," + currpage + "," + pagecount);
			}else if("1".equals(idtentity)||"-1".equals(idtentity)||"-0".equals(idtentity)){
				w.write("newiframekeyanjiangli2-pass.jsp," + currpage + "," + pagecount);
			}else if("2".equals(idtentity)){
				w.write("newiframekeyanjiangli2-pass-xiao.jsp," + currpage + "," + pagecount);
			}
			
		}
	}

}
