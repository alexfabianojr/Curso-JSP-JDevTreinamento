<jsp:useBean id="calcula" class="beans.BeanCursoJsp" type="beans.BeanCursoJsp" scope="page"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="myprefix" uri="/WEB-INF/testetag.tld" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="cabecalho.jsp"/>

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
	
	<%= calcula.calcula(50) %>
	
	<jsp:setProperty property="*" name="calcula"/>
	
	<br>
	
	<form action="cabecalho.jsp" method="post">
		<input type="text" id="nome" name="nome" value="alex">
		<input type="text" id="ano" name="ano" value="1999">
		<input type="text" id="sexo" name="sexo" value="M">
		<a href="cabecalho.jsp"><input type="submit" value="testar""></a>
	</form>
	
	<br>
	
	<myprefix:minhatag/>

	<jsp:plugin code="" codebase="" type="bean">
		<jsp:params>
			<jsp:param value="curso-de-jsp" name="JDev"/>
		</jsp:params>
	</jsp:plugin>
	
	<jsp:include page="rodape.jsp"/>
	
	<% session.setAttribute("user", "javaavancado"); %>
	
	<!-- jstl -->
	
	<div>
	<c:out value="${'Bem vindo ao modulo de JSTL'}"/>
	
	<c:set var="data" scope="page" value="${500 * 6}"></c:set>
	
	<c:import var="data" url="https://www.google.com.br"/>
	
	</div>
	
	<!-- <c:out value="${data}"></c:out> -->
	
	<c:catch var="erroDeclarado">
		<% int valor = 100/0; %>
	</c:catch>
	
	<c:if test="${erroDeclarado != null }">
		${erroDeclarado.message}
	</c:if>
	
	<br>
	
	<c:set var="numeroVar" value="${100 / 10 }"></c:set>
	
	<c:choose>
		<c:when test="${numeroVar > 50 }">
			<c:out value="${'Maior que 50'}"></c:out>
		</c:when>
		<c:when test="${numeroVar < 50 }">
			<c:out value="${'Menor que 50'}"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="${'numeroVar = 50'} }"></c:out>
		</c:otherwise>
	</c:choose>
	
	<c:forEach var="n" begin="1" end="${numeroVar}">
		Loop: ${n}
	</c:forEach>
	
	<!-- forTokens quebra uma string por determinado criterio -->
	<c:forTokens items="Alex-Fabiano-Nome" delims="-" var="tokenNome">
		<br>
		Nome: <c:out value="${tokenNome}"></c:out>
	</c:forTokens>
	
	<br>
		
	<c:url value="/loginLiberado.jsp" var="acesso">
		<c:param name="param1" value="123"></c:param>
		<c:param name="param2" value="567"></c:param>
	</c:url>
	
	${acesso}
	
	<br>
	
	<c:if test="${numeroVar > 50}">
		<c:redirect url="https://www.google.com.br"></c:redirect>
	</c:if>
	
</body>
</html>