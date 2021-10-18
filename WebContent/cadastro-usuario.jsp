<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de usuario</title>
</head>
<body>

	<h1>Cadastro de usuários</h1>
	
	<form action="salvarUsuario" method="post">
		<table>
			<tr>
				<td>Login:</td>
				<td><input type="text" id="Login" name="Login"></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" id="Login" name="Login"></td>
			</tr>
		</table>
		<input type="submit" value="Salvar">
	</form>

</body>
</html>