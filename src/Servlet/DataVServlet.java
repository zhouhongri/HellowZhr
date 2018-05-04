package Servlet;

import java.io.IOException;
import java.io.Writer;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.YGLDataVService;
import Util.UserDao;

public class DataVServlet extends HttpServlet {

	YGLDataVService ygldvs = new YGLDataVService();
	UserDao ud = new UserDao();

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
		Calendar calendar=Calendar.getInstance();
		//获得当前时间的月份，月份从0开始所以结果要加1
		int month=calendar.get(Calendar.MONTH)+1;
		int currentyear = calendar.get(Calendar.YEAR);
		String zicdvalue = req.getParameter("zicdvalue");
		String year = req.getParameter("year");
		if(Integer.parseInt(year)<currentyear){
			month=12;
		}
		if (zicdvalue != null) {
			zicdvalue = URLDecoder.decode(zicdvalue, "utf-8");
		}
		String table = null;
		String id = (String) req.getSession().getAttribute("userid");
		String college = ud.QueryCollege(id);
		String idlist = ud.QueryId(college);
		String[] idarray = idlist.split(",");
		int[] totalcount = new int[month];
		int[] totalscore = new int[month];
		int[] array = new int[month];
		String[] array2 = new String[month];
		List list = new ArrayList();
		List list2 = new ArrayList();
		zicdvalue = zicdvalue.replaceAll("\\s", "");
		if ("论文管理".equals(zicdvalue)) {
			table = "lunwen";
		} else if ("专利管理".equals(zicdvalue)) {
			table = "zhuanli";
		} else if ("学术著作管理".equals(zicdvalue)) {
			table = "xueshuzhuzuo";
		} else if ("学科建设管理".equals(zicdvalue)) {
			table = "xueke";
		} else if ("科研奖励管理".equals(zicdvalue)) {
			table = "keyanjiangli";
		} else if ("科研项目管理".equals(zicdvalue)) {
			table = "keyanxiangmu";
		} else if ("专业管理".equals(zicdvalue)) {
			table = "zhuanye";
		} else if ("教学名师管理".equals(zicdvalue)) {
			table = "zhuanli";
		} else if ("课程建设管理".equals(zicdvalue)) {
			table = "kechengjianshe";
		} else if ("教学研究项目管理".equals(zicdvalue)) {
			table = "jxyjxm";
		} else if ("实验室建设管理".equals(zicdvalue)) {
			table = "shiyanshijianshe";
		} else if ("教材著作管理".equals(zicdvalue)) {
			table = "jiaocaizhuzuo";
		}
		String[] array3 = {};
		for (String string : idarray) {
			array = ygldvs.count(year, table, string);
			array2 = ygldvs.score(year, table, string);
			for (int i = 0; i < month; i++) {
				totalcount[i] += array[i];
				
				if (array2[i] != null) {
					array3 = array2[i].split(",");
					for (String string2 : array3) {
						totalscore[i] += Integer.parseInt(string2);
					}
				}
			}

		}

		int a = 0;
		for (int string : totalcount) {
			list.add(a, string);
			a++;
		}
		a=0;
		for (int string : totalscore) {
			list2.add(a, string);
			a++;
		}
		String[] zicd = zicdvalue.split("管理");
		req.getSession().setAttribute("list", list);
		req.getSession().setAttribute("list2", list2);
		req.getSession().setAttribute("college", college);
		req.getSession().setAttribute("year", year);
		req.getSession().setAttribute("jixiao", zicd[0]);
		w.write("yuan_dataviframe.jsp");
	}

}
