package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.MenuService;
import Service.MsgService;
import Service.ReleaseService;

public class ActivityProductionServlet extends HttpServlet{
	MenuService ms = new MenuService();
	ReleaseService rs = new ReleaseService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
		
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//zmenu,cmenu,yearbegin,yearend,count,finally
		String aczmenu="";
		String accmenu ="";
		String acyearbegin="";
		String acyearend  ="";
		String account  ="";  
		String acfinally  ="";
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname =  rs.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		List<Map<String, Object>> list2 = rs.yuanqueryActivity("NULL",yname,"ypjj");
		if(list2.size()>0){
			aczmenu = (String)list2.get(0).get("zmenu");
			accmenu = (String)list2.get(0).get("cmenu");
			acyearbegin = (String)list2.get(0).get("yearbegin");
			acyearend = (String)list2.get(0).get("yearend");
			account = (String)list2.get(0).get("count");
			acfinally = (String)list2.get(0).get("finally");
		}
		
		
		//���Ʒ,����
		List list3 = new ArrayList();
		List list4 = new ArrayList();
		List list5 = new ArrayList();
		List list6 = new ArrayList();
		List list7 = new ArrayList();
		List list8 = new ArrayList();
		//���Ʒ,��ѧ
		List list9 = new ArrayList();
		List list10 = new ArrayList();
		List list11 = new ArrayList();
		List list12 = new ArrayList();
		List list13 = new ArrayList();
		List list14 = new ArrayList();
		List list15 = new ArrayList();
		List list16 = new ArrayList();
		List list17 = new ArrayList();
		List list18 = new ArrayList();
		
	if(aczmenu.contains("���й���")){
		if(accmenu.contains("���Ĺ���")){
			list3 = ms.queryaclw(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("ר������")){
			list4 = ms.queryaczl(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("ѧ�ƹ���")){
			list5 = ms.queryacxk(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("������Ŀ����")){
			list6 = ms.queryackyxm(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("ѧ����������")){
			list7 = ms.queryacxszz(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("���н�������")){
			list8 = ms.queryackyjl(acyearbegin, acyearend,userid);
		}
		
		
		
		
		
		req.setAttribute("aclistlw", list3);
		req.setAttribute("aclistzl", list4);
		req.setAttribute("aclistxk", list5);
		req.setAttribute("aclistkyxm", list6);
		req.setAttribute("aclistxszz", list7);
		req.setAttribute("aclistkyjl", list8);
	}
	
	if(aczmenu.contains("��ѧ����")){
		if(accmenu.contains("רҵ����")){
			list9 = ms.queryaczy(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("��ʦ����")){
			list10 = ms.queryacms(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("�γ̽������")){
			list11 = ms.queryackcjs(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("��ѧ�о���Ŀ����")){
			list12 = ms.queryacjxyjxm(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("ʵ��������Ŀ����")){
			list13 = ms.queryacsjjyxm(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("ʵ���ҽ������")){
			list14 = ms.queryacsysjs(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("�Ŷӽ������")){
			list15 = ms.queryactdjs(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("ѧ�ƾ�������")){
			list16 = ms.queryacxkjs(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("�̲���������")){
			list17 = ms.queryacjczz(acyearbegin, acyearend,userid);
		}
		if(accmenu.contains("��ѧ����ɹ�����")){
			list18 = ms.queryacjxdxcg(acyearbegin, acyearend,userid);
		}
		
		req.setAttribute("aclistzy", list9);
		req.setAttribute("aclistms", list10);
		req.setAttribute("aclistkcjs", list11);
		req.setAttribute("aclistjxyjxm", list12);
		req.setAttribute("aclistsjjyxm", list13);
		req.setAttribute("aclistsysjs", list14);
		req.setAttribute("aclisttdjs", list15);
		req.setAttribute("aclistxkjs", list16);
		req.setAttribute("aclistjczz", list17);
		req.setAttribute("aclistjxdxcg", list18);
	}
		
		
   	 	req.setAttribute("aczmenu", aczmenu);
   	 	req.setAttribute("accmenu", accmenu);
	   	req.setAttribute("acyearbegin", acyearbegin);
	   	req.setAttribute("acyearend", acyearend);
	   	req.setAttribute("account", account);
	   	req.setAttribute("acfinally", acfinally);
	   	req.getRequestDispatcher("activityproduction.jsp").forward(req, resp);
	}
}
