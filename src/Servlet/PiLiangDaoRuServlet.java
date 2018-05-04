package Servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import Util.BaseDao;
import Util.JudgeChinese;
import Util.UUIDUtils;

import com.wb.framework.commonUtil.ExcelUtil;

@Controller
public class PiLiangDaoRuServlet {
	JudgeChinese jc = new JudgeChinese();
	String message;
	@ResponseBody
	@RequestMapping("pldr")
	protected String Insert(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam("uploadfile") MultipartFile multipartFile)
			throws ServletException, IOException {
		resp.setContentType("text"); 
        resp.setHeader("Cache-Control", "no-cache"); 
        req.setCharacterEncoding("utf-8"); 
        resp.setCharacterEncoding("utf-8");
			HttpSession session = req.getSession();
			String filestorename2 = "";
			String filetype = "";
			String path="";
			List<Map<String,Object>> listexist = new ArrayList<Map<String,Object>>();
			try {
				if (!multipartFile.isEmpty()) {

					filetype = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename()
							.lastIndexOf(".") + 1);                    //文件类型
					
					
					filestorename2 = (UUIDUtils.random() + "").concat("."+ multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename()
							.lastIndexOf(".") + 1));					//文件夹里的文件名
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), new File("C:\\savefile\\"+ filestorename2));//将随机文件名放到文件夹里
					
					path="C:\\savefile\\";//路径
					System.out.println(path+filestorename2);//文件
						File f= new File(path+filestorename2);
					   FileInputStream fis = new FileInputStream(f);
					   ExcelUtil eu = new ExcelUtil(filetype,fis);
					   List<String[]> listexceldata = eu.getAllData(0);
					   String username="";
					   String name = "";
					   String pwd="111";
					   String sex="";
					   String age="";
					   String college = "";
					   String xname="";
					   String identity = "0";
					   String job="";
					   String jobtime="";
					   String tel="";
					   String error="第";
					   message="success";
					   if(eu.getRowNum(0)<=1){
						  message="nodata";
					   }else{
						   for(int i=0;i<eu.getRowNum(0);i++){
							   boolean flag=true;
							   for(int j=0;j<eu.getColumnNum(0);j++){
								   //System.out.println(listexceldata.get(i)[j]);
								   if(listexceldata.get(0)[j].equals("用户名")){
									   //System.out.println(listexceldata.get(i)[j]);
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])||jc.vd(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   username = listexceldata.get(i)[j];
										   }
									   }
										   
									   //break;
								   }
								   else if(listexceldata.get(0)[j].equals("姓名")){
									   //System.out.println(listexceldata.get(i)[j]);
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   System.out.println("1");
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   name = listexceldata.get(i)[j];
										   }
									   }
										   
									   //break;
								   }
								   else if(listexceldata.get(0)[j].equals("性别")){
									   if(i>0){
										   System.out.println(listexceldata.get(i)[j]);
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   sex = listexceldata.get(i)[j];
										   }
									   }
								   }
								   else if(listexceldata.get(0)[j].equals("年龄")){
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   age = listexceldata.get(i)[j];
										   }
									   }
										   
								   }
								   else if(listexceldata.get(0)[j].equals("院名")){
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   college = listexceldata.get(i)[j];
										   }
									   }
										   
								   }
								   else if(listexceldata.get(0)[j].equals("系名")){
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   xname = listexceldata.get(i)[j];
										   }
									   }
										   
								   }
								   else if(listexceldata.get(0)[j].equals("职称")){
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   job = listexceldata.get(i)[j];
										   }
									   }
										   
								   }
								   else if(listexceldata.get(0)[j].equals("成为职称时间")){
										if(i>0){
											if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
												message="error";
												error+=(i+1)+",第";
												break;
											   }else{
												   jobtime = listexceldata.get(i)[j];
											   }
										}
									   
								   }
								   else if(listexceldata.get(0)[j].equals("电话")){
									   if(i>0){
										   if(listexceldata.get(i)[j]==null||"".equals(listexceldata.get(i)[j])){
											   message="error";
											   error+=(i+1)+",第";
											   break;
										   }else{
											   tel = listexceldata.get(i)[j];
										   }
									   }
										   
								   }
								   else{
									   message="modelquestion";
									   return message;
								   }
							   }
							   if(i>0){
								   if("success".equals(message)){
									   String sql = "select * from users";
									   String[] array={};
									   List<Map<String,Object>> listquery = BaseDao.query(sql, array);
									   for(int n=0;n<listquery.size();n++){
										   if((name.equals(listquery.get(n).get("name"))&&college.equals(listquery.get(n).get("college"))&&xname.equals(listquery.get(n).get("xname"))&&sex.equals(listquery.get(n).get("sex")))||username.equals(listquery.get(n).get("username"))){
											   Map<String,Object> map = new HashMap<String,Object>();
											   map.put("id", username);
											   map.put("name", name);
											   map.put("sex", sex);
											   map.put("age", age);
											   map.put("college", college);
											   map.put("xname", xname);
											   map.put("job", job);
											   map.put("jobtime", jobtime);
											   map.put("tel", tel);
											   listexist.add(map);
											   flag=false;
											   break;
										   }
									   }
									   if("success".equals(message)&&flag){
										   String sql2 = "insert into users values(user_seq.nextval,?,?,?,?,?,?,?,null,null,?,to_date(?,'yyyy-mm-dd'),NULL,?,?,?,?)";
										   String search = name+tel+sex+age+college+job+xname+"教师";
										   String school = jc.querySchoolById(req);
										   String[] array2={pwd,name,tel,sex,age,college,identity,job,jobtime,xname,username,school,search};
										   BaseDao.update(sql2, array2);
									   }
								   }
							   }
							   message="success";
						   }
						   session.setAttribute("listexist", listexist);
						   session.setAttribute("maxnum", listexist.size());
						   session.setAttribute("error", error.substring(0, error.length()-2));
					   }
				}
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			return message;
	}
}
