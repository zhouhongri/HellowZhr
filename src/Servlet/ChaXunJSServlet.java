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

public class ChaXunJSServlet extends HttpServlet{
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
					List<Map<String, String>> list1 = ms.totalqbjs(input1, input2,userid);
					totalcount= Integer.parseInt(list1.get(0).get("a"));
					if (totalcount % Integer.parseInt(everycount) == 0) {
						pagecount = (totalcount / Integer.parseInt(everycount)) + "";
					} else {
						pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
					}
					//System.out.println(pagecount);
					//System.out.println(score);
					
					List<Map<String, Object>> list2 = ms.scoreqbjs(input1, input2,userid);
					if(list2.get(0).get("score")==null){
						score=0;
					}else{
						score = Integer.parseInt((String)list2.get(0).get("score"));
					}
					//System.out.println((String)list2.get(0).get("score"));
					
					List<Map<String, Object>> list3 = ms.queryqbjs(input1, input2,userid);
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
						 List<Map<String, String>> list2 = ms.totallwjs(input1,input2,userid);
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
						 
						List<Map<String, Object>> list = ms.querylwjs(currpage,everycount,input1,input2,userid);
						List<Map<String, Object>> list3 = ms.queryqblwjs(input1,input2,userid);
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
						List<Map<String, String>> list2 = ms.totalzljs(input1,input2,userid);
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
						
						List<Map<String, Object>> list = ms.queryzljs(currpage,everycount,input1,input2,userid);
						List<Map<String, Object>> list3 = ms.queryqbzljs(input1,input2,userid);
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
						List<Map<String, String>> list2 = ms.totalxkjsjs(input1,input2,userid);
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
						
						List<Map<String, Object>> list = ms.queryxkjsjs(currpage,everycount,input1,input2,userid);
						List<Map<String, Object>> list3 = ms.queryqbxkjsjs(input1,input2,userid);
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
						List<Map<String, String>> list2 = ms.totalkyxmjs(input1,input2,userid);
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
						List<Map<String, Object>> list = ms.querykyxmjs(currpage,everycount,input1,input2,userid);
						List<Map<String, Object>> list3 = ms.queryqbkyxmjs(input1,input2,userid);
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
						List<Map<String, String>> list2 = ms.totalxszzjs(input1,input2,userid);
						
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
						List<Map<String, Object>> list = ms.queryxszzjs(currpage,everycount,input1,input2,userid);
						List<Map<String, Object>> list3 = ms.queryqbxszzjs(input1,input2,userid);
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
						List<Map<String, String>> list2 = ms.totalkyjljs(input1,input2,userid);
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
						List<Map<String, Object>> list = ms.querykyjljs(currpage,everycount,input1,input2,userid);
						List<Map<String, Object>> list3 = ms.queryqbkyjljs(input1,input2,userid);
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
					List<Map<String, String>> list1 = ms.totaljxqbjs(input1, input2,userid);
					totalcount= Integer.parseInt(list1.get(0).get("a"));
					if (totalcount % Integer.parseInt(everycount) == 0) {
						pagecount = (totalcount / Integer.parseInt(everycount)) + "";
					} else {
						pagecount = totalcount / Integer.parseInt(everycount) + 1 + "";
					}
					//System.out.println(pagecount);
					//System.out.println(score);
					
					List<Map<String, Object>> list2 = ms.scorejxqbjs(input1, input2,userid);
					if(list2.get(0).get("score")==null){
						score=0;
					}else{
						score = Integer.parseInt((String)list2.get(0).get("score"));
					}
					//System.out.println((String)list2.get(0).get("score"));
					
					List<Map<String, Object>> list3 = ms.queryjxqbjs(input1, input2,userid);
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
					List<Map<String, String>> list2 = ms.totalzyjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.queryzyjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbzyjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totalmsjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.querymsjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbmsjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totalkcjsjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.querykcjsjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbkcjsjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totaljxyjxmjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.queryjxyjxmjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbjxyjxmjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totalsjjyxmjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.querysjjyxmjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbsjjyxmjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totalsysjsjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.querysysjsjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbsysjsjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totaltdjsjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.querytdjsjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbtdjsjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totalxkjsjsjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.queryxkjsjsjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbxkjsjsjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totaljczzjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.queryjczzjs(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbjczzjs(input1,input2,userid);
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
					List<Map<String, String>> list2 = ms.totaljxdxcgjs(input1,input2,userid);
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
					List<Map<String, Object>> list = ms.queryjxdxcg(currpage,everycount,input1,input2,userid);
					List<Map<String, Object>> list3 = ms.queryqbjxdxcgjs(input1,input2,userid);
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
