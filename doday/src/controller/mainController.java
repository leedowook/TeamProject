package controller;

import java.io.*;
import javax.servlet.http.*;


import action.*;
import bean.actionforward;

import javax.servlet.*;


public class mainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public mainController() {
		super();
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();//요청 url
		String contextPath = request.getContextPath();//원래 경로
		String command = RequestURI.substring(contextPath.length());
		
		actionforward forward = null;
		action action = null;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8 ");
		
		if (forward != null) { 
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath()); 
			} else { 
			 RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath()); 
			 dispatcher.forward(request, response); 
			} 
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
