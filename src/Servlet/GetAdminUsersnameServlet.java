package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.BaseDao;

public class GetAdminUsersnameServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String adminusername = req.getParameter("adminusername");
		String sql ="select * from users where id=?";
		String[] array = {adminusername};
		List<Map<String,Object>> list = BaseDao.query(sql, array);
		if(list.size()>0){
			out.write("exist");
		}else{
			out.write("success");
		}
		out.flush();
		out.close();
	}
}
