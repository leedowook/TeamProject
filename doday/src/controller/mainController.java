package controller;

import java.io.*;

import javax.servlet.http.*;

import action.*;
import bean.actionforward;
import bean.userInfo;

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
		System.out.println("RequestURI:"+RequestURI);
		System.out.println("contextPath:"+contextPath);
		System.out.println("command:"+command);
		
		actionforward forward = null;
		action action = null;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8 ");
		
		if(command.contains("/Register.doday")) {
			System.out.println("회원등록 컨트롤러 접속");
			action = new registerAction();
			try {
				forward = action.execute(request, response);
				System.out.println("회원가입 성공");
			}catch(Exception e){
				e.printStackTrace();
				PrintWriter out = response.getWriter();
	        	out.println("<script>");
	        	out.println("alert('회원가입 실패')");
	        	out.println("history.back()</script>");
			}
		}
			
		
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
