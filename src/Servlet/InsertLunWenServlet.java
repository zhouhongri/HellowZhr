package Servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Service.FileUDService;
import Service.InsertService;
import Service.UserService;
import Util.UUIDUtils;

@Controller
public class InsertLunWenServlet {
	InsertService is = new InsertService();
	@Autowired
	InsertSon insertSon;

	@RequestMapping("zengtian")
	protected void Insert(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam("uploadfile") MultipartFile[] file)
			throws ServletException, IOException {
		String type = req.getParameter("type");
		String userid = (String) req.getSession().getAttribute("userid");
		Map<String, String> map2 = insertSon.insert(type, userid, req, resp);
		Map<String, Object> map = UserService.queryOne(userid);
		String username = (String) map.get("name");
		String fileuploadtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(new Date());
		String filestorename = "";
		String filestorename2 = "";
		String filerealname = "";
		String filetype = "";
		String filesize = "";
		String path="";
		for (MultipartFile multipartFile : file) {
			try {
				if (!multipartFile.isEmpty()) {

					filerealname += multipartFile.getOriginalFilename()+",";   //1
					
					filetype += multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename()
							.lastIndexOf(".") + 1)+",";                    //1
					
					filesize += multipartFile.getSize() + ",";
					
					filestorename2 = (UUIDUtils.random() + "").concat("."+ multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename()
							.lastIndexOf(".") + 1));
					filestorename += filestorename2+",";
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), new File("C:\\savefile\\"+ filestorename2));
					
					path+="C:\\savefile\\" +filestorename2+",";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		FileUDService.uploadService(userid, username, fileuploadtime,
				filestorename, filerealname, filetype, filesize,
				path, (String) map2.get("id"),
				(String) map2.get("type").toString());
		if ("lunwen".equals(type)) {
			req.getRequestDispatcher("querylw").forward(req, resp);
		} else if ("xueshuzhuzuo".equals(type)) {
			req.getRequestDispatcher("queryxszz").forward(req, resp);
		} else if ("keyanjiangli".equals(type)) {
			req.getRequestDispatcher("querykyjl").forward(req, resp);
		} else if ("zhuanli".equals(type)) {
			req.getRequestDispatcher("queryzl").forward(req, resp);
		} else if ("xueke".equals(type)) {
			req.getRequestDispatcher("queryxkjs").forward(req, resp);
		} else if ("keyanxiangmu".equals(type)) {
			req.getRequestDispatcher("querykyxm").forward(req, resp);
		} else if ("zhuanye".equals(type)) {
			req.getRequestDispatcher("queryzy").forward(req, resp);
		} else if ("jiaoxuemingshi".equals(type)) {
			req.getRequestDispatcher("queryjxms").forward(req, resp);
		} else if ("kechengjianshe".equals(type)) {
			req.getRequestDispatcher("querykcjs").forward(req, resp);
		} else if ("jxyjxm".equals(type)) {
			req.getRequestDispatcher("queryjxyjxm").forward(req, resp);
		}else if ("shiyanshijianshe".equals(type)) {
			req.getRequestDispatcher("querysysjs").forward(req, resp);
		}else if ("jiaocaizhuzuo".equals(type)) {
			req.getRequestDispatcher("queryjczz").forward(req, resp);
		}

	}
}
