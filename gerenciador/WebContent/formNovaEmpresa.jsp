<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Empresa</title>
</head>
<body>


	<form action="${linkServletNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome" placeholder="Insira a empresa">
		Data de Abertura: <input type="text" name="data" placeholder="Insira a data de abertura">
		<input type="submit">
	</form>
	<form action="/gerenciador/listaEmpresas" method="get">
		<input type="submit" value="Listar empresas">
	</form>

</body>
</html>