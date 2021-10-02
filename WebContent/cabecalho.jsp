<jsp:useBean id="calcula" class="beans.BeanCursoJsp" type="beans.BeanCursoJsp" scope="page"></jsp:useBean>
<html>
	<body>
		<h3>Cabecalho</h3>
		
		<jsp:setProperty property="*" name="calcula"/>
		
		<jsp:getProperty property="nome" name="calcula"/>
		<jsp:getProperty property="ano" name="calcula"/>
		<jsp:getProperty property="sexo" name="calcula"/>
		
		<p>
			Nome: ${param.nome}
		</p>
		<p>
			Ano: ${param.ano}
		</p>
		<p>
			Sexo: ${param.sexo}
		</p>
		
		<p>${sessionScope.user}</p>
		
	</body>
</html>