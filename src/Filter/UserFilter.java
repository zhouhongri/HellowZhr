package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserFilter implements Filter {
	private String encoding = "UTF-8";
	private FilterConfig config;

	public void destroy() {
		// TODO Auto-generated method stub
		this.encoding = null;
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) arg0;
		req.setCharacterEncoding(encoding);
		HttpServletResponse res = (HttpServletResponse) arg1;
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("userid");
		String loginPage = config.getInitParameter("loginPage");
		// ��ȡ�ͻ������ҳ��
		String requestPath = req.getServletPath();
		// System.out.println(requestPath);
		if (id == null && !requestPath.endsWith(loginPage)
				&& !requestPath.endsWith("css") && !requestPath.endsWith("gif")
				&& !requestPath.endsWith("Servlet")
				&& !requestPath.endsWith("Bianji")
				&& !requestPath.endsWith("Del") && !requestPath.endsWith(".js")
				&& !requestPath.endsWith(".png")
				&& !requestPath.endsWith("newshouye.jsp")
				&& !requestPath.endsWith("newlogin.jsp")
				&& !requestPath.endsWith("newregister.jsp")
				&& !requestPath.endsWith("mov")
				&& !requestPath.endsWith("newaboutus.html")) {
			arg0.setAttribute("tip", "����û�е�¼");
			arg0.getRequestDispatcher("newshouye.jsp").forward(arg0, arg1);
		} else {
			// System.out.println("go");
			arg2.doFilter(arg0, arg1);
		}
	}

	public void init(FilterConfig config) {
		this.config = config;

		// ��������Ĭ�ϱ�����UTF-8����Ҳ������web.xml�����ļ��������Լ���Ҫ�ı���
		if (config.getInitParameter("encoding") != null)
			encoding = config.getInitParameter("encoding");
	}

}
