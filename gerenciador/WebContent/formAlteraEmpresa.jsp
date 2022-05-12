<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Empresa</title>
</head>
<body>


	<form action="${linkServletNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome" value="${empresa.nome}" placeholder="Insira a empresa">
		Data de Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>" placeholder="Insira a data de abertura">
		<input type="text" name="id" value="${empresa.id }" hidden="true"/>
		<input type="submit"/>
	</form>

</body>
</html>