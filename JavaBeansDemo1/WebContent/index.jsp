<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="myUsers" class="com.po.Users" scope="page"/>  <!-- id为Bean的名字，scope为Bean的作用域 -->
<h1>使用useBean动作创建javaBean的实例</h1>         <!-- scope的值可以是page，request，session或application -->
<hr>
用户名：<%=myUsers.getUsername() %><br>   <!-- 访问属性 -->
密码：    <%=myUsers.getPassword() %><br>
</body>
</html>