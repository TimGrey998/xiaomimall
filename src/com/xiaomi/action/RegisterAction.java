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

@WebServlet("/RegisterAction")
public class RegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		switch (request.getMethod().toLowerCase()) {
		case "get":
			// 转发到注册jsp页面
			request.getRequestDispatcher("/WEB-INF/page/web/Register.jsp").forward(request, response);
			break;
		case "post":
			User user = new User();
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));
			user.setRole(0);
			UserBiz biz = new UserBizImpl();
			biz.registerUser(user);
			response.getWriter()
					.write("<script>alert('注册成功，请牢记你的账户名和密码');window.location='/xiaomimall/LoginAction';</script>");
			break;
		}
	}
}
