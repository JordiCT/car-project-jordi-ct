<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />
<title>Editar coche</title>
</head>
<body>
	<form:form id="editCoche" modelAttribute="coche">
		<p><form:label path="matricula">Matricula</form:label>
		<form:input path="matricula" disabled="true" /></p>
		
		<p><form:label path="modelo">Modelo</form:label>
		<form:input path="modelo" /></p>
		
		<p><form:label path="fechaMatriculacion">Fecha de matriculacion</form:label>
		<form:input path="fechaMatriculacion" /></p>
		
		<p><form:label path="km">KM</form:label>
		<form:input path="km" /></p>
		
		<p><form:label path="precio">Precio</form:label>
		<form:input path="precio" /></p>
		
		<p><form:button>Guardar cambios</form:button></p>

	</form:form>

</body>
<spring:url value="/resources/js/hello-world-spring.js" var="helloJS" />
<spring:url value="/resources/js/jquery.min.js" var="helloJQuery" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
<script src="${helloJQuery}"></script>
<script src="${bootstrapJS}"></script>
<script src="${helloJS}"></script>
</html>