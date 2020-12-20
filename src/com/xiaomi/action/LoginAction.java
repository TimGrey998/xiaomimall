package com.xiaomi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xiaomi.biz.UserBiz;
import com.xiaomi.biz.impl.UserBizImpl;
import com.xiaomi.entity.User;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		switch (request.getMethod().toLowerCase()) {
		case "get":
			request.getRequestDispatcher("/WEB-INF/page/web/login.jsp").forward(request, response);
			break;
		case "post":
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			UserBiz biz = new UserBizImpl();
			User user = biz.checkUser(username, password, 0);
			if (user == null) {
				request.setAttribute("message", "用户名或密码错误");
				request.getRequestDispatcher("/WEB-INF/page/web/login.jsp").forward(request, response);
			} else {
				// 保存用户信息
				request.getSession().setAttribute("user", user);
				response.sendRedirect("/xiaomimall/index.jsp");
			}
			break;
		}

	}

}
