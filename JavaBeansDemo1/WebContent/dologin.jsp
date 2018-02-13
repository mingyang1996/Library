<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="session"/>
	<h1>setProperty动作元素</h1>
	<hr>
	   		<!--根据表单匹配所有属性  -->
	<%--  <jsp:setProperty name="myUsers" property="*"/> --%>
			<!--根据表单匹配部分属性  -->
	<%-- <jsp:setProperty name="myUsers" property="username"/> --%>
	   		<!--通过手工赋值部分属性  -->
	   	 <jsp:setProperty name="myUsers" property="username" value="zhangsan"/>
	   	 <jsp:setProperty name="myUsers" property="password" value="123456"/>
	   	 
	   		<!-- 使用传统的表达式方法获取用户名和密码 -->
<%-- 	   	用户名：<%=myUsers.getUsername() %><br>
			密码：    <%=myUsers.getPassword() %><br> --%>
			<!-- 使用getProperty方式来获取名户名和密码 -->
		  用户名：<jsp:getProperty  name="myUsers" property="username" /><br>
		  密码：<jsp:getProperty  name="myUsers" property="password" /><br>
		  <br>
		  <br>
		 <a href="testScope.jsp">测试javaBean的四个作用域范围</a>
</body>
</html>