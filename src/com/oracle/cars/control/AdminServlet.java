package com.oracle.cars.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.oracle.cars.model.AdminDAO;
import com.oracle.cars.model.Adminuser;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private AdminDAO dao=new AdminDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.获取用户名和密码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		//2.查询数据库判断该用户名和密码的账户是否存在
		Adminuser  adminuser=dao.login(username, password);
		System.out.println("登录方法：登录结果"+adminuser);
		//3.根据查询的结果跳转页面
		if(adminuser!=null) {
			request.getSession().setAttribute("user", adminuser);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
