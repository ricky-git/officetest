package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag = request.getParameter("flag");
		
		HttpSession session = request.getSession();
		if(flag!=null){
			session.setAttribute("username", "");
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
		else{
			String username = request.getParameter("username");
			if(!(username==null||username.equals(""))){
			session.setAttribute("username", username);
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			}
			
			else{
			String str = "用户名或密码输入有误";
			session.setAttribute("errorInfo", str);
			RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");
            rd.forward(request, response);
			}
			}
		}
	}
