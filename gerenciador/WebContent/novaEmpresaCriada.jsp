<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
//scriplet
String nomeEmpresa = (String)request.getAttribute("empresa");

%>

<html>
<body>
Empresa <% out.println(nomeEmpresa); %> com out.println(nomeEmpresa)
<p/> ou <p/>
Empresa <%=nomeEmpresa%> com =nomeEmpresa
<p/> ou <p/>
<c:if test="${not empty empresa}">
Empresa ${empresa} com $empresa
</c:if>
<c:if test="${empty empresa}">
Nenhuma empresa cadastrada!
</c:if>

</body>
</html>

