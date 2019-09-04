<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>获取请求参数值:
			<%=request.getParameter("age0") %>
		</p>
		
		<p>获取请求相同参数多个值:
			<%
				String[] values=request.getParameterValues("age0");
				for(String info:values){
			%>
					<span><%=info %></span>	
			<%
				}
			%>		
		</p>
		
		<p>获取参数名:
			<%
				Enumeration<String> values1=request.getParameterNames();
				while(values1.hasMoreElements()){
			%>
					<span><%=values1.nextElement() %></span>
			<%
				}
			%>
		</p>
		
		<p>获取客户提交信息的方式:
			<%=request.getMethod()%>
		</p>
		
		<p>获取jsp页面文件目录:
			<%=request.getServletPath() %>
		</p>
		
		<p>获取头部信息:
			<table border="1">
				<tr>
					<td>accept</td><td><%=request.getHeader("accept") %></td>
				</tr>
				<tr>
					<td>user-agent</td><td><%=request.getHeader("user-agent") %></td>
				</tr>
			</table>
		</p>
		
		<hr/>
		
		<p>获取本机ip:
			<%=request.getLocalAddr() %>
		</p>
		
		<p>获取本机名称:
			<%=request.getLocalName() %>
		</p>
		
		<p>获取本机端口:
			<%=request.getLocalPort() %>
		</p>
		
		<hr/>
		
		<p>获取客户ip:
			<%=request.getRemoteAddr() %>
		</p>
		
		<p>获取客户名称:
			<%=request.getRemoteHost() %>
		</p>
		
		<p>获取客户端口:
			<%=request.getRemotePort() %>
		</p>
		
		<hr/>
		
		<p>获取服务器名称:
			<%=request.getServerName() %>
		</p>
		
		<p>获取服务器端口:
			<%=request.getServerPort() %>
		</p>
		
		<p>获取项目名称:
			<%=request.getContextPath() %>
		</p>
		
		<p>获取表头信息:
			<table border="1">
			<%
				Enumeration<String> values2=request.getHeaderNames();
				while(values2.hasMoreElements()){
					String key=values2.nextElement();
					String value=request.getHeader(key);
			%>
					<tr>
						<td><%=key %></td>
						<td><%=value %></td>
					</tr>
			<%
				}
			%>
			</table>
		</p>
	</body>
</html>










