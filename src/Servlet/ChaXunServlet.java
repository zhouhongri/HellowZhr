package Servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.LunWenService;
import Service.MenuService;

public class ChaXunServlet extends HttpServlet{
	private String everycount = "10"; // 每一页显示数据条数
	private String currpage; // 当前页
	private String pagecount; // 记总页数
	private int totalcount; // 记表中数据总共条数
	MenuService ms  = new MenuService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/xml"); 
        resp.setHeader("Cache-Control", "no-cache"); 
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String input1 = req.getParameter("input1");
        String input2 = req.getParameter("input2");
//        if(input1.equals(input2)){
//        	//System.out.println("");
//        	String[] temp = input2.split("-");
//        	input2 = temp[0]+"-"+temp[1]+"-"+(Integer.parseInt(temp[2])+1);
//        	//System.out.println(temp[0]);
//        }
        String zcdval = req.getParameter("zcdval");
		String zcdsltval = req.getParameter("zcdsltval");
		String currpage = req.getParameter("currpage");
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname =  ms.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		//System.out.println(ndval);
		//System.out.println(zcdsltval);
	       //System.out.println(currpage);
			if(zcdsltval!=null){
				zcdsltval = URLDecoder.decode(zcdsltval,"utf-8");
				//System.out.println(zcdsltval);
			}
			if("0".equals(zcdval)){
				if("全部".equals(zcdsltval)){
					int score=0;
					totalcount=0;
					List<Map<String, String>> list1 = ms.totalqb(input1, input2,yname);
					totalcount= Integer.parseInt(list1.get(0).get("a"));
					if (totalcount % Integer.parseInt(everycount) == 0) {
						pagecount = (totalcount / Integer.parseInt(everycount)) + "";
					} else {
						pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
					}
					//System.out.println(pagecount);
					//System.out.println(score);
					
					List<Map<String, Object>> list2 = ms.scoreqb(input1, input2,yname);
					if(list2.get(0).get("score")==null){
						score=0;
					}else{
						score = Integer.parseInt((String)list2.get(0).get("score"));
					}
					//System.out.println((String)list2.get(0).get("score"));
					
					List<Map<String, Object>> list3 = ms.queryqb(input1, input2,yname);
					List list = new ArrayList();
					int a = Integer.parseInt(currpage);
					int b = Integer.parseInt(everycount);
					int end = a * b;
					int begin = end - Integer.parseInt(everycount);
					if(end>totalcount){
						end = totalcount;
					}
					for(int i=begin;i<end;i++){
						Map<String, Object> map = list3.get(i);
						list.add(map);
					}
					
					//System.out.println(list13);
					session.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}else{
					if(zcdsltval.equals("论文管理")){
						int score=0;
						 List<Map<String, String>> list2 = ms.totallw(input1,input2,yname);
						if(list2.size()>0){
							totalcount = Integer.parseInt(list2.get(0).get("a"));
							if (totalcount % Integer.parseInt(everycount) == 0) {
								pagecount = (totalcount / Integer.parseInt(everycount)) + "";
							} else {
								pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
							}
						}else{
							totalcount=0;
							pagecount="0";
							currpage="0";
						}
						 
						List<Map<String, Object>> list = ms.querylw(currpage,everycount,input1,input2,yname);
						List<Map<String, Object>> list3 = ms.queryqblw(input1,input2,yname);
						if(list3.size()>0){
							for(int i=0;i<list3.size();i++){
								score+=Integer.parseInt((String)list3.get(i).get("score"));
							}
						}
						
						//System.out.println(score);
						req.setAttribute("lwlist", list);
						req.setAttribute("totalcount", totalcount);
						req.setAttribute("score", score+"");
						req.setAttribute("pagecount", pagecount);
						req.setAttribute("currpage", currpage);
						
						req.setAttribute("zcdval", zcdval);
						req.setAttribute("zcdsltval", zcdsltval);
						req.setAttribute("input1", input1);
						req.setAttribute("input2", input2);
						
						req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
					}
					else if(zcdsltval.equals("专利管理")){
						int score=0;
						List<Map<String, String>> list2 = ms.totalzl(input1,input2,yname);
						if(list2.size()>0){
							totalcount = Integer.parseInt(list2.get(0).get("a"));
							if (totalcount % Integer.parseInt(everycount) == 0) {
								pagecount = (totalcount / Integer.parseInt(everycount)) + "";
							} else {
								pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
							}
						}else{
							totalcount=0;
							pagecount="0";
							currpage="0";
						}
						
						List<Map<String, Object>> list = ms.queryzl(currpage,everycount,input1,input2,yname);
						List<Map<String, Object>> list3 = ms.queryqbzl(input1,input2,yname);
						if(list3.size()>0){
							for(int i=0;i<list3.size();i++){
								score+=Integer.parseInt((String)list3.get(i).get("score"));
							}
						}
						req.setAttribute("lwlist", list);
						req.setAttribute("totalcount", totalcount);
						req.setAttribute("score", score+"");
						req.setAttribute("pagecount", pagecount);
						req.setAttribute("currpage", currpage);
						
						req.setAttribute("zcdval", zcdval);
						req.setAttribute("zcdsltval", zcdsltval);
						req.setAttribute("input1", input1);
						req.setAttribute("input2", input2);
						
						req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
					}
					else if(zcdsltval.equals("学科建设管理")){
						int score=0;
						List<Map<String, String>> list2 = ms.totalxk(input1,input2,yname);
						if(list2.size()>0){
							totalcount = Integer.parseInt(list2.get(0).get("a"));
							if (totalcount % Integer.parseInt(everycount) == 0) {
								pagecount = (totalcount / Integer.parseInt(everycount)) + "";
							} else {
								pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
							}
						}else{
							totalcount=0;
							pagecount="0";
							currpage="0";
						}
						
						List<Map<String, Object>> list = ms.queryxk(currpage,everycount,input1,input2,yname);
						List<Map<String, Object>> list3 = ms.queryqbxk(input1,input2,yname);
						if(list3.size()>0){
							for(int i=0;i<list3.size();i++){
								score+=Integer.parseInt((String)list3.get(i).get("score"));
							}
						}
						
						req.setAttribute("lwlist", list);
						req.setAttribute("totalcount", totalcount);
						req.setAttribute("score", score+"");
						req.setAttribute("pagecount", pagecount);
						req.setAttribute("currpage", currpage);
						req.setAttribute("zcdval", zcdval);
						req.setAttribute("zcdsltval", zcdsltval);
						req.setAttribute("input1", input1);
						req.setAttribute("input2", input2);
						
						req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
					}
					else if(zcdsltval.equals("科研项目管理")){
						int score=0;
						List<Map<String, String>> list2 = ms.totalkyxm(input1,input2,yname);
						if(list2.size()>0){
							totalcount = Integer.parseInt(list2.get(0).get("a"));
							if (totalcount % Integer.parseInt(everycount) == 0) {
								pagecount = (totalcount / Integer.parseInt(everycount)) + "";
							} else {
								pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
							}
						}else{
							totalcount=0;
							pagecount="0";
							currpage="0";
						}
						List<Map<String, Object>> list = ms.querykyxm(currpage,everycount,input1,input2,yname);
						List<Map<String, Object>> list3 = ms.queryqbkyxm(input1,input2,yname);
						if(list3.size()>0){
							for(int i=0;i<list3.size();i++){
								score+=Integer.parseInt((String)list3.get(i).get("score"));
							}
						}
						req.setAttribute("lwlist", list);
						req.setAttribute("totalcount", totalcount);
						req.setAttribute("score", score+"");
						req.setAttribute("pagecount", pagecount);
						req.setAttribute("currpage", currpage);
						req.setAttribute("zcdval", zcdval);
						req.setAttribute("zcdsltval", zcdsltval);
						req.setAttribute("input1", input1);
						req.setAttribute("input2", input2);
						
						req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
					}
					else if(zcdsltval.equals("学术著作管理")){
						int score=0;
						List<Map<String, String>> list2 = ms.totalxszz(input1,input2,yname);
						
						if(list2.size()>0){
							totalcount = Integer.parseInt(list2.get(0).get("a"));
							if (totalcount % Integer.parseInt(everycount) == 0) {
								pagecount = (totalcount / Integer.parseInt(everycount)) + "";
							} else {
								pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
							}
						}else{
							totalcount=0;
							pagecount="0";
							currpage="0";
						}
						List<Map<String, Object>> list = ms.queryxszz(currpage,everycount,input1,input2,yname);
						List<Map<String, Object>> list3 = ms.queryqbxszz(input1,input2,yname);
						if(list3.size()>0){
							for(int i=0;i<list3.size();i++){
								score+=Integer.parseInt((String)list3.get(i).get("score"));
							}
						}
						req.setAttribute("lwlist", list);
						req.setAttribute("totalcount", totalcount);
						req.setAttribute("score", score+"");
						req.setAttribute("pagecount", pagecount);
						req.setAttribute("currpage", currpage);
						req.setAttribute("zcdval", zcdval);
						req.setAttribute("zcdsltval", zcdsltval);
						req.setAttribute("input1", input1);
						req.setAttribute("input2", input2);
						
						req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
					}
					else if(zcdsltval.equals("科研奖励管理")){
						int score=0;
						List<Map<String, String>> list2 = ms.totalkyjl(input1,input2,yname);
						if(list2.size()>0){
							totalcount = Integer.parseInt(list2.get(0).get("a"));
							if (totalcount % Integer.parseInt(everycount) == 0) {
								pagecount = (totalcount / Integer.parseInt(everycount)) + "";
							} else {
								pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
							}
						}else{
							totalcount=0;
							pagecount="0";
							currpage="0";
						}
						List<Map<String, Object>> list = ms.querykyjl(currpage,everycount,input1,input2,yname);
						List<Map<String, Object>> list3 = ms.queryqbkyjl(input1,input2,yname);
						if(list3.size()>0){
							for(int i=0;i<list3.size();i++){
								score+=Integer.parseInt((String)list3.get(i).get("score"));
							}
						}
						req.setAttribute("lwlist", list);
						req.setAttribute("totalcount", totalcount);
						req.setAttribute("score", score+"");
						req.setAttribute("pagecount", pagecount);
						req.setAttribute("currpage", currpage);
						req.setAttribute("zcdval", zcdval);
						req.setAttribute("zcdsltval", zcdsltval);
						req.setAttribute("input1", input1);
						req.setAttribute("input2", input2);
						
						req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
					}
				}
			}else if("1".equals(zcdval)){
				if("全部".equals(zcdsltval)){
					int score=0;
					totalcount=0;
					List<Map<String, String>> list1 = ms.totaljxqb(input1, input2,yname);
					totalcount= Integer.parseInt(list1.get(0).get("a"));
					if (totalcount % Integer.parseInt(everycount) == 0) {
						pagecount = (totalcount / Integer.parseInt(everycount)) + "";
					} else {
						pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
					}
					//System.out.println(pagecount);
					//System.out.println(score);
					
					List<Map<String, Object>> list2 = ms.scoreqb(input1, input2,yname);
					if(list2.get(0).get("score")==null){
						score=0;
					}else{
						score = Integer.parseInt((String)list2.get(0).get("score"));
					}
					//System.out.println((String)list2.get(0).get("score"));
					
					List<Map<String, Object>> list3 = ms.queryjxqb(input1, input2,yname);
					List list = new ArrayList();
					int a = Integer.parseInt(currpage);
					int b = Integer.parseInt(everycount);
					int end = a * b;
					int begin = end - Integer.parseInt(everycount);
					if(end>totalcount){
						end = totalcount;
					}
					for(int i=begin;i<end;i++){
						Map<String, Object> map = list3.get(i);
						list.add(map);
					}
					
					//System.out.println(list13);
					session.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("专业管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totalzy(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.queryzy(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbzy(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("教学名师管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totalms(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.queryms(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbms(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("课程建设管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totalkcjs(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.querykcjs(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbkcjs(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("教学研究项目管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totaljxyjxm(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.queryjxyjxm(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbjxyjxm(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("实践教育管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totalsjjyxm(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.querysjjyxm(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbsjjyxm(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("实验室管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totalsysjs(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.querysysjs(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbsysjs(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("团队管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totaltdjs(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.querytdjs(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbtdjs(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("学科竞赛管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totalxkjs(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.queryxkjs(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbxkjs(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("教材著作管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totaljczz(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.queryjczz(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbjczz(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				else if(zcdsltval.equals("教学单项成果管理")){
					int score=0;
					List<Map<String, String>> list2 = ms.totaljxdxcg(input1,input2,yname);
					if(list2.size()>0){
						totalcount = Integer.parseInt(list2.get(0).get("a"));
						if (totalcount % Integer.parseInt(everycount) == 0) {
							pagecount = (totalcount / Integer.parseInt(everycount)) + "";
						} else {
							pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
						}
					}else{
						totalcount=0;
						pagecount="0";
						currpage="0";
					}
					List<Map<String, Object>> list = ms.queryjxdxcg(currpage,everycount,input1,input2,yname);
					List<Map<String, Object>> list3 = ms.queryqbjxdxcg(input1,input2,yname);
					if(list3.size()>0){
						for(int i=0;i<list3.size();i++){
							score+=Integer.parseInt((String)list3.get(i).get("score"));
						}
					}
					req.setAttribute("lwlist", list);
					req.setAttribute("totalcount", totalcount);
					req.setAttribute("score", score+"");
					req.setAttribute("pagecount", pagecount);
					req.setAttribute("currpage", currpage);
					req.setAttribute("zcdval", zcdval);
					req.setAttribute("zcdsltval", zcdsltval);
					req.setAttribute("input1", input1);
					req.setAttribute("input2", input2);
					
					req.getRequestDispatcher("sidelw.jsp").forward(req, resp);
				}
				
			}else{
				System.out.println("失败！");
			}

			
		

//		System.out.println(totalcount);
//		System.out.println(pagecount);
//		System.out.println(currpage);
	}
}
