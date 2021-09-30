<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		//recebendo parametros
		String nome = "Nome recebido: " + request.getParameter("nome");
		out.print(nome); 
	%>
	
	<br>
	
	<%=
	//tag expressao
		"Nome recebido: " +
		request.getParameter("nome")
	%>
	
	<p/>
	
	<% //request e response sao objetos implicitos %>
	<%= request.getContextPath() %>
	
	<% //response.sendRedirect("/cadastro") %>
	
	<br>
	
	<%= session.getAttribute("curso") %>
	
		<br>
	
	<%@ include file="pagina-include.jsp" %>
	
</body>
</html>