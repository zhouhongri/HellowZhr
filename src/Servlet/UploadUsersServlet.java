package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.BaseDao;


public class UploadUsersServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//System.out.println("1");
		PrintWriter out = resp.getWriter();
		String pwd="123456";
		String identity = "0";
		String checkval = req.getParameter("checkval");
		if(checkval!=null){
			checkval = URLDecoder.decode(checkval,"utf-8");
		}
		String sql = "select * from users";
		String[] array={};
		List<Map<String,Object>> listquery = BaseDao.query(sql, array);
		int size = listquery.size();
		String[] checkv = checkval.split(",");
		String[] checkvalue = {};
		for(String s:checkv){
			checkvalue =s.split(";");
			String sql2 = "insert into users values(user_seq.nextval,?,?,?,?,?,?,?,NULL,NULL,?,to_date(?,'yyyy-mm-dd'),NULL,?,?)";
			String search = pwd+checkvalue[0]+checkvalue[7]+checkvalue[1]+checkvalue[2]+checkvalue[3]+identity+checkvalue[5]+checkvalue[6]+checkvalue[4];
			String[] array2={pwd,checkvalue[0],checkvalue[7],checkvalue[1],checkvalue[2],checkvalue[3],identity,checkvalue[5],checkvalue[6],checkvalue[4],search};
			BaseDao.update(sql2, array2);
		}
		listquery = BaseDao.query(sql, array);
		if(listquery.size()-size==checkv.length){
			out.write("success");
		}
		out.flush();
		out.close();
		
	}
}
