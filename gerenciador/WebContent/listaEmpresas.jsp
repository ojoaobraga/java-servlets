<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<title>Java Standard Taglib (JST)</title>
<body>

<c:if test="${not empty empresa}">
Empresa ${empresa} cadastrada com sucesso
</c:if>

<a href="/gerenciador/formNovaEmpresa.jsp"><button>Cadastrar Empresa</button></a>

<p/>Lista de Empresas: <br />

	<ul>
	<c:forEach items="${empresas}" var="empresa">
		<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
		<a href="/gerenciador/mostraEmpresa?id=${empresa.id}"><button>Editar</button></a>
		<a href="/gerenciador/removeEmpresa?id=${empresa.id}"><button>Remover</button></a>
		</li>
	</c:forEach>
	</ul>

</body>
</html>