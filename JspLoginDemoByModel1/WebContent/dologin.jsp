<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="loginUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="loginUser"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
		/* String username = "";
		String password = ""; */
		request.setCharacterEncoding("utf-8");//防止中文乱码	
/* 		username = request.getParameter("username");
		password = request.getParameter("password"); */  /* 这是业务逻辑层，写在界面会很乱 */
		
		//如果用户名和密码都等于Group7，则登陆成功
		if(userDAO.usersLogin(loginUser))
		{
			session.setAttribute("loginUser",loginUser.getUsername());
			request.getRequestDispatcher("Login_success.jsp").forward(request, response);	
		}
		else 
		{
			response.sendRedirect("Login_failure.jsp");
		}
		
		%>
		
		
		