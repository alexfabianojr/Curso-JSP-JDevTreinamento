<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="myprefix" uri="/WEB-INF/testetag.tld" %>
    
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
	
	<% session.setAttribute("curso", "jsp"); %>
	
	<br>
	
	<%@ page import="java.util.Date" %>
	
	<%= "Data de hoje: " + new Date() %>
	
	<%@ page info="Pagina do curso jsp / essa propriedade pode ser pega no lado da servlet tbm" %>
	
	<%@ page errorPage="errorPage.jsp" %>
	
	<br>
	
	<%@ include file="pagina-include.jsp" %>
	
	<myprefix:minhatag/>

	<jsp:plugin code="" codebase="" type="bean">
		<jsp:params>
			<jsp:param value="curso-de-jsp" name="JDev"/>
		</jsp:params>
	</jsp:plugin>

</body>
</html>