<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.po.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
			<%
				Users user = new Users();
				user.setUsername("username");//设置用户名
				user.setPassword("123456");//设置密码
			%>	

<h1>使用普通方式创建javaBean的实例</h1>
<hr>
用户名：<%=user.getUsername() %><br>
密码：    <%=user.getPassword() %><br>
</body>
</html>