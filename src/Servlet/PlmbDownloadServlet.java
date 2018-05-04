package Servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.CellView;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.VerticalAlignment;
import jxl.write.Label;
import jxl.write.NumberFormats;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

public class PlmbDownloadServlet extends HttpServlet{
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
		List<String> header=new ArrayList<String>();
		header.add("用户名");
		header.add("姓名");
		header.add("性别");
		header.add("年龄");
		header.add("院名");
		header.add("系名");
		header.add("职称");
		header.add("成为职称时间");
		header.add("电话");
		exportExcel(header,"exportAllOrder",resp);
	}
	public  final static String exportExcel(List<String> header,String type,HttpServletResponse response) {
        String result="true"; 
        // 以下开始输出到EXCEL
        try {   
         response.reset(); 
         response.setHeader("Content-disposition", "attachment; filename="+ new String(("批量导入摸板.xls").getBytes("GB2312"),"ISO8859-1"));
         response.setContentType("application/vnd.ms-excel"); 
         OutputStream os = response.getOutputStream();       
         WritableWorkbook workbook = Workbook.createWorkbook(os);
         WritableFont NormalFont = new WritableFont(WritableFont.ARIAL, 10);
         WritableFont BoldFont = new WritableFont(WritableFont.ARIAL, 10,WritableFont.BOLD);
         WritableFont wf = new WritableFont(WritableFont.TIMES, 12,WritableFont.BOLD, false);
	     WritableCellFormat wcfF = new WritableCellFormat(NumberFormats.TEXT); //定义一个单元格样式
	     wcfF.setFont(wf);
	     CellView cv = new CellView(); //定义一个列显示样式 
         cv.setFormat(wcfF);//把定义的单元格格式初始化进去
         cv.setSize(10*520);//设置列宽度（不设置的话是0，不会显示）
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
         if(header.size()>0){
        	 int scount = header.size()/65535 + ((header.size()%65535)>0?1:0);
             sheets = new WritableSheet[scount];
             for(int i=0;i<scount;i++){
                 WritableSheet sheet = workbook.createSheet("Sheet"+i+1, i);
                 jxl.SheetSettings sheetset = sheet.getSettings();
                 sheetset.setProtected(false);
                 sheets[i]=sheet;
             }
             for(int j=0;j<scount;j++){
                 for(int i=0;i<header.size();i++){
                	 sheets[j].setColumnView(i, cv);
                      sheets[j].addCell(new Label(i, 0,header.get(i),wcf_center));
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
         workbook.write();
         workbook.close();  
        } catch (Exception e) {
            result="false";
           // System.out.println(result);
            e.printStackTrace();
        }finally{
            if(header!=null)header.clear();
        }
        return result;
       }
}
