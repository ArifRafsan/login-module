package com.rafsan.auth;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("user");
		String password = request.getParameter("password");
		
		if(userName.equals("Rafsan")&& password.equals("123")) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			response.sendRedirect("dashboard.jsp");
		}else {
			String message = "Invalid Credential!";
			response.sendRedirect("login.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
		}
	}

	

}
