package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.CheckService;
import Util.KeYanJLDao;
import Util.KeYanXiangMuDao;
import Util.LunWenDao;
import Util.XueKeJianSheDao;
import Util.XueShuZZDao;
import Util.ZhuanLiDao;

public class PassServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PassServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String identity = request.getParameter("identity");
		String type = request.getParameter("type");
		if("lunwen".equals(type)){
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					LunWenDao.pass(id);
				}else if(pass.equals("nopass")){
					LunWenDao.nopass(id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					LunWenDao.pass2(id);
				}else if(pass.equals("nopass")){
					LunWenDao.nopass2(id);
				}
			}
		}else if("zhuanli".equals(type)){
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					ZhuanLiDao.pass(id);
				}else if(pass.equals("nopass")){
					ZhuanLiDao.nopass(id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					ZhuanLiDao.pass2(id);
				}else if(pass.equals("nopass")){
					ZhuanLiDao.nopass2(id);
				}
			}
		}else if("xszz".equals(type)){
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					try {
						XueShuZZDao.pass(id);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}else if(pass.equals("nopass")){
					XueShuZZDao.nopass(id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					XueShuZZDao.pass2(id);
				}else if(pass.equals("nopass")){
					XueShuZZDao.nopass2(id);
				}
			}
		}else if("xkjs".equals(type)){
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					XueKeJianSheDao.pass(id);
				}else if(pass.equals("nopass")){
					XueKeJianSheDao.nopass(id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					XueKeJianSheDao.pass2(id);
				}else if(pass.equals("nopass")){
					XueKeJianSheDao.nopass2(id);
				}
			}
		}else if("kyjl".equals(type)){
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					KeYanJLDao.pass(id);
				}else if(pass.equals("nopass")){
					KeYanJLDao.nopass(id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					KeYanJLDao.pass2(id);
				}else if(pass.equals("nopass")){
					KeYanJLDao.nopass2(id);
				}
			}
		}else if("keyanxiangmu".equals(type)){
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					KeYanXiangMuDao.pass(id);
				}else if(pass.equals("nopass")){
					KeYanXiangMuDao.nopass(id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					KeYanXiangMuDao.pass2(id);
				}else if(pass.equals("nopass")){
					KeYanXiangMuDao.nopass2(id);
				}
			}
		} else {
			if(identity.equals("yuan")){
				if(pass.equals("pass")){
					CheckService.check(type,"status","1",id);
				}else if(pass.equals("nopass")){
					CheckService.check(type,"status","2",id);
				}
			}else if(identity.equals("xiao")){
				if(pass.equals("pass")){
					CheckService.check(type,"status2","1",id);
				}else if(pass.equals("nopass")){
					CheckService.check(type,"status2","2",id);
				}
			}
		} 
		
		
		
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
