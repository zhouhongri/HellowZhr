package Servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sun.misc.BASE64Decoder;
import Service.FileUDService;
import Service.UserService;
import Util.UUIDUtils;


@Controller
@RequestMapping("uploadHeadPortrait")
public class UserHeadPortrait {
	ObjectMapper om  = new ObjectMapper();
	
	
	@RequestMapping("upload")
	@ResponseBody
	public void saveHeadPortrait(@RequestParam("image") String image,HttpServletResponse resp,HttpServletRequest req) throws IOException{
		resp.setContentType("application/json");
		Map map = new HashMap();
		//获取上传头像的用户的id
		String userid =  (String) req.getSession().getAttribute("userid");
		Map<String, Object> map2 = UserService.queryOne(userid);
		//上传头像的时间
		String fileuploadtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
		.format(new Date());
		//上传头像类型
		String filetype = image.split(",")[0].split(";")[0].split("/")[1];
		//头像存储的名字
		String imgStorename = (UUIDUtils.random() + "").concat("."+filetype);
		
		Map<String, Object> map3 = FileUDService.queryUserHeadPortrait(userid, "UserHeadPortrait");
		if(map3!=null){
			FileUDService.deleteFile2(map3.get("fileid")+"");
		}
		//将头像的相关信息存入数据库
		FileUDService.uploadService(userid, map2.get("name")+"", fileuploadtime,imgStorename, "", filetype, "","UserHead\\"+imgStorename, "",
				"UserHeadPortrait");
		saveImage(decode(image.split(",")[1]),imgStorename);
		map.put("result", "ok");
		map.put("file", "UserHead/"+imgStorename);
		//json返回前台更换后的头像信息
		System.out.println("in");
		om.writeValue(resp.getOutputStream(), map);
	}
	
	
	public static byte[] decode(String s){
		BASE64Decoder decoder = new BASE64Decoder();
		byte[] bytes=null;
		try {
			bytes = decoder.decodeBuffer(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bytes;
		
	}
	
	
	
	public void saveImage(byte[] imageBytes,String path){
		File file = new File("C:\\Users\\Administrator\\Desktop\\tomcat 1.7\\UserHead");
		//System.out.println(file);
		if(!file.exists()){
			file.mkdir();
		}
		File file2 = new File("C:\\Users\\Administrator\\Desktop\\tomcat 1.7\\webapps\\JYSJ\\UserHead\\"+path);
		FileOutputStream outputStream = null;
		
		try {
			outputStream = new FileOutputStream(file2);
			outputStream.write(imageBytes);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			closeStream(outputStream);
			
		}
		
	}
	
	
	public void closeStream(FileOutputStream outputStream){
		if(outputStream!=null){
		try {
			outputStream.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		}			
		
	}
	
}
