package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.MenuService;

public class YuanXiGuanLiServlet extends HttpServlet {
	MenuService ms = new MenuService();
	
	/**
	 * Constructor of the object.
	 */
	public YuanXiGuanLiServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String school = (String) request.getSession().getAttribute("school");
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type");
		if("update".equals(type)){
			String yuan = request.getParameter("yuan");
			String oldyuan = request.getParameter("oldyuan");
			if(!yuan.equals(oldyuan)){
				ms.updateYname(yuan, oldyuan,school);
			}
			String x1 = request.getParameter("x1");
			String oldx1 = request.getParameter("oldx1");
			if(null!=x1&&!"".equals(x1)){
				if(!x1.equals(oldx1)){
					ms.updateXname(yuan, x1, oldx1,school);
				}
			}else if((null==x1||"".equals(x1))&&(null!=oldx1&&!"".equals(oldx1))){
				ms.deleteXi(yuan, oldx1,school);
			}
			String x2 = request.getParameter("x2");
			String oldx2 = request.getParameter("oldx2");
			if(null!=x2&&!"".equals(x2)){
				if(!x2.equals(oldx2)){
					ms.updateXname(yuan, x2, oldx2,school);
				}
			}else if((null==x2||"".equals(x2))&&(null!=oldx2&&!"".equals(oldx2))){
				ms.deleteXi(yuan, oldx2,school);
			}
			String x3 = request.getParameter("x3");
			String oldx3 = request.getParameter("oldx3");
			if(null!=x3&&!"".equals(x3)){
				if(!x3.equals(oldx3)){
					ms.updateXname(yuan, x3, oldx3,school);
				}
			}else if((null==x3||"".equals(x3))&&(null!=oldx3&&!"".equals(oldx3))){
				ms.deleteXi(yuan, oldx3,school);
			}
			String x4 = request.getParameter("x4");
			String oldx4 = request.getParameter("oldx4");
			if(null!=x4&&!"".equals(x4)){
				if(!x4.equals(oldx4)){
					ms.updateXname(yuan, x4, oldx4,school);
				}
			}else if((null==x4||"".equals(x4))&&(null!=oldx4&&!"".equals(oldx4))){
				ms.deleteXi(yuan, oldx4,school);
			}
			String x5 = request.getParameter("x5");
			String oldx5 = request.getParameter("oldx5");
			if(null!=x5&&!"".equals(x5)){
				if(!x5.equals(oldx5)){
					ms.updateXname(yuan, x5, oldx5,school);
				}
			}else if((null==x5||"".equals(x5))&&(null!=oldx5&&!"".equals(oldx5))){
				ms.deleteXi(yuan, oldx5,school);
			}
			List<Map<String, Object>> ylist = ms.queryAll(school);
			request.setAttribute("ylist", ylist);
		}else{
			List<Map<String, Object>> ylist = ms.queryAll(school);
			request.setAttribute("ylist", ylist);
		}
		
		
		
		request.getRequestDispatcher("newyuanxiguanli.jsp").forward(request, response);
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}
	
	public List<String> getXList(String yname,String school){
		List<Map<String, Object>> list = ms.queryXiByCollege(yname,school);
		String xnames = (String) list.get(0).get("xnames");
		String[] xlist1 = xnames.split(";");
		List<String> xlist = new ArrayList<String>();
		for(String str : xlist1){
			xlist.add(str);
		}
		
		return xlist;
	}
}
