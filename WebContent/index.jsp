<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bem vindo ao curso de JSP</h1>
	<% //out.print("seu sucesso garantido");%>
	
	
	<%=
	//tag expressao
	"seu sucesso garantido" %>
	
	
	<%//passando parametros %>
	<form action="receber-nome.jsp">
		<input type="text" id="nome" name="nome">
		<input type="submit" value="Enviar">
	</form>
	
		<%! //tag declarativa 
	int cont = 2;
		
		public int retorna(int n) {
			return n * 3;
		}
		
		%>
	
	<%= cont %>
	<br>
	<%= retorna(8) %>
	
	<br>
	
	<%//o parametro vem das tags no arquivo web.xml %>
	<%= application.getInitParameter("estado") %>

</body>
</html>