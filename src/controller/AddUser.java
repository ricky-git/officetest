package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;

import vo.User;

public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//response.setContentType("text/html");
		String username = request.getParameter("username");
		System.out.println(username);
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String weixin = request.getParameter("weixin");
		String qq = request.getParameter("qq");
		String address = request.getParameter("address");
		
		User user = new User();
		user.setAddress(address);
		user.setEmail(email);
		user.setTel(tel);
		user.setPassword(password);
		user.setQq(qq);
		user.setRepassword(repassword);
		user.setUsername(username);
		user.setWeixin(weixin);
		
		System.out.println(user);
		
		UserDAO dao = new UserDAO();
		boolean ret = dao.add(user);
		
		System.out.println(ret);
		
		HttpSession session = request.getSession();
		
		if(ret){
			RequestDispatcher rd = request.getRequestDispatcher("/jump.jsp");
			rd.forward(request, response);
		}
		else{
			String str="×¢²áÊ§°Ü";
			session.setAttribute("errorInfo", str);
			RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");
			rd.forward(request, response);
		}
	}

}
