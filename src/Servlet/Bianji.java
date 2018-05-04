package Servlet;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Service.FileUDService;
import Service.UserService;
import Util.UUIDUtils;
import Util.UserDao;

@Controller
public class Bianji {
	Bianji2 bj2 = new Bianji2();
	UserDao u = new UserDao();
	
	@RequestMapping("Bianji")
	public void doPost(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("uploadfile") MultipartFile[] file)
			throws ServletException, IOException, SQLException {
		HttpSession session = request.getSession();
		// 获取用户id
		String userid = (String) session.getAttribute("userid");
		// 获取科研类型
		String type = request.getParameter("type");
		// 获取原科研id
		String zuopinid = request.getParameter("id");

		Map<String, Object> map2 = UserService.queryOne(userid);
		// 获取用户名字
		String username = (String) map2.get("name");
		//获取身份
		String Identity = u.QueryIdentity(userid);
		// 执行编辑操作
		bj2.bianji(request, response, type, userid,Identity);
	
		String fileuploadtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(new Date());
		String filestorename = "";
		String filestorename2 = "";
		String filerealname = "";
		String filetype = "";
		String filesize = "";
		String path = "";
		int i = 0;
		for (MultipartFile multipartFile : file) {
			try {
				if (!multipartFile.isEmpty()) {
					if(i==0){
						FileUDService.deleteFile(zuopinid);
						i++;
					}
					filerealname += multipartFile.getOriginalFilename() + ","; // 1

					filetype += multipartFile.getOriginalFilename().substring(
							multipartFile.getOriginalFilename()
									.lastIndexOf(".") + 1)
							+ ","; // 1

					filesize += multipartFile.getSize() + ",";

					filestorename2 = (UUIDUtils.random() + "").concat("."
							+ multipartFile.getOriginalFilename().substring(
									multipartFile.getOriginalFilename()
											.lastIndexOf(".") + 1));
					filestorename += filestorename2 + ",";
					FileUtils.copyInputStreamToFile(multipartFile
							.getInputStream(), new File("D:\\savefile\\"
							+ filestorename2));

					path += "D:\\savefile\\" + filestorename2 + ",";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(i!=0){
		FileUDService.uploadService(userid, username, fileuploadtime,
				filestorename, filerealname, filetype, filesize, path,
				zuopinid, type);
		}
		if (Identity.equals("0") && "lunwen".equals(type)) {
			request.getRequestDispatcher("newiframelunwen2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "lunwen".equals(type)) {
			request.getRequestDispatcher("newiframelunwen2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "lunwen".equals(type)) {
			request.getRequestDispatcher("newiframelunwen2-pass-xiao.jsp").forward(
					request, response);
		}
		
		
		if (Identity.equals("0") && "zhuanli".equals(type)) {
			request.getRequestDispatcher("iframezhuanli2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "zhuanli".equals(type)) {
			request.getRequestDispatcher("iframezhuanli2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "zhuanli".equals(type)) {
			request.getRequestDispatcher("iframezhuanli2-pass-xiao.jsp").forward(
					request, response);
		}
		if (Identity.equals("0") && "xueshuzhuzuo".equals(type)) {
			request.getRequestDispatcher("iframexueshuzhuzuo2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "xueshuzhuzuo".equals(type)) {
			request.getRequestDispatcher("iframexueshuzhuzuo2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "xueshuzhuzuo".equals(type)) {
			request.getRequestDispatcher("iframexueshuzhuzuo2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "xueke".equals(type)) {
			request.getRequestDispatcher("iframexuekejianshe2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "xueke".equals(type)) {
			request.getRequestDispatcher("iframexuekejianshe2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "xueke".equals(type)) {
			request.getRequestDispatcher("iframexuekejianshe2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "keyanjiangli".equals(type)) {
			request.getRequestDispatcher("iframekeyanjiangli2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "keyanjiangli".equals(type)) {
			request.getRequestDispatcher("iframekeyanjiangli2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "keyanjiangli".equals(type)) {
			request.getRequestDispatcher("iframekeyanjiangli2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "keyanxiangmu".equals(type)) {
			request.getRequestDispatcher("iframekeyanxiangmu2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "keyanxiangmu".equals(type)) {
			request.getRequestDispatcher("iframekeyanxiangmu2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "keyanxiangmu".equals(type)) {
				request.getRequestDispatcher("iframekeyanxiangmu2-pass-xiao.jsp").forward(
						request, response);
			}
		
		//跳转专业
		if (Identity.equals("0") && "zhuanye".equals(type)) {
			request.getRequestDispatcher("iframezhuanye2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "zhuanye".equals(type)) {
			request.getRequestDispatcher("iframezhuanye2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "zhuanye".equals(type)) {
			request.getRequestDispatcher("iframezhuanye2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "jiaoxuemingshi".equals(type)) {
			request.getRequestDispatcher("iframejiaoxuemingshi2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "jiaoxuemingshi".equals(type)) {
			request.getRequestDispatcher("iframejiaoxuemingshi2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "jiaoxuemingshi".equals(type)) {
			request.getRequestDispatcher("iframejiaoxuemingshi2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "kechengjianshe".equals(type)) {
			request.getRequestDispatcher("iframekechengjianshe2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "kechengjianshe".equals(type)) {
			request.getRequestDispatcher("iframekechengjianshe2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "kechengjianshe".equals(type)) {
				request.getRequestDispatcher("iframekechengjianshe2-pass-xiao.jsp").forward(
						request, response);
			}
		
		if (Identity.equals("0") && "jxyjxm".equals(type)) {
			request.getRequestDispatcher("iframejxyjxm2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "jxyjxm".equals(type)) {
			request.getRequestDispatcher("iframejxyjxm2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "jxyjxm".equals(type)) {
			request.getRequestDispatcher("iframejxyjxm2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "shiyanshijianshe".equals(type)) {
			request.getRequestDispatcher("iframeshiyanshijianshe2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "shiyanshijianshe".equals(type)) {
			request.getRequestDispatcher("iframeshiyanshijianshe2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "shiyanshijianshe".equals(type)) {
			request.getRequestDispatcher("iframeshiyanshijianshe2-pass-xiao.jsp").forward(
					request, response);
		}
		
		if (Identity.equals("0") && "jiaocaizhuzuo".equals(type)) {
			request.getRequestDispatcher("iframejiaocaizhuzuo2.jsp").forward(request,
					response);
		} else if (Identity.equals("1") && "jiaocaizhuzuo".equals(type)) {
			request.getRequestDispatcher("iframejiaocaizhuzuo2-pass.jsp").forward(
					request, response);
		} else if (Identity.equals("2") && "jiaocaizhuzuo".equals(type)) {
			request.getRequestDispatcher("iframejiaocaizhuzuo2-pass-xiao.jsp").forward(
					request, response);
		}
		if("lwscore".equals(type)){
			request.getRequestDispatcher("newygliframescore.jsp").forward(request, response);
		}
		

	}

}
