<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 		Date d = new Date();	
		SimpleDateFormat sdf = new SimpleDateFormat ("yyyy年mm月dd日");
		String s = sdf.format(d);
		out.println(s);
		%>