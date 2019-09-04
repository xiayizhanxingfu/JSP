<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<!-- 跳转page -->
	<jsp:forward page="index1.jsp">
		<jsp:param value="20" name="age0"/>
		<jsp:param value="30" name="age0"/>
		<jsp:param value="20" name="age1"/>
	</jsp:forward>
	<body>
	
	</body>
</html>