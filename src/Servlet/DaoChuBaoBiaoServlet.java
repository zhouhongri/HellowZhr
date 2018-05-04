package Servlet;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import jxl.CellView;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.VerticalAlignment;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import Service.LunWenService;
import Service.MsgService;
import Util.ExcelDao;

public class DaoChuBaoBiaoServlet extends HttpServlet{
	MsgService ms = new MsgService();
	ExcelDao ed = new ExcelDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text");
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userid");
		List<Map<String,Object>> listyname = ms.queryYname(userid);
		String yname = (String) listyname.get(0).get("college");
		String flag = req.getParameter("flag");
		String uid = req.getParameter("id");
		String sltnameval = req.getParameter("sltnameval");
		if(sltnameval!=null){
			sltnameval = URLDecoder.decode(sltnameval,"utf-8");
		}
		List<Map<String,Object>> listprdtable = ms.queryPrdTable(yname,flag);
		List<Map<String,Object>> listprd = ms.queryAcPrd(flag, listprdtable);
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		for(int i=0;i<listprd.size();i++){
			if(uid.equals(listprd.get(i).get("authorid"))){
				list.add(listprd.get(i));
			}
		}
		List<String> header=new ArrayList<String>();
		header.add("作品名称");
		header.add("作者排序");
		header.add("作品等级");
		header.add("作品得分");
		header.add("发表时间");
		if("ypjj".equals(flag)){
			flag = "院评奖金";
			exportExcel(header,list,sltnameval,"exportAllOrder",resp,flag);
		}
		
	}
	public  final static void exportExcel(List<String> header, List<Map<String, Object>> list,String xlsName,String type,HttpServletResponse response,String flag) {
        // 以下开始输出到EXCEL
        try {   
         response.setHeader("Content-disposition", "attachment; filename="+ new String((xlsName+".xls").getBytes("GB2312"),"ISO8859-1"));
         response.setContentType("application/vnd.ms-excel"); 
         OutputStream os = response.getOutputStream();       
         WritableWorkbook workbook = Workbook.createWorkbook(os);
         WritableFont NormalFont = new WritableFont(WritableFont.ARIAL, 10);
         WritableFont BoldFont = new WritableFont(WritableFont.ARIAL, 10,WritableFont.BOLD);
         WritableCellFormat wcf_center = new WritableCellFormat(BoldFont);
         wcf_center.setBorder(Border.ALL, BorderLineStyle.THIN); 
         wcf_center.setVerticalAlignment(VerticalAlignment.CENTRE); 
         wcf_center.setAlignment(Alignment.CENTRE); 
         wcf_center.setWrap(false); 
         WritableCellFormat wcf_left = new WritableCellFormat(NormalFont);
         wcf_left.setBorder(Border.NONE, BorderLineStyle.THIN); 
         wcf_left.setVerticalAlignment(VerticalAlignment.CENTRE); 
         wcf_left.setAlignment(Alignment.LEFT); 
         wcf_left.setWrap(false); 
         WritableSheet [] sheets =  null;
         CellView cellView = new CellView();  
         cellView.setAutosize(true);
         if(list!=null&&list.size()>0){
             int scount = list.size()/65535 + ((list.size()%65535)>0?1:0);
             sheets = new WritableSheet[scount];
             for(int i=0;i<scount;i++){
                 WritableSheet sheet = workbook.createSheet("Sheet"+i+1, i);
                 jxl.SheetSettings sheetset = sheet.getSettings();
                 sheetset.setProtected(false);
                 sheets[i]=sheet;
             }   
             for(int j=0;j<scount;j++){
            	 sheets[j].mergeCells(0, 0, 4, 0);
                 sheets[j].addCell(new Label(0, 0, xlsName+flag+"的活动作品", wcf_center));
                 for(int i=0;i<header.size();i++){
                      sheets[j].addCell(new Label(i, 1,header.get(i),wcf_center));
                  }
             }
         }else{
             sheets = new WritableSheet[header.size()];
             WritableSheet sheet = workbook.createSheet("Sheet"+1, 0);
             //设置纵横打印（默认为纵打）
             jxl.SheetSettings sheetset = sheet.getSettings();
             sheetset.setProtected(false);
             sheets[0]=sheet;
             for(int i=0;i<header.size();i++){
                  sheets[0].addCell(new Label(i, 0,header.get(i),wcf_center));
              }
         }
         if(list!=null){
             
              for (int i = 0; i < list.size(); i++)
              {
                  Map<String, Object> value=list.get(i);
                  int s = ((i+1)/65535)+(((i+1)%65535)>0?1:0)-1;
                  int j = i%65535;
                  WritableSheet sheet = sheets[s];
                  sheet.setColumnView(0, 25);
                  sheet.setColumnView(1, 25);
                  sheet.setColumnView(2, 25);
                  sheet.setColumnView(3, 25);
                  sheet.setColumnView(4, 25);
                 if(type.equals("exportAllOrder")){
                      sheet.addCell(new Label(0, j+2,value.get("name")==null?"":value.get("name").toString(),wcf_left));
                      sheet.addCell(new Label(1, j+2,value.get("authorseq")==null?"":value.get("authorseq").toString(),wcf_left));
                      sheet.addCell(new Label(2, j+2,value.get("rank")==null?"":value.get("rank").toString(),wcf_left));
                      sheet.addCell(new Label(3, j+2,value.get("score")==null?"":value.get("score").toString(),wcf_left));
                      sheet.addCell(new Label(4, j+2,value.get("time")==null?"":value.get("time").toString(),wcf_left));
                      
                  }
              }
          }
         workbook.write();
         workbook.close();  
        } catch (Exception e) {
           // System.out.println(result);
            e.printStackTrace();
        }finally{
            if(list!=null)list.clear();
        }
       }
}