package com.swarm.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher requestDispatcher = null;
		if(userName.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			requestDispatcher = request.getRequestDispatcher("jsp/adminpanel.jsp");
			requestDispatcher.forward(request, response);
		} else {
			requestDispatcher = request.getRequestDispatcher("jsp/userpanle.jsp");
			requestDispatcher.forward(request, response);
		}
	}
}
