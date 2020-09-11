package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.actionforward;
import service.registerService;
import bean.userInfo;

public class registerAction implements action{
	@Override
	public actionforward execute(HttpServletRequest request, HttpServletResponse response) 
	throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		actionforward forward = new actionforward();
		registerService registerService = new registerService();
		userInfo user = new userInfo();
		
		user.setId(request.getParameter("id"));
		user.setPassword(request.getParameter("password"));
		user.setName(request.getParameter("name"));
		user.setPhone(request.getParameter("phone"));
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setAuth(Integer.parseInt(request.getParameter("auth")));
		
		
		
		boolean result = registerService.register(user);
		if(result) {
        	forward.setPath("/");
		}else {
			response.setContentType("text/html;chaarest=UTF-8");	
        	PrintWriter out = response.getWriter();
        	out.println("<script>");
        	out.println("alert('회원가입 실패')");
        	out.println("history.back()</script>");
		}
		return forward;
		
	}
}
